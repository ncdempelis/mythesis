<?php 
$fh = fopen("all-adjectives.txt", "r");
if ($fh == false) {
	exit;
}
$i=0;
$data = array();
while (!feof($fh)) {
	$read_more = true;
	$ln='';
	$str='';
	
	$pos = ftell($fh);
	
	do {
		$ln = fgets($fh);
		$str .=$ln;
	
		if ( strpos($ln,'</dl>') != false )
			$read_more = false;
	} while ($read_more && !feof($fh));
	
	if ( !$read_more ) {
	/* if we really read what we were expecting */
		if (strstr($str, 'α καπέλα') ){
				$adj = 'α καπέλα';
		} else {
			$start = strpos($str,'<b>')+3;
			$end = strpos($str,' ', $start);
			$adj = trim(substr($str, $start, ($end - $start + 1)));
		}
	}
//	echo $adj . ',' . $pos ."\n";
	$data[]=array('adj'=>$adj, 'offset'=>$pos);
}
fclose($fh);
var_dump($data);
exit;
?>