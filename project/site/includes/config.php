<?php
session_start();

define('DBHOST','localhost');
define('DBUSER','sentiment');
define('DBPASS','JohnSnow');
define('DBNAME','sentiment');

$conn = @mysql_connect (DBHOST, DBUSER, DBPASS);
$conn = @mysql_select_db (DBNAME);
if(!$conn){
	die( "Sorry! There seems to be a problem connecting to our database.");
}
mysql_query("SET NAMES UTF8");
if (isset($_ENV['OPENSHIFT_APP_NAME'] )) {
	define ('DIR', '/project/site/');
	define ('DIRAMDIN', '/project/site/admin/');
} else { 	
	define('DIR','/diplomatiki/');
	define('DIRADMIN', '/diplomatiki/admin/');
}

define('SITETITLE','Πολικότητα επιθέτων');

define('included', 1);

define('ADJECTIVE_MAX_VOTING', 20);

class Adjective
{
	public $code="N/A";
	public $definition="N/A";
	public $adjective="N/A";
	public $examples = array();
	public $votes = 0;
}

class User
{
	public $username="N/A";
	public $password="N/A";
	public $name="N/A";
	public $type="N/A";
}

class Example
{
	public $code;
	public $adjective;
	public $example;

}

include('functions.php');
?>
