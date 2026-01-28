CREATE TABLE usuario (
    email char(160),
    nome_Usuario char(180),
    instagram_usuario char(50),
    id_usuario int PRIMARY KEY
);

CREATE TABLE local (
    nome_local char(80),
    cidade char(80),
    tipo char(20),
    id_local int PRIMARY KEY
);

CREATE TABLE viagem (
    titulo char(80),
    destino char(80),
    data_inicio date,
    data_termino date,
    id_viagem int PRIMARY KEY
);

CREATE TABLE despesas (
    Valor_despesa money,
    data_despesa date,
    hora_despesa timestamp,
    descricao char(80),
    categoria char(12),
    id_despesa int PRIMARY KEY
);

CREATE TABLE avaliacao_avalia (
    fk_Usuario_ID_usuario int,
    fk_Local_ID_local int
);

CREATE TABLE E__Assoc__2_faz (
    fk_Viagem_ID_viagem int ,
    fk_Usuario_ID_usuario int 
);

CREATE TABLE despesa_tem (
    fk_Local_ID_local int,
    fk_Despesas_ID_despesa int
);
 
ALTER TABLE avaliacao_avalia ADD CONSTRAINT FK_avaliacao_avalia_1
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE avaliacao_avalia ADD CONSTRAINT FK_avaliacao_avalia_2
    FOREIGN KEY (fk_Local_ID_local)
    REFERENCES Local (ID_local);
 
ALTER TABLE E__Assoc__2_faz ADD CONSTRAINT FK_E__Assoc__2_faz_1
    FOREIGN KEY (fk_Viagem_ID_viagem)
    REFERENCES Viagem (ID_viagem);
 
ALTER TABLE E__Assoc__2_faz ADD CONSTRAINT FK_E__Assoc__2_faz_2
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE despesa_tem ADD CONSTRAINT FK_despesa_tem_1
    FOREIGN KEY (fk_Local_ID_local)
    REFERENCES Local (ID_local);
 
ALTER TABLE despesa_tem ADD CONSTRAINT FK_despesa_tem_2
    FOREIGN KEY (fk_Despesas_ID_despesa)
    REFERENCES Despesas (ID_despesa);