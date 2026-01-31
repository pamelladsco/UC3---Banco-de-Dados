select nome_cliente from cliente 
where nome_cliente = 'João'
insert into cliente (id_cliente, nome_cliente, sobrenome_cliente)
values 
(7, 'João', 'Fiuza'),
(8, 'Pedro', 'Wilges'),
(9, 'João', 'Silva')

delete from cliente cascade
where id_cliente = 7 

select * from cliente 

select id_cliente, count (id_cliente) as quantidade_cliente from cliente
group by id_cliente
having id_cliente < 8

alter table cliente add genero char(20)
alter table cliente add cpf char(11)
alter table cliente alter column salario type money 

select * from cliente
order by id_cliente


insert into cliente (id_cliente, nome_cliente, sobrenome_cliente)
values 
(10, 'Valentina', 'Camargo'),
(11, 'Liege', 'Locatelli'),
(12, 'Pamella', 'Schmitz')

update cliente set genero = 'feminino'
where id_cliente = 12

update cliente set cpf = '87086476072'
 
update cliente set salario = 10.000
where genero = 'feminino'

