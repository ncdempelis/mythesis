<?php
	$fl = file_get_contents('adjectives.txt');
	$fl = strip_tags($fl);
	file_put_contents('adj.txt', $fl);
?>


