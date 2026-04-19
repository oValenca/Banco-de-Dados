CREATE TABLE `tb_pessoas` (
  `pk_cpf` char(11) PRIMARY KEY COMMENT 'CHECK (LENGTH(pk_cpf) = 11)',
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(120) NOT NULL,
  `sexo_biologico` enum(Masculino,Feminino) NOT NULL,
  `etnia` enum(Branco,Preto,Pardo,Indigena,Amarelo) NOT NULL DEFAULT 'Branco',
  `rg` varchar(15) UNIQUE NOT NULL,
  `dt_nasc` date NOT NULL
);

CREATE TABLE `tb_alunos` (
  `pk_rgm` int PRIMARY KEY,
  `fk_cpf` char(11) UNIQUE NOT NULL,
  `fk_status_aluno` int NOT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT 'CURRENT_TIMESTAMP'
);

CREATE TABLE `tb_disciplina` (
  `pk_id_disciplina` int PRIMARY KEY AUTO_INCREMENT,
  `nome_disciplina` varchar(100) NOT NULL,
  `carga_horaria` decimal(5,2) NOT NULL COMMENT 'CHECK (carga_horaria > 0)'
);

CREATE TABLE `tb_turmas` (
  `pk_id_turma` int PRIMARY KEY AUTO_INCREMENT,
  `nome_turma` varchar(50) UNIQUE NOT NULL,
  `fk_id_unidade` int NOT NULL,
  `fk_id_turno` int NOT NULL,
  `fk_id_professor` int NOT NULL,
  `fk_id_disciplina` int NOT NULL,
  `fk_ano_letivo` int NOT NULL,
  `fk_num_semestre` int NOT NULL,
  `dia_semana` int NOT NULL COMMENT 'CHECK (dia_semana BETWEEN 1 AND 7)',
  `horario_inicio` time NOT NULL,
  `horario_fim` time NOT NULL,
  `bloco` varchar(20) NOT NULL,
  `sala` varchar(20) NOT NULL
);

CREATE TABLE `tb_semestre` (
  `ano_letivo` int NOT NULL COMMENT 'CHECK (ano_letivo >= 2000)',
  `num_semestre` int NOT NULL COMMENT 'CHECK (num_semestre BETWEEN 1 AND 2)',
  `dt_inicio` date NOT NULL,
  `dt_fim` date NOT NULL COMMENT 'CHECK (dt_fim > dt_inicio)',
  `id_status_semestre` int NOT NULL,
  PRIMARY KEY (`ano_letivo`, `num_semestre`)
);

CREATE TABLE `tb_matriculas` (
  `fk_rgm` int NOT NULL,
  `fk_id_turma` int NOT NULL,
  `fk_id_status_matricula` int NOT NULL,
  `percentual_frequencia` decimal(5,2) NOT NULL COMMENT 'CHECK (percentual_frequencia >= 0 AND percentual_frequencia <= 100)',
  `dt_matricula` date NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP),
  `dt_conclusao` date,
  PRIMARY KEY (`fk_rgm`, `fk_id_turma`)
);

CREATE TABLE `tb_notas` (
  `fk_rgm` int NOT NULL,
  `fk_id_turma` int NOT NULL,
  `nota_a1` decimal(4,2) NOT NULL COMMENT 'CHECK (nota_a1 >= 0 AND nota_a1 <= 5)',
  `nota_a2` decimal(4,2) NOT NULL COMMENT 'CHECK (nota_a2 >= 0 AND nota_a2 <= 5)',
  `nota_af` decimal(4,2) NOT NULL COMMENT 'CHECK (nota_af >= 0 AND nota_af <= 5)',
  `nota_final` decimal(4,2) NOT NULL COMMENT 'CHECK (nota_final >= 0 AND nota_final <= 10)',
  PRIMARY KEY (`fk_rgm`, `fk_id_turma`)
);

CREATE TABLE `tb_cursos` (
  `sigla_curso` varchar(10) UNIQUE PRIMARY KEY,
  `nome_curso` varchar(100) UNIQUE NOT NULL,
  `modalidade` enum(Presencial,EAD,Semipresencial) NOT NULL,
  `duracao_semestre` int NOT NULL
);

CREATE TABLE `tb_contatos_aluno` (
  `fk_cpf` char(11) PRIMARY KEY,
  `email_pessoal` varchar(100) UNIQUE NOT NULL COMMENT 'CHECK (email_pessoal LIKE %@%)',
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_telefones_contato` (
  `fk_cpf` char(11),
  `pais` char(2) NOT NULL,
  `ddd` char(2) NOT NULL COMMENT 'CHECK (LENGTH(ddd) = 2)',
  `numero` varchar(9) NOT NULL COMMENT 'CHECK (LENGTH(numero) >= 8)',
  `tipo_telefone` enum(Fixo,Celular) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_cpf`, `pais`, `ddd`, `numero`)
);

