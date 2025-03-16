-- Alimentação do Banco de Dados: mercado

-- TABELA cliente
INSERT INTO cliente VALUES ('48948121855', 'Felipe Ottoni Pereira');
INSERT INTO cliente VALUES ('04340241121', 'Leticia Almeida Paulino de Alencar Ferreira');
INSERT INTO cliente VALUES ('49947358836', 'Ricardo Yugo Suzuki');
INSERT INTO cliente VALUES ('20493684792', 'Sahudy Montenegro Gonzalez');
INSERT INTO cliente VALUES ('86920473815', 'Demetria Devone Lovato');
INSERT INTO cliente VALUES ('73598164230', 'Beyonce Giselle Knowles');
INSERT INTO cliente VALUES ('01947350823', 'Edward Christopher Sheeran');
INSERT INTO cliente VALUES ('28463509174', 'Livia Thomaz Noritake');
INSERT INTO cliente VALUES ('60283971456', 'Cinthia Souza');
INSERT INTO cliente VALUES ('54371928605', 'Joao Alves');
INSERT INTO cliente VALUES ('07156842309', 'Joao Silva');
INSERT INTO cliente VALUES ('15309682745', 'Joao Silva');
INSERT INTO cliente VALUES ('49723018564', 'Sophia Helena');
INSERT INTO cliente VALUES ('73829015643', 'Lucas Rodrigues');
INSERT INTO cliente VALUES ('34215760928', 'Luan Lima');

-- insercoes que aciona o trigger valida_CPF_cliente
	--INSERT INTO cliente VALUES ('563lgb35710', 'Guilherme Pereira');

-- insercao que impedida pelo tamanho do dado char(11)
	--INSERT INTO cliente VALUES ('042.456.741-53', 'Guilherme Pereira');
	--INSERT INTO cliente VALUES ('842951312874', 'Guilherme Pereira');

