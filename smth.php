<?php
 $servername = 'localhost';
 $username = 'id19786633_riya';
 $password = 'Riya!singla-2007';
 $db_name= 'id19786633_test';


$conn= new mysqli($servername,$username,$password, $db_name);

 if ($conn->connect_error) {
die ("connection unsuccessful".$conn->connect_error);
}


?> 

