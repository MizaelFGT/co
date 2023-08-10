CREATE DATABASE IF NOT EXISTS clash_of_clans
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
USE clash_of_clans;

CREATE TABLE IF NOT EXISTS jogador (
 id_jogador INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(25) NOT NULL,
 tag_do_jogador VARCHAR(30) NOT NULL,
 nivel_de_experiencia INT NOT NULL,
 trofeus INT NOT NULL,
 nivel_do_cv INT NOT NULL,
 trofeus_lendarios INT,
 clan_do_jogador VARCHAR (25),
 cargo_no_clan VARCHAR (10),
 estrela_de_guerra INT NOT NULL
 
);

CREATE TABLE IF NOT EXISTS tropa (
 id_tropa INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(30) NOT NULL,
 dano_por_segundo INT,
 vida INT NOT NULL,
 espaco_de_habitacao INT NOT NULL,
 alvo_preferencial VARCHAR(30),
 nivel_atual INT NOT NULL,
 nivel_maximo INT NOT NULL
);

CREATE TABLE IF NOT EXISTS pet (
 id_pet INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(50) NOT NULL,
 dano_por_segundo INT,
 vida INT NOT NULL,
 nome_da_habilidade VARCHAR(30) NOT NULL,
 alvo VARCHAR(30) NOT NULL,
 velocidade INT NOT NULL,
 nivel_atual INT NOT NULL,
 nivel_maximo INT NOT NULL
 
);

CREATE TABLE IF NOT EXISTS feitico (
 id_feitico INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(50) NOT NULL,
 tipo_de_dano VARCHAR(20),
 tipo_de_efeito VARCHAR (20) ,
 espaco_de_habitacao INT NOT NULL,
 alvo VARCHAR(30) NOT NULL,
 tempo_de_preparacao DOUBLE NOT NULL,
 nivel_atual INT NOT NULL,
 nivel_maximo INT NOT NULL
);

CREATE TABLE IF NOT EXISTS defesa (
 id_defesa INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(50) NOT NULL,
 dano_por_segundo INT,
 vida INT NOT NULL,
 alcance_maximo DOUBLE NOT NULL,
 alvo VARCHAR (50) NOT NULL,
 tipo_de_dano VARCHAR(30) NOT NULL,
 nivel_atual INT NOT NULL,
 nivel_maximo INT NOT NULL
);

INSERT INTO jogador  (nome,tag_do_jogador,nivel_de_experiencia,trofeus,nivel_do_cv ,trofeus_lendarios, clan_do_jogador,cargo_no_clan,estrela_de_guerra)
VALUES
 ('MizaelFGT','20CVQRCJ8',230,5328,15,NULL,'LENDARIOSLHP','Ancião',1885),
 ('vinicius BDS','8JVCQ90CP',154,2382,13,NULL,'só os tops','Membro',300),
 ('teuzin','QQUUQYCVY',167,3845,14,NULL,'Amazing Nation','Colíder',661),
 ('batman','JR2RUQRY',176,2871,13,NULL,'Amazing Nation','Colíder',1123),
 ('FTNNN','8P9UQJ88',225,5300,15,1441,'Gods of War','Membro',1519);

INSERT INTO tropa (nome,dano_por_segundo,vida,espaco_de_habitacao,alvo_preferencial,nivel_atual,nivel_maximo)
VALUES
 ('corredor',148,810,5,'defesas',8,12),
 ('Lava Hound',20,8000,30,'defesa aérea',6,6),
 ('Curadora',NULL,1800,14,'Qualquer um',8,8),
 ('Dragão',370,4900,20,'Qualquer um',10,10),
 ('Balão',276,1040,5,'Defesas',10,10);

INSERT INTO pet (nome,dano_por_segundo,vida,nome_da_habilidade,alvo,velocidade,nivel_atual,nivel_maximo)
VALUES
 ('Pangolin blindado',125,4250,'Surpresa atordoante','Terrestre',32,5,10),
 ('Unirconio',NULL,1600,'Curador pessoal','Terrestre e aéreo',16,5,10),
 ('L.A.S.S.I',150,2700,'Salto em altura','Terrestre',32,1,15),
 ('Coruja elétrica',110,1800,'Alta voltagem','Terrestre e aéreo',20,3,10),
 ('Fênix',186,3240,'Final flamejante','Terrestre e aéreo',16,2,10);

INSERT INTO feitico (nome,tipo_de_dano,tipo_de_efeito,espaco_de_habitacao,alvo,tempo_de_preparacao,nivel_atual,nivel_maximo)
VALUES
 ('Feitiço de invisibilidade',NULL,'Área',1,'Terrestre e aéreo',3.0,4,4),
 ('Feitiço de furia',NULL,'Área',2,'Terrestre e aéreo',6.0,6,6),
 ('Feitiço de relâmpago','Área',NULL,1,'Qualquer um',3.0,10,10),
 ('Feitiço de gelo',NULL,'Área',1,'Terrestre e aéreo',3.0,7,7),
 ('Feitiço de veneno','Área',NULL,1,'Terrestre e aéreo',3.0,5,9);

INSERT INTO defesa (nome,dano_por_segundo,vida,alcance_maximo,alvo,tipo_de_dano,nivel_atual,nivel_maximo)
VALUES
 ('Canhão',124,1620,9,'Terrestre','único',16,21),
 ('Torre Arqueira',120,1410,10,'Terrestre e aéreo','único',17,21),
 ('Tesla oculta',120,980,7,'Terrestre e aéreo','único',10,14),
 ('Morteiro',30,1100,11,'Terrestre','Área',10,15),
 ('X-Besta',170,3900,11.5,'Terrestre e aéreo','único',7,10);
 
 SELECT * FROM jogador;
SELECT * FROM tropa;
SELECT * FROM pet;
SELECT * FROM feitico;
SELECT * FROM defesa;