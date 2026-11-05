-- Dados fictícios de demonstração do SGP.
-- Só acrescenta registros; roda em uma transação e falha sem efeito se executado duas vezes.
-- Para remover: database/limpar-seed.sql
-- E-mails usam o domínio reservado .test e os CPFs têm dígito verificador inválido.
SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO tb_usuarios (nome, cpf, email, senha, data_nascimento, status) VALUES
  ('Bruno Soares', '121.431.767-85', 'bruno.soares@sgp.test', 'Demo@2026', '1997-02-14', 'INATIVO'),
  ('Bianca Souza', '629.085.870-19', 'bianca.souza@sgp.test', 'Demo@2026', '1975-03-06', 'INATIVO'),
  ('Natália Ribeiro', '719.159.770-55', 'natalia.ribeiro@sgp.test', 'Demo@2026', '1967-10-26', 'ATIVO'),
  ('Aline Freitas', '762.263.910-00', 'aline.freitas@sgp.test', 'Demo@2026', '1985-10-18', 'INATIVO'),
  ('Carlos Andrade', '648.912.477-80', 'carlos.andrade@sgp.test', 'Demo@2026', '2005-11-23', 'INATIVO'),
  ('Henrique Rodrigues', '177.531.704-91', 'henrique.rodrigues@sgp.test', 'Demo@2026', '1994-07-28', 'ATIVO'),
  ('Igor Cavalcanti', '243.927.933-21', 'igor.cavalcanti@sgp.test', 'Demo@2026', '1973-01-11', 'INATIVO'),
  ('Eduarda Monteiro', '635.678.745-88', 'eduarda.monteiro@sgp.test', 'Demo@2026', '1973-05-19', 'ATIVO'),
  ('Larissa Freitas', '283.659.010-74', 'larissa.freitas@sgp.test', 'Demo@2026', '1968-03-16', 'ATIVO'),
  ('Henrique Freitas', '757.395.750-62', 'henrique.freitas@sgp.test', 'Demo@2026', '1980-11-19', 'ATIVO'),
  ('Renata Ramos', '055.803.711-05', 'renata.ramos@sgp.test', 'Demo@2026', '1987-07-14', 'INATIVO'),
  ('Mariana Costa', '958.472.827-12', 'mariana.costa@sgp.test', 'Demo@2026', '2005-07-30', 'INATIVO'),
  ('Juliana Machado', '176.832.912-60', 'juliana.machado@sgp.test', 'Demo@2026', '2002-08-01', 'ATIVO'),
  ('Marcelo Martins', '026.437.042-33', 'marcelo.martins@sgp.test', 'Demo@2026', '1991-07-11', 'ATIVO'),
  ('Renata Fernandes', '595.882.083-53', 'renata.fernandes@sgp.test', 'Demo@2026', '1982-05-17', 'ATIVO'),
  ('Beatriz Barbosa', '856.644.103-71', 'beatriz.barbosa@sgp.test', 'Demo@2026', '1968-11-23', 'ATIVO'),
  ('Nicolas Rodrigues', '985.645.882-10', 'nicolas.rodrigues@sgp.test', 'Demo@2026', '1993-04-01', 'ATIVO'),
  ('Igor Fernandes', '634.779.224-02', 'igor.fernandes@sgp.test', 'Demo@2026', '2000-07-31', 'ATIVO'),
  ('Camila Rocha', '687.630.185-10', 'camila.rocha@sgp.test', 'Demo@2026', '1996-11-30', 'ATIVO'),
  ('Helena Machado', '587.226.232-09', 'helena.machado@sgp.test', 'Demo@2026', '1991-05-18', 'ATIVO'),
  ('Rodrigo Santana', '233.169.574-23', 'rodrigo.santana@sgp.test', 'Demo@2026', '1995-12-13', 'INATIVO'),
  ('Sofia Santos', '962.028.754-20', 'sofia.santos@sgp.test', 'Demo@2026', '1978-01-03', 'ATIVO'),
  ('Sofia Gomes', '038.100.732-55', 'sofia.gomes@sgp.test', 'Demo@2026', '1967-03-17', 'ATIVO'),
  ('Vanessa Dias', '877.963.458-46', 'vanessa.dias@sgp.test', 'Demo@2026', '1983-09-11', 'ATIVO'),
  ('Mateus Cavalcanti', '323.102.820-67', 'mateus.cavalcanti@sgp.test', 'Demo@2026', '1982-03-16', 'ATIVO'),
  ('Carlos Mendes', '862.767.774-49', 'carlos.mendes@sgp.test', 'Demo@2026', '1974-06-19', 'ATIVO'),
  ('André Rodrigues', '261.424.074-69', 'andre.rodrigues@sgp.test', 'Demo@2026', '1975-07-20', 'ATIVO'),
  ('João Vieira', '713.417.089-79', 'joao.vieira@sgp.test', 'Demo@2026', '2001-10-18', 'ATIVO'),
  ('Igor Andrade', '547.379.346-17', 'igor.andrade@sgp.test', 'Demo@2026', '2005-04-04', 'INATIVO'),
  ('Lucas Ribeiro', '543.545.014-59', 'lucas.ribeiro@sgp.test', 'Demo@2026', '1985-09-20', 'INATIVO'),
  ('Letícia Barbosa', '763.068.910-23', 'leticia.barbosa@sgp.test', 'Demo@2026', '1972-03-15', 'ATIVO'),
  ('Nicolas Lima', '165.823.926-21', 'nicolas.lima@sgp.test', 'Demo@2026', '1997-07-03', 'ATIVO'),
  ('Helena Ramos', '063.005.685-57', 'helena.ramos@sgp.test', 'Demo@2026', '1967-12-07', 'ATIVO'),
  ('Bruno Nunes', '758.154.169-18', 'bruno.nunes@sgp.test', 'Demo@2026', '1994-09-17', 'ATIVO'),
  ('Felipe Mendes', '833.072.302-14', 'felipe.mendes@sgp.test', 'Demo@2026', '1974-12-15', 'INATIVO'),
  ('Letícia Teixeira', '553.953.574-18', 'leticia.teixeira@sgp.test', 'Demo@2026', '1976-02-17', 'ATIVO'),
  ('Wesley Gonçalves', '913.835.139-12', 'wesley.goncalves@sgp.test', 'Demo@2026', '1996-08-18', 'INATIVO'),
  ('Paulo Gonçalves', '421.786.330-74', 'paulo.goncalves@sgp.test', 'Demo@2026', '1988-04-11', 'INATIVO'),
  ('Bianca Ramos', '654.794.506-64', 'bianca.ramos@sgp.test', 'Demo@2026', '2001-06-07', 'ATIVO'),
  ('Fernanda Souza', '983.582.169-14', 'fernanda.souza@sgp.test', 'Demo@2026', '1969-01-19', 'ATIVO'),
  ('Bianca Santos', '332.912.015-17', 'bianca.santos@sgp.test', 'Demo@2026', '1987-07-13', 'ATIVO'),
  ('Tatiane Freitas', '631.045.389-15', 'tatiane.freitas@sgp.test', 'Demo@2026', '2005-01-26', 'INATIVO'),
  ('Felipe Souza', '027.816.715-35', 'felipe.souza@sgp.test', 'Demo@2026', '1977-11-10', 'ATIVO'),
  ('Carla Gomes', '124.269.026-49', 'carla.gomes@sgp.test', 'Demo@2026', '1981-09-20', 'ATIVO'),
  ('Nicolas Rocha', '064.463.650-65', 'nicolas.rocha@sgp.test', 'Demo@2026', '1986-07-23', 'ATIVO'),
  ('João Freitas', '363.972.542-69', 'joao.freitas@sgp.test', 'Demo@2026', '1999-08-19', 'ATIVO'),
  ('Diego Lima', '391.650.348-15', 'diego.lima@sgp.test', 'Demo@2026', '1987-09-02', 'ATIVO'),
  ('Larissa Andrade', '200.617.888-23', 'larissa.andrade@sgp.test', 'Demo@2026', '1998-06-24', 'ATIVO'),
  ('Daniela Ramos', '162.894.762-56', 'daniela.ramos@sgp.test', 'Demo@2026', '1999-10-22', 'ATIVO'),
  ('Priscila Oliveira', '368.398.082-72', 'priscila.oliveira@sgp.test', 'Demo@2026', '2002-06-09', 'ATIVO'),
  ('Lucas Soares', '357.457.748-70', 'lucas.soares@sgp.test', 'Demo@2026', '1975-01-10', 'INATIVO'),
  ('André Santos', '216.381.199-06', 'andre.santos@sgp.test', 'Demo@2026', '1979-07-12', 'INATIVO'),
  ('Ana Oliveira', '453.544.196-13', 'ana.oliveira@sgp.test', 'Demo@2026', '2005-09-23', 'ATIVO'),
  ('Rafaela Alves', '223.527.387-51', 'rafaela.alves@sgp.test', 'Demo@2026', '1986-03-07', 'ATIVO'),
  ('André Fernandes', '695.631.786-06', 'andre.fernandes@sgp.test', 'Demo@2026', '1967-05-30', 'INATIVO'),
  ('Vanessa Teixeira', '962.600.236-10', 'vanessa.teixeira@sgp.test', 'Demo@2026', '1990-06-27', 'ATIVO'),
  ('Bruno Costa', '864.137.416-88', 'bruno.costa@sgp.test', 'Demo@2026', '1967-09-09', 'ATIVO'),
  ('Ana Lima', '127.355.540-76', 'ana.lima@sgp.test', 'Demo@2026', '1985-12-18', 'ATIVO'),
  ('Tatiane Barbosa', '024.073.611-82', 'tatiane.barbosa@sgp.test', 'Demo@2026', '1980-08-04', 'ATIVO'),
  ('Helena Lopes', '239.201.828-73', 'helena.lopes@sgp.test', 'Demo@2026', '1970-12-07', 'INATIVO'),
  ('André Vieira', '600.872.108-10', 'andre.vieira@sgp.test', 'Demo@2026', '2000-05-04', 'ATIVO'),
  ('Carla Rodrigues', '718.331.418-00', 'carla.rodrigues@sgp.test', 'Demo@2026', '2006-04-18', 'INATIVO'),
  ('Daniela Martins', '795.019.995-58', 'daniela.martins@sgp.test', 'Demo@2026', '1979-09-01', 'INATIVO'),
  ('Samuel Carvalho', '132.376.444-65', 'samuel.carvalho@sgp.test', 'Demo@2026', '2003-06-23', 'ATIVO'),
  ('Gustavo Nunes', '636.456.171-42', 'gustavo.nunes@sgp.test', 'Demo@2026', '1987-01-09', 'ATIVO'),
  ('Paulo Silva', '347.722.252-10', 'paulo.silva@sgp.test', 'Demo@2026', '1976-01-21', 'INATIVO'),
  ('Camila Andrade', '212.184.063-15', 'camila.andrade@sgp.test', 'Demo@2026', '1978-10-20', 'ATIVO'),
  ('Eduarda Ferreira', '443.135.961-45', 'eduarda.ferreira@sgp.test', 'Demo@2026', '1979-02-25', 'ATIVO'),
  ('Rafael Ferreira', '261.407.808-63', 'rafael.ferreira@sgp.test', 'Demo@2026', '1972-04-05', 'ATIVO'),
  ('Caio Lima', '924.363.304-19', 'caio.lima@sgp.test', 'Demo@2026', '1976-11-29', 'ATIVO'),
  ('Isabela Gomes', '734.800.965-59', 'isabela.gomes@sgp.test', 'Demo@2026', '1988-05-25', 'ATIVO'),
  ('Marcelo Vieira', '188.583.175-82', 'marcelo.vieira@sgp.test', 'Demo@2026', '1976-05-22', 'ATIVO'),
  ('Wesley Almeida', '995.555.619-76', 'wesley.almeida@sgp.test', 'Demo@2026', '1993-11-09', 'ATIVO'),
  ('Mateus Araújo', '659.711.204-19', 'mateus.araujo@sgp.test', 'Demo@2026', '1986-08-08', 'ATIVO'),
  ('Otávio Marques', '045.563.634-72', 'otavio.marques@sgp.test', 'Demo@2026', '1979-03-18', 'INATIVO'),
  ('Otávio Lopes', '444.198.629-81', 'otavio.lopes@sgp.test', 'Demo@2026', '1986-06-22', 'ATIVO'),
  ('Camila Soares', '615.406.376-99', 'camila.soares@sgp.test', 'Demo@2026', '2003-06-08', 'ATIVO'),
  ('Carlos Nascimento', '789.941.834-95', 'carlos.nascimento@sgp.test', 'Demo@2026', '1981-11-06', 'INATIVO'),
  ('Carlos Vieira', '241.064.094-12', 'carlos.vieira@sgp.test', 'Demo@2026', '1999-06-10', 'ATIVO'),
  ('Carlos Oliveira', '133.073.799-86', 'carlos.oliveira@sgp.test', 'Demo@2026', '1967-04-27', 'ATIVO'),
  ('Nicolas Alves', '816.499.211-05', 'nicolas.alves@sgp.test', 'Demo@2026', '1975-08-28', 'ATIVO'),
  ('Carla Gonçalves', '574.819.825-99', 'carla.goncalves@sgp.test', 'Demo@2026', '1974-04-24', 'ATIVO'),
  ('Samuel Dias', '135.754.085-15', 'samuel.dias@sgp.test', 'Demo@2026', '1991-02-03', 'ATIVO'),
  ('Carlos Barbosa', '012.031.270-16', 'carlos.barbosa@sgp.test', 'Demo@2026', '1974-12-08', 'ATIVO'),
  ('Felipe Costa', '269.893.889-88', 'felipe.costa@sgp.test', 'Demo@2026', '1994-11-19', 'INATIVO'),
  ('Wesley Fernandes', '374.550.153-66', 'wesley.fernandes@sgp.test', 'Demo@2026', '1984-06-19', 'ATIVO'),
  ('Otávio Mendes', '186.406.756-10', 'otavio.mendes@sgp.test', 'Demo@2026', '1994-02-03', 'INATIVO'),
  ('Fernanda Soares', '989.115.354-29', 'fernanda.soares@sgp.test', 'Demo@2026', '1980-10-04', 'ATIVO'),
  ('Camila Lima', '304.263.004-93', 'camila.lima@sgp.test', 'Demo@2026', '1978-08-13', 'ATIVO'),
  ('Isabela Barbosa', '361.194.119-19', 'isabela.barbosa@sgp.test', 'Demo@2026', '1981-01-13', 'ATIVO'),
  ('Juliana Dias', '967.672.577-47', 'juliana.dias@sgp.test', 'Demo@2026', '2004-01-22', 'ATIVO'),
  ('Diego Teixeira', '227.540.859-30', 'diego.teixeira@sgp.test', 'Demo@2026', '1979-03-02', 'ATIVO'),
  ('Leonardo Nunes', '636.523.577-20', 'leonardo.nunes@sgp.test', 'Demo@2026', '1984-08-20', 'ATIVO'),
  ('Sofia Ribeiro', '991.553.728-15', 'sofia.ribeiro@sgp.test', 'Demo@2026', '1983-06-09', 'INATIVO'),
  ('Vinícius Santana', '790.760.417-78', 'vinicius.santana@sgp.test', 'Demo@2026', '1994-05-06', 'ATIVO'),
  ('Kaique Moreira', '861.765.908-51', 'kaique.moreira@sgp.test', 'Demo@2026', '2005-06-08', 'ATIVO'),
  ('Eduarda Cardoso', '904.880.924-10', 'eduarda.cardoso@sgp.test', 'Demo@2026', '1968-03-16', 'INATIVO'),
  ('Paulo Martins', '575.502.099-11', 'paulo.martins@sgp.test', 'Demo@2026', '1978-08-01', 'ATIVO'),
  ('Vinícius Soares', '667.810.729-37', 'vinicius.soares@sgp.test', 'Demo@2026', '1999-07-25', 'INATIVO'),
  ('Carla Fernandes', '168.295.548-71', 'carla.fernandes@sgp.test', 'Demo@2026', '1968-04-26', 'ATIVO');

