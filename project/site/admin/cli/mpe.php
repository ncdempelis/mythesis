<?php
	$d = array('α καπέλα', 'αβαθής', 'αβοήθητος', 'αγάμητος');
	$s='αβ';
	foreach($d as $e) {
		$m=substr($e,0, strlen($s));
		$t = strcmp($m,$s);
		if( $t < 0 )
			continue;
		else if ($t==0)
			echo $e . ' ';
		else 
			break;
	}
	echo strcmp('ά', 'α');
?>
			