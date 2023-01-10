<?php
namespace App\Model;

class Sales extends Database
{
	private static $tbl_name = 'sales';
	private static $user_id = 'entry_by';

	public function create_sales($params = array())
	{
		$qry = "insert into ".self::$tbl_name."(`ammount`,`buyer`,`receipt_id`,`items`,`buyer_email`,`note`,`city`,`phone`,`entry_by`,`buyer_ip`,`hash_key`,`salt`,`entry_at`) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";

		Database::query($qry,$params);
	}

	public function get_all_sales()
	{
		$qry = "select * from ".self::$tbl_name;
		$data = Database::query($qry);

		return $data;
	}
	public function get_all_sales_by_uid($user_id)
	{
		$qry = "select * from ".self::$tbl_name." where ".self::$user_id." = '$user_id'";
		$data = Database::query($qry);

		return $data;
	}

	public function get_all_sales_from($start)
	{
		$qry = "select * from ".self::$tbl_name." where date(entry_at) >= '$start'";
		$data = Database::query($qry);

		return $data;
	}
	public function get_all_sales_by_uid_from($user_id,$start)
	{
		$qry = "select * from ".self::$tbl_name." where date(entry_at) >= '$start' and ".self::$user_id." = '$user_id'";
		$data = Database::query($qry);

		return $data;
	}

	public function get_all_sales_to($end)
	{
		$qry = "select * from ".self::$tbl_name." where date(entry_at) <= '$end'";
		$data = Database::query($qry);

		return $data;
	}
	public function get_all_sales_by_uid_to($user_id,$end)
	{
		$qry = "select * from ".self::$tbl_name." where date(entry_at) <= '$end' and ".self::$user_id." = '$user_id'";
		$data = Database::query($qry);

		return $data;
	}

	public function get_all_sales_between($start,$end)
	{
		$qry = "select * from ".self::$tbl_name." where date(entry_at) >= '$start' and date(entry_at) <= '$end'";
		$data = Database::query($qry);

		return $data;
	}
	public function get_all_sales_by_uid_between($user_id,$start,$end)
	{
		$qry = "select * from ".self::$tbl_name." where date(entry_at) >= '$start' and date(entry_at) <= '$end' and ".self::$user_id." = '$user_id'";
		$data = Database::query($qry);

		return $data;
	}
}