-- TABELA produto
INSERT INTO produto VALUES ('7898746730123', 'Refrigerante','Coca Cola',5.50,1.0);
INSERT INTO produto VALUES ('7892984278301', 'Refrigerante','Guarana',5.50,1.0);
INSERT INTO produto VALUES ('7891427498756', 'Refrigerante','Dolly', 4.00, 0.350);
INSERT INTO produto VALUES ('7893059679402', 'Vinho','Countrywine', 11.50, 0.500);
INSERT INTO produto VALUES ('0526402901856', 'vinho','Chateau Mrgaux', 2000.00, 0.750);
INSERT INTO produto VALUES ('7896803987201', 'Agua','Fiji',14.00,0.330);
INSERT INTO produto VALUES ('7892305968741', 'Agua','Voss',50.00,0.800);
INSERT INTO produto VALUES ('7895349029012', 'Agua','Nestle',2.00,0.500);
INSERT INTO produto VALUES ('7892947540087', 'Suco de Uva','Dell Vale',12.00,1.0);
INSERT INTO produto VALUES ('7896301857245', 'Suco de Maracuja','Dell Vale',12.00,1.0);
INSERT INTO produto VALUES ('7894293059652', 'Leite','Italac',5.29,1.0);
INSERT INTO produto VALUES ('7891850348725', 'Leite','Ninho',6.39,1.0);
INSERT INTO produto VALUES ('7895713409563', 'Leite de soja','Ades',6.89,1.0);
INSERT INTO produto VALUES ('7895698475301','Arroz','Camil',22.99,5.0);
INSERT INTO produto VALUES ('7892690398752','Arroz','Camil',6.99,1.0);
INSERT INTO produto VALUES ('7894871039845','Arroz','Namorado',23.99,5.0);
INSERT INTO produto VALUES ('7894085360152','Arroz','Namorado',7.99,1.0);
INSERT INTO produto VALUES ('7892105893045','Feijao preto','Camil',9.29,1.0);
INSERT INTO produto VALUES ('7894902830475','Feijao carioca','Qualita',7.89,1.0);
INSERT INTO produto VALUES ('7896402901856','Oleo de soja','Liza',8.69,0.900);
INSERT INTO produto VALUES ('7895183749021','Azeite de Oliva Extra Virgem','Gallo',14.63,0.250);
INSERT INTO produto VALUES ('7899012563475','File Mignon','Swift',69.98,1.0);
INSERT INTO produto VALUES ('7891375694830','File de Salmao','Swift',75.97,1.0);
INSERT INTO produto VALUES ('7894098537062','Coxa de frango','Swift',12.96,1.0);
INSERT INTO produto VALUES ('7895048937201','Batata frita congelada','Sadia',25.99,1.5);
INSERT INTO produto VALUES ('7893567903284','Macarrao Espaguete','Barilla',11.49,0.500);
INSERT INTO produto VALUES ('7899784230513','Macarrao Penne','Barilla',15.29,0.500);
INSERT INTO produto VALUES ('7892568937014','Farinha de trigo','Dona Benta',5.59,1.0);
INSERT INTO produto VALUES ('7893047509814','Farinha de trigo','Sol',5.89,1.0);
INSERT INTO produto VALUES ('7896823049673','Acucar','Uniao',4.59,1.0);
INSERT INTO produto VALUES ('7894025814370','Sal','Cisne',3.15,1.0);
INSERT INTO produto VALUES ('7892716509856','Pao de forma','Panco',6.39,0.500);
INSERT INTO produto VALUES ('7898435067120','Pao de forma','Puma',6.89,0.480);
INSERT INTO produto VALUES ('7894293571082','Baguete','Padaria mercado',5.20,0.215);
INSERT INTO produto VALUES ('7891385702390','Pao de queijo','Forno de minas',16.99,0.400);
INSERT INTO produto VALUES ('7892405693780','Bomba de chocolate','Padaria mercado',2.20,0.050);
INSERT INTO produto VALUES ('7895701349012','Bomba de doce de leite','Padaria mercado',2.20,0.050);
INSERT INTO produto VALUES ('7895829041730','Barra de Chocolate ao leite','Lacta',4.99,0.080);
INSERT INTO produto VALUES ('7891543029485','Caixa de Bis','Lacta',5.03,0.126);
INSERT INTO produto VALUES ('7893870126983','Barra de chocolate Oreo','Milka',15.90,0.100);
INSERT INTO produto VALUES ('7896809357012','Achocolatado em po','Toddy',9.79,0.400);
INSERT INTO produto VALUES ('7893076450129','Achocolatado em po','Nescau',8.99,0.400);
INSERT INTO produto VALUES ('7892059837401','Bala de gelatina','Fini',7.69,0.09);
INSERT INTO produto VALUES ('7896342908710','Saco de bala','7Belo',25.95,0.500);
INSERT INTO produto VALUES ('7899710398456','Cafe em po','Uniao',19.50,0.500);
INSERT INTO produto VALUES ('7894309582036','Cafe em po','Pilao',19.99,0.500);
INSERT INTO produto VALUES ('7892590412038','Cafe em po','3Coracoes',15.98,0.500);
INSERT INTO produto VALUES ('7894350897230','Cappuccino','3Coracoes',12.94,0.200);
INSERT INTO produto VALUES ('7893452931802','Queijo Brie','Vigor',22.99,0.120);
INSERT INTO produto VALUES ('7896574392841','Queijo Gorgonzola','Tirolez',3.73,0.170);
INSERT INTO produto VALUES ('0529012563475','Queijo Granapadano','Soresina',160.0,1.0);

-- insercoes que aciona o trigger valida_cod_barras_trigger
	--INSERT INTO produto VALUES ('563lgb3571025', 'Queijo Mussarela','Vigor',22.99,0.120);

-- insercao que impedida pelo tamanho do dado char(13)
	--INSERT INTO produto VALUES ('7539516842793142', 'Saco de bala','Bolete',25.95,0.500);

