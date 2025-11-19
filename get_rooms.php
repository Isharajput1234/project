<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");

require "db.php";

$sql = "SELECT room_id, room_type, capacity FROM rooms ORDER BY room_id";
$result = $conn->query($sql);

$rooms = [];

while ($row = $result->fetch_assoc()) {
    $rooms[] = [
        "room_id" => $row["room_id"],
        "room_type" => $row["room_type"],
        "capacity" => $row["capacity"]
    ];
}

echo json_encode($rooms);
?>
