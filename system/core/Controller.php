<?php
class Controller
{
	public function load_model($model_class) //---- here mode path should not use, bqz, it returns object by same name
	{
		// if exist condition needed
		require_once '../app/models/'.$model_class.'.php';

		$model_class = "\\App\Model\\".$model_class; //---- add using namespace
		return new $model_class();
	}

	public function load_view($view_path,$data=[])
	{
		extract($data);
		// if exist condition needed
		require_once '../app/views/'.$view_path.'.php';
	}


	public function load_library($library_class)
	{
		// if exist condition needed
		require_once '../app/libraries/'.$library_class.'.php';
		return new $library_class();
	}

	public function load_helper($helper_path)
	{
		// if exist condition needed
		require_once '../app/helpers/'.$helper_path.'.php';
	}

}