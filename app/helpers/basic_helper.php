<?php

function generate_random_string($length = 10)
{
    $characters = '.<>(){}[]!@#$%^&-+*/=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

function get_user_ip()
{
	if($_SERVER['REMOTE_ADDR']=='127.0.0.1' or $_SERVER['REMOTE_ADDR']=="::1")	
	{
		return 'localhost';
	}
	else
	{
		return $_SERVER['REMOTE_ADDR'];
	}
}

function get_user_access($user_id)
{
	if(isset($_COOKIE[$user_id]))
	{
		return false;
	}
	else
	{
		setcookie($user_id,true,time()+3600*24);
		return true;
	}
}
