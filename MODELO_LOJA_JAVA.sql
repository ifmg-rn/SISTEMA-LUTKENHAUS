DROP DATABASE IF EXISTS dblojaetec;
CREATE DATABASE dblojaetec;
USE dblojaetec;

CREATE TABLE usuarios (
	iduser int primary key auto_increment,
    usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null,
    perfil varchar(20) not null
);

CREATE TABLE clientes (
	idcli int primary key auto_increment,
    nomecli varchar(50) not null,
    endcli varchar(100),
    fonecli varchar(15) not null,
    emailcli varchar(50)
);

CREATE TABLE ordem_servico (
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(150) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references clientes(idcli)
);

INSERT INTO usuarios (usuario, fone, login, senha, perfil) VALUES 
  ('Anderson Vanin', '1234567890', 'anderson', '1234', 'admin'),
  ('Fulano da Silva', '0987654321', 'fulano', 'adminpass', 'admin'),
  ('Zezinho da Silva', '1122334455', 'zezinho', 'userpass', 'user');

INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES
  ('Cliente A', 'Rua 1, 123', '999888777', 'clientea@email.com'),
  ('Cliente B', 'Av. 2, 456', '123456789', 'clienteb@email.com'),
  ('Cliente C', 'Travessa 3, 789', '987654321', 'clientec@email.com');

INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
  ('Notebook Dell', 'Tela não liga', 'Troca da tela', 'Tecnico1', 250.00, 1),
  ('Impressora HP', 'Não imprime', 'Limpeza cabeças', 'Tecnico2', 80.00, 2),
  ('Celular Samsung', 'Não carrega', 'Troca bateria', 'Tecnico3', 120.50, 3);