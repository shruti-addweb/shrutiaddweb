<?php
$num1=40;
$num2=60;
$num3=50;
if ($num1 > $num2 && $num1 < $num3 || $num1 > $num3 && $num1 < $num2)
{
    $num1=$num2;
echo "The second largest number is ".$num1;
}
else if ($num2 > $num1 && $num2 < $num3 || $num2 > $num3 && $num2 < $num1)
{
   
    echo "The second largest number is ".$num2;
}
else
{
    $num3=$num2;
echo "The second largest number is ".$num3;
}




?>