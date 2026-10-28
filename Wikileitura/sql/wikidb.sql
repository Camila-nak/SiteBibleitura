-- isso é um teste, mas aqui funciona que nem o site do banin
CREATE DATABASE WituraDB;

CREATE TABLE ademir (
    id_adm INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_adm VARCHAR(30) NOT NULL,
    email_adm VARCHAR(80) NOT NULL,
    senha_adm VARCHAR(8) NOT NULL,
    tele_adm VARCHAR(11) NOT NULL,
);

CREATE TABLE livros ( 
    id_li INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    ano_lancado YEAR NOT NULL, -- colocando somente o ano de lançamento 
    autor VARCHAR(100) NOT NULL,
    movi_li VARCHAR(80), -- movimento do livro
    cate_li VARCHAR(50) NOT NULL, -- categoria do livro
    enre_li VARCHAR(2000), -- enredo do livro
    desc_li VARCHAR(1000), -- descrição do livro
    nump_li INT NOT NULL 10000, -- números de páginas do livro
    id_adm VARCHAR NOT NULL FOREIGN KEY (id_adm) REFERENCES ademir(id_adm)
);

CREATE TABLE leitor (
    id_lei INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_lei VARCHAR(30) NOT NULL,
    email_lei VARCHAR(80) NOT NULL,
    senha_lei VARCHAR(8) NOT NULL,
    nasc_lei DATE NOT NULL,
);

CREATE TABLE estante(
    id_lei INT FOREIGN KEY (id_lei) REFERENCES leitor(id_lei),
    id_li INT FOREIGN KEY (id_li) REFERENCES livros(id_li),
    data_esta DATE NOT NULL,
    aces_li ENUM('Acessado', 'Não acessado') NOT NULL
    ultpag VARCHAR()
);