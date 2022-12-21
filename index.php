<?php
// if(isset($_POST['name'])){
$server="localhost";
$username="root";
$password="";   

$con = mysqli_connect($server,$username,$password);

if(!$con){
    die("connection to this database failed due to ". mysqli_connect_error());
}
// echo "success connecting to the db"
if (isset($_POST['name'])){

    $name= $_POST['name'];
    $age=$_POST['age'];
    $gender=$_POST['gender'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $desc_=$_POST['desc_'];
    $sql = "INSERT INTO `trip`.`trip` (`name`, `age`, `gender`, `email`, `phone`, `desc_`, `time`) VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc_', current_timestamp());";
// echo $sql;


if($con->query($sql)==true)
{
    echo "<script>alert('successfull')</script>";
    
}else{
    echo "faild".$sql ."<br>".$con->error;
}


$con->close();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to  Travel Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body><img class="kmimg" src="km.jpg" alt="my home">
    <div class="container">
        <h3>Welcome to Coloumbia Institue of engineering  Gao Trip Form</h3>
        <p> Enter your details to participation in this trip</p>
        <p style="color:green;" id="submitting">Thanks for submitting Your form, we are happy to see you joining this trip.</p>
        <p class=""></p>
        <form action="index.php" method="POST">
            <input type="text" name="name" id="name" placeholder="Enter Your Name">
            <input type="text" name="age" id="age" placeholder="Enter Your Age">
            <input type="text" name="gender" id="gender" placeholder="Enter Your Gender">
            <input type="text" name="email" id="email" placeholder="Enter Your Name">
            <input type="text" name="phone" id="phone" placeholder="Enter Your Phone Number">
            <input type="text" name="desc_" id="desc_" cols="30" rows="10" placeholder="Enter any Other information is here"></input>
            <button class="btn">Submit</button>
            <!-- <button class="btn">Reset</button> -->
        </form>
    </div>
    <script src="index.js"></script>
    <!-- INSERT INTO `trip` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('1', 'test name', '20', 'male', 'this@this.com', '9999999999', 'this is my first php admin message', '2022-12-11 18:05:07.000000'); -->

    
</body>
</html>