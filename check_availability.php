<?php
include "db.php";

$room = $_GET['room'];
$date = $_GET['date'];
$time = $_GET['time'];

// 1. Check timetable for class schedule
$sql1 = "SELECT * FROM timetable
         WHERE Room='$room' AND Time='$time'";
$res1 = mysqli_query($conn, $sql1);

// 2. Check existing bookings
$sql2 = "SELECT * FROM room_requests
         WHERE room='$room' AND date='$date' AND time_slot='$time' AND status='approved'";
$res2 = mysqli_query($conn, $sql2);

if (mysqli_num_rows($res1) > 0 || mysqli_num_rows($res2) > 0) {
    echo json_encode(["available" => false]);
} else {
    echo json_encode(["available" => true]);
}
?>
