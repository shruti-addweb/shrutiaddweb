<?php

$num1=70;
$num2=80;
$num3=50;

if($num1<$num2 && $num1<$num3)
{
    echo "number one is smallest".$num1;

 if($num2<$num3)
{
    echo"number two is smallest".$num2;
}
else 
{
    echo "number three is smallest".$num3;
}
}
if($num1>$num2 && $num1>$num3)
{
    echo"number one is largest".$num1;

if($num2>$num3)
{
    echo"number two is largest".$num2;
}
else
{
    echo"number three is largest".$num3;
}
}

?>