SELECT
  ctgr.name,
  sum(pdct.amount)
FROM
  categories ctgr,
  products pdct
WHERE
  pdct.id_categories = ctgr.id
GROUP BY 
  ctgr.name