-- TABELA funcionario
INSERT INTO funcionario VALUES ('30845672910', 'Bruna Scarpelli', 2700.00, 'Caixa', '2003-05-19'); -- Vai ser gerente
INSERT INTO funcionario VALUES ('97416308250', 'Jose Arnaldo Pereira', 1700.00, 'Caixa', '1961-03-29');
INSERT INTO funcionario VALUES ('20187406539', 'Gustavo Sanches Kis', 1500.00, 'Caixa', '2003-07-10');
INSERT INTO funcionario VALUES ('61538927407', 'Mariana Morales', 1500.00, 'Caixa', '2003-11-22');
INSERT INTO funcionario VALUES ('32740695810', 'Billie Eilish Pirate Oconnell', 1500.00, 'Caixa', '1993-03-30');
INSERT INTO funcionario VALUES ('70219384658', 'Larissa Macedo Machado', 1500.00, 'Caixa', '1993-03-30');
INSERT INTO funcionario VALUES ('95382140786', 'Victor Oliveira', 1200.00, 'Caixa', '1982-11-22');
INSERT INTO funcionario VALUES ('01947350823', 'Edward Christopher Sheeran', 1700.00, 'Caixa', '1991-02-17'); --É cliente tbm
INSERT INTO funcionario VALUES ('34215760928', 'Luan Lima', 1700.00, 'Caixa', '2000-02-29'); --É cliente tbm
INSERT INTO funcionario VALUES ('48948951255', 'Fernando Maciel', 1200.00, 'Caixa', '1999-01-31');
INSERT INTO funcionario VALUES ('58163097204', 'Larissa Bittencourt', 1300.00, 'Padeiro', '2003-01-21');
INSERT INTO funcionario VALUES ('84039715672', 'Natalia Leonel', 1850.00, 'Padeiro', '1999-01-21');
INSERT INTO funcionario VALUES ('28463509174', 'Livia Thomaz Noritake', 2000.00, 'Padeiro', '2003-04-17'); --É cliente tbm
INSERT INTO funcionario VALUES ('17524986036', 'Rafael Bertasso', 2000.00, 'Açougueiro', '2003-01-21');
INSERT INTO funcionario VALUES ('60283971456', 'Cinthia Souza', 2200.00, 'Açougueiro', '2001-11-17'); --É cliente tbm
INSERT INTO funcionario VALUES ('69081234757', 'Ilana Holtz', 900.00, 'Empacotador', '2002-12-06');
INSERT INTO funcionario VALUES ('58614329701', 'Maria Eduarda Paes', 900.00, 'Empacotador', '1998-04-30');
INSERT INTO funcionario VALUES ('40781629530', 'Maria Julia Ribeiro', 900.00, 'Empacotador', '1997-06-16');
INSERT INTO funcionario VALUES ('16250438970', 'Melanie Adele Martinez', 900.00, 'Empacotador', '2000-02-02');
INSERT INTO funcionario VALUES ('93041762850', 'Takashi Hiro', 950.00, 'Empacotador', '1996-03-13');
INSERT INTO funcionario VALUES ('27694103580', 'Pedro Fernandes', 1000.00, 'Repositor', '1999-07-30');
INSERT INTO funcionario VALUES ('83502149706', 'Toni Rodriguez', 1000.00, 'Repositor', '2003-05-31');
INSERT INTO funcionario VALUES ('45079126380', 'Thiago da Graça', 1000.00, 'Repositor', '1998-04-27');
INSERT INTO funcionario VALUES ('70396821542', 'Laysa Faro', 1000.00, 'Repositor', '2003-06-06');
INSERT INTO funcionario VALUES ('82104357906', 'Isabela de Paula', 900.00, 'Repositor', '1998-11-01');
INSERT INTO funcionario VALUES ('36507294810', 'Camila Cabello', 970.00, 'Limpeza', '2001-10-19');
INSERT INTO funcionario VALUES ('41958730682', 'Terezinha Cristina Ottoni Pereira', 1000.00, 'Limpeza', '1973-03-18');
INSERT INTO funcionario VALUES ('01827496073', 'Daniel Torres', 900.00, 'Limpeza', '1998-12-23');
INSERT INTO funcionario VALUES ('00980610240', 'Tiago Ottoni Batalim', 900.00, 'Limpeza', '1998-07-02');

