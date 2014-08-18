<?php
	include '../../includes/config.php';
	
	if ( ($pos = strpos(DIR, 'admin'))!= false ) {
		do { 
			$cur = strpos(DIR, 'admin', $pos + strlen('admin'));
			if ($cur != false )
				$pos = $cur;
		} while ($cur!= false);
		$app_root = substr(DIR,0, $pos);
	}
	echo $app_root . '<br/>';

	echo DIR .'<br>'.DIRADMIN . '<br>';
?>