-- Tarefa 1: Número de corridas por empresa de táxi entre 15 e 16 de novembro de 2017
SELECT 
    cabs.company_name AS company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM 
    trips
JOIN 
    cabs ON trips.cab_id = cabs.cab_id
WHERE 
    DATE(trips.start_ts) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY 
    cabs.company_name
ORDER BY 
    trips_amount DESC;


-- Tarefa 2: Corridas feitas por empresas contendo "Yellow" ou "Blue" nos nomes (01 a 07 de novembro de 2017)
SELECT 
    cabs.company_name AS company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM 
    trips
JOIN 
    cabs ON trips.cab_id = cabs.cab_id
WHERE 
    (cabs.company_name LIKE '%Yellow%' 
    OR cabs.company_name LIKE '%Blue%')
AND 
    CAST(trips.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
    cabs.company_name
ORDER BY 
    trips_amount DESC;


-- Tarefa 3: Comparar Flash Cab e Taxi Affiliation Services com "Outros"
SELECT 
    CASE 
        WHEN cabs.company_name IN ('Flash Cab', 'Taxi Affiliation Services') 
        THEN cabs.company_name 
        ELSE 'Other' 
    END AS company,
    COUNT(trips.trip_id) AS trips_amount
FROM 
    trips
JOIN 
    cabs ON trips.cab_id = cabs.cab_id
WHERE 
    CAST(trips.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
    company
ORDER BY 
    trips_amount DESC;


-- Tarefa 4: Obter os IDs dos bairros "Loop" e "O'Hare"
SELECT
    neighborhood_id,
    name
FROM 
    neighborhoods
WHERE 
    name LIKE '%Hare' OR name LIKE 'Loop';


-- Tarefa 5: Classificar condições climáticas como "Good" ou "Bad"
SELECT 
    ts,
    CASE 
        WHEN LOWER(description) LIKE '%rain%' 
        OR LOWER(description) LIKE '%storm%' 
        THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM 
    weather_records;


-- Tarefa 6: Selecionar corridas aos sábados do Loop para o O’Hare e combinar com clima
SELECT
    start_ts,
    T.weather_conditions,
    duration_seconds
FROM 
    trips
INNER JOIN (
    SELECT
        ts,
        CASE
            WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
            ELSE 'Good'
        END AS weather_conditions
    FROM 
        weather_records          
) T on T.ts = trips.start_ts
WHERE 
    pickup_location_id = 50 
    AND dropoff_location_id = 63 
    AND EXTRACT(DOW from trips.start_ts) = 6
ORDER BY 
    trip_id;