-- Portal do Aluno
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Portal do Aluno', 'Nova área digital para consulta de notas, frequência e boletos.', '2026-05-17', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'helena.ramos@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Criar testes automatizados', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-05-24', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'juliana.machado@sgp.test')),
  ('Criar protótipo das telas', 'Depende da aprovação da etapa anterior.', '2026-06-08', '2026-08-17', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'ana.oliveira@sgp.test')),
  ('Modelar o banco de dados', 'Validar a entrega com o responsável pelo projeto.', '2026-06-15', '2026-12-27', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'larissa.andrade@sgp.test')),
  ('Configurar pipeline de CI/CD', 'Registrar o resultado na documentação do projeto.', '2026-07-03', NULL, 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.rocha@sgp.test')),
  ('Desenvolver o cadastro principal', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-07-12', '2026-08-13', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'mariana.costa@sgp.test')),
  ('Publicar a versão em produção', 'Registrar o resultado na documentação do projeto.', '2026-08-28', '2026-10-11', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.rocha@sgp.test')),
  ('Treinar os usuários-chave', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-09-03', '2026-10-20', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'juliana.machado@sgp.test')),
  ('Revisar a acessibilidade das telas', NULL, '2026-09-06', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'helena.ramos@sgp.test')),
  ('Levantar requisitos com os usuários', 'Depende da aprovação da etapa anterior.', '2026-09-28', '2027-02-12', 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'helena.ramos@sgp.test')),
  ('Corrigir erros do relatório de homologação', 'Depende da aprovação da etapa anterior.', '2026-10-21', '2026-10-30', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'larissa.andrade@sgp.test')),
  ('Documentar os endpoints', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-10-28', '2027-03-03', 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'juliana.machado@sgp.test')),
  ('Integrar com a API de pagamentos', NULL, '2026-10-30', '2026-12-29', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'ana.oliveira@sgp.test'));

-- App Campus
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('App Campus', 'Aplicativo mobile com avisos, agenda e carteirinha digital.', '2026-08-26', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'diego.teixeira@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Corrigir erros do relatório de homologação', NULL, '2026-09-22', NULL, 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.nunes@sgp.test')),
  ('Criar protótipo das telas', NULL, '2026-09-26', '2027-01-16', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.nunes@sgp.test')),
  ('Otimizar consultas lentas', NULL, '2026-09-29', '2026-10-03', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.cardoso@sgp.test')),
  ('Publicar a versão em produção', 'Validar a entrega com o responsável pelo projeto.', '2026-10-04', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'vanessa.dias@sgp.test')),
  ('Criar testes automatizados', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-11', '2026-11-19', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'vanessa.dias@sgp.test')),
  ('Integrar com a API de pagamentos', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-23', '2026-12-20', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'marcelo.vieira@sgp.test')),
  ('Levantar requisitos com os usuários', 'Registrar o resultado na documentação do projeto.', '2026-10-31', '2026-12-31', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'marcelo.vieira@sgp.test'));

-- CRM Comercial
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('CRM Comercial', 'Centralização dos contatos e do funil de vendas.', '2026-08-01', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'carlos.vieira@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Revisar a acessibilidade das telas', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-08-04', '2026-08-14', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leonardo.nunes@sgp.test')),
  ('Implementar autenticação', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-08-04', '2026-09-23', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leonardo.nunes@sgp.test')),
  ('Publicar a versão em produção', NULL, '2026-08-07', '2027-01-20', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.vieira@sgp.test')),
  ('Otimizar consultas lentas', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-08-25', '2026-10-10', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.fernandes@sgp.test')),
  ('Integrar com a API de pagamentos', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-08-30', NULL, 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.vieira@sgp.test')),
  ('Corrigir erros do relatório de homologação', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-09-01', '2027-02-28', 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'tatiane.barbosa@sgp.test')),
  ('Desenvolver o cadastro principal', NULL, '2026-09-16', '2026-10-08', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'vinicius.santana@sgp.test')),
  ('Modelar o banco de dados', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-10-21', '2026-12-06', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leonardo.nunes@sgp.test')),
  ('Criar testes automatizados', NULL, '2026-10-22', '2026-11-04', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.vieira@sgp.test')),
  ('Criar protótipo das telas', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-10-27', '2026-10-29', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'tatiane.barbosa@sgp.test')),
  ('Documentar os endpoints', NULL, '2026-10-28', '2027-02-19', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'felipe.souza@sgp.test')),
  ('Configurar pipeline de CI/CD', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-11-01', NULL, 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'felipe.souza@sgp.test'));

-- Sala Inteligente
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Sala Inteligente', 'Automação de iluminação e climatização com sensores IoT.', '2026-04-17', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'bianca.ramos@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Comparar propostas de fornecedores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-04-22', '2026-11-21', 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.ramos@sgp.test')),
  ('Validar a cobertura do sinal', 'Validar a entrega com o responsável pelo projeto.', '2026-04-27', '2026-09-26', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'sofia.ribeiro@sgp.test')),
  ('Configurar o monitoramento', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-06-27', '2026-10-26', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.santos@sgp.test')),
  ('Atualizar o firmware dos dispositivos', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-07-04', '2027-02-26', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.ramos@sgp.test')),
  ('Definir a topologia da rede', 'Registrar o resultado na documentação do projeto.', '2026-07-08', '2027-01-05', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'daniela.ramos@sgp.test')),
  ('Simular a recuperação de desastre', NULL, '2026-07-08', '2026-10-20', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.freitas@sgp.test')),
  ('Documentar o inventário', 'Registrar o resultado na documentação do projeto.', '2026-07-16', '2026-10-29', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.freitas@sgp.test')),
  ('Testar a rotina de backup', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-08-16', '2027-01-24', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.freitas@sgp.test')),
  ('Mapear os equipamentos atuais', 'Validar a entrega com o responsável pelo projeto.', '2026-09-01', '2027-02-14', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'fernanda.soares@sgp.test')),
  ('Calibrar os alertas', 'Registrar o resultado na documentação do projeto.', '2026-09-06', '2027-02-19', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.santos@sgp.test')),
  ('Migrar os serviços legados', 'Validar a entrega com o responsável pelo projeto.', '2026-10-17', '2026-11-02', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.ramos@sgp.test'));

-- Rede Wi-Fi 6
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Rede Wi-Fi 6', 'Modernização da rede sem fio em todas as unidades.', '2026-05-06', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'mateus.araujo@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Revisar regras de firewall', 'Validar a entrega com o responsável pelo projeto.', '2026-06-13', '2026-11-19', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'larissa.freitas@sgp.test')),
  ('Simular a recuperação de desastre', NULL, '2026-06-16', '2026-06-28', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'paulo.martins@sgp.test')),
  ('Calibrar os alertas', 'Registrar o resultado na documentação do projeto.', '2026-06-23', '2026-11-27', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carla.gomes@sgp.test')),
  ('Instalar os sensores', 'Registrar o resultado na documentação do projeto.', '2026-07-06', '2026-07-09', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'mateus.araujo@sgp.test')),
  ('Mapear os equipamentos atuais', NULL, '2026-07-20', '2026-12-29', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'paulo.martins@sgp.test')),
  ('Testar a rotina de backup', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-07-30', '2026-09-20', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'igor.andrade@sgp.test')),
  ('Documentar o inventário', NULL, '2026-07-30', '2026-12-01', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'mateus.araujo@sgp.test'));

