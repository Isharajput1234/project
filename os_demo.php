<?php
/* Reader started → Active readers: 1
Reader started → Active readers: 2
Reader finished → Active readers: 1
Writer started → Exclusive access granted
Writer finished → Lock released
*/
include "os_readers_writers.php";

echo startRead() . "<br>";
echo startRead() . "<br>";
echo endRead() . "<br>";

echo startWrite() . "<br>";
echo endWrite() . "<br>";
?>
