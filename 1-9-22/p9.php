<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="get">
        Enter days<input type="number" name="no" />
        <input type="submit" value="convert"/>
    </form>
</body>
</html>

<?php
$no= $_GET['no'];
$m = floor($no /30);
$da = floor($no % 30);
echo "month " .$m;

echo "days" .$da;


?>