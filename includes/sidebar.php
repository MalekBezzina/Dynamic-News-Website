<div class="sidebar">
	<div id='stitle'> Subscribe Via Mail </div>
	<div>
		<form style="text-align: center;">
      		<input style="margin-top: 5px;margin-bottom: 5px;" type="email" placeholder="Email" required>
      		<button style="margin-bottom: 10px;" class="button">Sign up now</button>
 		</form>
 	</div>
 	<div id='stitle'> Follow Us </div>
 	<div id='social'>
 		<img src="images/fb.png"/>
 		<img src="images/twit.png"/>
 		<img src="images/g+.jpg"/>
 		<img src="images/ig.jpg"/>
 	</div>
	<div id='stitle'> Recent Stories </div>
		
		<?php
		$get_posts="select * from posts order by 1 DESC ";
		$run_posts=mysqli_query($con,$get_posts);
		while($row_posts=mysqli_fetch_array($run_posts))
		{
			$post_id=$row_posts['post_id'];
			$post_title=$row_posts['post_title'];
			$post_image=$row_posts['post_image'];
			echo
			"
				<div class='recent_post'>
				<h2> <a  href='details.php?post=$post_id'>$post_title</a></h2>
				<a href='details.php?post=$post_id'><img src='admin/news_images/$post_image' width='150' heigth='150' /></a>
				</div>
				
			";
		}
		?>
	</div>
</div>
