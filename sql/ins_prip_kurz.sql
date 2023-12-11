/*
 ins_prip_kurz.sql
 Zaznamy do DB prip_kurz.
 
 changelog:
 2023-10-30 - jmarianek - zaznamy v kurzy a uzivatele;
 2023-11-06 - jmarianek - 5x uchazec;
 
 */

-- automaticke potvrzovani transakci
set autocommit=1; -- vychozi chovani

-- set autocommit=0; -- rucni potvrzovani transakci 
                  -- bud COMMIT; pro potbvrzeni
                  -- nebo ROLLBACK; pro odvolani

-- kurzy
-- id 1
INSERT INTO kurzy (predmet, pocet_lekci, kapacita, cena) 
VALUES ('M', 15, 15, 1400);

INSERT INTO kurzy (predmet, pocet_lekci, kapacita, cena) 
VALUES ('CJ', 7, 15, 1400);

INSERT INTO kurzy (predmet, pocet_lekci, kapacita, cena) 
VALUES ('ECDL', 7, 15, 400);

-- id 4
INSERT INTO kurzy (predmet, pocet_lekci, kapacita, cena) 
VALUES ('M', 15, 15, 1400);

delete from kurzy
where id >= 4; -- smazu dupl. M a vse co je po ni

-- ------------------------------------------

-- uzivatele
/*
set autocommit=0; 

insert into uzivatele(id, email, heslo, role, telefon)
values ('1', 'admin@neco.cz', '12345', 'admin', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values('2', 'novy@seznam.cz', '12345', 'user', NULL);
-- zmena zaznamu
update uzivatele set email='stary@seznam.cz' where id=2;

insert into uzivatele(id, email, heslo, role, telefon)
values(3, 'novak@seznam.cz', '12345', 'user', NULL);

-- pozn. - mame autocommit=0
insert into uzivatele(id, email, heslo, role)
values(4, 'ctvrty@neco.cz', '13245', 'user');

-- rollback; -- rozmyslel jsem si to a vlozeni uziv. id=4 odvolavam

commit; -- potvrzeni transakce, tj. persistence (zapis do DB souboru)
*/

use prip_kurz;

-- smazeme vsechny uchazece a uzivatele
delete from uchazeci where id > 0;
delete from uzivatele where id > 0;

insert into uzivatele(id, email, heslo, role, telefon)
values ('1', 'admin@neco.cz', '12345', 'admin', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values('2', 'novy@seznam.cz', '12345', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(3, 'novak@seznam.cz', '12345', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(4, 'novotny@email.cz', 'JJ68!', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(5, 'novotna@email.cz', 'LM10!', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(6, 'novakova@email.cz', 'CR7!', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(7, 'cada@seznam.cz', 'ugabuga', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(8, 'novy@post.cz', 'heslo123', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(9, 'nova@email.cz', 'password', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(10, 'gregor@seznam.cz', 'jirkajefrajer', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(11, 'mican@gmail.com', 'lolko je waste of time', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(12, 'hradilova@gmail.com', 'fuj hokejisti', 'user', NULL);

insert into uzivatele(id, email, heslo, role, telefon)
values(13, 'krupkova@email.cz', '55555', 'user', NULL);

-- jeste 1x uzivatel, pro id pouzijeme sekvenci
insert into uzivatele(email, heslo, role)
values('marianek@gym-tisnov.cz', '12345', 'user');

-- zmena hesla uziv. 'admin@neco.cz' na '11111'
update uzivatele
set heslo = '11111'
where email = 'admin@neco.cz';



-- uchazeci
desc uchazeci;

insert into uchazeci(id, prijmeni, uzivatele_id, kurzy_id)
values(1, 'Novak', 2, 1);

insert into uchazeci(id, prijmeni, uzivatele_id, kurzy_id)
values(2, 'Novy', 2, 1);
insert into uchazeci(id, prijmeni, uzivatele_id, kurzy_id)
values(3, 'Slezak', 2, 1);
insert into uchazeci(id, prijmeni, uzivatele_id, kurzy_id)
values(4, 'Proks', 2, 1);
insert into uchazeci(id, prijmeni, uzivatele_id, kurzy_id)
values(5, 'Stary', 2, 1);



