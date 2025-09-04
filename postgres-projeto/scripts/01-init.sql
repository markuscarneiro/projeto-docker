-- Criar tabelas
CREATE TABLE IF NOT EXISTS clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

-- Inserir dados de exemplo
INSERT INTO clientes (nome, email) VALUES 
('João Silva', 'joao@email.com'),
('Maria Santos', 'maria@email.com'),
('Pedro Costa', 'pedro@email.com');

INSERT INTO produtos (nome, preco, categoria) VALUES 
('Notebook Dell', 2500.00, 'Eletrônicos'),
('Mouse Logitech', 85.00, 'Periféricos'),
('Teclado Mecânico', 299.00, 'Periféricos'),
('Monitor 24"', 899.00, 'Eletrônicos');
