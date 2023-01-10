<?php
namespace App\Model;

class Database{

	private static $host;
	private static $dbName;
	private static $user;
	private static $password;

	//-------- below procedure could be use but this may risky
	// private static $host = \DB_HOST;
	// private static $dbName = \DB_NAME;
	// private static $user = \DB_USER;
	// private static $password = \DB_PASS;


	public function __construct()
	{
		$db_credentials = \db_credentials();

		self::$host 	= $db_credentials['host'];
		self::$dbName 	= $db_credentials['dbName'];
		self::$user 	= $db_credentials['user'];
		self::$password = $db_credentials['password'];
	}

	private static function connect()
	{
		$db = new \PDO("mysql:host=".self::$host.";dbname=".self::$dbName.";charset=utf8",self::$user,self::$password);
		$db->setAttribute(\PDO::ATTR_ERRMODE,\PDO::ERRMODE_EXCEPTION);
		return $db;
	}

	public static function query($query,$params = array())
	{
		$stmt = self::connect()->prepare($query);
		$stmt->execute($params);

		if(strtoupper(explode(' ',$query)[0])=='SELECT'){	// return data for select query
			$data = $stmt->fetchAll(\PDO::FETCH_ASSOC);
			return $data;
		}
	}
}