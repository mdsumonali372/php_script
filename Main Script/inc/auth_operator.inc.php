<?php

	if (!(isset($_SESSION['operator']['id']) && is_numeric($_SESSION['operator']['id'])))
	{
		header("Location: login.php");
		exit();
	}
	else
	{
		$admin_panel = 1;
	}

?>