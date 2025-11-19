<?php
header("Content-Type: application/json");
include "db.php";

if ($_SERVER['REQUEST_METHOD'] === "POST") {

    $id = $_POST['id'] ?? '';
    $status = $_POST['status'] ?? '';

    if (!$id || !$status) {
        echo json_encode(["success" => false, "message" => "Missing fields"]);
        exit;
    }

    $stmt = $conn->prepare("UPDATE room_requests SET status = ? WHERE request_id = ?");
    $stmt->bind_param("si", $status, $id);

    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Status updated"]);
    } else {
        echo json_encode(["success" => false, "message" => "Update failed"]);
    }

    exit;
}

echo json_encode(["success" => false, "message" => "Invalid request"]);
?>
