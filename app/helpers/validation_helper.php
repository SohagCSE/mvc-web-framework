<?php

function is_alphanumeric_space($value)
{
	//if($value == "") return 'empty';

	if(preg_match('/^[a-zA-Z0-9 ]+$/',$value))
		return true;
	else
		return false;
}

function is_alphanumeric($value)
{
	//if($value == "") return 'empty';

	if(preg_match('/^[a-zA-Z0-9]+$/',$value))
		return true;
	else
		return false;
}

function is_mail($value)
{
	//if($value == "") return 'empty';

	if(filter_var($value, FILTER_VALIDATE_EMAIL)) 
		return true;
	else
		return false;
}

function is_valid_item($value)
{
	$item_list = explode(',', $value);

	foreach ($item_list as $item) 
	{
		$item = trim($item);
		if(!is_alphanumeric_space($item))
		{
			return false;
		}
	}

	return true;
}