CREATE TABLE `tb_contato_emergencia` (
  `pk_id_tel_emergencia` int PRIMARY KEY AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_telefone_emergencia` (
  `fk_id_tel_emergencia` int NOT NULL,
  `pais` char(2) NOT NULL,
  `ddd` char(2) NOT NULL COMMENT 'CHECK (LENGTH(ddd) = 2)',
  `numero` varchar(9) NOT NULL COMMENT 'CHECK (LENGTH(numero) >= 8)',
  `tipo_telefone` enum(Fixo,Celular) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_id_tel_emergencia`, `pais`, `ddd`, `numero`)
);

CREATE TABLE `tb_endereco_alunos` (
  `pk_id_endereco` int PRIMARY KEY AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `cep` char(8) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10),
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL COMMENT 'CHECK (LENGTH(estado) = 2)',
  `pais` varchar(50) NOT NULL,
  `complemento` varchar(150),
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_identidade_aluno` (
  `fk_cpf` char(11) PRIMARY KEY,
  `identidade_genero` enum(Cisgênero,Transgênero,Não-binário,Prefiro não dizer) NOT NULL DEFAULT 'Prefiro não dizer',
  `nome_social` varchar(50) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_turnos` (
  `pk_id_turno` int PRIMARY KEY AUTO_INCREMENT,
  `nome_turno` enum(Manhã,Tarde,Noite,Integral) NOT NULL
);

CREATE TABLE `tb_status_matricula` (
  `pk_id_status_matricula` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `status_matricula` enum(Confirmada,Pendente,Em Análise,Trancada,Cancelada) NOT NULL
);

CREATE TABLE `tb_status_aluno` (
  `pk_id_status_aluno` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `status_aluno` enum(Ativo,Inativo,Trancado,Cancelado,Concluído) NOT NULL
);

CREATE TABLE `tb_status_semestre` (
  `pk_id_status_semestre` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `status_semestre` enum(Cursando,Aprovado,Reprovado,Trancado,DP) NOT NULL
);

