<?php
$p = 700;
$t = 1;
$r = 70;

$si = ($p * $t * $r)/100;
$ci = $p * pow((1+$r/100), $t) ;

echo "simple interest ".$si;
echo "<br>";
echo "compound interest ".$ci;

?>