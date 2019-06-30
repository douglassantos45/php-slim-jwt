<?php
use function src\slimConfiguration;
use app\controllers\ProductController;

$app = new \Slim\App(slimConfiguration());


//Colano as rotas
$app->get('/', ProductController::class . ':getProducts');



$app->run();