CREATE TABLE `tb_docs_alunos` (
  `fk_rgm` int PRIMARY KEY,
  `historico_escolar` varchar(255) NOT NULL,
  `comprovante_residencia` varchar(255) NOT NULL,
  `copia_cpf` varchar(255) NOT NULL,
  `copia_rg` varchar(255) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_status_contrato_educacional` (
  `pk_id_status_contrato_educacional` int PRIMARY KEY AUTO_INCREMENT,
  `status_contrato_educacional` enum(Ativo,Finalizado,Suspenso,Cancelado,Em Aditamento)
);

CREATE TABLE `tb_status_contas_receber` (
  `pk_id_status_contas_receber` int PRIMARY KEY AUTO_INCREMENT,
  `status_contas_receber` enum(Pendente,Liquidado,Vencido,Cancelado,Em Contestação) NOT NULL
);

CREATE TABLE `tb_status_conciliacao` (
  `pk_id_status_conciliacao` int PRIMARY KEY AUTO_INCREMENT,
  `status_conciliacao` enum(Conciliado,Divergente,Pendente de Análise) NOT NULL,
  `acao_sistema` varchar(100)
);

CREATE TABLE `tb_status_acordo` (
  `pk_id_status_acordo` int PRIMARY KEY AUTO_INCREMENT,
  `status_acordo` enum(Sem acordo,Em negociação,Acordo firmado,Acordo quebrado)
);

CREATE TABLE `tb_status_bloqueio` (
  `pk_id_status_bloqueio` int PRIMARY KEY AUTO_INCREMENT,
  `status_bloqueio` enum(Liberado,Bloqueio financeiro,Bloqueio administrativo)
);

CREATE TABLE `tb_status_fluxo` (
  `pk_id_status_fluxo` int PRIMARY KEY AUTO_INCREMENT,
  `status_fluxo` enum(Previsto,Confirmado,Atrasado,Cancelado) NOT NULL
);

CREATE TABLE `tb_status_contas_pagar` (
  `pk_id_status_contas_pagar` int PRIMARY KEY AUTO_INCREMENT,
  `status_contas_pagar` enum(Aberto,Agendado,Pago,Vencido,Cancelado) NOT NULL
);

CREATE TABLE `tb_contratos_educacionais` (
  `pk_num_contrato_educacional` int PRIMARY KEY AUTO_INCREMENT,
  `fk_rgm` int NOT NULL,
  `fk_id_status_contrato_educacional` int NOT NULL,
  `fk_id_plano_pagamento` int NOT NULL,
  `qtd_parcelas` int NOT NULL COMMENT 'CHECK (qtd_parcelas > 0)',
  `dt_inicio` DATE NOT NULL,
  `dt_fim` date NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_mensalidades` (
  `fk_num_contrato_educacional` int NOT NULL,
  `dt_vencimento` date NOT NULL,
  `valor_base_anuidade` decimal(15,2) NOT NULL COMMENT 'CHECK (valor_base_anuidade > 0)',
  `percentual_bolsa` decimal(5,2) DEFAULT 0 COMMENT 'CHECK (percentual_bolsa BETWEEN 0 AND 100)',
  PRIMARY KEY (`fk_num_contrato_educacional`, `dt_vencimento`)
);

CREATE TABLE `tb_contas_receber` (
  `pk_id_contas_receber` int PRIMARY KEY AUTO_INCREMENT,
  `fk_num_contrato_educacional` int NOT NULL,
  `fk_dt_vencimento_mensalidade` date NOT NULL,
  `num_parcela` int NOT NULL,
  `fk_plano_recebimento` int NOT NULL,
  `dt_recebimento` date NOT NULL,
  `valor_recebido` decimal(15,2) NOT NULL COMMENT 'CHECK (valor_recebido > 0)',
  `fk_num_conta_destino_banco` char(3) NOT NULL,
  `fk_num_conta_destino_agencia` varchar(10) NOT NULL,
  `fk_num_conta_destino_numero` varchar(20) NOT NULL,
  `fk_id_status_contas_receber` int NOT NULL,
  PRIMARY KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`)
);

CREATE TABLE `tb_cobranca_mensalidades` (
  `fk_num_contrato_educacional` int NOT NULL,
  `fk_dt_vencimento_mensalidade` date NOT NULL,
  `fk_num_parcela` int NOT NULL,
  `fk_id_metodo_pgto` int NOT NULL,
  `fk_id_status_contas_receber` int NOT NULL,
  `valor_nominal` decimal(15,2) NOT NULL COMMENT 'CHECK (valor_nominal >= 0)',
  `valor_multa_juros` decimal(15,2) NOT NULL COMMENT 'CHECK (valor_multa_juros >= 0)',
  PRIMARY KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `fk_num_parcela`)
);

CREATE TABLE `tb_bancos` (
  `pk_codigo_banco` char(3) PRIMARY KEY,
  `nome_banco` varchar(100) NOT NULL,
  `sigla_banco` varchar(20),
  `cnpj_banco` char(14) UNIQUE
);

CREATE TABLE `tb_conta_bancaria` (
  `fk_codigo_banco` char(3) NOT NULL,
  `agencia` varchar(10) NOT NULL,
  `num_conta` varchar(20) NOT NULL,
  `nome_conta` varchar(100) NOT NULL,
  `tipo_conta` enum(Corrente,Poupança,Salário,Pagamento,Investimento),
  `saldo_inicial` decimal(15,2) DEFAULT 0,
  PRIMARY KEY (`fk_codigo_banco`, `agencia`, `num_conta`)
);

CREATE TABLE `tb_pagamentos` (
  `pk_num_transacao` int PRIMARY KEY,
  `fk_id_contas_pagar` int NOT NULL,
  `fk_banco_origem` char(3) NOT NULL,
  `fk_agencia_origem` varchar(10) NOT NULL,
  `fk_conta_origem` varchar(20) NOT NULL,
  `valor_final_pago` decimal(15,2) NOT NULL COMMENT 'CHECK (valor_final_pago > 0)',
  `dt_pagamento` timestamp NOT NULL DEFAULT 'CURRENT_TIMESTAMP'
);

CREATE TABLE `tb_centro_custos` (
  `cod_hierarquico` varchar(20) PRIMARY KEY,
  `fk_id_unidade` int NOT NULL,
  `fk_id_setor` int NOT NULL,
  `status_ativo` bool NOT NULL
);

CREATE TABLE `tb_contas_pagar` (
  `pk_id_contas_pagar` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_fornecedor` int NOT NULL,
  `fk_cod_hierarquico` varchar(20) NOT NULL,
  `fk_id_plano_pagamento` int NOT NULL,
  `fk_id_status_contas_pagar` int NOT NULL,
  `descricao_gasto` varchar(255) NOT NULL,
  `dt_emissao` date NOT NULL DEFAULT (CURRENT_DATE),
  `dt_vencimento` date NOT NULL COMMENT 'CHECK (dt_vencimento >= dt_emissao)',
  `valor_nominal` decimal(15,2) NOT NULL COMMENT 'CHECK (valor_nominal > 0)',
  `comprovante` varchar(255)
);

CREATE TABLE `tb_inadimplencia` (
  `pk_id_inadimplencia` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fk_rgm` int,
  `fk_id_status_acordo` int NOT NULL,
  `fk_id_status_bloqueio` int NOT NULL,
  `dias_atrasos` int NOT NULL,
  `valor_corrigido` decimal(15,2) NOT NULL,
  `valor_em_aberto` decimal(15,2) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_regularizacao` date
);

CREATE TABLE `tb_plano_pagamento` (
  `pk_id_plano_pagamento` int PRIMARY KEY AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `qtd_parcelas` int NOT NULL COMMENT 'CHECK (qtd_parcelas > 0)',
  `percentual_juros` decimal(5,2) DEFAULT 0 COMMENT 'CHECK (percentual_juros >= 0)'
);

CREATE TABLE `tb_metodo_pgto` (
  `pk_id_metodo_pgto` int PRIMARY KEY AUTO_INCREMENT,
  `nome_metodo` ENUM(Pix,Boleto,Cartão de Crédito,Cartão de Débito,Transferência) NOT NULL
);

CREATE TABLE `tb_detalhe_metodo_pgto` (
  `fk_id_metodo_pgto` int PRIMARY KEY,
  `chave_pagamento` varchar(100),
  `tipo_chave` ENUM(CPF,CNPJ,Email,Telefone,Aleatória)
);

CREATE TABLE `tb_fornecedor` (
  `pk_id_fornecedor` int PRIMARY KEY AUTO_INCREMENT,
  `razao_social` varchar(100) NOT NULL,
  `categoria_fornecedor` enum(Produto,Serviço) NOT NULL
);

CREATE TABLE `tb_plano_recebimento` (
  `pk_id_plano_recebimento` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_metodo_pgto` int NOT NULL,
  `nome_plano` varchar(100) NOT NULL,
  `qtd_parcelas` int NOT NULL COMMENT 'NOT NULL, CHECK (qtd_parcelas > 0)',
  `percentual_desconto` decimal(5,2) DEFAULT 0 COMMENT 'CHECK (percentual_desconto >= 0)',
  `intervalo_dias` int DEFAULT 30
);

CREATE TABLE `tb_conciliacao_financeira` (
  `pk_id_conciliacao` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_inadimplencia` int,
  `ref_banco` varchar(100),
  `ref_sistema` varchar(100),
  `valor_banco` decimal(15,2) NOT NULL,
  `valor_sistema` decimal(15,2) NOT NULL,
  `taxa_banco` decimal(15,2) DEFAULT 0,
  `taxa_juros` decimal(15,2) DEFAULT 0,
  `taxa_multa` decimal(15,2) DEFAULT 0,
  `fk_id_status_conciliacao` int NOT NULL,
  `protocolo_acordo` int
);

CREATE TABLE `tb_cronograma_financeiro` (
  `pk_id_cronograma` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fk_id_contas_pagar` int,
  `fk_id_contas_receber` int,
  `tabela_origem` enum(Pagar,Receber) NOT NULL,
  `fk_id_plano_conta` int NOT NULL,
  `fk_id_status_fluxo` int NOT NULL,
  `dt_expectativa` date NOT NULL,
  `dt_vencimento` date NOT NULL,
  `valor_previsto` decimal(15,2),
  `valor_realizado` decimal(15,2) DEFAULT 0,
  `valor_contratual` decimal(15,2),
  `percentual_risco` decimal(5,2) DEFAULT 0,
  `dt_registro` timestamp NOT NULL DEFAULT 'CURRENT_TIMESTAMP'
);

CREATE TABLE `td_contrato_servicos` (
  `pk_id_contrato_serv` int PRIMARY KEY AUTO_INCREMENT,
  `fk_cod_hierarquico` varchar(20),
  `fk_id_plano_pagamento` int,
  `valor_mes_fixo` decimal(15,2),
  `dt_vencimento` date,
  `dt_inicio` date,
  `dt_fim` date,
  `indice_reajuste` varchar(50),
  `contrato` bool
);

CREATE TABLE `tb_funcionarios` (
  `pk_cpf` char(11) PRIMARY KEY NOT NULL,
  `matricula` varchar(20) UNIQUE NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(120) NOT NULL,
  `sexo_biologico` enum(Masculino,Feminino) NOT NULL,
  `etnia` enum(Branco,Preto,Pardo,Indigena,Amarelo) NOT NULL DEFAULT 'Branco',
  `rg` varchar(15) UNIQUE NOT NULL,
  `dt_nasc` date NOT NULL,
  `fk_id_status_funcionario` int NOT NULL,
  `fk_id_estado_civil` int NOT NULL,
  `fk_id_escolaridade` int NOT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_contatos_func` (
  `fk_cpf` char(11) PRIMARY KEY,
  `email_pessoal` varchar(100) UNIQUE NOT NULL COMMENT 'CHECK (email_pessoal LIKE %@%)',
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_telefones_contato_func` (
  `fk_cpf` char(11),
  `pais` char(2) NOT NULL,
  `ddd` char(2) NOT NULL COMMENT 'CHECK (LENGTH(ddd) = 2)',
  `numero` varchar(9) NOT NULL COMMENT 'CHECK (LENGTH(numero) >= 8)',
  `tipo_telefone` enum(Fixo,Celular) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_cpf`, `pais`, `ddd`, `numero`)
);

CREATE TABLE `tb_contato_emergencia_func` (
  `pk_id_tel_emergencia` int PRIMARY KEY AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_telefone_emergencia_func` (
  `fk_id_tel_emergencia` int NOT NULL,
  `pais` char(2) NOT NULL,
  `ddd` char(2) NOT NULL COMMENT 'CHECK (LENGTH(ddd) = 2)',
  `numero` varchar(9) NOT NULL COMMENT 'CHECK (LENGTH(numero) >= 8)',
  `tipo_telefone` enum(Fixo,Celular) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_id_tel_emergencia`, `pais`, `ddd`, `numero`)
);

