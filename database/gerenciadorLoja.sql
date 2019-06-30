CREATE TABLE lojas (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(13) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)

)

CREATE TABLE produtos(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    loja_id INT UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL NOT NULL,
    quantidade INT UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_produtos_lojas_id_lojas_id FOREIGN KEY (loja_id) REFERENCES lojas(id)
)

INSERT INTO lojas(nome, telefone, endereco) VALUES ('codeeasy', '0000-0000', 'Rua CE');

INSERT INTO produtos (loja_id, nome, preco, quantidade) VALUES (1, 'teclado', 40.00, 20);

/*Exibindo os valores das tabelas relacionadas*/
SELECT 
    lojas.nome AS lojas, 
    produtos.nome AS produto, 
    produtos.preco AS preco,
    produtos.quantidade AS quantidade 
FROM produtos
INNER JOIN lojas ON produtos.loja_id = lojas.id
WHERE 
    produtos.nome = 'teclado'
ORDER BY produtos.nome    
;

/*Deletando valores*/
DELETE FROM produtos
WHERE nome = 'mouse';

/*Atualizando valores*/
UPDATE produtos
SET 
    nome = 'mouse',
    quantidade = 100
WHERE
    nome = 'teclado'
;