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

$sql = $db->prepare('SELECT * FROM `garden_plants`');

//execute
$sql-> execute();

//fetch results
$results=$sql->fetchAll();

var_dump ($results);


