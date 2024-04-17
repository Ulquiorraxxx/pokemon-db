--
-- Docs
-- https://www.w3schools.com/sql/default.asp
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Playground:
-- https://sqlfiddle.com/sqlite/online-compiler
-- https://sqlite.org/fiddle/
--

-- Izveidot tabulu (CREATE)
-- Izveidot 10 pokemonu ierakstus (INSERT)
-- Atlasīt visus pokemonus un visas kolonnas (SELECT)
-- Atlasīt pokemonu nosaukums tiem kuriem ir "Fire" tips (SELECT, WHERE)
-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500 (SELECT, WHERE)
-- Atlasīt pokemonus ar "Flying" tipu un statistikam virs 500 (SELECT, WHERE)
-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)

-- Sakārtot pokemonus pēc augstāka HP (ORDER BY)

-- Izdzēst tos, kam attack mazāks par 50 (DELETE, WHERE)

-- INIT DATABASE
CREATE TABLE POKEMONS(
	NUMBER INTEGER,
	NAME TEXT,
	TYPE1 TEXT,
	TYPE2 TEXT,
	TOTAL INTEGER,
	HP INTEGER,
	ATTACK INTEGER,
	DEFFENSE INTEGER
);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (1,"Bulbasaur","Grass","Poison",318,45,49,49);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (2,"Ivysaur","Grass","Poison",405,60,62,63);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (3,"Venusaur","Grass","Poison",525,80,82,83);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (3,"VenusaurMega Venusaur","Grass","Poison",625,80,100,123);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (4,"Charmander","Fire","",309,39,52,43);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (6,"Charizard","Fire","Flying",534,78,84,78);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (6,"CharizardMega Charizard X","Fire","Dragon",634,78,130,111);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (6,"CharizardMega Charizard Y","Fire","Flying",634,78,104,78);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (7,"Squirtle","Water","",314,44,48,65);
INSERT INTO POKEMONS(NUMBER,NAME,TYPE1,TYPE2,total,hp,attack,deffense) VALUES (8,"Wartortle","Water","",405,59,63,80);
-- QUERY database
SELECT * FROM POKEMONS;
SELECT NAME FROM POKEMONS WHERE TYPE1 = "Fire";
SELECT NAME , TOTAL FROM POKEMONS WHERE TOTAL > 500;
SELECT NAME , TYPE2 , TOTAL FROM POKEMONS WHERE TYPE2 = "Flying" AND TOTAL > 500;


