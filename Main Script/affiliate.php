<?php

	session_start();
	require_once("inc/config.inc.php");

	$content = GetContent('affiliate');

	///////////////  Page config  ///////////////
	$PAGE_TITLE			= $content['title'];
	$PAGE_DESCRIPTION	= $content['meta_description'];
	$PAGE_KEYWORDS		= $content['meta_keywords'];

	require_once ("inc/header.inc.php");
	
	// AFFiliate Program //DEV

?>

	<h1><i class="fa fa-user"></i> <?php echo $content['title']; ?></h1>
	<p><?php echo $content['text']; ?></p>


<?php require_once("inc/footer.inc.php"); ?>