-- Consulta que retorne a lista de filmes e suas categorias correspondentes;

SELECT a.film_id, b.title, c.category_id, c.name
FROM
    film_category a
    JOIN film b ON b.film_id = a.film_id
    JOIN category c ON a.category_id = c.category_id

-- Consulta que retorne a lista de todos os atores com o número filmes que cada ator participou. Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram;
SELECT a.actor_id, a.first_name, a.last_name, COUNT(c.film_id) AS total_films
FROM
    actor a
    JOIN film_actor b ON a.actor_id = b.actor_id
    JOIN film c ON b.film_id = c.film_id
GROUP BY
    a.actor_id
ORDER BY total_films DESC;

-- Consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de duração (120min). Ordene a lista pelo numero de filmes que cada ator participou.
SELECT a.actor_id, a.first_name, a.last_name, COUNT(f.film_id) AS total_films
FROM
    film f
    JOIN film_actor fa ON f.film_id = fa.film_id
    JOIN actor a ON a.actor_id = fa.actor_id
WHERE
    f.length > 120
GROUP BY
    a.actor_id
ORDER BY total_films DESC;