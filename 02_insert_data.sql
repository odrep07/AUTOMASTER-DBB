-- CLIENTES
INSERT INTO CLIENTE (nome, telefone, cpf, endereco)
VALUES
("João Pereira", "31999998888", "123.456.789-00", "Rua A, 120"),
("Carla Souza", "31988887777", "987.654.321-00", "Rua B, 45"),
("Rafael Lima", "31977776666", "456.789.123-00", "Av. Central, 900");

-- VEÍCULOS
INSERT INTO VEICULO (placa, modelo, ano, id_cliente)
VALUES
("ABC1234", "Civic", 2015, 1),
("XYZ5678", "Onix", 2019, 2),
("PLK9087", "Fiesta", 2012, 1);

-- MECÂNICOS
INSERT INTO MECANICO (nome, especialidade)
VALUES
("Carlos Andrade", "Motor"),
("Bruno Siqueira", "Suspensão"),
("Fernando Lemos", "Elétrica");

-- SERVIÇOS
INSERT INTO SERVICO (descricao, valor_mao_obra)
VALUES
("Troca de óleo", 80.00),
("Alinhamento", 120.00),
("Revisão elétrica", 150.00);

-- PEÇAS
INSERT INTO PECA (nome, preco, quantidade_estoque)
VALUES
("Filtro de óleo", 30.00, 50),
("Pastilha de freio", 90.00, 20),
("Correia dentada", 110.00, 15);

-- ORDENS DE SERVIÇO
INSERT INTO ORDEM_SERVICO (data_abertura, data_fechamento, status, id_veiculo, id_mecanico)
VALUES
("2025-02-10 08:30:00", NULL, "Em Andamento", 1, 1),
("2025-02-11 14:00:00", NULL, "Em Andamento", 2, 3);

-- ITEM_SERVICO_OS
INSERT INTO ITEM_SERVICO_OS (id_os, id_servico, quantidade, valor_total)
VALUES
(1, 1, 1, 80.00),
(1, 3, 1, 150.00),
(2, 2, 1, 120.00);

-- ITEM_PECA_OS
INSERT INTO ITEM_PECA_OS (id_os, id_peca, quantidade, valor_total)
VALUES
(1, 1, 1, 30.00),
(1, 3, 1, 110.00),
(2, 2, 1, 90.00);
