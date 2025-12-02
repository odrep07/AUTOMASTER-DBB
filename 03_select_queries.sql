-- 1. Listar clientes e seus veículos
SELECT c.nome, v.placa, v.modelo
FROM CLIENTE c
JOIN VEICULO v ON v.id_cliente = c.id_cliente;

-- 2. Consultar OS com nome do mecânico e status
SELECT os.id_os, m.nome AS mecanico, os.status
FROM ORDEM_SERVICO os
JOIN MECANICO m ON m.id_mecanico = os.id_mecanico
ORDER BY os.data_abertura DESC;

-- 3. Listar serviços aplicados em uma OS específica
SELECT s.descricao, i.valor_total
FROM ITEM_SERVICO_OS i
JOIN SERVICO s ON s.id_servico = i.id_servico
WHERE i.id_os = 1;

-- 4. Listar peças usadas em todas as OS
SELECT os.id_os, p.nome, p.preco, ip.quantidade
FROM ITEM_PECA_OS ip
JOIN PECA p ON p.id_peca = ip.id_peca
JOIN ORDEM_SERVICO os ON os.id_os = ip.id_os;

-- 5. Selecionar OS abertas ou em andamento
SELECT * FROM ORDEM_SERVICO
WHERE status IN ("Aberta", "Em Andamento")
LIMIT 10;
