<?php
$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "ambugo";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$fullName = $conn->real_escape_string($_POST['fullName']);
$email = $conn->real_escape_string($_POST['email']);
$address = $conn->real_escape_string($_POST['address']);
$ambulanceType = (int) $_POST['ambulanceType'];
$hospital = (int) $_POST['hospital'];
$notes = $conn->real_escape_string($_POST['notes']);


$conn->query("INSERT INTO user (Name, Email, Patient, User_Type, Address, User_insurance_id, Tracking_id)
              VALUES ('$fullName', '$email', 'Self', 'Normal', '$address', 1, 1)");
$user_id = $conn->insert_id;


$ambulanceQuery = "SELECT Ambulance_id, Driver_id FROM ambulance WHERE Status = 'Available' ORDER BY RAND() LIMIT 1";
$ambulanceResult = $conn->query($ambulanceQuery);

if ($ambulanceResult && $ambulanceResult->num_rows > 0) {
    $ambulanceRow = $ambulanceResult->fetch_assoc();
    $ambulance_id = $ambulanceRow['Ambulance_id'];
    $driver_id = $ambulanceRow['Driver_id'];
} else {
    die("No available ambulances at the moment.");
}


$conn->query("INSERT INTO location (Longitude, Latitude, Address, Ambulance_id)
              VALUES (0.0, 0.0, '$address', $ambulance_id)");
$location_id = $conn->insert_id;


$status = "Pending";


$sql = "INSERT INTO booking (Hospital_id, Status, User_id, Ambulance_id, Driver_id, Location_id, Ambulance_Type_id)
        VALUES ($hospital, '$status', $user_id, $ambulance_id, $driver_id, $location_id, $ambulanceType)";

if ($conn->query($sql) === TRUE) {
    
    $conn->query("UPDATE ambulance SET Status = 'In Use' WHERE Ambulance_id = $ambulance_id");

    echo "<h2>Booking Successful!</h2>";
    echo "<p>Thank you, <b>$fullName</b>. Your request has been received.</p>";
    echo "<p>Ambulance Assigned: <strong>$ambulance_id</strong><br>Driver ID: <strong>$driver_id</strong></p>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
