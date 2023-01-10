<?php

require_once '../app/config/app.php';
require_once '../app/config/autoload.php';
require_once '../app/config/database.php';
require_once '../app/config/route.php';

//------ setting "base_url" from config
$root_url_for_this_site = $base_url;
function base_url($extend_url="")
{
	global $root_url_for_this_site;
	$url = rtrim($root_url_for_this_site,"/");
	$url = rtrim($root_url_for_this_site,"/index.php");

	if($extend_url!="")
	{
		$extend_url = ltrim($extend_url,"/");
		$url .= "/".$extend_url;
	}

	return $url;
}
unset($base_url);



//------- setting database credential from config
$db_credentials_form_config_for_this_site = $db;
unset($db);
function db_credentials()
{
	global $db_credentials_form_config_for_this_site;
	return $db_credentials_form_config_for_this_site;
}

//-------- below procedure could be use but this may risky
// const DB_HOST = 'localhost';
// const DB_NAME = 'micro_web_framework';
// const DB_USER = 'root';
// const DB_PASS = '';




//-------- setting helper autoloding from config
foreach ($helper_list as $helper)
{
	$path = '../app/helpers/'.$helper.'.php';
	if(file_exists($path))
	{
		require_once $path;
	}
}
unset($helper_list);