-- insercoes impedidas por:
	-- Valor CPF, trigger valida_CPF_funcionario
		--INSERT INTO funcionario VALUES ('0O98OA1024O', 'Fabio Debatin', 900.00, 'Limpeza', '1998-07-02');

	-- valor CPF pelo tamanho definido no tipo char(11)
		--INSERT INTO funcionario VALUES ('0098061024099999', 'Thomaz Santana', 780.00, 'Caixa', '1998-05-02');

	-- Valor Salario, clausula check
		--INSERT INTO funcionario VALUES ('82104396325', 'Joao Vicente', 599.99, 'Repositor', '1998-11-01');
		--INSERT INTO funcionario VALUES ('74123357906', 'Isabela de Paula', 4001.00, 'Repositor', '1998-11-01');

	-- Valor da data invalida, pelo tipo date
		--INSERT INTO funcionario VALUES ('77777294810', 'Lauren Jauregui', 970.00, 'Limpeza', '2001-02-29'); -- o ano 2001 nao eh bissexto

	-- Valor da idade do funcionario ser menor que 18 anos, trigger idade_funcionario_trigger
		--INSERT INTO funcionario VALUES ('83502188888', 'Violeta Pera', 1000.00, 'Repositor', '2010-05-31');

-- TABELA caixa
INSERT INTO caixa VALUES ('30845672910', 'Ensino Superior', null); -- gerente
INSERT INTO caixa VALUES ('20187406539', 'Ensino Medio', '30845672910');
INSERT INTO caixa VALUES ('97416308250', 'Ensino Fundamental', '30845672910');
INSERT INTO caixa VALUES ('61538927407', 'Ensino Fundamental', '30845672910');
INSERT INTO caixa VALUES ('32740695810', 'Ensino Superior', '30845672910');
INSERT INTO caixa VALUES ('70219384658', 'Ensino Medio', '30845672910');
INSERT INTO caixa VALUES ('95382140786', 'Ensino Medio', '30845672910');
INSERT INTO caixa VALUES ('01947350823', 'Ensino Medio', '30845672910');
INSERT INTO caixa VALUES ('34215760928', 'Ensino Medio', '30845672910');

-- insercoes que serao impedidas
	-- Tentativa de um caixa ser seu proprio supervisor, trigger verifica_gerenciamento_trigger
		--INSERT INTO caixa VALUES ('48948951255', 'Ensino Fundamental', '48948951255');
		
	-- Tentativa de inserir caixa com grau de escolaridade invalido, clausula check
		--INSERT INTO caixa VALUES ('48948951255', 'Ensino Tecnico', '30845672910');
		
	-- Tentativa de inserir caixa nao registrado como funcionario, clausula FOREIGN KEY
		--INSERT INTO caixa VALUES ('12345678955', 'Ensino Fundamental', '30845672910');

-- TABELA venda
INSERT INTO venda VALUES ('000000016',21,01,2023,'48948121855','30845672910');
INSERT INTO venda VALUES ('000000018',31,03,2023,'48948121855','20187406539');
INSERT INTO venda VALUES ('000000003',29,02,2020,'48948121855','61538927407');

INSERT INTO venda VALUES ('000000017',27,01,2023,'04340241121','30845672910');
INSERT INTO venda VALUES ('000000014',15,09,2022,'04340241121','70219384658');
INSERT INTO venda VALUES ('000000007',02,07,2021,'04340241121','70219384658');

INSERT INTO venda VALUES ('000000006',05,01,2021,'49947358836','30845672910');
INSERT INTO venda VALUES ('000000005',15,06,2020,'49947358836','20187406539');

INSERT INTO venda VALUES ('000000015',24,12,2022,'20493684792','30845672910');

