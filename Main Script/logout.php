<?php

	session_start();
	
	unset($_SESSION['userid'], $_SESSION['FirstName'], $_SESSION['goto'], $_SESSION['goto_created'], $_SESSION['password_verified']);
	
	session_destroy();

	setcookie("usname", "", time()-3600);

	header("Location: login.php");
	exit();
	
?>