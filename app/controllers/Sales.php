<?php

class Sales extends Controller
{
	private $sales_model = "";

	public function __construct()
	{
		$this->sales_model = $this->load_model('sales');
		$this->load_helper('validation_helper');
	}

	public function index()
	{
		$data = array(
			'title_html'=>'Sales report'
		);
		$this->load_view('sales/report',$data);
	}

	public function report()
	{
		$start	= isset($_GET['start'])?$_GET['start']:"";
		$end 	= isset($_GET['end'])?$_GET['end']:"";

		$user_id = isset($_GET['uid'])?$_GET['uid']:"";


		if($user_id=="")
		{
			if($start!="" and $end!="")
			{
				$data = $this->sales_model->get_all_sales_between($start,$end);
			}
			else if($start!="")
			{
				$data = $this->sales_model->get_all_sales_from($start);
			}
			else if($end!="")
			{
				$data = $this->sales_model->get_all_sales_to($end);
			}
			else
			{
				$data = $this->sales_model->get_all_sales();
			}
		}
		else
		{
			if($start!="" and $end!="")
			{
				$data = $this->sales_model->get_all_sales_by_uid_between($user_id,$start,$end);
			}
			else if($start!="")
			{
				$data = $this->sales_model->get_all_sales_by_uid_from($user_id,$start);
			}
			else if($end!="")
			{
				$data = $this->sales_model->get_all_sales_by_uid_to($user_id,$end);
			}
			else
			{
				$data = $this->sales_model->get_all_sales_by_uid($user_id);
			}
		}
		

		$response = array(
			'data' => $data
		);

		header('Content-Type: application/json');
		echo json_encode($response);
	}

	public function sales_form()
	{
		$data = array(
			'title_html'=>'Create sales form'
		);
		$this->load_view('sales/sales_form',$data);
	}

	public function sales_form_submit()
	{
		$ammount 		= isset($_POST['ammount'])? trim($_POST['ammount']): "";
		$buyer 			= isset($_POST['buyer'])? trim($_POST['buyer']): "";
		$receipt_id 	= isset($_POST['receipt_id'])? trim($_POST['receipt_id']): "";
		$items	 		= isset($_POST['items'])? trim($_POST['items']): "";
		$buyer_email 	= isset($_POST['buyer_email'])?	trim($_POST['buyer_email']): "";
		$note	 		= isset($_POST['note'])? trim($_POST['note']): "";
		$city	 		= isset($_POST['city'])? trim($_POST['city']): "";
		$phone	 		= isset($_POST['phone'])? trim($_POST['phone']): "";
		$entry_by 		= isset($_POST['entry_by'])? trim($_POST['entry_by']): "";


		$validation_array = array();

		$validation_array['ammount'] = is_numeric($ammount);
		$validation_array['buyer'] = is_alphanumeric_space($buyer);
		$validation_array['receipt_id'] = is_alphanumeric($receipt_id);
		$validation_array['items'] = is_valid_item($items);
		$validation_array['buyer_email'] = is_mail($buyer_email);

		if(mb_strlen($note)<=30) $validation_array['note'] = true;
		else $validation_array['note'] = false;

		$validation_array['city'] = is_alphanumeric_space($city);
		$validation_array['phone'] = is_numeric($phone);
		$validation_array['entry_by'] = is_numeric($entry_by);


		if(array_search(false,$validation_array))
		{
			$validation_array['response_status'] = 'validation_error';
			header('Content-Type: application/json');
			echo json_encode($validation_array);
			exit();
		}

		
		//$salt = openssl_random_pseudo_bytes(19);
		$salt = generate_random_string(20);
		$hash_key = hash('sha512',$receipt_id.$salt);

		$buyer_ip = get_user_ip();

		//------------ date according timezone ------------
		$geoplugin = $this->load_library('geoplugin');
		if(get_user_ip()=='localhost')
		{
			$timezone = 'Asia/Dhaka';
		}
		else
		{
			$geoplugin->locate();
			$timezone = $geoplugin->timezone;
		}
		$cur_date_by_timezone = new DateTime('now', new DateTimezone($timezone));
		$cur_date_by_timezone = $cur_date_by_timezone->format('Y-m-d');
		//-----------------------------------------------

		//------------- get user access after 24 hours of previous submission -----------
		
		if(get_user_access($entry_by)==false)//-- if needs permit by browser ip us "$buyer_ip"
		{
			$validation_array['response_status'] = 'you can\'t submit before 24 hours';

			header('Content-Type: application/json');
			echo json_encode($validation_array);
			exit();
		}


		$params = array(
			$ammount,$buyer,$receipt_id,$items,$buyer_email,$note,$city,$phone,$entry_by, $buyer_ip,$hash_key,$salt,$cur_date_by_timezone
		);


		$this->sales_model->create_sales($params);

		$validation_array['response_status'] = 'success';

		header('Content-Type: application/json');
		echo json_encode($validation_array);
	}
}