INSERT INTO venda VALUES ('000000010',01,04,2021,'86920473815','97416308250');
INSERT INTO venda VALUES ('000000004',30,05,2020,'86920473815','97416308250');

INSERT INTO venda VALUES ('000000001',12,08,2019,'73598164230','61538927407');
INSERT INTO venda VALUES ('000000002',12,08,2019,'73598164230','61538927407');

INSERT INTO venda VALUES ('000000008',07,10,2021,'01947350823','61538927407');

INSERT INTO venda VALUES ('000000009',13,11,2021,'28463509174','32740695810');

INSERT INTO venda VALUES ('000000012',26,07,2022,'54371928605','32740695810');
INSERT INTO venda VALUES ('000000011',05,04,2022,'54371928605','95382140786');

INSERT INTO venda VALUES ('000000013',15,09,2022,'07156842309','95382140786');

INSERT INTO venda VALUES ('000000019',31,03,2023,'15309682745','01947350823');

-- insercoes que serao impedidas
	-- Tentativa de nota fiscal invalida (composta por letra), valida_nota_fiscal_trigger
		--INSERT INTO venda VALUES ('A0oo00020',31,03,2023,'15309682745','01947350823');
		
	-- valor cod_nota_fiscal pelo tamanho definido em char(9)
		--INSERT INTO venda VALUES ('00000000020',08,11,2022,'07156842309','95382140786');
	
	-- Tentativa de data invalida, venda_verifica_data_trigger
		--INSERT INTO venda VALUES ('000000020',29,02,2023,'07156842309','95382140786');
		--INSERT INTO venda VALUES ('000000020',08,13,2022,'07156842309','95382140786');
		--INSERT INTO venda VALUES ('000000020',31,04,2022,'07156842309','95382140786');

-- TABELA eh_comprado
INSERT INTO eh_comprado VALUES ('000000016','7892568937014',1);
INSERT INTO eh_comprado VALUES ('000000016','7896823049673',5);
INSERT INTO eh_comprado VALUES ('000000016','7896402901856',2);
INSERT INTO eh_comprado VALUES ('000000016','7893059679402',3);

INSERT INTO eh_comprado VALUES ('000000018','7891375694830',2);
INSERT INTO eh_comprado VALUES ('000000018','7894871039845',2);
INSERT INTO eh_comprado VALUES ('000000018','7893567903284',3);
INSERT INTO eh_comprado VALUES ('000000018','7893870126983',1);

INSERT INTO eh_comprado VALUES ('000000003','7893059679402',3);
INSERT INTO eh_comprado VALUES ('000000003','7896301857245',2);
INSERT INTO eh_comprado VALUES ('000000003','7891427498756',1);
INSERT INTO eh_comprado VALUES ('000000003','7892716509856',2);

INSERT INTO eh_comprado VALUES ('000000017','7893059679402',2);
INSERT INTO eh_comprado VALUES ('000000017','7899012563475',1);
INSERT INTO eh_comprado VALUES ('000000017','7896809357012',1);
INSERT INTO eh_comprado VALUES ('000000017','7891850348725',6);

INSERT INTO eh_comprado VALUES ('000000014','7898746730123',2);
INSERT INTO eh_comprado VALUES ('000000014','7896301857245',1);
INSERT INTO eh_comprado VALUES ('000000014','7892690398752',2);
INSERT INTO eh_comprado VALUES ('000000014','7892105893045',2);

INSERT INTO eh_comprado VALUES ('000000007','7894350897230',2);
INSERT INTO eh_comprado VALUES ('000000007','7892590412038',4);
INSERT INTO eh_comprado VALUES ('000000007','7894293059652',2);
INSERT INTO eh_comprado VALUES ('000000007','7891385702390',3);

INSERT INTO eh_comprado VALUES ('000000006','7898746730123',1);
INSERT INTO eh_comprado VALUES ('000000006','7891375694830',1);
INSERT INTO eh_comprado VALUES ('000000006','7895048937201',2);
INSERT INTO eh_comprado VALUES ('000000006','7895701349012',3);
INSERT INTO eh_comprado VALUES ('000000006','7891543029485',10);
INSERT INTO eh_comprado VALUES ('000000006','7896342908710',1);