CREATE TABLE `tb_endereco_funcionarios` (
  `pk_id_endereco` int PRIMARY KEY AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `cep` char(8) NOT NULL COMMENT 'CHECK (LENGTH(cep) = 8)',
  `numero` varchar(10) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL COMMENT 'CHECK (LENGTH(estado) = 2)',
  `pais` varchar(50) NOT NULL,
  `complemento` varchar(50),
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_docs_funcionarios` (
  `fk_cpf` char(11) PRIMARY KEY,
  `historico_escolar` varchar(255) NOT NULL,
  `comprovante_residencia` varchar(255) NOT NULL,
  `copia_cpf` varchar(255) NOT NULL,
  `copia_rg` varchar(255) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_identidade_func` (
  `fk_cpf` char(11) PRIMARY KEY,
  `identidade_genero` enum(Cisgênero,Transgênero,Não-binário,Prefiro não dizer) NOT NULL DEFAULT 'Prefiro não dizer',
  `nome_social` varchar(50) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_professores` (
  `fk_cpf` char(11) PRIMARY KEY,
  `titulacao` enum(Especialista,Mestre,Doutor,PHD) NOT NULL,
  `email_corporativo` varchar(100) UNIQUE NOT NULL
);

CREATE TABLE `tb_especialidades` (
  `fk_cpf_professor` char(11) NOT NULL,
  `nome_especialidade` varchar(100) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_cpf_professor`, `nome_especialidade`)
);

