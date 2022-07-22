--O cliente gostaria de saber quantos produtos ele possui em cada categoria. Qual SQL você faria para realizar essa consulta?
--PARA VISUALIZAR TODO O CONTEÚDO CONTIDO NAS TABELAS PRODUTOS E CATEGORIAS
SELECT*FROM PRODUCTS;

SELECT*FROM categories;

--JUNTANDO O CONTEÚDO DAS DUAS TABELAS EM UMA VISUALIZAÇÃO 
SELECT products.id,products.name, products.category_id, categories.name
FROM products
INNER JOIN categories
ON categories.id=products.category_id;

--AGRUPANDO E CONTANDO POR LINHAS A QUANTIDADE DE PRODUTOS POR CATEGORIA
SELECT categories.name AS categorias, COUNT(products.name) AS quantidade_produtos
FROM products
INNER JOIN categories
ON categories.id=products.category_id
WHERE products.category_id=categories.id
GROUP BY categories.id;



--Além disso, também quer saber a média de preços de cada categoria. Monte o SQL para essa solicitação
--SEMELHANTE A FUNÇÃO ANTERIOR, SOMENTE ALTERAMOS A FUNÇÃO DE CONTAGEM (COUNT) PELA FUNÇÃO DE MÉDIA (AVG)
SELECT categories.name AS categorias, AVG(products.price) AS media_de_preco
FROM products
INNER JOIN categories
ON categories.id=products.category_id
WHERE products.category_id=categories.id
GROUP BY categories.id;



--Faça um SQL para atualizar todos os produtos da categoria Cremes e Geleias para a categoria Frutas
--NESSE CASO FAZEMOS UM UPDATE COM CONDICIONAL WHERE
UPDATE products
SET category_id = 1
WHERE category_id = 2;


