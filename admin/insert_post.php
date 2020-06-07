<?php require("../includes/database.php");?>
<!DOCTYPE html>
<html>
<head>
	
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!--<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>tinymce.init({selector:'textarea'});</script>-->

	<title>insert_post</title>
</head>
<body>

	<form action="insert_post.php" method="post" enctype="multipart/form-data">
		<table width="800" align="center" border="2px">
			<tr>
				<td colspan="6"><h1> Insert new post</h1></td>
			</tr>
			<tr>
				<td>post title</td>
				<td><input type="text" name="post_title" size="50"/></td>
			</tr>
			<tr>
				<td>post category</td>
				<td>
					<select name ="cat" >
						<option value="null">select a category </option>
						<?php

						$get_cats="select * from categories";
						$run_cats=mysqli_query($con,$get_cats);
						while ($cats_row=mysqli_fetch_array($run_cats))
						{
						$cat_id=$cats_row['cat_id'];
						 ;
						$cat_title=$cats_row['cat_title'];
						echo "<option value='$cat_id'>$cat_title</option>" ;
						}
						  



						?>
					</select>
				</td>
			</tr>
			<tr>
				<td>post author</td>
				<td><input type="text" name="post_author" size="50"/></td>
			</tr>
			<tr>
				<td>post keywords</td>
				<td><input type="text" name="post_keywords" size="50"/></td>
			</tr>
			<tr>
				<td>post image</td>
				<td><input type="file" name="post_image" size="50"/></td>
			</tr>
			<tr>
				<td>post content</td>
				<td><textarea name="post_content" rows="15" cols="40"> </textarea></td>
			</tr>
			<tr>
				
				<td><button type="submit" name="submit">SUBMIT</button></td>
			</tr>
		</table>
    </form>
	<?php 
	if(isset($_POST['submit']))
	{
		$post_title= $_POST['post_title'];
		$post_date= date('d-m-y');
		$post_cat= $_POST['cat'];
		$post_author= $_POST['post_author'];
		$post_keywords= $_POST['post_keywords'];
		$post_image= $_FILES['post_image']['name'];
		$post_image_tmp= $_FILES['post_image']['tmp_name'];
		$post_content=$_POST['post_content'];
		
	   if ($post_title==''or $post_cat=='null' or $post_author=='' or $post_keywords=='' or $post_image=='' or $post_content==''  )
	    {
		   echo"<script>alert('please fill in all the fileds')</script>";
		   exit();
		}
		else
		{
			move_uploaded_file($post_image_tmp, "news_images/$post_image");
			$insert_post="INSERT INTO posts (category_id,post_title,post_date,post_author,post_keywords,post_image,post_content) VALUES ('$post_cat','$post_title','$post_date','$post_author','$post_keywords','$post_image','$post_content')";
			mysqli_query( $con,$insert_post);
			mysqli_error($con);

			
			echo "<script> window.open ('insert_post.php','_self')</script> ";
		}
	}
	?>
</body>
</html>