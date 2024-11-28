-- Cria o banco de dados
CREATE DATABASE loja_chuteiras;

-- Usa o banco de dados criado
USE loja_chuteiras;

-- Tabela para os produtos
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Tabela para os usuários
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insere produtos de exemplo
INSERT INTO products (name, description, price, image) VALUES
('Chuteira Nike Mercurial', 'Chuteira leve e confortável para alta performance.', 599.99, 'nikemercurial.jpg'),
('Chuteira Adidas Predator', 'Controle absoluto em campo com tecnologia avançada.', 549.90, 'adidaspredator.jpg'),
('Chuteira Puma Future', 'Estilo e flexibilidade para jogadores habilidosos.', 499.00, 'pumafuture.jpg'),
('Chuteira Umbro Speciali', 'Clássica e durável, ideal para gramados naturais.', 299.90, 'umbrospeciali.jpg'),
('Chuteira Mizuno Morelia', 'Conforto premium e ajuste perfeito.', 699.99, 'mizunomorelia.jpg');

-- Insere um usuário de exemplo
INSERT INTO users (username, password) VALUES
('admin', MD5('123456')); -- O hash MD5 de '123456'
