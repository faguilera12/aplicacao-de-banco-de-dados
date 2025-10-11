CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Automovel (
    id_automovel INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    tipo VARCHAR(50)
);

CREATE TABLE DataLocacao (
    id_datalocacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_automovel INT,
    datainiciolocacao DATE,
    datafinallocacao DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_automovel) REFERENCES Automovel(id_automovel)
);

INSERT INTO Cliente (nome, sobrenome, telefone, email)
VALUES
('Ana', 'Silva', '1198765-4321', 'ana.silva@email.com'),
('Bruno', 'Souza', '1199999-8888', 'bruno.souza@email.com'),
('Carla', 'Oliveira', '1188888-7777', 'carla.oliveira@email.com');

INSERT INTO Automovel (marca, modelo, tipo)
VALUES
('Toyota', 'Corolla', 'Sedan'),
('Honda', 'Civic', 'Sedan'),
('Fiat', 'Toro', 'Pickup'),
('Chevrolet', 'Onix', 'Hatch');

INSERT INTO DataLocacao (id_cliente, id_automovel, datainiciolocacao, datafinallocacao)
VALUES
(1, 2, '2025-10-01', '2025-10-05'),  -- Ana alugou o Civic
(2, 1, '2025-09-15', '2025-09-20'),  -- Bruno alugou o Corolla
(3, 4, '2025-10-03', '2025-10-07');  -- Carla alugou o Onix

SELECT * FROM Cliente;

SELECT * FROM Automovel;


