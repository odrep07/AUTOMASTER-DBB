-- UPDATES
UPDATE CLIENTE SET telefone = "31999990000" WHERE id_cliente = 1;

UPDATE ORDEM_SERVICO
SET status = "Concluida", data_fechamento = NOW()
WHERE id_os = 1;

UPDATE PECA
SET quantidade_estoque = quantidade_estoque - 2
WHERE id_peca = 2;

-- DELETES
DELETE FROM ITEM_PECA_OS WHERE id_item_peca = 3;

DELETE FROM ITEM_SERVICO_OS WHERE id_item_servico = 2;

DELETE FROM ORDEM_SERVICO WHERE id_os = 2; -- só funciona após remover itens FK
