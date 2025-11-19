<?php
/* OS Algorithm Simulation (Not connected to real booking)
   Demonstrates Peterson’s mutual exclusion algorithm
*/

$turn = 0;
$flag = [false, false];

function enter_critical_section($process) {
    global $turn, $flag;
    $other = 1 - $process;

    $flag[$process] = true;
    $turn = $other;

    while ($flag[$other] && $turn == $other) {
        // waiting for other process to finish
    }
}

function leave_critical_section($process) {
    global $flag;
    $flag[$process] = false;
}
?>
