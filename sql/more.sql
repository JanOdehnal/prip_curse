use prip_kurz;
select * from uzivatele;
select * from kurzy;
select * from uchazeci;
select u.jmeno, u.prijmeni, u.kurzy_id, k.cena, k.predmet from uchazeci u left join kurzy k on u.kurzy_id=k.id;

select kurzy_id, count(1) as pocet from uchazeci group by kurzy_id;

select max(prijmeni) from view_uchazeci2 group by predmet;

select * from view_uchazeci2;