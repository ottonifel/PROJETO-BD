
--Consulta 1
SELECT mes, ano, SUM(preco_total) as lucro
FROM (SELECT cod_nota_fiscal , SUM(preco_itens) AS preco_total, mes, ano
		FROM (SELECT * , pr.preco * comp.quantidade AS preco_itens
				FROM eh_comprado comp NATURAL JOIN produto pr NATURAL JOIN venda v) t1
		GROUP BY cod_nota_fiscal, ano, mes
		ORDER BY cod_nota_fiscal, ano, mes) t2
GROUP BY ano, mes
ORDER BY ano, mes

--consulta 2
SELECT mes, ano, COUNT(*)
FROM (SELECT v.mes, v.ano, preco_total
	  FROM (SELECT cod_nota_fiscal , SUM(preco_itens) AS preco_total
            FROM (SELECT * , pr.preco * comp.quantidade AS preco_itens
                  FROM eh_comprado comp NATURAL JOIN produto pr) t1
            GROUP BY cod_nota_fiscal) t2 NATURAL JOIN venda v
WHERE v.mes = 1 AND v.ano = 2023 AND preco_total >= 40.00) t3
GROUP BY mes, ano

-- Consulta 3
SELECT nome, marca ,SUM(quantidade) AS quantidade_total_vendida
FROM produto NATURAL JOIN eh_comprado comp NATURAL JOIN venda v
WHERE ano = 2020
GROUP BY codigo_barras
ORDER BY quantidade_total_vendida DESC

-- Consulta 4
SELECT nome, marca FROM produto
WHERE codigo_barras NOT IN
(SELECT codigo_barras FROM eh_comprado NATURAL JOIN venda 
WHERE cpf_cliente = '48948121855' AND ano = 2023);

-- Consulta 5
-- OBS: tem mais de um repositor recebendo o salário máximo
SELECT f.CPF, f.nome, f.salario, f.cargo
FROM funcionario f INNER JOIN (SELECT cargo, MAX(salario) AS max_salario
							   FROM funcionario
                               GROUP BY cargo
							  ) t ON f.cargo = t.cargo AND f.salario = t.max_salario



-- Consulta 6
SELECT cpf_caixa, f.nome, t.quantidade_vendas
FROM (SELECT cpf_caixa, COUNT(*) AS quantidade_vendas
	  FROM caixa ca, venda v
	  WHERE cpf_caixa = cpf
	  GROUP BY cpf_caixa) t, funcionario f
WHERE cpf_caixa = cpf AND quantidade_vendas IN (SELECT MAX(quantidade_vendas)
											    FROM (SELECT cpf_caixa, COUNT(*) AS quantidade_vendas
	  												  FROM caixa ca, venda v
	  											      WHERE cpf_caixa = cpf
	  											      GROUP BY cpf_caixa) t1
											   )
											   

-- Consulta 7
SELECT c.cpf, c.nome AS nome_cliente, p.nome AS nome_produto, p.preco
FROM cliente c, produto p, venda v, eh_comprado ec
WHERE c.CPF = v.CPF_cliente
AND v.cod_nota_fiscal = ec.cod_nota_fiscal
AND ec.codigo_barras = p.codigo_barras
AND p.marca = 'Lacta'





