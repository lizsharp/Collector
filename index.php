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

var_dump ($results);


