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
$results = $sql->fetchAll();

function displayData($plants) {
    $plantHtml = '';
    foreach ($plants as $plant) {
        $plantHtml .='<div>
            <ul>
            <li>'. 'Name: ' . $plant['plant_name'] .'</li>
            <li>'. 'Latin name: ' . $plant['latin_name'] .'</li>
            <li>'. 'Type: ' .$plant['plant_type'] .'</li>
            <li>'. 'Position: '. $plant['position'] .'</li>
            <li>'. 'Soil type: ' . $plant['soil_type'] .'</li>
            <li>'. 'Colour:' . $plant['colour'] .'</li>
            <li>'. 'Cost: ' . $plant['cost'] .'</li>
            <br>
            </ul>
            </div>';
    }
   return $plantHtml;
}

$plantDisplay = displayData($results)


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
</head>
<body>
    <?php echo $plantDisplay; ?>
</body>


</html>
