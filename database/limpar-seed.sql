-- Remove os dados criados por database/seed.sql, identificados pelo domínio @sgp.test.
-- Também apaga o que tiver sido ligado a esses registros depois do seed:
-- projetos cujo responsável seja um usuário @sgp.test e todas as tarefas desses projetos.
-- Tarefas de outros projetos que estejam com um usuário @sgp.test também são apagadas.
SET SQL_SAFE_UPDATES = 0;
START TRANSACTION;

DELETE t FROM tb_tarefa t
  JOIN tb_usuarios u ON u.id = t.usuario_id
 WHERE u.email LIKE '%@sgp.test';

DELETE t FROM tb_tarefa t
  JOIN tb_projeto p ON p.id = t.projeto_id
  JOIN tb_usuarios u ON u.id = p.responsavel_id
 WHERE u.email LIKE '%@sgp.test';

DELETE p FROM tb_projeto p
  JOIN tb_usuarios u ON u.id = p.responsavel_id
 WHERE u.email LIKE '%@sgp.test';

DELETE FROM tb_usuarios WHERE email LIKE '%@sgp.test';

COMMIT;