INSERT INTO eh_comprado VALUES ('000000005','7894293571082',1);
INSERT INTO eh_comprado VALUES ('000000005','7891385702390',2);
INSERT INTO eh_comprado VALUES ('000000005','7892947540087',2);
INSERT INTO eh_comprado VALUES ('000000005','7893059679402',2);
INSERT INTO eh_comprado VALUES ('000000005','7896402901856',3);

INSERT INTO eh_comprado VALUES ('000000015','0526402901856',2);
INSERT INTO eh_comprado VALUES ('000000015','7892305968741',5);
INSERT INTO eh_comprado VALUES ('000000015','7896803987201',5);
INSERT INTO eh_comprado VALUES ('000000015','0529012563475',1);
INSERT INTO eh_comprado VALUES ('000000015','7893452931802',3);
INSERT INTO eh_comprado VALUES ('000000015','7896342908710',3);
INSERT INTO eh_comprado VALUES ('000000015','7894309582036',1);
INSERT INTO eh_comprado VALUES ('000000015','7891543029485',1);
INSERT INTO eh_comprado VALUES ('000000015','7899012563475',2);

INSERT INTO eh_comprado VALUES ('000000010','7892947540087',1);
INSERT INTO eh_comprado VALUES ('000000010','7895349029012',6);
INSERT INTO eh_comprado VALUES ('000000010','7899012563475',1);
INSERT INTO eh_comprado VALUES ('000000010','7899784230513',3);
INSERT INTO eh_comprado VALUES ('000000010','0529012563475',1);

INSERT INTO eh_comprado VALUES ('000000004','7895183749021',2);
INSERT INTO eh_comprado VALUES ('000000004','7892590412038',1);

INSERT INTO eh_comprado VALUES ('000000001','0526402901856',1);
INSERT INTO eh_comprado VALUES ('000000001','7896803987201',12);
INSERT INTO eh_comprado VALUES ('000000001','7893567903284',1);
INSERT INTO eh_comprado VALUES ('000000001','7895183749021',1);

INSERT INTO eh_comprado VALUES ('000000002','7891375694830',3);

INSERT INTO eh_comprado VALUES ('000000008','7893059679402',3);
INSERT INTO eh_comprado VALUES ('000000008','7892984278301',4);
INSERT INTO eh_comprado VALUES ('000000008','7894098537062',1);
INSERT INTO eh_comprado VALUES ('000000008','7896823049673',1);

INSERT INTO eh_comprado VALUES ('000000009','7893076450129',2);
INSERT INTO eh_comprado VALUES ('000000009','7896574392841',1);
INSERT INTO eh_comprado VALUES ('000000009','7892405693780',5);

INSERT INTO eh_comprado VALUES ('000000012','7895829041730',1);
INSERT INTO eh_comprado VALUES ('000000012','7894902830475',2);

INSERT INTO eh_comprado VALUES ('000000011','7895713409563',2);
INSERT INTO eh_comprado VALUES ('000000011','7894025814370',1);
INSERT INTO eh_comprado VALUES ('000000011','7895829041730',2);

INSERT INTO eh_comprado VALUES ('000000013','7893870126983',3);

INSERT INTO eh_comprado VALUES ('000000019','7892059837401',2);
INSERT INTO eh_comprado VALUES ('000000019','7894025814370',1);

-- insercoes impedidas por:
	-- Tentativa de inserir atributo estrangeiro que nao existe em sua tabela de origem
		-- INSERT INTO eh_comprado VALUES ('004000022','7894025814370',1);
		--INSERT INTO eh_comprado VALUES ('000000019','7863251114370',1);

-- Para exibir as tabelas 
Select * from cliente;
Select * from produto;
Select * from funcionario;
Select * from caixa;
Select * from venda;
Select * from eh_comprado;


