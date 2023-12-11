use prip_kurz;

SELECT * -- id, email
FROM uzivatele
where 
    -- id >= 5 and id <= 10
    -- id between 5 and 10
    -- and email not like '%email.cz'
    -- email like '%p%'
    -- email in ('novy@seznam.cz', 'nova@email.cz')
    -- email = 'novy@seznam.cz' OR email = 'nova@email.cz'
    -- email <> 'novy@seznam.cz'
    vytvoren < '2023-11-13'
;
    