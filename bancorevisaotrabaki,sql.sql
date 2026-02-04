/* Lógico_1: */

CREATE TABLE clientes (
    id_cliente int PRIMARY KEY,
    nome varchar(100),
    cpf varchar(20),
    contato varchar(14),
    endereco varchar(100)
);

CREATE TABLE ordem_servico (
    id_ordem int PRIMARY KEY,
    id_cliente_ int,
    data_servico date,
    valor_final money
);

CREATE TABLE servico (
    id_servico int PRIMARY KEY,
    tipo_servico varchar(50),
    descricaot varchar(300),
    tempo_execucao_ time
);





select * from clientes