<?php 
	require('../includes/config.php'); 

	login_required();

	if(isset($_GET['logout'])){
		logout();
	}
	
	if(isset($_GET['code'])){
		$code = $_GET['code'];
		$code = mysql_escape_string($code);
		
		
	$result = mysql_query("DELETE FROM adjectives WHERE code= '$code'") or die(mysql_error());

	
	if($result)
		$_SESSION['success'] = "To επίθετο διαγράφηκε"; 
	
	
    header("Location: adjectives.php");
   	exit();
}

include('header.php');
?>