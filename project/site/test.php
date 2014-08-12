<?php
require('./includes/config.php'); 

$fh = fopen("adjectives.txt", "r");
if ($fh == false) {
	exit;
}
$read_more = true;
if (isset($_GET['pos']) ){
	fseek($fh,$_GET['pos'], SEEK_SET);
}
while (!feof($fh) && $read_more) {
	$ln = fgets($fh);
	$str .=$ln;
	
	if ( strpos($ln,'</dl>') != false )
		$read_more = false;
}
$cur_position = ftell($fh);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Πολικότητα Επιθέτων</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
<table border="1">
<tr><td>Αρχείο</td><td>adjectives.txt</td></tr>
<tr><td>fp</td><td><?php echo $cur_position; ?></td></tr>
</table>
<br>
<table border="1">
<tr><td>String</td><td colspan="5"><?php echo stripslashes($str); ?></td></tr>
<tr><td>Επίθετο</td><td>&nbsp;</td><td>Κατάληξη στο θηλ.</td><td>&nbsp;</td><td>Κατάληξη στο ουδ.</td><td>&nbsp;</td></tr>
<tr><td>Ορισμός</td><td colspan="5">&nbsp;</td></tr>
<!-- could be more than one -->
<tr><td>Παράδειγμα</td><td colspan="5">&nbsp;</td></tr>
<tr><td colspan="3" style="text-align: left;"><a href="?pos=<?php echo $cur_position; ?>">Επόμενο</a></td><td colspan="3" style="text-align: right;"><input type="button" value="Αποθήκευση" /></td></tr>
</table>
</body>
</html>
