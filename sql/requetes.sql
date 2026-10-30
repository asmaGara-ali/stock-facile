-- Q1.5.1 : Tous les produits
SELECT * FROM produits;

-- Q1.5.2 : Produits en rupture de stock
SELECT * FROM produits
WHERE quantite = 0;

-- Q1.5.3 : Produits triés du plus cher au moins cher
SELECT * FROM produits
ORDER BY prix DESC;

-- Q1.5.4 : Produits avec leurs catégories
SELECT
    produits.nom AS produit,
    categories.nom AS categorie
FROM produits
INNER JOIN categories
ON produits.categorie_id = categories.id;

-- Q1.5.5 : Nombre de produits par catégorie
SELECT
    categories.nom AS categorie,
    COUNT(produits.id) AS nombre_produits
FROM categories
INNER JOIN produits
ON categories.id = produits.categorie_id
GROUP BY categories.id, categories.nom;