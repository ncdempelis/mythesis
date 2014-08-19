<?php 
	require('../includes/config.php'); 
	include_once ('./simplehtmldom_1_5/simple_html_dom.php');
	
	login_required();
	advanced_required();
	
	if(isset($_GET['logout'])){
		logout();
	}
if (count($_POST)) {
	$name = $_POST['name'];
	$definition = $_POST['definition'];
	$examples = $_POST['examples'];
	$code = $_POST['code'];

	$res= addAdjective($code,$name,$definition ,$examples);
	
	if( $res>0 ) {
		$_SESSION['success'] = 'Οι αλλαγές αποθηκεύτηκαν με επιτυχία';	
			
	}
}

$fh = fopen("all-adjectives.txt", "r");
if ($fh == false) {
	exit;
}
$read_more = true;
if (isset($_GET['pos']) ){
	fseek($fh,$_GET['pos'], SEEK_SET);
}

$ln='';
$str='';

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
 * id of adjective 
 */
 $ret = $html->find('dl',0);
 $code = $ret->id;
 
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
	
	
	include('header.php');
?>
<div id="content">
<p>Εισαγωγή στην βάση δεδομένων επιθέτων που έχουν "κατεβαστεί" από το 
<a href="http://www.greek-language.gr/greekLang/modern_greek/tools/lexica/triantafyllides/">Λεξικό της κοινής νεοελληνικής</a><p>
<table border="1">
<tr><td>String</td><td colspan="5"><?php echo stripslashes($str); ?></td></tr>
<tr><td>Html</td><td colspan="5"><?php echo htmlspecialchars($str); ?></td></tr>
<tr><td>Επίθετο</td><td><?php echo $adj[0]; ?></td><td>Κατάληξη στο θηλ.</td><td><?php echo $adj[1]; ?></td><td>Κατάληξη στο ουδ.</td><td><?php echo $adj[2];?></td></tr>
<tr>
<!--	<td colspan="3" style="text-align: left;"><a href="?pos=<?php echo $prev_position; ?>">Προηγούμενο</a></td> -->
	<td colspan="6" style="text-align: center;"><a href="?pos=<?php echo $cur_position; ?>">Επόμενο</a></td>
</tr>
</table>
<div id="index" style="overflow-y: scroll; height: 400px; width: auto; margin-top: 10px; margin-bottom: 10px;">
<?php
$i=0;
if (count($adjdefs) ==  0 ) {
	/* parse error */
?>
			<div id="<?php echo $i;?>">
			<form method="post" name="<?php echo $i;?>" action="";>
			<input type="hidden" name="name" value="<?php echo $adj[0];?>" />
			<table style="border: solid thin black; margin-top: 5px;">
			<tr><th colspan="2" style="text-align: center;"><?php echo $adj[0]; ?></th></tr>
			<tr><th>Code</th><td><input type="text" name="code" value="<?php echo $code ; ?>" /></td></tr>
			<tr><th>Ορισμός</th><td><input type="text" name="definition" value="" size="100" /></td></tr>
			<tr><th>Παράδειγμα</th><td><input type="text" name="examples" value="" size="100" /></td></tr>
			<tr><td colspan="2" style="text-align: right;"><input type="submit" value="Αποθήκευση" /></td></tr>
			<table>
			</form>
			</div>	
<?php
}
foreach($adjdefs as $adjdef) {
?>
			<div id="<?php echo $i;?>">
			<form method="post" name="<?php echo $i;?>" action="";>
			<input type="hidden" name="name" value="<?php echo $adj[0];?>" />
			<table style="border: solid thin black; margin-top: 5px;">
			<tr><th colspan="2" style="text-align: center;"><?php echo $adj[0]; ?></th></tr>
			<tr><th>Code</th><td><input type="text" name="code" value="<?php echo $code .'_'.$i; ?>" /></td></tr>
			<tr><th>Ορισμός</th><td><input type="text" name="definition" value="<?php echo $adjdef; ?>" size="100" /></td></tr>
			<tr><th>Παράδειγμα</th><td><input type="text" name="examples" value="<?php echo $examples[$i]; ?>" size="100" /></td></tr>
			<tr><td colspan="2" style="text-align: right;"><input type="submit" value="Αποθήκευση" /></td></tr>
			</table>
			</form>
			</div>
<?php
	$i++;
}
?>	
</div>
</div>

<?php
include('footer.php');
?>