-- Migração Nuvem
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Migração Nuvem', 'Transferência dos servidores locais para a nuvem.', '2026-06-17', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'fernanda.souza@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Validar a cobertura do sinal', 'Validar a entrega com o responsável pelo projeto.', '2026-06-28', '2027-01-13', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'renata.fernandes@sgp.test')),
  ('Mapear os equipamentos atuais', 'Depende da aprovação da etapa anterior.', '2026-06-29', '2026-12-21', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.costa@sgp.test')),
  ('Configurar o monitoramento', 'Registrar o resultado na documentação do projeto.', '2026-08-21', '2027-01-07', 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.soares@sgp.test')),
  ('Instalar os sensores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-08-23', '2026-09-07', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'beatriz.barbosa@sgp.test')),
  ('Revisar regras de firewall', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-08-28', '2026-12-21', 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'beatriz.barbosa@sgp.test')),
  ('Documentar o inventário', 'Depende da aprovação da etapa anterior.', '2026-08-29', NULL, 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.costa@sgp.test')),
  ('Migrar os serviços legados', 'Validar a entrega com o responsável pelo projeto.', '2026-08-31', '2026-12-19', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'renata.fernandes@sgp.test')),
  ('Atualizar o firmware dos dispositivos', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-09-18', '2026-10-09', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.costa@sgp.test')),
  ('Definir a topologia da rede', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-09-19', '2026-11-13', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.costa@sgp.test')),
  ('Calibrar os alertas', 'Registrar o resultado na documentação do projeto.', '2026-10-11', '2026-12-02', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.costa@sgp.test')),
  ('Simular a recuperação de desastre', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-27', '2026-11-03', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'helena.lopes@sgp.test')),
  ('Testar a rotina de backup', 'Validar a entrega com o responsável pelo projeto.', '2026-11-01', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'renata.fernandes@sgp.test'));

-- Campanha Matrículas
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Campanha Matrículas', 'Ações de divulgação do processo seletivo 2027.', '2026-09-20', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'leticia.barbosa@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Configurar os anúncios', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-09-27', '2027-02-17', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.gomes@sgp.test')),
  ('Montar a pesquisa de satisfação', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-09-30', '2026-10-17', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.gomes@sgp.test')),
  ('Criar o calendário de conteúdo', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-05', '2027-01-25', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'nicolas.lima@sgp.test')),
  ('Revisar os textos da campanha', 'Validar a entrega com o responsável pelo projeto.', '2026-10-08', '2026-12-19', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.vieira@sgp.test')),
  ('Definir o público-alvo', NULL, '2026-10-09', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.vieira@sgp.test')),
  ('Criar a landing page', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-11', '2026-10-13', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.gomes@sgp.test')),
  ('Atualizar a identidade visual', NULL, '2026-10-11', '2026-11-14', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.mendes@sgp.test')),
  ('Preparar o relatório de resultados', 'Validar a entrega com o responsável pelo projeto.', '2026-10-11', '2027-01-24', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.vieira@sgp.test')),
  ('Gravar os vídeos institucionais', NULL, '2026-10-11', '2026-10-13', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leticia.barbosa@sgp.test')),
  ('Analisar as métricas da campanha', NULL, '2026-10-24', '2026-12-01', 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.vieira@sgp.test')),
  ('Agendar as publicações', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-10-26', '2026-10-27', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'otavio.mendes@sgp.test')),
  ('Produzir as peças gráficas', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-11-01', '2026-11-03', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leticia.barbosa@sgp.test'));

-- Novo Site
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Novo Site', 'Reformulação do site institucional e do blog.', '2026-05-24', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'mateus.cavalcanti@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Definir o público-alvo', 'Depende da aprovação da etapa anterior.', '2026-06-04', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.barbosa@sgp.test')),
  ('Revisar os textos da campanha', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-06-30', '2027-01-09', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'diego.lima@sgp.test')),
  ('Montar a pesquisa de satisfação', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-07-09', '2027-01-17', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'mateus.cavalcanti@sgp.test')),
  ('Criar a landing page', 'Depende da aprovação da etapa anterior.', '2026-08-12', '2027-03-01', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.andrade@sgp.test')),
  ('Criar o calendário de conteúdo', 'Depende da aprovação da etapa anterior.', '2026-08-13', NULL, 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'diego.lima@sgp.test')),
  ('Produzir as peças gráficas', NULL, '2026-10-10', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.barbosa@sgp.test')),
  ('Configurar os anúncios', NULL, '2026-10-19', '2026-10-30', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'rodrigo.santana@sgp.test')),
  ('Preparar o relatório de resultados', 'Validar a entrega com o responsável pelo projeto.', '2026-10-19', NULL, 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.monteiro@sgp.test'));

-- Semana da Inovação
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Semana da Inovação', 'Organização do evento anual com palestras e oficinas.', '2026-04-26', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'caio.lima@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Atualizar a política interna', NULL, '2026-05-07', NULL, 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'henrique.rodrigues@sgp.test')),
  ('Levantar o orçamento', 'Depende da aprovação da etapa anterior.', '2026-05-12', '2026-05-29', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.barbosa@sgp.test')),
  ('Registrar as lições aprendidas', NULL, '2026-05-14', '2026-12-05', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.barbosa@sgp.test')),
  ('Entrevistar as áreas envolvidas', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-08-13', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.lima@sgp.test')),
  ('Mapear o processo atual', 'Registrar o resultado na documentação do projeto.', '2026-08-14', '2026-12-01', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'igor.fernandes@sgp.test')),
  ('Conduzir as oficinas com as equipes', 'Validar a entrega com o responsável pelo projeto.', '2026-09-19', '2026-11-16', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'natalia.ribeiro@sgp.test')),
  ('Elaborar o plano de ação', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-10-25', '2026-11-05', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.barbosa@sgp.test'));

-- Programa Mentoria
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Programa Mentoria', 'Conexão entre colaboradores experientes e recém-contratados.', '2026-05-22', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'gustavo.nunes@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Apresentar o balanço aos gestores', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-06-19', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leticia.teixeira@sgp.test')),
  ('Registrar as lições aprendidas', 'Registrar o resultado na documentação do projeto.', '2026-08-16', '2026-08-28', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'gustavo.nunes@sgp.test')),
  ('Definir os indicadores', 'Validar a entrega com o responsável pelo projeto.', '2026-08-29', '2027-02-13', 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'priscila.oliveira@sgp.test')),
  ('Preparar o material de treinamento', 'Validar a entrega com o responsável pelo projeto.', '2026-09-15', '2026-12-29', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leticia.teixeira@sgp.test')),
  ('Consolidar os resultados', 'Registrar o resultado na documentação do projeto.', '2026-09-23', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'gustavo.nunes@sgp.test')),
  ('Conduzir as oficinas com as equipes', NULL, '2026-09-25', '2026-11-16', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'rafaela.alves@sgp.test')),
  ('Mapear o processo atual', NULL, '2026-10-18', '2027-01-21', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leticia.teixeira@sgp.test')),
  ('Validar o cronograma com a diretoria', 'Validar a entrega com o responsável pelo projeto.', '2026-10-27', '2026-10-30', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'kaique.moreira@sgp.test'));

-- Plano ESG 2027
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Plano ESG 2027', 'Metas de sustentabilidade e impacto social da instituição.', '2026-04-24', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'ana.lima@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Elaborar o plano de ação', 'Validar a entrega com o responsável pelo projeto.', '2026-05-01', '2026-08-29', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carla.fernandes@sgp.test')),
  ('Consolidar os resultados', 'Validar a entrega com o responsável pelo projeto.', '2026-05-15', '2026-11-15', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'otavio.lopes@sgp.test')),
  ('Apresentar o balanço aos gestores', 'Depende da aprovação da etapa anterior.', '2026-06-06', '2026-08-19', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.soares@sgp.test')),
  ('Validar o cronograma com a diretoria', NULL, '2026-06-09', '2026-10-02', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.oliveira@sgp.test')),
  ('Atualizar a política interna', 'Validar a entrega com o responsável pelo projeto.', '2026-06-23', '2026-09-19', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.oliveira@sgp.test')),
  ('Definir os indicadores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-06-25', '2026-09-15', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'sofia.santos@sgp.test')),
  ('Entrevistar as áreas envolvidas', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-07-07', '2026-12-21', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'ana.lima@sgp.test')),
  ('Registrar as lições aprendidas', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-07-14', '2026-12-23', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'ana.lima@sgp.test')),
  ('Levantar o orçamento', 'Validar a entrega com o responsável pelo projeto.', '2026-07-22', NULL, 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carla.fernandes@sgp.test')),
  ('Preparar o material de treinamento', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-10-13', '2027-02-26', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.oliveira@sgp.test')),
  ('Mapear o processo atual', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-18', NULL, 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'otavio.lopes@sgp.test'));

-- LGPD em Dia
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('LGPD em Dia', 'Adequação dos processos internos à proteção de dados.', '2026-03-15', NULL, 'ATIVO', (SELECT id FROM tb_usuarios WHERE email = 'andre.vieira@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Apresentar o balanço aos gestores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-05-06', '2027-02-28', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.ferreira@sgp.test')),
  ('Atualizar a política interna', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-05-11', '2026-11-20', 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'nicolas.rocha@sgp.test')),
  ('Validar o cronograma com a diretoria', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-05-11', '2026-08-30', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'nicolas.rocha@sgp.test')),
  ('Mapear o processo atual', NULL, '2026-05-16', NULL, 'BAIXA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'henrique.freitas@sgp.test')),
  ('Preparar o material de treinamento', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-05-24', '2026-07-30', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.ferreira@sgp.test')),
  ('Conduzir as oficinas com as equipes', 'Validar a entrega com o responsável pelo projeto.', '2026-07-10', NULL, 'ALTA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.vieira@sgp.test')),
  ('Definir os indicadores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-07-15', '2027-01-22', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.vieira@sgp.test')),
  ('Entrevistar as áreas envolvidas', 'Validar a entrega com o responsável pelo projeto.', '2026-08-11', '2027-01-22', 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.ferreira@sgp.test')),
  ('Levantar o orçamento', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-10-01', '2026-10-19', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'samuel.dias@sgp.test')),
  ('Consolidar os resultados', 'Depende da aprovação da etapa anterior.', '2026-10-05', '2026-10-22', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.ferreira@sgp.test')),
  ('Registrar as lições aprendidas', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-10-27', '2027-01-30', 'MEDIA', 'FAZENDO', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.vieira@sgp.test'));

-- Sistema de Ponto
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Sistema de Ponto', 'Registro eletrônico de jornada integrado à folha.', '2025-12-23', '2026-07-11', 'CONCLUIDO', (SELECT id FROM tb_usuarios WHERE email = 'sofia.gomes@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Treinar os usuários-chave', 'Validar a entrega com o responsável pelo projeto.', '2025-12-24', '2026-06-18', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'ana.oliveira@sgp.test')),
  ('Desenvolver o cadastro principal', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-01-01', '2026-05-17', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'larissa.andrade@sgp.test')),
  ('Modelar o banco de dados', 'Registrar o resultado na documentação do projeto.', '2026-02-10', '2026-02-15', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'larissa.andrade@sgp.test')),
  ('Corrigir erros do relatório de homologação', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-02-15', '2026-06-13', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'juliana.machado@sgp.test')),
  ('Revisar a acessibilidade das telas', 'Validar a entrega com o responsável pelo projeto.', '2026-02-25', '2026-07-05', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'paulo.goncalves@sgp.test')),
  ('Criar testes automatizados', 'Depende da aprovação da etapa anterior.', '2026-03-02', '2026-03-03', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'ana.oliveira@sgp.test')),
  ('Criar protótipo das telas', NULL, '2026-05-26', '2026-06-08', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'juliana.machado@sgp.test'));

-- Biblioteca Digital
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Biblioteca Digital', 'Acervo online com empréstimo e reserva de livros.', '2025-10-17', '2026-02-19', 'CONCLUIDO', (SELECT id FROM tb_usuarios WHERE email = 'camila.rocha@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Desenvolver o cadastro principal', NULL, '2025-10-26', '2025-12-22', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'marcelo.vieira@sgp.test')),
  ('Revisar a acessibilidade das telas', 'Registrar o resultado na documentação do projeto.', '2025-11-05', '2026-02-17', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.nunes@sgp.test')),
  ('Configurar pipeline de CI/CD', 'Levantar os impedimentos e comunicar na reunião semanal.', '2025-11-30', '2026-01-17', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.vieira@sgp.test')),
  ('Modelar o banco de dados', 'Registrar o resultado na documentação do projeto.', '2025-12-23', '2026-01-18', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.rocha@sgp.test')),
  ('Corrigir erros do relatório de homologação', 'Incluir evidências da entrega no fechamento da tarefa.', '2025-12-28', '2026-01-30', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.rocha@sgp.test')),
  ('Otimizar consultas lentas', 'Depende da aprovação da etapa anterior.', '2026-01-08', '2026-01-26', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'vanessa.teixeira@sgp.test')),
  ('Integrar com a API de pagamentos', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-01-12', '2026-02-10', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bruno.nunes@sgp.test')),
  ('Documentar os endpoints', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-01-14', '2026-02-04', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'vanessa.teixeira@sgp.test')),
  ('Publicar a versão em produção', 'Registrar o resultado na documentação do projeto.', '2026-01-26', '2026-02-13', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.cardoso@sgp.test'));

-- Troca de Servidores
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Troca de Servidores', 'Substituição do parque de servidores do data center.', '2025-11-07', '2026-03-18', 'CONCLUIDO', (SELECT id FROM tb_usuarios WHERE email = 'andre.fernandes@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Comparar propostas de fornecedores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2025-11-21', '2026-02-21', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leonardo.nunes@sgp.test')),
  ('Configurar o monitoramento', 'Alinhar o escopo com a equipe antes de iniciar.', '2025-11-30', '2025-12-21', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'sofia.ribeiro@sgp.test')),
  ('Simular a recuperação de desastre', 'Alinhar o escopo com a equipe antes de iniciar.', '2025-12-07', '2026-02-19', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'felipe.souza@sgp.test')),
  ('Migrar os serviços legados', 'Registrar o resultado na documentação do projeto.', '2025-12-08', '2025-12-25', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.ramos@sgp.test')),
  ('Mapear os equipamentos atuais', NULL, '2025-12-15', '2026-03-04', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'leonardo.nunes@sgp.test')),
  ('Calibrar os alertas', NULL, '2025-12-18', '2026-02-22', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.ramos@sgp.test')),
  ('Testar a rotina de backup', 'Registrar o resultado na documentação do projeto.', '2026-01-24', '2026-03-08', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.fernandes@sgp.test')),
  ('Validar a cobertura do sinal', NULL, '2026-02-12', '2026-02-22', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'vinicius.santana@sgp.test')),
  ('Atualizar o firmware dos dispositivos', NULL, '2026-02-15', '2026-03-18', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'tatiane.barbosa@sgp.test')),
  ('Documentar o inventário', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-03-07', '2026-03-13', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'sofia.ribeiro@sgp.test'));

-- Rebranding 2026
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Rebranding 2026', 'Atualização da marca e dos materiais institucionais.', '2025-09-24', '2026-03-07', 'CONCLUIDO', (SELECT id FROM tb_usuarios WHERE email = 'bianca.santos@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Agendar as publicações', 'Levantar os impedimentos e comunicar na reunião semanal.', '2025-09-28', '2025-12-11', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'rafael.ferreira@sgp.test')),
  ('Analisar as métricas da campanha', 'Levantar os impedimentos e comunicar na reunião semanal.', '2025-09-30', '2026-01-31', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.freitas@sgp.test')),
  ('Definir o público-alvo', NULL, '2025-10-05', '2025-12-07', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'helena.machado@sgp.test')),
  ('Revisar os textos da campanha', 'Validar a entrega com o responsável pelo projeto.', '2025-10-07', '2025-10-08', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'daniela.ramos@sgp.test')),
  ('Montar a pesquisa de satisfação', NULL, '2025-10-29', '2026-01-24', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'joao.freitas@sgp.test')),
  ('Produzir as peças gráficas', 'Alinhar o escopo com a equipe antes de iniciar.', '2025-12-09', '2025-12-18', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'bianca.santos@sgp.test')),
  ('Atualizar a identidade visual', 'Alinhar o escopo com a equipe antes de iniciar.', '2025-12-19', '2026-02-14', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'helena.machado@sgp.test')),
  ('Configurar os anúncios', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-02-15', '2026-02-17', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'wesley.goncalves@sgp.test')),
  ('Preparar o relatório de resultados', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-02-26', '2026-03-07', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'mateus.araujo@sgp.test'));

-- Pesquisa de Clima
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Pesquisa de Clima', 'Diagnóstico anual de satisfação dos colaboradores.', '2025-08-28', '2026-03-05', 'CONCLUIDO', (SELECT id FROM tb_usuarios WHERE email = 'paulo.martins@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Registrar as lições aprendidas', 'Incluir evidências da entrega no fechamento da tarefa.', '2025-09-14', '2025-12-12', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'renata.fernandes@sgp.test')),
  ('Elaborar o plano de ação', 'Incluir evidências da entrega no fechamento da tarefa.', '2025-09-16', '2025-12-19', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'paulo.martins@sgp.test')),
  ('Definir os indicadores', NULL, '2025-11-12', '2026-02-02', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'felipe.costa@sgp.test')),
  ('Entrevistar as áreas envolvidas', NULL, '2025-12-02', '2025-12-31', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'larissa.freitas@sgp.test')),
  ('Apresentar o balanço aos gestores', NULL, '2026-01-08', '2026-01-14', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'paulo.martins@sgp.test')),
  ('Preparar o material de treinamento', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-01-27', '2026-03-02', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'renata.fernandes@sgp.test')),
  ('Conduzir as oficinas com as equipes', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-02-11', '2026-03-05', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carla.goncalves@sgp.test')),
  ('Levantar o orçamento', NULL, '2026-02-12', '2026-02-25', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'fernanda.souza@sgp.test'));

-- Onboarding RH
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Onboarding RH', 'Padronização da integração de novos colaboradores.', '2026-03-08', '2026-08-07', 'CONCLUIDO', (SELECT id FROM tb_usuarios WHERE email = 'beatriz.barbosa@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Preparar o material de treinamento', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-03-14', '2026-08-06', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.gomes@sgp.test')),
  ('Conduzir as oficinas com as equipes', 'Registrar o resultado na documentação do projeto.', '2026-04-10', '2026-06-30', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.santos@sgp.test')),
  ('Validar o cronograma com a diretoria', 'Depende da aprovação da etapa anterior.', '2026-04-12', '2026-05-19', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'nicolas.rodrigues@sgp.test')),
  ('Levantar o orçamento', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-04-19', '2026-07-08', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.gomes@sgp.test')),
  ('Mapear o processo atual', 'Validar a entrega com o responsável pelo projeto.', '2026-05-07', '2026-06-26', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'beatriz.barbosa@sgp.test')),
  ('Apresentar o balanço aos gestores', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-05-15', '2026-07-09', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'nicolas.lima@sgp.test')),
  ('Atualizar a política interna', NULL, '2026-05-22', '2026-06-07', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'tatiane.freitas@sgp.test')),
  ('Consolidar os resultados', 'Alinhar o escopo com a equipe antes de iniciar.', '2026-07-02', '2026-07-03', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.gomes@sgp.test')),
  ('Definir os indicadores', 'Validar a entrega com o responsável pelo projeto.', '2026-07-02', '2026-07-05', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'andre.santos@sgp.test')),
  ('Registrar as lições aprendidas', 'Registrar o resultado na documentação do projeto.', '2026-07-20', '2026-07-30', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'tatiane.freitas@sgp.test')),
  ('Entrevistar as áreas envolvidas', 'Registrar o resultado na documentação do projeto.', '2026-07-28', '2026-08-06', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'beatriz.barbosa@sgp.test'));

