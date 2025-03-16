CREATE TABLE cliente (
    CPF char(11) PRIMARY KEY,
    nome varchar(50) NOT NULL
);

CREATE TABLE produto (
    codigo_barras char(14) PRIMARY KEY,
    nome varchar(40) NOT NULL,
    marca varchar(20) NOT NULL,
    preco numeric(7,2) NOT NULL CHECK(preco >= 0.50 AND preco <= 2000.00),
    peso float -- perguntar no email sobre as unidades
);

CREATE TABLE funcionario (
    CPF char(11) PRIMARY KEY,
    nome varchar(40) NOT NULL,
    salario numeric(7,2) NOT NULL CHECK(salario >= 600.00 AND salario <= 4000.00),
    cargo varchar(12) NOT NULL CHECK(cargo IN ('Caixa','Limpeza','Repositor','Empacotador','Açougueiro','Padeiro')),
    data_nascimento date NOT NULL -- pergunta sobre usar as funções DAY, MONTH E YEAR p/ calcular a idade
);

CREATE TABLE caixa(
    CPF char(11) PRIMARY KEY,
    grau_escolaridade varchar(18) NOT NULL CHECK(grau_escolaridade IN ('Ensino Fundamental','Ensino Medio','Ensino Superior')),
    CPF_supervisor char(11),
	
    FOREIGN KEY(CPF) REFERENCES funcionario(CPF)
		ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY(CPF_supervisor) REFERENCES caixa(CPF)
		ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE venda(
    cod_nota_fiscal char(9) PRIMARY KEY CHECK(cod_nota_fiscal <> '000000000'),
    dia smallint NOT NULL, 
    mes smallint NOT NULL, 
    ano smallint NOT NULL,
    CPF_cliente char(11) NOT NULL, 
    CPF_caixa char(11) NOT NULL,
	
    FOREIGN KEY(CPF_cliente) REFERENCES cliente(CPF)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY(CPF_caixa) REFERENCES caixa(CPF)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE eh_comprado(
    cod_nota_fiscal char(9),
    codigo_barras char(13),
    quantidade smallint NOT NULL CHECK(quantidade > 0),
	
    PRIMARY KEY(cod_nota_fiscal, codigo_barras),

    FOREIGN KEY(cod_nota_fiscal) REFERENCES venda(cod_nota_fiscal)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

    FOREIGN KEY(codigo_barras) REFERENCES produto(codigo_barras)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);  