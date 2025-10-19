USE empresa_db;

-- Para Ana (Analista de BI - Apenas Leitura):

GRANT SELECT ON empresa_db.vendas TO 'ana.analista'@'%';

-- Para Bruno (Estagiário - Apenas Inserir):

GRANT INSERT ON empresa_db.vendas TO 'bruno.estagiario'@'%';

-- Para Carla (Gerente - Controle Total):

GRANT SELECT, INSERT, UPDATE, DELETE ON empresa_db.vendas TO 'carla.gerente'@'%';