CREATE TABLE `tb_unidade` (
  `pk_id_unidade` int PRIMARY KEY AUTO_INCREMENT,
  `nome_unidade` varchar(100) NOT NULL,
  `cep` char(8) NOT NULL COMMENT 'CHECK (LENGTH(cep) = 8)',
  `numero` varchar(10) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL COMMENT 'CHECK (LENGTH(estado) = 2)',
  `pais` varchar(50) NOT NULL,
  `complemento` varchar(50),
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_setor` (
  `pk_id_setor` int PRIMARY KEY AUTO_INCREMENT,
  `nome_setor` varchar(100) UNIQUE NOT NULL
);

CREATE TABLE `tb_departamento` (
  `pk_id_departamento` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_setor` int NOT NULL,
  `fk_id_unidade` int NOT NULL,
  `nome_departamento` varchar(100) NOT NULL,
  `sigla` varchar(10) NOT NULL,
  `localizacao` varchar(100),
  `modelo_trabalho` enum(Presencial,Remoto,Híbrido) NOT NULL
);

CREATE TABLE `tb_cargo` (
  `pk_id_cargo` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_departamento` int NOT NULL,
  `nome_cargo` varchar(100) NOT NULL,
  `carga_horaria` decimal(5,2) NOT NULL COMMENT 'CHECK (carga_horaria > 0 AND carga_horaria <= 220)',
  `salario_base` decimal(15,2) COMMENT 'CHECK (salario_base > 0)',
  `descricao_cargo` varchar(255),
  `dt_criacao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
);

CREATE TABLE `tb_contratos` (
  `fk_cpf` char(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `fk_id_cargo` int NOT NULL,
  `tipo_contrato` enum(CLT,PJ,Estágio,Temporário) NOT NULL,
  `dt_fim` date,
  `salario_atual` decimal(15,2) NOT NULL,
  `dt_admissao` date NOT NULL,
  `dt_desligamneto` date COMMENT 'CHECK (dt_desligamento >= dt_admissao)',
  `dt_criacao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `dt_alteracao` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_cpf`, `dt_inicio`)
);