-- Totens Interativos
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Totens Interativos', 'Autoatendimento nas recepções, suspenso por falta de verba.', '2026-06-24', NULL, 'CANCELADO', (SELECT id FROM tb_usuarios WHERE email = 'helena.lopes@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Comparar propostas de fornecedores', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-06-24', '2026-08-27', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'diego.lima@sgp.test')),
  ('Validar a cobertura do sinal', 'Validar a entrega com o responsável pelo projeto.', '2026-07-01', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.barbosa@sgp.test')),
  ('Calibrar os alertas', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-07-19', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.barbosa@sgp.test')),
  ('Migrar os serviços legados', 'Depende da aprovação da etapa anterior.', '2026-07-23', NULL, 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'diego.lima@sgp.test')),
  ('Atualizar o firmware dos dispositivos', 'Depende da aprovação da etapa anterior.', '2026-07-29', '2026-09-14', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.mendes@sgp.test')),
  ('Configurar o monitoramento', NULL, '2026-07-31', '2026-08-27', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'diego.lima@sgp.test')),
  ('Instalar os sensores', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-08-31', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'diego.lima@sgp.test')),
  ('Documentar o inventário', NULL, '2026-09-12', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'isabela.barbosa@sgp.test')),
  ('Definir a topologia da rede', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-10-06', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'mateus.cavalcanti@sgp.test')),
  ('Revisar regras de firewall', 'Levantar os impedimentos e comunicar na reunião semanal.', '2026-10-17', NULL, 'MEDIA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.andrade@sgp.test')),
  ('Simular a recuperação de desastre', 'Registrar o resultado na documentação do projeto.', '2026-10-28', '2026-10-29', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'eduarda.monteiro@sgp.test'));

