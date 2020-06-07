<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>  Platform</title>
    <link rel="stylesheet" type="text/css" href="styles/styles.css" media="all "/>
</head>
<body>
	<div class="container" >

		<div class="head">
			<a href="index.php"><img id="logo"  src="images/logo.png"/></a>
			<img id="banner" src="images/ad_banner.gif"/>
		</div>
			
		<!--navbar-->
		<?php include("includes/navbar.php"); ?>
		<!--end!-->


		<!--post_area-->
		<div  class= "post_area">
		<?php
			if(isset($_GET['search']))
			{
				$get_query=$_GET['search_query'];
				if($get_query=='')
				{
					echo"<script>alert ('please write a keyword')</script>";
					echo "<script>window.open('index.php','_self')</script>";
				}

				$get_posts="select * from posts where post_keywords like '%$get_query%'";
				
				$run_posts=mysqli_query($con,$get_posts);
				while($row_posts=mysqli_fetch_array($run_posts))
				{
					$post_id=$row_posts['post_id'];
					$post_title=$row_posts['post_title'];
					$post_date=$row_posts['post_date'];
					$post_author=$row_posts['post_author'];
					$post_image=$row_posts['post_image'];
					$post_content=substr($row_posts['post_content'],0,250);
					echo
					"
						<h2> <a id='ltitle' href='details.php?post=$post_id'>$post_title</a></h2>
						<span><i>Posted by</i> <b>$post_author</b>  &nbsp; On <b> $post_date </b></span>
						<img src='admin/news_images/$post_image' width='100' heigth='100' />
						<div>$post_content <a id='rmlink' href='details.php?post=$post_id'>Read More</a></div></br>
					";
				}
			}
		?> 
		</div>

		<!--end!-->
		
		<!--sidebar_area-->
		<?php include("includes/sidebar.php"); ?>
		<!--end!-->		
				

		<!--footer_area-->
		<div style="background-color: black;" class="footer_area" >
			<h1 style="color :white ;padding: 20px;text-align: center;"> &copy; All Rights Reserved 2020  By -BEZZINA MALEK- 
		</div>
		<!--end!-->
	</div>
</body>
</html>