CREATE TABLE `tb_folha_pagamento` (
  `fk_cpf` char(11) NOT NULL,
  `fk_dt_inicio_contrato` date NOT NULL,
  `mes` int NOT NULL COMMENT 'CHECK (mes >= 1 AND mes <= 12)',
  `ano` int NOT NULL,
  `salario_bruto` decimal(15,2) NOT NULL,
  `salario_liquido` decimal(15,2) NOT NULL,
  `descontos` decimal(15,2) NOT NULL DEFAULT 0,
  `dt_pagamento` date NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_cpf`, `fk_dt_inicio_contrato`, `mes`, `ano`)
);

CREATE TABLE `tb_beneficios` (
  `pk_id_beneficios` int PRIMARY KEY AUTO_INCREMENT,
  `nome_beneficio` varchar(100) UNIQUE NOT NULL,
  `valor_beneficio` decimal(15,2) NOT NULL
);

CREATE TABLE `tb_funcionario_beneficios` (
  `fk_cpf` char(11) NOT NULL,
  `fk_id_beneficio` int NOT NULL,
  `status_beneficio` enum(Ativo,Inativo,Suspenso) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY (`fk_cpf`, `fk_id_beneficio`)
);

CREATE TABLE `tb_ferias` (
  `fk_cpf` char(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date NOT NULL,
  `fk_id_status_ferias` int NOT NULL,
  PRIMARY KEY (`fk_cpf`, `dt_inicio`)
);

CREATE TABLE `tb_afastamento` (
  `fk_cpf` char(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date,
  `fk_id_motivo_afastamento` int NOT NULL,
  PRIMARY KEY (`fk_cpf`, `dt_inicio`)
);

CREATE TABLE `tb_avaliacoes_desempenho` (
  `fk_cpf` char(11) NOT NULL,
  `dt_avaliacao` date NOT NULL,
  `nota` int NOT NULL,
  `feedback` text,
  PRIMARY KEY (`fk_cpf`, `dt_avaliacao`)
);

CREATE TABLE `tb_status_funcionario` (
  `pk_id_status_funcionario` int PRIMARY KEY AUTO_INCREMENT,
  `status_funcionario` enum(Ativo,Inativo,Afastado,Ferias) NOT NULL
);

CREATE TABLE `tb_estado_civil` (
  `pk_id_estado_civil` int PRIMARY KEY AUTO_INCREMENT,
  `nome_estado_civil` enum(Solteiro(a),Casado(a),Divorciado(a),Viúvo(a),União Estável) NOT NULL
);

CREATE TABLE `tb_escolaridade` (
  `pk_id_escolaridade` int PRIMARY KEY AUTO_INCREMENT,
  `escolaridade` varchar(50) NOT NULL
);

CREATE TABLE `tb_status_ferias` (
  `pk_id_status_ferias` int PRIMARY KEY AUTO_INCREMENT,
  `nome_status_ferias` enum(Agendada,Em Gozo,Concluída,Cancelada) NOT NULL
);

CREATE TABLE `tb_motivo_afastamento` (
  `pk_id_motivo_afastamento` int PRIMARY KEY AUTO_INCREMENT,
  `motivo_afastamento` varchar(100) NOT NULL
);

CREATE TABLE `tb_vinculo_professor_disciplina` (
  `pk_id_vinculo` int PRIMARY KEY AUTO_INCREMENT,
  `fk_id_professor` int NOT NULL,
  `fk_id_disciplina` int NOT NULL,
  `fk_sigla_curso` varchar(10) NOT NULL,
  `carga_horaria` decimal(5,2) NOT NULL COMMENT 'CHECK (carga_horaria > 0)',
  `ano_letivo` int NOT NULL COMMENT 'CHECK (ano_letivo >= 2000',
  `semestre` int NOT NULL COMMENT 'CHECK (semestre IN (1, 2))'
);

CREATE UNIQUE INDEX `tb_turmas_index_0` ON `tb_turmas` (`nome_turma`, `fk_ano_letivo`, `fk_num_semestre`);

CREATE UNIQUE INDEX `tb_endereco_alunos_index_1` ON `tb_endereco_alunos` (`fk_cpf`, `cep`, `numero`, `rua`);

CREATE UNIQUE INDEX `tb_endereco_funcionarios_index_2` ON `tb_endereco_funcionarios` (`fk_cpf`, `cep`, `numero`);

ALTER TABLE `tb_alunos` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_alunos` ADD FOREIGN KEY (`fk_status_aluno`) REFERENCES `tb_status_aluno` (`pk_id_status_aluno`);

ALTER TABLE `tb_turmas` ADD FOREIGN KEY (`fk_id_unidade`) REFERENCES `tb_unidade` (`pk_id_unidade`);

ALTER TABLE `tb_turmas` ADD FOREIGN KEY (`fk_id_turno`) REFERENCES `tb_turnos` (`pk_id_turno`);

ALTER TABLE `tb_turmas` ADD FOREIGN KEY (`fk_id_professor`) REFERENCES `tb_professores` (`fk_cpf`);

ALTER TABLE `tb_turmas` ADD FOREIGN KEY (`fk_id_disciplina`) REFERENCES `tb_disciplina` (`pk_id_disciplina`);

ALTER TABLE `tb_semestre` ADD FOREIGN KEY (`id_status_semestre`) REFERENCES `tb_status_semestre` (`pk_id_status_semestre`);

ALTER TABLE `tb_turmas` ADD FOREIGN KEY (`fk_ano_letivo`, `fk_num_semestre`) REFERENCES `tb_semestre` (`ano_letivo`, `num_semestre`);

ALTER TABLE `tb_matriculas` ADD FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`);

ALTER TABLE `tb_matriculas` ADD FOREIGN KEY (`fk_id_turma`) REFERENCES `tb_turmas` (`pk_id_turma`);

ALTER TABLE `tb_matriculas` ADD FOREIGN KEY (`fk_id_status_matricula`) REFERENCES `tb_status_matricula` (`pk_id_status_matricula`);

ALTER TABLE `tb_notas` ADD FOREIGN KEY (`fk_rgm`, `fk_id_turma`) REFERENCES `tb_matriculas` (`fk_rgm`, `fk_id_turma`);

ALTER TABLE `tb_contatos_aluno` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_telefones_contato` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_contatos_aluno` (`fk_cpf`);

ALTER TABLE `tb_contato_emergencia` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_telefone_emergencia` ADD FOREIGN KEY (`fk_id_tel_emergencia`) REFERENCES `tb_contato_emergencia` (`pk_id_tel_emergencia`);

ALTER TABLE `tb_endereco_alunos` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_identidade_aluno` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_docs_alunos` ADD FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`);

ALTER TABLE `tb_contratos_educacionais` ADD FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`);

