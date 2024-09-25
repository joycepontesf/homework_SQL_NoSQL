-- Crie uma consulta para cada item do exercício acima que retorne o numero de registros encontrados pela busca.
SELECT COUNT(*)
FROM
    film f
    JOIN film_category fc ON f.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id;

SELECT COUNT(DISTINCT a.actor_id)
FROM actor a
    JOIN film_actor fa ON a.actor_id = fa.actor_id;

SELECT COUNT(DISTINCT a.actor_id)
FROM
    actor a
    JOIN film_actor fa ON a.actor_id = fa.actor_id
    JOIN film f ON fa.film_id = f.film_id
WHERE
    f.length > 120;