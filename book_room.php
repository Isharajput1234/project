<?php
header("Content-Type: application/json");
include "db.php";

$input = json_decode(file_get_contents("php://input"), true);

if (!$input) {
    echo json_encode(["status" => "error", "message" => "No JSON received"]);
    exit;
}

$user_id   = $input["user_id"]   ?? "";
$user_role = $input["user_role"] ?? "";
$room      = $input["room"]      ?? "";
$date      = $input["date"]      ?? "";
$time_slot = $input["time_slot"] ?? "";
$purpose   = $input["purpose"]   ?? "";

if (empty($user_id) || empty($user_role) || empty($room) || empty($date) || empty($time_slot) || empty($purpose)) {
    echo json_encode(["status" => "error", "message" => "Missing fields"]);
    exit;
}

$stmt = $conn->prepare("
    INSERT INTO room_requests 
    (requester_id, requester_role, room, date, time_slot, purpose, status)
    VALUES (?, ?, ?, ?, ?, ?, 'pending')
");

$stmt->bind_param("ssssss", $user_id, $user_role, $room, $date, $time_slot, $purpose);

if ($stmt->execute()) {
    echo json_encode(["status" => "success"]);
} else {
    echo json_encode(["status" => "error", "message" => $stmt->error]);
}