ALTER TABLE `tb_contratos_educacionais` ADD FOREIGN KEY (`fk_id_status_contrato_educacional`) REFERENCES `tb_status_contrato_educacional` (`pk_id_status_contrato_educacional`);

ALTER TABLE `tb_contratos_educacionais` ADD FOREIGN KEY (`fk_id_plano_pagamento`) REFERENCES `tb_plano_pagamento` (`pk_id_plano_pagamento`);

ALTER TABLE `tb_mensalidades` ADD FOREIGN KEY (`fk_num_contrato_educacional`) REFERENCES `tb_contratos_educacionais` (`pk_num_contrato_educacional`);

ALTER TABLE `tb_contas_receber` ADD FOREIGN KEY (`fk_plano_recebimento`) REFERENCES `tb_plano_recebimento` (`pk_id_plano_recebimento`);

ALTER TABLE `tb_contas_receber` ADD FOREIGN KEY (`fk_id_status_contas_receber`) REFERENCES `tb_status_contas_receber` (`pk_id_status_contas_receber`);

ALTER TABLE `tb_contas_receber` ADD FOREIGN KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`) REFERENCES `tb_mensalidades` (`fk_num_contrato_educacional`, `dt_vencimento`);

ALTER TABLE `tb_cobranca_mensalidades` ADD FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`);

ALTER TABLE `tb_cobranca_mensalidades` ADD FOREIGN KEY (`fk_id_status_contas_receber`) REFERENCES `tb_status_contas_receber` (`pk_id_status_contas_receber`);

ALTER TABLE `tb_cobranca_mensalidades` ADD FOREIGN KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `fk_num_parcela`) REFERENCES `tb_contas_receber` (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `num_parcela`);

ALTER TABLE `tb_conta_bancaria` ADD FOREIGN KEY (`fk_codigo_banco`) REFERENCES `tb_bancos` (`pk_codigo_banco`);

ALTER TABLE `tb_pagamentos` ADD FOREIGN KEY (`fk_id_contas_pagar`) REFERENCES `tb_contas_pagar` (`pk_id_contas_pagar`);

ALTER TABLE `tb_pagamentos` ADD FOREIGN KEY (`fk_banco_origem`, `fk_agencia_origem`, `fk_conta_origem`) REFERENCES `tb_conta_bancaria` (`fk_codigo_banco`, `agencia`, `num_conta`);

ALTER TABLE `tb_centro_custos` ADD FOREIGN KEY (`fk_id_unidade`) REFERENCES `tb_unidade` (`pk_id_unidade`);

ALTER TABLE `tb_centro_custos` ADD FOREIGN KEY (`fk_id_setor`) REFERENCES `tb_setor` (`pk_id_setor`);

ALTER TABLE `tb_contas_pagar` ADD FOREIGN KEY (`fk_id_fornecedor`) REFERENCES `tb_fornecedor` (`pk_id_fornecedor`);

ALTER TABLE `tb_contas_pagar` ADD FOREIGN KEY (`fk_cod_hierarquico`) REFERENCES `tb_centro_custos` (`cod_hierarquico`);

ALTER TABLE `tb_contas_pagar` ADD FOREIGN KEY (`fk_id_plano_pagamento`) REFERENCES `tb_plano_pagamento` (`pk_id_plano_pagamento`);

ALTER TABLE `tb_contas_pagar` ADD FOREIGN KEY (`fk_id_status_contas_pagar`) REFERENCES `tb_status_contas_pagar` (`pk_id_status_contas_pagar`);

ALTER TABLE `tb_inadimplencia` ADD FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`);

ALTER TABLE `tb_inadimplencia` ADD FOREIGN KEY (`fk_id_status_acordo`) REFERENCES `tb_status_acordo` (`pk_id_status_acordo`);

ALTER TABLE `tb_inadimplencia` ADD FOREIGN KEY (`fk_id_status_bloqueio`) REFERENCES `tb_status_bloqueio` (`pk_id_status_bloqueio`);

ALTER TABLE `tb_detalhe_metodo_pgto` ADD FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`);

