<?php
header("Content-Type: application/json");
include "db.php";

$rows = [];

$q = $conn->query("SELECT 
        request_id AS id,
        requester_id AS user_id,
        requester_role AS user_role,
        room,
        date,
        time_slot,
        purpose,
        status,
        created_at
    FROM room_requests
    ORDER BY created_at DESC");

while($r = $q->fetch_assoc()) {
    $rows[] = $r;
}

echo json_encode($rows);
?>
