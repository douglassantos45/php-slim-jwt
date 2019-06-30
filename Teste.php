<?php

//Aplicando Class ao Request e Response
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

require_once './vendor/autoload.php';


//Tratamento de Erro
$configuration = [
    'settings' => [
        'displayErrorDetails' => true,
    ],
];
$config = new \Slim\Container($configuration);
$app = new \Slim\App($config);


//Usando o Slim
//Criando um objeto Slim
$app = new Slim\App();//Primeira aplicação


//Criando MIDDLEWARE
$middleware = function(Request $request, Response $response, $next): Response {
    
    //Executando um determinado middleware
    $response->getBody()->write('Dentro do Middleware<br />');

    //Execução de uma operação
    $response = $next($request, $response);

    //Finalidando
    $response->getBody()->write('<br />Finalizando a Operação');

    return $response;
};


//Enviando uma requisição com POST
$app->post('/produtos', function(Request $request, Response $response, array $args): Response {
    
    $data = $request->getParsedBody();

    $nome = $data['nome'] ?? Undefined;

    $response->getBody()->write("Produto {$nome}");

    return $response;

})->add($middleware);//Primeiro executa o middleware


//Método PUT
/*$app->put('/produtos', function(Request $request, Response $response, array $args) {
    
    $data = $request->getParsedBody();

    $nome = $data['nome'] ?? Undefined;

    return $response->getBody()->write("Produto {$nome}");
});*/

//Método DELETE
/*$app->delete('/produtos', function(Request $request, Response $response, array $args) {
    
    $data = $request->getParsedBody();

    $nome = $data['nome'].delete;

    return $response->getBody()->write("Produto {$nome}");
});*/



$app->run();

/*
//Enviando uma requesição com GET
$app->get('/produtos[/{nome}]', function(Request $request, Response $response, array $args){

    //Enviando limite
    $limite = $request->getQueryParams()['limit'] ?? Undefined; //Definindo um valor padrão(10) caso não retorne nada

    //Retornando um nome, com valor padrão Undefined
    $nome = $args['nome'] ?? 'Undefined';

    //Usando o padrão do PHP
    //$limite = $_GET['limit'];

    return $response->getBody()->write("{$limite} Produtos do banco de dados, com nome {$nome}");

    //return $response->getBody()->write('Hello, World');
});*/