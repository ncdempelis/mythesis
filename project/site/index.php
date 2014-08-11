<?php
require('./includes/config.php'); 

$search = isset($_POST["search"]) ?$_POST["search"] : "";
$page = isset($_GET['page']) ? $_GET['page'] : 1;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Πολικότητα Επιθέτων</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/bluebliss.css" />
</head>
<body>
<div id="mainContentArea">
	<div id="contentBox">
        <div id="title">Πολικότητα Επιθέτων</div>
        
        <div id="linkGroup">
            <div class="link"><a href="index.php">Αρχική</a></div>
             <div class="link"><a href="admin/">Διαχείριση</a></div>
            <div class="link"><a href="contactus.php">Επικοινωνία</a></div>
        </div>
        
        <div id="blueBox"> 
          <div id="header"></div>
          <div class="contentTitle">Καλωσήρθατε</div>
            <div class="pageContent">
			
			 <form action="" method="post">
				<h3>Αναζήτηση Επιθέτων</h3>
				<p>Επίθετο:<input name="search" type="text" value="<?php echo $search ?>" size="50" />
				<input type="submit" name="submit" value="Αναζήτηση" class="button" /></p>
			</form>
			<?php
			if(   $search !='' ) {
				$adjectives = getAdjectives( $search );
				$header = "Σχετικά επίθετα";
			} else {
				$adjectives = showAdjectives($page);
				$header = "Λίστα Επιθέτων";
			}
			?>
			<br/>
			<!-- <div style='max-height:500px;overflow-y:auto;'> -->
			<div>
			<table cellpadding='5px'>
				<tr>
					<th colspan='6'><h4><?php echo $header; ?></h4></th>
				</tr>
				<tr>
					<!-- <th><strong>Κωδικός</strong></th> -->
					<th><strong>Επίθετο</strong></th>
					<th><strong>Ορισμός</strong></th>
					<th><strong>Παραδείγματα</strong></th>
					<th colspan="3"><strong>Ranking</strong></th>
				</tr>

				<?php
				$i=0;
				foreach ( $adjectives as $adjective){
					$code = $adjective->code;
					$style =' style="background:white" ' ;
					echo "<tr $style>";
					echo "  <td>$adjective->adjective</td>
							<td>$adjective->definition</td>
							<td>" . implode(",", $adjective->examples) ."</td>
							<td colspan='3'>
								<!-- <iframe frameborder=0 width='150' height='100' src='" . DIR  ."ranking.php?code=$code'></iframe> -->
								<img src='". DIR . "ranking.php?code=$code'>
							</td>";		
					echo "</tr>";
					$i++;
				}
				if ($search=='') {
					if ($page == '') $page=1;
				?>
				<tr><td><a href="?page=<?php $prev_page = ($page -1 )>0 ? $page-1: 1; echo $prev_page; ?>">&lt;</a></td>
				<td colspan="4">&nbsp;</td>
				<td><a href="?page=<?php echo $page+1;?>">&gt;</a></td>
				<?php
				}
				?>
			</table>
			</div>
			
			  <br/>
            </div>
            <div id="footer">  </div>
        </div>
	</div>
</div>
</body>
</html>
