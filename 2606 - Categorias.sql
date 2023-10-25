SELECT  products.id, products.name
FROM categories, products
WHERE categories.name LIKE 'super%'
AND products.id_categories = categories.id