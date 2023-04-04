<?php

	include('smth.php');
	$userinput= "";

	if(isset($_POST["submit"]))
	{
		$userinput=$_POST["word"];
	}
	else
	{
		$random=rand(1,58);
		echo "<br>";
		$sql = "SELECT * FROM words WHERE num='$random'";
		$result = mysqli_query($conn, $sql);

		if(mysqli_num_rows($result)>0)
 		{ 

 			while($row = mysqli_fetch_array($result))
 			{
 				$userinput = $row['word'];
 			}
		} }

 ?>


<html>
<head>
<title> Adjectiva </title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<center> 


<div> 

A place to find synonyms and antonyms for adjectives without the use of words 'very', 'really' and 'so'.

<form action="index.php" method="POST"> 

<p> very / really / so +  <input type="text" name="word" id="word" value="<?php echo $userinput; ?>"> 
</p>

	<input type="submit" name="submit" value="submit" id="submit">
	<input type="submit" name="random" value="find random" id="random"> 


</form>

<br>
<br>

<?php

if (isset($_POST["submit"]))
	{ 		
    	$userinput=$_POST["word"];
    	$sql = "SELECT synonym,antonym FROM words WHERE word='$userinput'";
    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result)>0)
 	{ 

 		while($row = mysqli_fetch_array($result))
 		{
            echo  " <span style='color:#000F3C;font-size:17px;font-weight:bold;text-decoration:underline;'>synonym:</span> 
            <span style='color:black;text-decoration:none;'>" . $row['synonym'] . "</span>";
 
 			echo "<br>";
 			echo "<br>";
 			echo "<br>";
 			echo  " <span style='color:#000F3C;font-size:17px;font-weight:bold;text-decoration:underline;'>antonym:</span> 
            <span style='color:black;text-decoration:none;'>" . $row['antonym'] . "</span>";
 		}
	}
 else 

 	echo  " <span style='color:#000F3C;font-size:20px;font-weight:bold;'>not yet added!</span> "; 
            

	}

else

{
	$sql = "SELECT * FROM words WHERE num='$random'";
	$result = mysqli_query($conn, $sql);

	if(mysqli_num_rows($result)>0)
 	{ 

 		while($row = mysqli_fetch_array($result))
 		{
            ?>
 			
 			<?php 

 			echo  " <span style='color:#000F3C;font-size:17px;font-weight:bold;text-decoration:underline;'>synonym:</span> 
            <span style='color:black;text-decoration:none;'>" . $row['synonym'] . "</span>";
 	
 			echo "<br>";
 			echo "<br>";
 			echo "<br>";
 			echo  " <span style='color:#000F3C;font-size:17px;font-weight:bold;text-decoration:underline;'>antonym:</span> 
            <span style='color:black;text-decoration:none;'>" . $row['antonym'] . "</span>";
 		}
	}
 	else 
		echo "Sorry! Something went wrong";

}

 ?>

</div>

<a href="https://forms.gle/KHKq3UucE814FEyo6"target="_blank" id="link" >add an adjective</a>

</center>
</body>

</html>