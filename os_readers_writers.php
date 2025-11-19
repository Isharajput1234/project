<?php
/* Reader–Writer Problem Simulation
Shows mutual exclusion
Prevents writer–reader conflict
Demonstrates synchronization
*/

$read_count = 0;
$writer_active = false;

function startRead() {
    global $read_count, $writer_active;

    if ($writer_active) {
        return "Reader waiting (writer active)";
    }

    $read_count++;
    return "Reader started → Active readers: $read_count";
}

function endRead() {
    global $read_count;
    $read_count--;
    return "Reader finished → Active readers: $read_count";
}

function startWrite() {
    global $writer_active, $read_count;

    if ($writer_active || $read_count > 0) {
        return "Writer waiting (readers/writer active)";
    }

    $writer_active = true;
    return "Writer started → Exclusive access granted";
}

function endWrite() {
    global $writer_active;
    $writer_active = false;
    return "Writer finished → Lock released";
}
?>
