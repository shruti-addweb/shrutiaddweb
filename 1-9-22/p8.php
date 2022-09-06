<?php
$sec = 3610;
$hr = floor($sec/3600);
$min = floor($sec%3600/60);
$rmin=floor($sec%3600%60);

echo " hour " .$hr." minutes".$min." remaining second".$rmin;

?>