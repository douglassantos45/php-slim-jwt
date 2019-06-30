<?php

require_once './vendor/autoload.php';
require_once './env.php';
require_once './src/slimConfiguration.php';
require_once './routes/index.php';

use Psr\Http\Message\RequestInterface;
use Psr\Http\Message\ResponseInterface;


//Tratamento de Erro
$configuration = [
    'settings' => [
        'displayErrorDetails' => true,
    ],
];
$config = new \Slim\Container($configuration);
$app = new \Slim\App($config);


//Setor de requisições
$app->post('/', function(Request $request, Response $response, array $args): Response {


    return $response;
});

//Executando
$app->run();