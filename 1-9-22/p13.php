<?php
 $n = 7649;
 $f=floor($n/1000);  
$x= floor($n%1000);
$s= floor($x/100);
 $y= floor($x%100);
$t= floor($y/10);
 $l= floor($y%10);
 $rev= floor($l*1000+$t*100+$s*10+$f);

 echo "Answer of reverse number  " .$rev;

?>