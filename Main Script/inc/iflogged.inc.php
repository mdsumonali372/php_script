<?php

	if (isset($_SESSION['userid']) && is_numeric($_SESSION['userid']))
	{
		header("Location: myaccount.php");
		exit();
	}

?>