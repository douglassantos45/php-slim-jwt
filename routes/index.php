<?php
use function src\slimConfiguration;
use app\controllers\ProductController;

$app = new \Slim\App(slimConfiguration());

$app->get('/', ProductController::class . ':getProducts');



$app->run();

