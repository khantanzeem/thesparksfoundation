<?php
session_start();
$con=mysqli_connect('localhost','root','','banking_system');
//mysqli_select_db($con,'id8930489_spark');

$q="select * from mini_statement";
$result=mysqli_query($con,$q);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Mini Statement</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
	<style>
		.nav-ul {
			list-style-type: none;
			margin: 0;
			padding: 5px;
			verflow: hidden;
			
			}

		.nav-li {
		  float:left;
		}

		.nav-li a {
			
		  display: block;
		  color:#010114;
		  text-align: center;
		  padding: 8px 10px;
		  text-decoration: none;
		  text-transform:uppercase;
		}
		body{
			background-image:url("bank.jpg");
			background-repeat: no-repeat;
			background-size:cover;
			
		}
		table{
			text-align:center;
			margin-left: auto;
			margin-right: auto;
			border:4px solid gray;
			border-collapse:collapse;
			 background:  #00ffff;
			}
		th{
			color:#ff5c33;
			font-size:26px;
			padding:16px;
		}
		
		td{
			font-size:23px;
			color: black ;
			padding: 10px 20px 10px 22px;
		}
		tr{
			transition: background 0.3s, box-shadow 0.3s;
		}
		th,td{
			border-collapse:collapse;
			border:2px groove gray;
		}
		h2{
			padding:20px;
			font-size:35px;
			color:#805a46;
			text-shadow: 1px 1px black;
			text-align:center;
		}
		.buttons{
			
			right:42%;
			text-align:center;
		}
		.btn{
			height:50px;
			width:200px;
			font-size:16px;
			background:transparent;
			text-decoration: none;
			border: 1px solid white;
			position: relative;
			overflow: hidden;
			cursor:pointer;
			background-color:white;
		}
	</style>
	</head>
	<body>
		<br>
		<div class="buttons">
	<a href="index.php">
    <button class="btn" >HOME</button>
	</a>
		<h2 style="font-size: 55px;color: #e62e00;text-shadow: 2px 2px black;">User Information</h2>
   
		
		<table class="flat-table-1">
			<tr>
				<th>Sender</th>
				<th>Receiver</th>
				<th>Amount (in Rs)</th>
			</tr>
			<tr>
			
			<?php while($row = $result->fetch_assoc()) { ?>
			
			<tr>
				<td><?php echo $row["sender"]; ?></td>
				<td><?php echo $row["receiver"]; ?></td>
				<td><?php echo $row["amount"]; ?></td>
			</tr>
			<?php } ?>
		</table>
		<br>
		<br>
		
		
	</body>
</html>