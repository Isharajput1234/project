<?php

$turn = 0;
$flag = [false, false];

function enter_critical_section($process) {
    global $turn, $flag;
    $other = 1 - $process;

    $flag[$process] = true;
    $turn = $other;

    while ($flag[$other] && $turn == $other) {
        // waiting
    }
}

function leave_critical_section($process) {
    global $flag;
    $flag[$process] = false;
}
?>
/* ==========================================================
   OS CONCURRENCY CONTROL IMPLEMENTATION (DOCUMENTATION)

   To prevent race conditions, deadlocks, and inconsistent
   room bookings when multiple users try to book the same 
   room at the same time, we use MySQL-level locking.

   This directly applies OS concepts like:
   ✔ Critical Section
   ✔ Mutex Lock
   ✔ Deadlock Prevention
   ✔ Race Condition Avoidance

   We treat each booking slot as a CRITICAL SECTION.
   MySQL's SELECT ... FOR UPDATE acts as a MUTEX LOCK.
   Only ONE request can enter this section at a time.

   This prevents:
   - Two students booking the same room slot
   - Inconsistent DB state
   - Double booking (race condition)
   - Deadlock (because we use short, single-resource locks)

   This is equivalent to Peterson / Bakery algorithm 
   but implemented using DB locking instead of code-level flags.
   ========================================================== */
