create table personagem (
id_personagem int primary key, 
nome_personagem char(20) not null, 
descricao char (20) not null,
afiliacao char (20) not null,
raca char (120) not null

)

 create table item (
id_item int primary key,
	nome char (20) not null,
	tipo char (20) not null,
	efeito char (20) not null,
	raridade char (60) not null
	
)

create table "local" (
	id_local int primary key,
	nome_local char (20) not null,
	descricao char (20) not null,
	tipo_local char (20) not null
)

create table raca (
nome_raca char (20) not null,
	habilidade_especial char (40) not null

)