ALTER TABLE `tb_plano_recebimento` ADD FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`);

ALTER TABLE `tb_conciliacao_financeira` ADD FOREIGN KEY (`fk_id_inadimplencia`) REFERENCES `tb_inadimplencia` (`pk_id_inadimplencia`);

ALTER TABLE `tb_conciliacao_financeira` ADD FOREIGN KEY (`fk_id_status_conciliacao`) REFERENCES `tb_status_conciliacao` (`pk_id_status_conciliacao`);

ALTER TABLE `tb_cronograma_financeiro` ADD FOREIGN KEY (`fk_id_contas_pagar`) REFERENCES `tb_contas_pagar` (`pk_id_contas_pagar`);

ALTER TABLE `tb_cronograma_financeiro` ADD FOREIGN KEY (`fk_id_contas_receber`) REFERENCES `tb_contas_receber` (`pk_id_contas_receber`);

ALTER TABLE `tb_cronograma_financeiro` ADD FOREIGN KEY (`fk_id_status_fluxo`) REFERENCES `tb_status_fluxo` (`pk_id_status_fluxo`);

ALTER TABLE `td_contrato_servicos` ADD FOREIGN KEY (`fk_cod_hierarquico`) REFERENCES `tb_centro_custos` (`cod_hierarquico`);

ALTER TABLE `td_contrato_servicos` ADD FOREIGN KEY (`fk_id_plano_pagamento`) REFERENCES `tb_plano_pagamento` (`pk_id_plano_pagamento`);

ALTER TABLE `tb_funcionarios` ADD FOREIGN KEY (`fk_id_status_funcionario`) REFERENCES `tb_status_funcionario` (`pk_id_status_funcionario`);

ALTER TABLE `tb_funcionarios` ADD FOREIGN KEY (`fk_id_estado_civil`) REFERENCES `tb_estado_civil` (`pk_id_estado_civil`);

ALTER TABLE `tb_funcionarios` ADD FOREIGN KEY (`fk_id_escolaridade`) REFERENCES `tb_escolaridade` (`pk_id_escolaridade`);

ALTER TABLE `tb_contatos_func` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_telefones_contato_func` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_contatos_aluno` (`fk_cpf`);

ALTER TABLE `tb_contato_emergencia_func` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`);

ALTER TABLE `tb_telefone_emergencia_func` ADD FOREIGN KEY (`fk_id_tel_emergencia`) REFERENCES `tb_contato_emergencia` (`pk_id_tel_emergencia`);

ALTER TABLE `tb_endereco_funcionarios` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_docs_funcionarios` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_identidade_func` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_professores` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_especialidades` ADD FOREIGN KEY (`fk_cpf_professor`) REFERENCES `tb_professores` (`fk_cpf`);

ALTER TABLE `tb_departamento` ADD FOREIGN KEY (`fk_id_setor`) REFERENCES `tb_setor` (`pk_id_setor`);

ALTER TABLE `tb_departamento` ADD FOREIGN KEY (`fk_id_unidade`) REFERENCES `tb_unidade` (`pk_id_unidade`);

ALTER TABLE `tb_cargo` ADD FOREIGN KEY (`fk_id_departamento`) REFERENCES `tb_departamento` (`pk_id_departamento`);

ALTER TABLE `tb_contratos` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_contratos` ADD FOREIGN KEY (`fk_id_cargo`) REFERENCES `tb_cargo` (`pk_id_cargo`);

ALTER TABLE `tb_folha_pagamento` ADD FOREIGN KEY (`fk_cpf`, `fk_dt_inicio_contrato`) REFERENCES `tb_contratos` (`fk_cpf`, `dt_inicio`);

ALTER TABLE `tb_funcionario_beneficios` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_funcionario_beneficios` ADD FOREIGN KEY (`fk_id_beneficio`) REFERENCES `tb_beneficios` (`pk_id_beneficios`);

ALTER TABLE `tb_ferias` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_ferias` ADD FOREIGN KEY (`fk_id_status_ferias`) REFERENCES `tb_status_ferias` (`pk_id_status_ferias`);

ALTER TABLE `tb_afastamento` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_afastamento` ADD FOREIGN KEY (`fk_id_motivo_afastamento`) REFERENCES `tb_motivo_afastamento` (`pk_id_motivo_afastamento`);

ALTER TABLE `tb_avaliacoes_desempenho` ADD FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`);

ALTER TABLE `tb_vinculo_professor_disciplina` ADD FOREIGN KEY (`fk_id_professor`) REFERENCES `tb_professores` (`fk_cpf`);

ALTER TABLE `tb_vinculo_professor_disciplina` ADD FOREIGN KEY (`fk_id_disciplina`) REFERENCES `tb_disciplina` (`pk_id_disciplina`);

ALTER TABLE `tb_vinculo_professor_disciplina` ADD FOREIGN KEY (`fk_sigla_curso`) REFERENCES `tb_cursos` (`sigla_curso`);