-- Loja Virtual
INSERT INTO tb_projeto (nome, descricao, data_inicio, data_conclusao, status, responsavel_id) VALUES
  ('Loja Virtual', 'Venda online de materiais, cancelada após mudança de estratégia.', '2026-03-05', NULL, 'CANCELADO', (SELECT id FROM tb_usuarios WHERE email = 'caio.lima@sgp.test'));
SET @projeto = LAST_INSERT_ID();
INSERT INTO tb_tarefa (titulo, descricao, data_criacao, data_conclusao, prioridade, status, projeto_id, usuario_id) VALUES
  ('Documentar os endpoints', NULL, '2026-03-15', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'marcelo.martins@sgp.test')),
  ('Configurar pipeline de CI/CD', 'Registrar o resultado na documentação do projeto.', '2026-04-30', '2026-07-23', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'igor.fernandes@sgp.test')),
  ('Integrar com a API de pagamentos', 'Depende da aprovação da etapa anterior.', '2026-06-15', '2026-09-23', 'BAIXA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'otavio.mendes@sgp.test')),
  ('Implementar autenticação', NULL, '2026-07-19', NULL, 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.lima@sgp.test')),
  ('Revisar a acessibilidade das telas', NULL, '2026-08-03', NULL, 'BAIXA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'carlos.barbosa@sgp.test')),
  ('Levantar requisitos com os usuários', NULL, '2026-08-28', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'camila.lima@sgp.test')),
  ('Otimizar consultas lentas', NULL, '2026-10-01', '2026-10-08', 'MEDIA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'natalia.ribeiro@sgp.test')),
  ('Desenvolver o cadastro principal', 'Incluir evidências da entrega no fechamento da tarefa.', '2026-10-07', NULL, 'ALTA', 'PENDENTE', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'natalia.ribeiro@sgp.test')),
  ('Publicar a versão em produção', 'Registrar o resultado na documentação do projeto.', '2026-10-16', '2026-10-28', 'ALTA', 'CONCLUIDA', @projeto, (SELECT id FROM tb_usuarios WHERE email = 'natalia.ribeiro@sgp.test'));

COMMIT;
