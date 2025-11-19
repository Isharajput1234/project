<?php
header("Content-Type: application/json");
include "db.php";

$sql = "SELECT 
            request_id AS id,
            requester_id AS user,
            requester_role AS user_role,
            room,
            purpose,
            date,
            time_slot,
            status,
            created_at
        FROM room_requests
        ORDER BY request_id DESC";

$result = $conn->query($sql);

$requests = [];

while ($row = $result->fetch_assoc()) {
    $requests[] = $row;
}

echo json_encode($requests);
?>
