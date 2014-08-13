<?php
require('./includes/config.php'); 
include_once ('./simplehtmldom_1_5/simple_html_dom.php');

$fh = fopen("adjectives.txt", "r");
if ($fh == false) {
	exit;
}
$read_more = true;
if (isset($_GET['pos']) ){
	fseek($fh,$_GET['pos'], SEEK_SET);
}
$ln='';
$str='';
$prev_position = ftell($fh);
while (!feof($fh) && $read_more) {
	$ln = fgets($fh);
	$str .=$ln;
	
	if ( strpos($ln,'</dl>') != false )
		$read_more = false;
}
$cur_position = ftell($fh);
fclose($fh);
$html = new simple_html_dom();
$html->load($str);

/*
 *  Επίθετο και καταλήξεις
 *  Πρόβλημα με αβασίλευτος <sup>1</sup>
 */
$ret = $html->find('b', 0);
foreach ($ret->nodes as $c ) {
	if ($c->tag == 'text')
		$mpe .= $c->plaintext;
}

$adj = array();

$adj = explode('-', $mpe);
foreach ( $adj as $i ) {
	trim ($i);
}
/*
 * Ορισμός  
 */
$ret = $html->find('dt',0);
$adjdefs = array();
foreach($ret->nodes as $c ) {
	if ($c->tag == 'text' && !strpos($c->innertext, '[') && !strpos($c->innertext, ']') && !strpos($c->innertext, 'ΕΠIΡ')  ) {
		$mpe = trim($c->innertext);
		if (!empty($mpe) && strlen($mpe) > 2) {
			$adjdefs[] = $mpe;
		}
	}
}
/* Παραδείγματα */
$examples = array();
$ret = $html->find('i');
foreach($ret as $c ) {
		if ( $c->parent()->tag != 'p')
			$examples[] = $c->plaintext;
}

/* Properly close simple_html_dom to avoid memmory leaks */
$html->clear();
unset($html);
unset($ret);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Πολικότητα Επιθέτων :: Πρόσθεσε</title>
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
<tr><td>Html</td><td colspan="5"><?php echo htmlspecialchars($str); ?></td></tr>
<tr><td>Επίθετο</td><td><?php echo $adj[0]; ?></td><td>Κατάληξη στο θηλ.</td><td><?php echo $adj[1]; ?></td><td>Κατάληξη στο ουδ.</td><td><?php echo $adj[2];?></td></tr>
<tr>
	<td colspan="3" style="text-align: left;"><a href="?pos=<?php echo $prev_position; ?>">Προηγούμενο</a></td>
	<td colspan="3" style="text-align: right;"><a href="?pos=<?php echo $cur_position; ?>">Επόμενο</a></td>
</tr>
</table>
<br>
<center>
<?php
$i=0;
foreach($adjdefs as $adjdef) {
?>
			<table style="border: solid thin black; margin-top: 5px;">
			<tr><th colspan="2" style="text-align: center;"><?php echo $adj[0]; ?></th></tr>
			<tr><th>Ορισμός</th><td><input type="text" value="<?php echo $adjdef; ?>" size="150" /></td></tr>
			<tr><th>Παράδειγμα</th><td><input type="text" value="<?php echo $examples[$i]; ?>" size="150" /></td></tr>
			<tr><td colspan="2" style="text-align: right;"><input type="button" value="Αποθήκευση" /></td></tr>
			<table>
<?php
	$i++;
}
?>	
</center>
</body>
</html>
