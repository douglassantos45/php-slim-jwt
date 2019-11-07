/*
** ALUNO
*/
CREATE TABLE estagiario (
    name VARCHAR(255),
    cpf INTEGER,
    rg INTEGER,
    orgao_expedidor VARCHAR(20),
    endereco VARCHAR(20),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    uf VARCHAR(10),
    cep INTEGER,
    data_nascimento DATE,
    telefone VARCHAR(55),
    e_mail VARCHAR(55),
    curso VARCHAR(20),
    ingresso DATE,
    termino DATE,
    grau VARCHAR(10),
    created_at TIMESTAMP    
);

/*
** EMPRESA
*/

CREATE TABLE empresa (
    name VARCHAR(255),
    endereco VARCHAR(20),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    cep INTEGER,
    uf VARCHAR(10),
    cnpj INTEGER,
    telefone VARCHAR(255),
    representacao_geral VARCHAR(255),
    cargo VARCHAR(55),
    area_atuacao VARCHAR(55),
    supervisor VARCHAR(255),
    cargo_supervisor VARCHAR(255),
    created_at TIMESTAMP    
);

/*
** INSTITUIÇÃO
*/

CREATE TABLE instituto (
    name VARCHAR(255),
    endereco VARCHAR(255),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    cep INTEGER,
    uf VARCHAR(20),
    cnpj INTEGER,
    telefone VARCHAR(255),
    representacao_geral VARCHAR(255),
    cargo VARCHAR(255),
    prof_orientador VARCHAR(255),
    email_prof_orientador VARCHAR(255),
    created_at TIMESTAMP 
);

/*
** PLANO DE ESTÁGIO
*/

CREATE TABLE plano_estagio (
    objetivo VARCHAR(255),
    competencias VARCHAR(255),
    ativ_desenvolvidas VARCHAR(255),
    created_at TIMESTAMP
);
