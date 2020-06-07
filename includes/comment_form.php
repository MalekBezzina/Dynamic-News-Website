<div style="margin-top: 700px;"></div>
<?php  
include("includes/database.php");
if(isset($_GET['post']))
{
	$post_id=$_GET['post'];
	$get_posts="select * from posts where post_id='$post_id'";
	$run_posts=mysqli_query($con,$get_posts);
	$row=mysqli_fetch_array($run_posts);
	$post_new_id=$row['post_id'];
}
?>
<h2 >
	Comments So Far
<?php
$get_comments="select * from comments where post_id='$post_new_id' AND status='approve'";
$run_comments=mysqli_query($con,$get_comments);
$count=mysqli_num_rows($run_comments);
echo"(".$count.")";
?>	

</h2>
<?php
$get_comments="select * from comments where post_id='$post_new_id' AND status='approve'";
$run_comments=mysqli_query($con,$get_comments);
while($row_comments=mysqli_fetch_array($run_comments))
{
	$comment_name=$row_comments['comment_name'];
	$comment_text=$row_comments['comment_text'];

	echo "<div><h3 style='background:black; padding-left:10px;color:white;' >$comment_name &nbsp;<i>Says</i> </h3>
	<p style='background:#F63;padding-left:5px;'>$comment_text</p></div> ";

}
?>
<form method="post" action="details.php?post=<?php echo $post_new_id;?>">
	<table width="730 px" align="center" bgcolor="#99CCCC" >
		<tr>
		<td align="right"><strong>Your Name:</strong></td>
		<td><input type="text" name="comment_name" size="40" ></td>
	</tr>
	<tr>
		<td align="right"><strong>Your Email:</strong></td>
		<td><input type="Email" name="comment_email" size="40" ></td>
	</tr>
	<tr>
		<td style="vertical-align: middle;" align="right"><strong>Your Comment:</strong></td>
		<td><textarea name="comment_text" rows ="16" cols="41.75"></textarea></td>
	</tr>
	<tr>
		<td colspan="4" align="center"><input type="submit" name="submit" value="Post Comment"></td>
	</tr>
	</table>	
</form>
<?php
	if (isset($_POST['comment_text']))
	{
		$post_com_id=$post_new_id;

		$comment_name=$_POST['comment_name'];
		$comment_email=$_POST['comment_email'];
		$comment_text=$_POST['comment_text'];
		$status="unapprove";
		if($comment_name==''  OR $comment_text=='' OR $comment_email=='')
		{
			echo"<script> alert('Please fill in all blanks')</script>";
			echo"<script>window.open('details.php?post=$post_id,'_self')</script>";
			exit();
		}
		else
		{
			$query_comment="insert into comments (post_id,comment_name,comment_email,comment_text,status) values ('$post_com_id', '$comment_name','$comment_email','$comment_text','$status')";
			$run_query=mysqli_query($con,$query_comment);

			echo"<script> alert('your comment will be published after approval!!')</script>";
			echo"<script>window.open('details.php?post=$post_id,'_self')</script>";
		}
	}
?>
