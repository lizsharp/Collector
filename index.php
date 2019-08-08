<?php

$db = new PDO (
    'mysql:host=192.168.20.20; dbname=Collector',
    'root',
    ''
);

$db->setAttribute(
    PDO::ATTR_DEFAULT_FETCH_MODE,
    PDO::FETCH_ASSOC
);

$sql = $db->prepare('SELECT `id`,`plant_name`, `latin_name`, `plant_type`,`position`, `soil_type`, `colour`, `cost`, `image` FROM `garden_plants`');

$sql-> execute();

$results=$sql->fetchAll();

//var_dump ($results);


?>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
    <title>The Gardeners Collection</title>
    <link rel="stylesheet" type="text/css" href="normalize.css">
    <link rel="stylesheet" type="text/css" href="style.css">
<body>
<p>test this works</p>
<p> and that this works too</p>

</body>

</head>
</html>
