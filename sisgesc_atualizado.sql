-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: sisgesc
-- ------------------------------------------------------
-- Server version	8.0.45
CREATE DATABASE IF NOT EXISTS SisGESC;
USE SisGESC;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_aluno_bi`
--

DROP TABLE IF EXISTS `dim_aluno_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_aluno_bi` (
  `sk_aluno` int NOT NULL AUTO_INCREMENT,
  `pk_rgm` int NOT NULL,
  `nome_completo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sk_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_aluno_bi`
--

LOCK TABLES `dim_aluno_bi` WRITE;
/*!40000 ALTER TABLE `dim_aluno_bi` DISABLE KEYS */;
INSERT INTO `dim_aluno_bi` VALUES (1,2026001,'Joao Silva');
/*!40000 ALTER TABLE `dim_aluno_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_curso_bi`
--

DROP TABLE IF EXISTS `dim_curso_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_curso_bi` (
  `sk_curso` int NOT NULL AUTO_INCREMENT,
  `sigla_curso` varchar(10) DEFAULT NULL,
  `nome_curso` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sk_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_curso_bi`
--

LOCK TABLES `dim_curso_bi` WRITE;
/*!40000 ALTER TABLE `dim_curso_bi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_curso_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_fornecedor_bi`
--

DROP TABLE IF EXISTS `dim_fornecedor_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_fornecedor_bi` (
  `sk_fornecedor` int NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(20) DEFAULT NULL,
  `razao_social` varchar(150) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sk_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_fornecedor_bi`
--

LOCK TABLES `dim_fornecedor_bi` WRITE;
/*!40000 ALTER TABLE `dim_fornecedor_bi` DISABLE KEYS */;
INSERT INTO `dim_fornecedor_bi` VALUES (1,'11222333000192','Educa Mais Materiais2 LTDA','Produto'),(2,'11222333000199','Educa Mais Materiais LTDA','Produto'),(3,'44555666000182','Limpeza Brilho Extremo2','Serviço'),(4,'44555666000188','Limpeza Brilho Extremo','Serviço'),(5,'77888999000177','Softwares Educacionais S.A','Serviço');
/*!40000 ALTER TABLE `dim_fornecedor_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_funcionario_bi`
--

DROP TABLE IF EXISTS `dim_funcionario_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_funcionario_bi` (
  `sk_funcionario` int NOT NULL AUTO_INCREMENT,
  `cpf` char(11) NOT NULL,
  `nome_completo` varchar(150) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sk_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_funcionario_bi`
--

LOCK TABLES `dim_funcionario_bi` WRITE;
/*!40000 ALTER TABLE `dim_funcionario_bi` DISABLE KEYS */;
INSERT INTO `dim_funcionario_bi` VALUES (1,'22233344455','Marlus Bueno','Coordenador');
/*!40000 ALTER TABLE `dim_funcionario_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_unidade_bi`
--

DROP TABLE IF EXISTS `dim_unidade_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_unidade_bi` (
  `sk_unidade` int NOT NULL AUTO_INCREMENT,
  `pk_id_unidade` int DEFAULT NULL,
  `nome_unidade` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sk_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_unidade_bi`
--

LOCK TABLES `dim_unidade_bi` WRITE;
/*!40000 ALTER TABLE `dim_unidade_bi` DISABLE KEYS */;
INSERT INTO `dim_unidade_bi` VALUES (1,1,'Sede','SP');
/*!40000 ALTER TABLE `dim_unidade_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fato_financeiro_bi`
--

DROP TABLE IF EXISTS `fato_financeiro_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_financeiro_bi` (
  `sk_fato` int NOT NULL AUTO_INCREMENT,
  `sk_fornecedor` int DEFAULT NULL,
  `valor_total_pendente` decimal(15,2) DEFAULT NULL,
  `valor_total_pago` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`sk_fato`),
  KEY `sk_fornecedor` (`sk_fornecedor`),
  CONSTRAINT `fato_financeiro_bi_ibfk_1` FOREIGN KEY (`sk_fornecedor`) REFERENCES `dim_fornecedor_bi` (`sk_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_financeiro_bi`
--

LOCK TABLES `fato_financeiro_bi` WRITE;
/*!40000 ALTER TABLE `fato_financeiro_bi` DISABLE KEYS */;
INSERT INTO `fato_financeiro_bi` VALUES (1,2,0.00,450.00);
/*!40000 ALTER TABLE `fato_financeiro_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fato_matricula_bi`
--

DROP TABLE IF EXISTS `fato_matricula_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_matricula_bi` (
  `sk_fato` int NOT NULL AUTO_INCREMENT,
  `sk_aluno` int DEFAULT NULL,
  `percentual_frequencia` decimal(5,2) DEFAULT NULL,
  `status_risco` enum('Verde','Amarelo','Vermelho') DEFAULT NULL,
  PRIMARY KEY (`sk_fato`),
  KEY `sk_aluno` (`sk_aluno`),
  CONSTRAINT `fato_matricula_bi_ibfk_1` FOREIGN KEY (`sk_aluno`) REFERENCES `dim_aluno_bi` (`sk_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_matricula_bi`
--

LOCK TABLES `fato_matricula_bi` WRITE;
/*!40000 ALTER TABLE `fato_matricula_bi` DISABLE KEYS */;
INSERT INTO `fato_matricula_bi` VALUES (1,1,70.00,'Vermelho');
/*!40000 ALTER TABLE `fato_matricula_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fato_rh_bi`
--

DROP TABLE IF EXISTS `fato_rh_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_rh_bi` (
  `sk_fato` int NOT NULL AUTO_INCREMENT,
  `sk_funcionario` int NOT NULL,
  `salario_atual` decimal(15,2) DEFAULT NULL,
  `custo_anual_estimado` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`sk_fato`),
  KEY `sk_funcionario` (`sk_funcionario`),
  CONSTRAINT `fato_rh_bi_ibfk_1` FOREIGN KEY (`sk_funcionario`) REFERENCES `dim_funcionario_bi` (`sk_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_rh_bi`
--

LOCK TABLES `fato_rh_bi` WRITE;
/*!40000 ALTER TABLE `fato_rh_bi` DISABLE KEYS */;
INSERT INTO `fato_rh_bi` VALUES (1,1,5500.00,73150.00);
/*!40000 ALTER TABLE `fato_rh_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_afastamento`
--

DROP TABLE IF EXISTS `tb_afastamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_afastamento` (
  `fk_cpf` char(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_id_motivo_afastamento` int NOT NULL,
  PRIMARY KEY (`fk_cpf`,`dt_inicio`),
  KEY `fk_id_motivo_afastamento` (`fk_id_motivo_afastamento`),
  CONSTRAINT `tb_afastamento_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`),
  CONSTRAINT `tb_afastamento_ibfk_2` FOREIGN KEY (`fk_id_motivo_afastamento`) REFERENCES `tb_motivo_afastamento` (`pk_id_motivo_afastamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_afastamento`
--

LOCK TABLES `tb_afastamento` WRITE;
/*!40000 ALTER TABLE `tb_afastamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_afastamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_alunos`
--

DROP TABLE IF EXISTS `tb_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_alunos` (
  `pk_rgm` int NOT NULL,
  `fk_cpf` char(11) NOT NULL,
  `fk_status_aluno` int NOT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_rgm`),
  UNIQUE KEY `fk_cpf` (`fk_cpf`),
  KEY `idx_aluno_cpf` (`fk_cpf`),
  KEY `fk_aluno_status` (`fk_status_aluno`),
  CONSTRAINT `fk_aluno_pessoa` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_aluno_status` FOREIGN KEY (`fk_status_aluno`) REFERENCES `tb_status_aluno` (`pk_id_status_aluno`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alunos`
--

LOCK TABLES `tb_alunos` WRITE;
/*!40000 ALTER TABLE `tb_alunos` DISABLE KEYS */;
INSERT INTO `tb_alunos` VALUES (2026001,'11122233344',1,'2026-05-09 00:58:32');
/*!40000 ALTER TABLE `tb_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_avaliacoes_desempenho`
--

DROP TABLE IF EXISTS `tb_avaliacoes_desempenho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_avaliacoes_desempenho` (
  `fk_cpf` char(11) NOT NULL,
  `dt_avaliacao` date NOT NULL,
  `nota` int NOT NULL,
  `feedback` text,
  PRIMARY KEY (`fk_cpf`,`dt_avaliacao`),
  CONSTRAINT `tb_avaliacoes_desempenho_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_avaliacoes_desempenho`
--

LOCK TABLES `tb_avaliacoes_desempenho` WRITE;
/*!40000 ALTER TABLE `tb_avaliacoes_desempenho` DISABLE KEYS */;
INSERT INTO `tb_avaliacoes_desempenho` VALUES ('22233344455','2026-05-08',10,'Promoção por mérito acadêmico');
/*!40000 ALTER TABLE `tb_avaliacoes_desempenho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bairro`
--

DROP TABLE IF EXISTS `tb_bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_bairro` (
  `pk_id_bairro` int NOT NULL AUTO_INCREMENT,
  `nome_bairro` varchar(50) NOT NULL,
  `fk_id_cidade` int NOT NULL,
  PRIMARY KEY (`pk_id_bairro`),
  UNIQUE KEY `tb_bairro_index_3` (`nome_bairro`,`fk_id_cidade`),
  KEY `fk_id_cidade` (`fk_id_cidade`),
  CONSTRAINT `tb_bairro_ibfk_1` FOREIGN KEY (`fk_id_cidade`) REFERENCES `tb_cidade` (`pk_id_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bairro`
--

LOCK TABLES `tb_bairro` WRITE;
/*!40000 ALTER TABLE `tb_bairro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bancos`
--

DROP TABLE IF EXISTS `tb_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_bancos` (
  `pk_codigo_banco` char(3) NOT NULL,
  `nome_banco` varchar(100) NOT NULL,
  `sigla_banco` varchar(20) DEFAULT NULL,
  `cnpj_banco` char(14) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_banco`),
  UNIQUE KEY `cnpj_banco` (`cnpj_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bancos`
--

LOCK TABLES `tb_bancos` WRITE;
/*!40000 ALTER TABLE `tb_bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_beneficios`
--

DROP TABLE IF EXISTS `tb_beneficios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_beneficios` (
  `pk_id_beneficios` int NOT NULL AUTO_INCREMENT,
  `nome_beneficio` varchar(100) NOT NULL,
  `valor_beneficio` decimal(15,2) NOT NULL,
  PRIMARY KEY (`pk_id_beneficios`),
  UNIQUE KEY `nome_beneficio` (`nome_beneficio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_beneficios`
--

LOCK TABLES `tb_beneficios` WRITE;
/*!40000 ALTER TABLE `tb_beneficios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_beneficios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cargo`
--

DROP TABLE IF EXISTS `tb_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cargo` (
  `pk_id_cargo` int NOT NULL AUTO_INCREMENT,
  `fk_id_departamento` int NOT NULL,
  `nome_cargo` varchar(100) NOT NULL,
  `carga_horaria` decimal(5,2) NOT NULL,
  `salario_base` decimal(15,2) DEFAULT NULL,
  `descricao_cargo` varchar(255) DEFAULT NULL,
  `dt_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id_cargo`),
  KEY `fk_id_departamento` (`fk_id_departamento`),
  CONSTRAINT `tb_cargo_ibfk_1` FOREIGN KEY (`fk_id_departamento`) REFERENCES `tb_departamento` (`pk_id_departamento`),
  CONSTRAINT `tb_cargo_chk_1` CHECK (((`carga_horaria` > 0) and (`carga_horaria` <= 220))),
  CONSTRAINT `tb_cargo_chk_2` CHECK ((`salario_base` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cargo`
--

LOCK TABLES `tb_cargo` WRITE;
/*!40000 ALTER TABLE `tb_cargo` DISABLE KEYS */;
INSERT INTO `tb_cargo` VALUES (1,1,'Coordenador',40.00,5000.00,NULL,'2026-05-09 02:09:04','2026-05-09 02:09:04');
/*!40000 ALTER TABLE `tb_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_centro_custos`
--

DROP TABLE IF EXISTS `tb_centro_custos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_centro_custos` (
  `cod_hierarquico` varchar(20) NOT NULL,
  `fk_id_unidade` int NOT NULL,
  `fk_id_setor` int NOT NULL,
  `status_ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`cod_hierarquico`),
  KEY `fk_id_unidade` (`fk_id_unidade`),
  KEY `fk_id_setor` (`fk_id_setor`),
  CONSTRAINT `tb_centro_custos_ibfk_1` FOREIGN KEY (`fk_id_unidade`) REFERENCES `tb_unidade` (`pk_id_unidade`),
  CONSTRAINT `tb_centro_custos_ibfk_2` FOREIGN KEY (`fk_id_setor`) REFERENCES `tb_setor` (`pk_id_setor`),
  CONSTRAINT `tb_centro_custos_chk_1` CHECK ((`status_ativo` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_centro_custos`
--

LOCK TABLES `tb_centro_custos` WRITE;
/*!40000 ALTER TABLE `tb_centro_custos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_centro_custos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cidade`
--

DROP TABLE IF EXISTS `tb_cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cidade` (
  `pk_id_cidade` int NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(50) NOT NULL,
  `fk_uf` char(2) NOT NULL,
  PRIMARY KEY (`pk_id_cidade`),
  UNIQUE KEY `tb_cidade_index_2` (`nome_cidade`,`fk_uf`),
  KEY `fk_uf` (`fk_uf`),
  CONSTRAINT `tb_cidade_ibfk_1` FOREIGN KEY (`fk_uf`) REFERENCES `tb_estado` (`pk_uf`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cidade`
--

LOCK TABLES `tb_cidade` WRITE;
/*!40000 ALTER TABLE `tb_cidade` DISABLE KEYS */;
INSERT INTO `tb_cidade` VALUES (2,'São Bernardo','SP'),(1,'São Paulo','SP');
/*!40000 ALTER TABLE `tb_cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cobranca_mensalidades`
--

DROP TABLE IF EXISTS `tb_cobranca_mensalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cobranca_mensalidades` (
  `fk_num_contrato_educacional` int NOT NULL,
  `fk_dt_vencimento_mensalidade` date NOT NULL,
  `fk_num_parcela` int NOT NULL,
  `fk_id_metodo_pgto` int NOT NULL,
  `fk_id_status_contas_receber` int NOT NULL,
  `valor_nominal` decimal(15,2) NOT NULL,
  `valor_multa_juros` decimal(15,2) NOT NULL,
  PRIMARY KEY (`fk_num_contrato_educacional`,`fk_dt_vencimento_mensalidade`,`fk_num_parcela`),
  KEY `fk_id_metodo_pgto` (`fk_id_metodo_pgto`),
  KEY `fk_id_status_contas_receber` (`fk_id_status_contas_receber`),
  CONSTRAINT `tb_cobranca_mensalidades_ibfk_1` FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`),
  CONSTRAINT `tb_cobranca_mensalidades_ibfk_2` FOREIGN KEY (`fk_id_status_contas_receber`) REFERENCES `tb_status_contas_receber` (`pk_id_status_contas_receber`),
  CONSTRAINT `tb_cobranca_mensalidades_ibfk_3` FOREIGN KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `fk_num_parcela`) REFERENCES `tb_contas_receber` (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `num_parcela`),
  CONSTRAINT `tb_cobranca_mensalidades_chk_1` CHECK ((`valor_nominal` >= 0)),
  CONSTRAINT `tb_cobranca_mensalidades_chk_2` CHECK ((`valor_multa_juros` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cobranca_mensalidades`
--

LOCK TABLES `tb_cobranca_mensalidades` WRITE;
/*!40000 ALTER TABLE `tb_cobranca_mensalidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cobranca_mensalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_conciliacao_financeira`
--

DROP TABLE IF EXISTS `tb_conciliacao_financeira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_conciliacao_financeira` (
  `pk_id_conciliacao` int NOT NULL AUTO_INCREMENT,
  `fk_id_inadimplencia` int DEFAULT NULL,
  `ref_banco` varchar(100) DEFAULT NULL,
  `ref_sistema` varchar(100) DEFAULT NULL,
  `valor_banco` decimal(15,2) NOT NULL,
  `valor_sistema` decimal(15,2) NOT NULL,
  `taxa_banco` decimal(15,2) DEFAULT '0.00',
  `taxa_juros` decimal(15,2) DEFAULT '0.00',
  `taxa_multa` decimal(15,2) DEFAULT '0.00',
  `fk_id_status_conciliacao` int NOT NULL,
  `protocolo_acordo` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_conciliacao`),
  KEY `fk_id_inadimplencia` (`fk_id_inadimplencia`),
  KEY `fk_id_status_conciliacao` (`fk_id_status_conciliacao`),
  CONSTRAINT `tb_conciliacao_financeira_ibfk_1` FOREIGN KEY (`fk_id_inadimplencia`) REFERENCES `tb_inadimplencia` (`pk_id_inadimplencia`),
  CONSTRAINT `tb_conciliacao_financeira_ibfk_2` FOREIGN KEY (`fk_id_status_conciliacao`) REFERENCES `tb_status_conciliacao` (`pk_id_status_conciliacao`),
  CONSTRAINT `tb_conciliacao_financeira_chk_1` CHECK ((`taxa_banco` >= 0)),
  CONSTRAINT `tb_conciliacao_financeira_chk_2` CHECK ((`taxa_juros` >= 0)),
  CONSTRAINT `tb_conciliacao_financeira_chk_3` CHECK ((`taxa_multa` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_conciliacao_financeira`
--

LOCK TABLES `tb_conciliacao_financeira` WRITE;
/*!40000 ALTER TABLE `tb_conciliacao_financeira` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_conciliacao_financeira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_conta_bancaria`
--

DROP TABLE IF EXISTS `tb_conta_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_conta_bancaria` (
  `fk_codigo_banco` char(3) NOT NULL,
  `agencia` varchar(10) NOT NULL,
  `num_conta` varchar(20) NOT NULL,
  `nome_conta` varchar(100) NOT NULL,
  `tipo_conta` enum('Corrente','Poupança','Salário','Pagamento','Investimento') DEFAULT NULL,
  `saldo_inicial` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`fk_codigo_banco`,`agencia`,`num_conta`),
  CONSTRAINT `tb_conta_bancaria_ibfk_1` FOREIGN KEY (`fk_codigo_banco`) REFERENCES `tb_bancos` (`pk_codigo_banco`),
  CONSTRAINT `tb_conta_bancaria_chk_1` CHECK ((`saldo_inicial` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_conta_bancaria`
--

LOCK TABLES `tb_conta_bancaria` WRITE;
/*!40000 ALTER TABLE `tb_conta_bancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_conta_bancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contas_pagar`
--

DROP TABLE IF EXISTS `tb_contas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contas_pagar` (
  `pk_id_conta_pagar` int NOT NULL AUTO_INCREMENT,
  `fk_cnpj_fornecedor` char(14) NOT NULL,
  `fk_cod_hierarquico` varchar(20) NOT NULL,
  `fk_id_plano_pagamento` int NOT NULL,
  `fk_id_status_contas_pagar` int NOT NULL,
  `descricao_gasto` varchar(255) NOT NULL,
  `dt_emissao` date NOT NULL,
  `dt_vencimento` date NOT NULL,
  `valor_nominal` decimal(15,2) NOT NULL,
  `comprovante` blob,
  PRIMARY KEY (`pk_id_conta_pagar`),
  UNIQUE KEY `uk_pagar_composto` (`fk_cnpj_fornecedor`,`fk_cod_hierarquico`,`fk_id_plano_pagamento`,`fk_id_status_contas_pagar`),
  KEY `fk_cp_centro_custo` (`fk_cod_hierarquico`),
  KEY `fk_cp_plano_pagamento` (`fk_id_plano_pagamento`),
  KEY `fk_cp_status` (`fk_id_status_contas_pagar`),
  CONSTRAINT `fk_cp_centro_custo` FOREIGN KEY (`fk_cod_hierarquico`) REFERENCES `tb_centro_custos` (`cod_hierarquico`),
  CONSTRAINT `fk_cp_fornecedor` FOREIGN KEY (`fk_cnpj_fornecedor`) REFERENCES `tb_fornecedor` (`pk_cnpj_fornecedor`),
  CONSTRAINT `fk_cp_plano_pagamento` FOREIGN KEY (`fk_id_plano_pagamento`) REFERENCES `tb_plano_pagamento` (`pk_id_plano_pagamento`),
  CONSTRAINT `fk_cp_status` FOREIGN KEY (`fk_id_status_contas_pagar`) REFERENCES `tb_status_contas_pagar` (`pk_id_status_contas_pagar`),
  CONSTRAINT `chk_valor_nominal` CHECK ((`valor_nominal` > 0)),
  CONSTRAINT `chk_vencimento_valido` CHECK ((`dt_vencimento` >= `dt_emissao`))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contas_pagar`
--

LOCK TABLES `tb_contas_pagar` WRITE;
/*!40000 ALTER TABLE `tb_contas_pagar` DISABLE KEYS */;
INSERT INTO `tb_contas_pagar` VALUES (1,'11222333000199','1.01.001',1,3,'Resma de Papel A4','2026-05-08','2026-05-13',450.00,NULL);
/*!40000 ALTER TABLE `tb_contas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contas_receber`
--

DROP TABLE IF EXISTS `tb_contas_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contas_receber` (
  `fk_num_contrato_educacional` int NOT NULL,
  `fk_dt_vencimento_mensalidade` date NOT NULL,
  `num_parcela` int NOT NULL,
  `fk_plano_recebimento` int NOT NULL,
  `dt_recebimento` date NOT NULL,
  `valor_recebido` decimal(15,2) NOT NULL,
  `fk_num_conta_destino_banco` char(3) NOT NULL,
  `fk_num_conta_destino_agencia` varchar(10) NOT NULL,
  `fk_num_conta_destino_numero` varchar(20) NOT NULL,
  `fk_id_status_contas_receber` int NOT NULL,
  PRIMARY KEY (`fk_num_contrato_educacional`,`fk_dt_vencimento_mensalidade`,`num_parcela`),
  KEY `fk_plano_recebimento` (`fk_plano_recebimento`),
  KEY `fk_id_status_contas_receber` (`fk_id_status_contas_receber`),
  CONSTRAINT `tb_contas_receber_ibfk_1` FOREIGN KEY (`fk_plano_recebimento`) REFERENCES `tb_plano_recebimento` (`pk_id_plano_recebimento`),
  CONSTRAINT `tb_contas_receber_ibfk_2` FOREIGN KEY (`fk_id_status_contas_receber`) REFERENCES `tb_status_contas_receber` (`pk_id_status_contas_receber`),
  CONSTRAINT `tb_contas_receber_ibfk_3` FOREIGN KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`) REFERENCES `tb_mensalidades` (`fk_num_contrato_educacional`, `dt_vencimento`),
  CONSTRAINT `tb_contas_receber_chk_1` CHECK ((`valor_recebido` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contas_receber`
--

LOCK TABLES `tb_contas_receber` WRITE;
/*!40000 ALTER TABLE `tb_contas_receber` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_contas_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contato_emergencia`
--

DROP TABLE IF EXISTS `tb_contato_emergencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contato_emergencia` (
  `pk_id_tel_emergencia` int NOT NULL AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `tipo_pessoa` enum('Aluno','Funcionario') NOT NULL,
  `nome_contato` varchar(100) NOT NULL,
  `grau_parentesco` varchar(50) DEFAULT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id_tel_emergencia`),
  KEY `tb_contato_emergencia_index_5` (`fk_cpf`,`tipo_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contato_emergencia`
--

LOCK TABLES `tb_contato_emergencia` WRITE;
/*!40000 ALTER TABLE `tb_contato_emergencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_contato_emergencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contrato_servicos`
--

DROP TABLE IF EXISTS `tb_contrato_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contrato_servicos` (
  `pk_id_contrato_serv` int NOT NULL AUTO_INCREMENT,
  `fk_cod_hierarquico` varchar(20) DEFAULT NULL,
  `fk_id_plano_pagamento` int DEFAULT NULL,
  `valor_mes_fixo` decimal(15,2) DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `indice_reajuste` varchar(50) DEFAULT NULL,
  `contrato` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_id_contrato_serv`),
  KEY `fk_cod_hierarquico` (`fk_cod_hierarquico`),
  KEY `fk_id_plano_pagamento` (`fk_id_plano_pagamento`),
  CONSTRAINT `tb_contrato_servicos_ibfk_1` FOREIGN KEY (`fk_cod_hierarquico`) REFERENCES `tb_centro_custos` (`cod_hierarquico`),
  CONSTRAINT `tb_contrato_servicos_ibfk_2` FOREIGN KEY (`fk_id_plano_pagamento`) REFERENCES `tb_plano_pagamento` (`pk_id_plano_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contrato_servicos`
--

LOCK TABLES `tb_contrato_servicos` WRITE;
/*!40000 ALTER TABLE `tb_contrato_servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_contrato_servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contratos`
--

DROP TABLE IF EXISTS `tb_contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contratos` (
  `fk_cpf` char(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `fk_id_cargo` int NOT NULL,
  `tipo_contrato` enum('CLT','PJ','Estágio','Temporário') NOT NULL,
  `dt_fim` date DEFAULT NULL,
  `salario_atual` decimal(15,2) NOT NULL,
  `dt_admissao` date NOT NULL,
  `dt_desligamento` date DEFAULT NULL,
  `dt_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fk_cpf`,`dt_inicio`),
  KEY `fk_id_cargo` (`fk_id_cargo`),
  CONSTRAINT `fk_contrato_funcionario` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tb_contratos_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`),
  CONSTRAINT `tb_contratos_ibfk_2` FOREIGN KEY (`fk_id_cargo`) REFERENCES `tb_cargo` (`pk_id_cargo`),
  CONSTRAINT `chk_desligamento_valido` CHECK ((`dt_desligamento` >= `dt_admissao`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contratos`
--

LOCK TABLES `tb_contratos` WRITE;
/*!40000 ALTER TABLE `tb_contratos` DISABLE KEYS */;
INSERT INTO `tb_contratos` VALUES ('22233344455','2026-01-01',1,'CLT',NULL,5500.00,'2026-01-01',NULL,'2026-05-09 02:09:04','2026-05-09 02:16:01');
/*!40000 ALTER TABLE `tb_contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contratos_educacionais`
--

DROP TABLE IF EXISTS `tb_contratos_educacionais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contratos_educacionais` (
  `pk_num_contrato_educacional` int NOT NULL AUTO_INCREMENT,
  `fk_rgm` int NOT NULL,
  `fk_id_status_contrato_educacional` int NOT NULL,
  `fk_id_plano_pagamento` int NOT NULL,
  `qtd_parcelas` int NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_num_contrato_educacional`),
  KEY `fk_rgm` (`fk_rgm`),
  KEY `fk_id_status_contrato_educacional` (`fk_id_status_contrato_educacional`),
  KEY `fk_id_plano_pagamento` (`fk_id_plano_pagamento`),
  CONSTRAINT `tb_contratos_educacionais_ibfk_1` FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`),
  CONSTRAINT `tb_contratos_educacionais_ibfk_2` FOREIGN KEY (`fk_id_status_contrato_educacional`) REFERENCES `tb_status_contrato_educacional` (`pk_id_status_contrato_educacional`),
  CONSTRAINT `tb_contratos_educacionais_ibfk_3` FOREIGN KEY (`fk_id_plano_pagamento`) REFERENCES `tb_plano_pagamento` (`pk_id_plano_pagamento`),
  CONSTRAINT `tb_contratos_educacionais_chk_1` CHECK ((`qtd_parcelas` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contratos_educacionais`
--

LOCK TABLES `tb_contratos_educacionais` WRITE;
/*!40000 ALTER TABLE `tb_contratos_educacionais` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_contratos_educacionais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cronograma_financeiro`
--

DROP TABLE IF EXISTS `tb_cronograma_financeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cronograma_financeiro` (
  `pk_id_cronograma` int NOT NULL AUTO_INCREMENT,
  `dt_prevista` date NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `tipo` enum('Pagar','Receber') NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `fk_num_contrato_educacional` int NOT NULL,
  `fk_dt_vencimento_mensalidade` date NOT NULL,
  `fk_num_parcela` int NOT NULL,
  `fk_cnpj_fornecedor` char(14) NOT NULL,
  `fk_cod_hierarquico` varchar(20) NOT NULL,
  `fk_id_plano_pagamento` int NOT NULL,
  `fk_id_status_contas_pagar` int NOT NULL,
  PRIMARY KEY (`pk_id_cronograma`),
  UNIQUE KEY `uk_cronograma_receber` (`fk_num_contrato_educacional`,`fk_dt_vencimento_mensalidade`,`fk_num_parcela`),
  UNIQUE KEY `uk_cronograma_pagar` (`fk_cnpj_fornecedor`,`fk_cod_hierarquico`,`fk_id_plano_pagamento`,`fk_id_status_contas_pagar`),
  CONSTRAINT `fk_cronograma_pagar` FOREIGN KEY (`fk_cnpj_fornecedor`, `fk_cod_hierarquico`, `fk_id_plano_pagamento`, `fk_id_status_contas_pagar`) REFERENCES `tb_contas_pagar` (`fk_cnpj_fornecedor`, `fk_cod_hierarquico`, `fk_id_plano_pagamento`, `fk_id_status_contas_pagar`),
  CONSTRAINT `fk_cronograma_receber` FOREIGN KEY (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `fk_num_parcela`) REFERENCES `tb_contas_receber` (`fk_num_contrato_educacional`, `fk_dt_vencimento_mensalidade`, `num_parcela`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cronograma_financeiro`
--

LOCK TABLES `tb_cronograma_financeiro` WRITE;
/*!40000 ALTER TABLE `tb_cronograma_financeiro` DISABLE KEYS */;
INSERT INTO `tb_cronograma_financeiro` VALUES (1,'2026-05-10',1500.00,'Receber','Mensalidade Aluno A',1001,'2026-05-10',1,'0','',0,0),(7,'2026-05-15',1200.00,'Pagar','Fornecedor Limpeza',0,'1900-01-01',0,'1','1.01.001',1,1);
/*!40000 ALTER TABLE `tb_cronograma_financeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cursos`
--

DROP TABLE IF EXISTS `tb_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cursos` (
  `sigla_curso` varchar(10) NOT NULL,
  `nome_curso` varchar(100) NOT NULL,
  `modalidade` enum('Presencial','EAD','Semipresencial') NOT NULL,
  `qtd_semestres` int NOT NULL,
  PRIMARY KEY (`sigla_curso`),
  UNIQUE KEY `sigla_curso` (`sigla_curso`),
  UNIQUE KEY `nome_curso` (`nome_curso`),
  CONSTRAINT `chk_qtd_semestres` CHECK ((`qtd_semestres` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cursos`
--

LOCK TABLES `tb_cursos` WRITE;
/*!40000 ALTER TABLE `tb_cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_departamento` (
  `pk_id_departamento` int NOT NULL AUTO_INCREMENT,
  `fk_id_setor` int NOT NULL,
  `fk_id_unidade` int NOT NULL,
  `nome_departamento` varchar(100) NOT NULL,
  `sigla` varchar(10) NOT NULL,
  `localizacao` varchar(100) DEFAULT NULL,
  `modelo_trabalho` enum('Presencial','Remoto','Híbrido') NOT NULL,
  PRIMARY KEY (`pk_id_departamento`),
  UNIQUE KEY `unique_nome_departamento` (`nome_departamento`),
  KEY `fk_dep_setor` (`fk_id_setor`),
  KEY `fk_dep_unidade` (`fk_id_unidade`),
  CONSTRAINT `fk_dep_setor` FOREIGN KEY (`fk_id_setor`) REFERENCES `tb_setor` (`pk_id_setor`),
  CONSTRAINT `fk_dep_unidade` FOREIGN KEY (`fk_id_unidade`) REFERENCES `tb_unidade` (`pk_id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
INSERT INTO `tb_departamento` VALUES (1,1,1,'Departamento de RH','DRH',NULL,'Presencial');
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalhe_metodo_pgto`
--

DROP TABLE IF EXISTS `tb_detalhe_metodo_pgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_detalhe_metodo_pgto` (
  `fk_id_metodo_pgto` int NOT NULL,
  `chave_pagamento` varchar(100) DEFAULT NULL,
  `tipo_chave` enum('CPF','CNPJ','Email','Telefone','Aleatória') DEFAULT NULL,
  PRIMARY KEY (`fk_id_metodo_pgto`),
  CONSTRAINT `fk_metodo_detalhe` FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`),
  CONSTRAINT `tb_detalhe_metodo_pgto_ibfk_1` FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalhe_metodo_pgto`
--

LOCK TABLES `tb_detalhe_metodo_pgto` WRITE;
/*!40000 ALTER TABLE `tb_detalhe_metodo_pgto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detalhe_metodo_pgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina`
--

DROP TABLE IF EXISTS `tb_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina` (
  `pk_id_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` varchar(100) NOT NULL,
  `carga_horaria` decimal(5,2) NOT NULL,
  PRIMARY KEY (`pk_id_disciplina`),
  CONSTRAINT `tb_disciplina_chk_1` CHECK ((`carga_horaria` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina`
--

LOCK TABLES `tb_disciplina` WRITE;
/*!40000 ALTER TABLE `tb_disciplina` DISABLE KEYS */;
INSERT INTO `tb_disciplina` VALUES (1,'Banco de Dados',80.00);
/*!40000 ALTER TABLE `tb_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_documentos`
--

DROP TABLE IF EXISTS `tb_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_documentos` (
  `pk_id_doc` int NOT NULL AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `tipo_pessoa` enum('Aluno','Funcionario') NOT NULL,
  `historico_escolar` blob,
  `comprovante_residencia` blob,
  `copia_cpf` blob,
  `copia_rg` blob,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id_doc`),
  KEY `fk_cpf` (`fk_cpf`),
  CONSTRAINT `tb_documentos_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_documentos`
--

LOCK TABLES `tb_documentos` WRITE;
/*!40000 ALTER TABLE `tb_documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_enderecos`
--

DROP TABLE IF EXISTS `tb_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enderecos` (
  `pk_id_endereco` int NOT NULL AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `cep` char(8) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `fk_id_bairro` int NOT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id_endereco`),
  UNIQUE KEY `tb_enderecos_index_1` (`fk_cpf`,`cep`,`numero`),
  KEY `fk_id_bairro` (`fk_id_bairro`),
  CONSTRAINT `tb_enderecos_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`),
  CONSTRAINT `tb_enderecos_ibfk_2` FOREIGN KEY (`fk_id_bairro`) REFERENCES `tb_bairro` (`pk_id_bairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enderecos`
--

LOCK TABLES `tb_enderecos` WRITE;
/*!40000 ALTER TABLE `tb_enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_especialidades`
--

DROP TABLE IF EXISTS `tb_especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_especialidades` (
  `fk_cpf_professor` char(11) NOT NULL,
  `nome_especialidade` varchar(100) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fk_cpf_professor`,`nome_especialidade`),
  CONSTRAINT `tb_especialidades_ibfk_1` FOREIGN KEY (`fk_cpf_professor`) REFERENCES `tb_professores` (`fk_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_especialidades`
--

LOCK TABLES `tb_especialidades` WRITE;
/*!40000 ALTER TABLE `tb_especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estado`
--

DROP TABLE IF EXISTS `tb_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_estado` (
  `pk_uf` char(2) NOT NULL,
  `nome_estado` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_uf`),
  UNIQUE KEY `nome_estado` (`nome_estado`),
  CONSTRAINT `chk_uf_tamanho` CHECK ((char_length(`pk_uf`) = 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estado`
--

LOCK TABLES `tb_estado` WRITE;
/*!40000 ALTER TABLE `tb_estado` DISABLE KEYS */;
INSERT INTO `tb_estado` VALUES ('RJ','Rio de Janeiro'),('SP','São Paulo');
/*!40000 ALTER TABLE `tb_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ferias`
--

DROP TABLE IF EXISTS `tb_ferias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ferias` (
  `fk_cpf` char(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date NOT NULL,
  `fk_id_status_ferias` int NOT NULL,
  PRIMARY KEY (`fk_cpf`,`dt_inicio`),
  KEY `fk_id_status_ferias` (`fk_id_status_ferias`),
  CONSTRAINT `tb_ferias_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`),
  CONSTRAINT `tb_ferias_ibfk_2` FOREIGN KEY (`fk_id_status_ferias`) REFERENCES `tb_status_ferias` (`pk_id_status_ferias`),
  CONSTRAINT `chk_periodo_ferias` CHECK ((`dt_fim` >= `dt_inicio`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ferias`
--

LOCK TABLES `tb_ferias` WRITE;
/*!40000 ALTER TABLE `tb_ferias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ferias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_folha_pagamento`
--

DROP TABLE IF EXISTS `tb_folha_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_folha_pagamento` (
  `fk_cpf` char(11) NOT NULL,
  `fk_dt_inicio_contrato` date NOT NULL,
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `salario_bruto` decimal(15,2) NOT NULL,
  `salario_liquido` decimal(15,2) NOT NULL,
  `descontos` decimal(15,2) NOT NULL DEFAULT '0.00',
  `dt_pagamento` date NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fk_cpf`,`fk_dt_inicio_contrato`,`mes`,`ano`),
  CONSTRAINT `tb_folha_pagamento_ibfk_1` FOREIGN KEY (`fk_cpf`, `fk_dt_inicio_contrato`) REFERENCES `tb_contratos` (`fk_cpf`, `dt_inicio`),
  CONSTRAINT `chk_ano` CHECK ((`ano` >= 2000)),
  CONSTRAINT `chk_salario_liquido` CHECK ((`salario_liquido` <= `salario_bruto`)),
  CONSTRAINT `tb_folha_pagamento_chk_1` CHECK (((`mes` >= 1) and (`mes` <= 12)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_folha_pagamento`
--

LOCK TABLES `tb_folha_pagamento` WRITE;
/*!40000 ALTER TABLE `tb_folha_pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_folha_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fornecedor`
--

DROP TABLE IF EXISTS `tb_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_fornecedor` (
  `pk_cnpj_fornecedor` char(14) NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `categoria_fornecedor` enum('Produto','Serviço') NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`pk_cnpj_fornecedor`),
  UNIQUE KEY `uk_email` (`email`),
  UNIQUE KEY `uk_razao_social` (`razao_social`),
  CONSTRAINT `chk_cnpj_length` CHECK ((length(`pk_cnpj_fornecedor`) = 14)),
  CONSTRAINT `chk_email_valido` CHECK ((`email` like _utf8mb4'%@%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fornecedor`
--

LOCK TABLES `tb_fornecedor` WRITE;
/*!40000 ALTER TABLE `tb_fornecedor` DISABLE KEYS */;
INSERT INTO `tb_fornecedor` VALUES ('11222333000192','Educa Mais Materiais2 LTDA','Produto','vendas2@educamais.com.br'),('11222333000199','Educa Mais Materiais LTDA','Produto','vendas@educamais.com.br'),('44555666000182','Limpeza Brilho Extremo2','Serviço','contato2@brilhoextremo.com'),('44555666000188','Limpeza Brilho Extremo','Serviço','contato@brilhoextremo.com'),('77888999000177','Softwares Educacionais S.A','Serviço','suporte@softed.com');
/*!40000 ALTER TABLE `tb_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionario_beneficios`
--

DROP TABLE IF EXISTS `tb_funcionario_beneficios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario_beneficios` (
  `fk_cpf` char(11) NOT NULL,
  `fk_id_beneficio` int NOT NULL,
  `status_beneficio` enum('Ativo','Inativo','Suspenso') NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fk_cpf`,`fk_id_beneficio`),
  KEY `fk_id_beneficio` (`fk_id_beneficio`),
  CONSTRAINT `tb_funcionario_beneficios_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`),
  CONSTRAINT `tb_funcionario_beneficios_ibfk_2` FOREIGN KEY (`fk_id_beneficio`) REFERENCES `tb_beneficios` (`pk_id_beneficios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario_beneficios`
--

LOCK TABLES `tb_funcionario_beneficios` WRITE;
/*!40000 ALTER TABLE `tb_funcionario_beneficios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_funcionario_beneficios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionarios`
--

DROP TABLE IF EXISTS `tb_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionarios` (
  `pk_cpf` char(11) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(120) NOT NULL,
  `sexo_biologico` enum('Masculino','Feminino') NOT NULL,
  `etnia` enum('Branco','Preto','Pardo','Indigena','Amarelo') NOT NULL DEFAULT 'Branco',
  `rg` varchar(15) NOT NULL,
  `dt_nasc` date NOT NULL,
  `estado_civil` enum('Solteiro','Casado','Divorciado','Viúvo','União Estável') DEFAULT NULL,
  `status_funcionario` enum('Ativo','Inativo','Afastado','Férias') NOT NULL,
  `escolaridade` enum('Fundamental','Médio','Superior','Pós-Graduação','Mestrado','Doutorado') NOT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_cpf`),
  UNIQUE KEY `matricula` (`matricula`),
  UNIQUE KEY `rg` (`rg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionarios`
--

LOCK TABLES `tb_funcionarios` WRITE;
/*!40000 ALTER TABLE `tb_funcionarios` DISABLE KEYS */;
INSERT INTO `tb_funcionarios` VALUES ('22233344455','RH001','Marlus','Bueno','Masculino','Pardo','12345','1990-01-01',NULL,'Ativo','Mestrado','2026-05-09 02:09:04');
/*!40000 ALTER TABLE `tb_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_identidade_aluno`
--

DROP TABLE IF EXISTS `tb_identidade_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_identidade_aluno` (
  `fk_cpf` char(11) DEFAULT NULL,
  `identidade_genero` enum('Cisgênero','Transgênero','Não-binário','Prefiro não dizer') NOT NULL DEFAULT 'Prefiro não dizer',
  `nome_social` varchar(50) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `fk_cpf` (`fk_cpf`),
  CONSTRAINT `tb_identidade_aluno_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_identidade_aluno`
--

LOCK TABLES `tb_identidade_aluno` WRITE;
/*!40000 ALTER TABLE `tb_identidade_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_identidade_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_identidade_func`
--

DROP TABLE IF EXISTS `tb_identidade_func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_identidade_func` (
  `fk_cpf` char(11) NOT NULL,
  `identidade_genero` enum('Cisgênero','Transgênero','Não-binário','Prefiro não dizer') NOT NULL DEFAULT 'Prefiro não dizer',
  `nome_social` varchar(50) NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `fk_cpf` (`fk_cpf`),
  CONSTRAINT `tb_identidade_func_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_identidade_func`
--

LOCK TABLES `tb_identidade_func` WRITE;
/*!40000 ALTER TABLE `tb_identidade_func` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_identidade_func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_inadimplencia`
--

DROP TABLE IF EXISTS `tb_inadimplencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_inadimplencia` (
  `pk_id_inadimplencia` int NOT NULL AUTO_INCREMENT,
  `fk_rgm` int DEFAULT NULL,
  `fk_id_status_acordo` int NOT NULL,
  `fk_id_status_bloqueio` int NOT NULL,
  `dias_atrasos` int NOT NULL,
  `valor_corrigido` decimal(15,2) NOT NULL,
  `valor_em_aberto` decimal(15,2) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_regularizacao` date DEFAULT NULL,
  PRIMARY KEY (`pk_id_inadimplencia`),
  KEY `fk_rgm` (`fk_rgm`),
  KEY `fk_id_status_acordo` (`fk_id_status_acordo`),
  KEY `fk_id_status_bloqueio` (`fk_id_status_bloqueio`),
  CONSTRAINT `tb_inadimplencia_ibfk_1` FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`),
  CONSTRAINT `tb_inadimplencia_ibfk_2` FOREIGN KEY (`fk_id_status_acordo`) REFERENCES `tb_status_acordo` (`pk_id_status_acordo`),
  CONSTRAINT `tb_inadimplencia_ibfk_3` FOREIGN KEY (`fk_id_status_bloqueio`) REFERENCES `tb_status_bloqueio` (`pk_id_status_bloqueio`),
  CONSTRAINT `chk_dias_atraso` CHECK ((`dias_atrasos` >= 0)),
  CONSTRAINT `chk_regularizacao` CHECK (((`dt_regularizacao` is null) or (`dt_regularizacao` >= `dt_inicio`))),
  CONSTRAINT `chk_valor_aberto` CHECK ((`valor_em_aberto` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_inadimplencia`
--

LOCK TABLES `tb_inadimplencia` WRITE;
/*!40000 ALTER TABLE `tb_inadimplencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_inadimplencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_matriculas`
--

DROP TABLE IF EXISTS `tb_matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_matriculas` (
  `fk_rgm` int NOT NULL,
  `fk_id_turma` int NOT NULL,
  `fk_id_status_matricula` int NOT NULL,
  `percentual_frequencia` decimal(5,2) NOT NULL,
  `dt_matricula` date NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dt_conclusao` date DEFAULT NULL,
  PRIMARY KEY (`fk_rgm`,`fk_id_turma`),
  KEY `fk_id_turma` (`fk_id_turma`),
  KEY `idx_matricula_frequencia` (`percentual_frequencia`),
  KEY `fk_matricula_status` (`fk_id_status_matricula`),
  CONSTRAINT `fk_matricula_status` FOREIGN KEY (`fk_id_status_matricula`) REFERENCES `tb_status_matricula` (`pk_id_status_matricula`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tb_matriculas_ibfk_1` FOREIGN KEY (`fk_rgm`) REFERENCES `tb_alunos` (`pk_rgm`),
  CONSTRAINT `tb_matriculas_ibfk_2` FOREIGN KEY (`fk_id_turma`) REFERENCES `tb_turmas` (`pk_id_turma`),
  CONSTRAINT `tb_matriculas_ibfk_3` FOREIGN KEY (`fk_id_status_matricula`) REFERENCES `tb_status_matricula` (`pk_id_status_matricula`),
  CONSTRAINT `chk_conclusao` CHECK (((`dt_conclusao` is null) or (`dt_conclusao` >= `dt_matricula`))),
  CONSTRAINT `tb_matriculas_chk_1` CHECK (((`percentual_frequencia` >= 0) and (`percentual_frequencia` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_matriculas`
--

LOCK TABLES `tb_matriculas` WRITE;
/*!40000 ALTER TABLE `tb_matriculas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mensalidades`
--

DROP TABLE IF EXISTS `tb_mensalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mensalidades` (
  `fk_num_contrato_educacional` int NOT NULL,
  `dt_vencimento` date NOT NULL,
  `valor_base_anuidade` decimal(15,2) NOT NULL,
  `percentual_bolsa` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`fk_num_contrato_educacional`,`dt_vencimento`),
  CONSTRAINT `tb_mensalidades_ibfk_1` FOREIGN KEY (`fk_num_contrato_educacional`) REFERENCES `tb_contratos_educacionais` (`pk_num_contrato_educacional`),
  CONSTRAINT `tb_mensalidades_chk_1` CHECK ((`valor_base_anuidade` > 0)),
  CONSTRAINT `tb_mensalidades_chk_2` CHECK ((`percentual_bolsa` between 0 and 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mensalidades`
--

LOCK TABLES `tb_mensalidades` WRITE;
/*!40000 ALTER TABLE `tb_mensalidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_mensalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_metodo_pgto`
--

DROP TABLE IF EXISTS `tb_metodo_pgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_metodo_pgto` (
  `pk_id_metodo_pgto` int NOT NULL AUTO_INCREMENT,
  `nome_metodo` enum('Pix','Boleto','Cartão de Crédito','Cartão de Débito','Transferência') NOT NULL,
  PRIMARY KEY (`pk_id_metodo_pgto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_metodo_pgto`
--

LOCK TABLES `tb_metodo_pgto` WRITE;
/*!40000 ALTER TABLE `tb_metodo_pgto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_metodo_pgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_motivo_afastamento`
--

DROP TABLE IF EXISTS `tb_motivo_afastamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_motivo_afastamento` (
  `pk_id_motivo_afastamento` int NOT NULL AUTO_INCREMENT,
  `motivo_afastamento` varchar(100) NOT NULL,
  PRIMARY KEY (`pk_id_motivo_afastamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_motivo_afastamento`
--

LOCK TABLES `tb_motivo_afastamento` WRITE;
/*!40000 ALTER TABLE `tb_motivo_afastamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_motivo_afastamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_notas`
--

DROP TABLE IF EXISTS `tb_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_notas` (
  `fk_rgm` int NOT NULL,
  `fk_id_turma` int NOT NULL,
  `nota_a1` decimal(4,2) NOT NULL,
  `nota_a2` decimal(4,2) NOT NULL,
  `nota_af` decimal(4,2) NOT NULL,
  `nota_final` decimal(4,2) NOT NULL,
  PRIMARY KEY (`fk_rgm`,`fk_id_turma`),
  CONSTRAINT `tb_notas_ibfk_1` FOREIGN KEY (`fk_rgm`, `fk_id_turma`) REFERENCES `tb_matriculas` (`fk_rgm`, `fk_id_turma`),
  CONSTRAINT `tb_notas_chk_1` CHECK (((`nota_a1` >= 0) and (`nota_a1` <= 5))),
  CONSTRAINT `tb_notas_chk_2` CHECK (((`nota_a2` >= 0) and (`nota_a2` <= 5))),
  CONSTRAINT `tb_notas_chk_3` CHECK (((`nota_af` >= 0) and (`nota_af` <= 5))),
  CONSTRAINT `tb_notas_chk_4` CHECK (((`nota_final` >= 0) and (`nota_final` <= 10)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notas`
--

LOCK TABLES `tb_notas` WRITE;
/*!40000 ALTER TABLE `tb_notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagamentos`
--

DROP TABLE IF EXISTS `tb_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagamentos` (
  `pk_num_transacao` int NOT NULL,
  `fk_cnpj_fornecedor` char(14) NOT NULL,
  `fk_cod_hierarquico` varchar(20) NOT NULL,
  `fk_id_plano_pagamento` int NOT NULL,
  `fk_id_status_contas_pagar` int NOT NULL,
  `fk_banco_origem` char(3) NOT NULL,
  `fk_agencia_origem` varchar(10) NOT NULL,
  `fk_conta_origem` varchar(20) NOT NULL,
  `valor_final_pago` decimal(15,2) NOT NULL,
  `dt_pagamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_num_transacao`),
  UNIQUE KEY `uk_transacao_unica` (`fk_banco_origem`,`fk_agencia_origem`,`fk_conta_origem`,`dt_pagamento`,`valor_final_pago`),
  KEY `fk_cnpj_fornecedor` (`fk_cnpj_fornecedor`,`fk_cod_hierarquico`,`fk_id_plano_pagamento`,`fk_id_status_contas_pagar`),
  KEY `fk_banco_origem` (`fk_banco_origem`,`fk_agencia_origem`,`fk_conta_origem`),
  CONSTRAINT `fk_contas_pagamento` FOREIGN KEY (`fk_cnpj_fornecedor`, `fk_cod_hierarquico`, `fk_id_plano_pagamento`, `fk_id_status_contas_pagar`) REFERENCES `tb_contas_pagar` (`fk_cnpj_fornecedor`, `fk_cod_hierarquico`, `fk_id_plano_pagamento`, `fk_id_status_contas_pagar`),
  CONSTRAINT `tb_pagamentos_ibfk_2` FOREIGN KEY (`fk_cnpj_fornecedor`, `fk_cod_hierarquico`, `fk_id_plano_pagamento`, `fk_id_status_contas_pagar`) REFERENCES `tb_contas_pagar` (`fk_cnpj_fornecedor`, `fk_cod_hierarquico`, `fk_id_plano_pagamento`, `fk_id_status_contas_pagar`),
  CONSTRAINT `tb_pagamentos_ibfk_3` FOREIGN KEY (`fk_banco_origem`, `fk_agencia_origem`, `fk_conta_origem`) REFERENCES `tb_conta_bancaria` (`fk_codigo_banco`, `agencia`, `num_conta`),
  CONSTRAINT `tb_pagamentos_chk_1` CHECK ((`valor_final_pago` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagamentos`
--

LOCK TABLES `tb_pagamentos` WRITE;
/*!40000 ALTER TABLE `tb_pagamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoas`
--

DROP TABLE IF EXISTS `tb_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pessoas` (
  `pk_cpf` char(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sexo_biologico` enum('Masculino','Feminino') NOT NULL,
  `etnia` enum('Branco','Preto','Pardo','Indigena','Amarelo') NOT NULL DEFAULT 'Branco',
  `rg` varchar(15) NOT NULL,
  `dt_nasc` date NOT NULL,
  PRIMARY KEY (`pk_cpf`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `rg` (`rg`),
  CONSTRAINT `chk_cpf_numerico` CHECK (regexp_like(`pk_cpf`,_utf8mb3'^[0-9]{11}$')),
  CONSTRAINT `tb_pessoas_chk_1` CHECK ((length(`pk_cpf`) = 11)),
  CONSTRAINT `tb_pessoas_chk_2` CHECK ((`email` like _utf8mb4'%@%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoas`
--

LOCK TABLES `tb_pessoas` WRITE;
/*!40000 ALTER TABLE `tb_pessoas` DISABLE KEYS */;
INSERT INTO `tb_pessoas` VALUES ('11122233344','Joao','Silva','joao@email.com','Masculino','Branco','12345','2000-01-01'),('12345678901','Victoria','Arruda','victoria@sisgesc.com','Feminino','Branco','12.345.678-9','2001-02-28');
/*!40000 ALTER TABLE `tb_pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_plano_pagamento`
--

DROP TABLE IF EXISTS `tb_plano_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_plano_pagamento` (
  `pk_id_plano_pagamento` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `qtd_parcelas` int NOT NULL,
  `percentual_juros` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`pk_id_plano_pagamento`),
  UNIQUE KEY `uk_descricao_plano` (`descricao`),
  CONSTRAINT `chk_juros_limite` CHECK ((`percentual_juros` between 0 and 100)),
  CONSTRAINT `tb_plano_pagamento_chk_1` CHECK ((`qtd_parcelas` > 0)),
  CONSTRAINT `tb_plano_pagamento_chk_2` CHECK ((`percentual_juros` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_plano_pagamento`
--

LOCK TABLES `tb_plano_pagamento` WRITE;
/*!40000 ALTER TABLE `tb_plano_pagamento` DISABLE KEYS */;
INSERT INTO `tb_plano_pagamento` VALUES (1,'Boleto 30 dias',1,0.00);
/*!40000 ALTER TABLE `tb_plano_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_plano_recebimento`
--

DROP TABLE IF EXISTS `tb_plano_recebimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_plano_recebimento` (
  `pk_id_plano_recebimento` int NOT NULL AUTO_INCREMENT,
  `fk_id_metodo_pgto` int NOT NULL,
  `nome_plano` varchar(100) NOT NULL,
  `qtd_parcelas` int NOT NULL,
  `percentual_desconto` decimal(5,2) DEFAULT '0.00',
  `intervalo_dias` int DEFAULT '30',
  PRIMARY KEY (`pk_id_plano_recebimento`),
  KEY `fk_id_metodo_pgto` (`fk_id_metodo_pgto`),
  CONSTRAINT `tb_plano_recebimento_ibfk_1` FOREIGN KEY (`fk_id_metodo_pgto`) REFERENCES `tb_metodo_pgto` (`pk_id_metodo_pgto`),
  CONSTRAINT `chk_intervalo_dias` CHECK ((`intervalo_dias` > 0)),
  CONSTRAINT `tb_plano_recebimento_chk_1` CHECK ((`qtd_parcelas` > 0)),
  CONSTRAINT `tb_plano_recebimento_chk_2` CHECK ((`percentual_desconto` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_plano_recebimento`
--

LOCK TABLES `tb_plano_recebimento` WRITE;
/*!40000 ALTER TABLE `tb_plano_recebimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_plano_recebimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_professores`
--

DROP TABLE IF EXISTS `tb_professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_professores` (
  `fk_cpf` char(11) NOT NULL,
  `titulacao` enum('Especialista','Mestre','Doutor','PHD') NOT NULL,
  `email_corporativo` varchar(100) NOT NULL,
  PRIMARY KEY (`fk_cpf`),
  UNIQUE KEY `fk_cpf` (`fk_cpf`),
  UNIQUE KEY `email_corporativo` (`email_corporativo`),
  CONSTRAINT `tb_professores_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_funcionarios` (`pk_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_professores`
--

LOCK TABLES `tb_professores` WRITE;
/*!40000 ALTER TABLE `tb_professores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_semestre`
--

DROP TABLE IF EXISTS `tb_semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_semestre` (
  `ano_letivo` year NOT NULL,
  `num_semestre` int NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_fim` date NOT NULL,
  `id_status_semestre` int NOT NULL,
  PRIMARY KEY (`ano_letivo`,`num_semestre`),
  KEY `id_status_semestre` (`id_status_semestre`),
  CONSTRAINT `tb_semestre_ibfk_1` FOREIGN KEY (`id_status_semestre`) REFERENCES `tb_status_semestre` (`pk_id_status_semestre`),
  CONSTRAINT `chk_datas_semestre` CHECK ((`dt_fim` > `dt_inicio`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_semestre`
--

LOCK TABLES `tb_semestre` WRITE;
/*!40000 ALTER TABLE `tb_semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setor`
--

DROP TABLE IF EXISTS `tb_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_setor` (
  `pk_id_setor` int NOT NULL AUTO_INCREMENT,
  `nome_setor` varchar(100) NOT NULL,
  PRIMARY KEY (`pk_id_setor`),
  UNIQUE KEY `nome_setor` (`nome_setor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setor`
--

LOCK TABLES `tb_setor` WRITE;
/*!40000 ALTER TABLE `tb_setor` DISABLE KEYS */;
INSERT INTO `tb_setor` VALUES (1,'Administrativo');
/*!40000 ALTER TABLE `tb_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_acordo`
--

DROP TABLE IF EXISTS `tb_status_acordo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_acordo` (
  `pk_id_status_acordo` int NOT NULL AUTO_INCREMENT,
  `status_acordo` enum('Sem acordo','Em negociação','Acordo firmado','Acordo quebrado') DEFAULT NULL,
  PRIMARY KEY (`pk_id_status_acordo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_acordo`
--

LOCK TABLES `tb_status_acordo` WRITE;
/*!40000 ALTER TABLE `tb_status_acordo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_acordo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_aluno`
--

DROP TABLE IF EXISTS `tb_status_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_aluno` (
  `pk_id_status_aluno` int NOT NULL AUTO_INCREMENT,
  `status_aluno` enum('Ativo','Inativo','Trancado','Cancelado','Concluído') NOT NULL,
  PRIMARY KEY (`pk_id_status_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_aluno`
--

LOCK TABLES `tb_status_aluno` WRITE;
/*!40000 ALTER TABLE `tb_status_aluno` DISABLE KEYS */;
INSERT INTO `tb_status_aluno` VALUES (1,'Ativo'),(2,'Concluído');
/*!40000 ALTER TABLE `tb_status_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_bloqueio`
--

DROP TABLE IF EXISTS `tb_status_bloqueio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_bloqueio` (
  `pk_id_status_bloqueio` int NOT NULL AUTO_INCREMENT,
  `status_bloqueio` enum('Liberado','Bloqueio financeiro','Bloqueio administrativo') DEFAULT NULL,
  PRIMARY KEY (`pk_id_status_bloqueio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_bloqueio`
--

LOCK TABLES `tb_status_bloqueio` WRITE;
/*!40000 ALTER TABLE `tb_status_bloqueio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_bloqueio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_conciliacao`
--

DROP TABLE IF EXISTS `tb_status_conciliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_conciliacao` (
  `pk_id_status_conciliacao` int NOT NULL AUTO_INCREMENT,
  `status_conciliacao` enum('Conciliado','Divergente','Pendente de Análise') NOT NULL,
  `acao_sistema` enum('Automático','Manual','Revisado') DEFAULT NULL,
  PRIMARY KEY (`pk_id_status_conciliacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_conciliacao`
--

LOCK TABLES `tb_status_conciliacao` WRITE;
/*!40000 ALTER TABLE `tb_status_conciliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_conciliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_contas_pagar`
--

DROP TABLE IF EXISTS `tb_status_contas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_contas_pagar` (
  `pk_id_status_contas_pagar` int NOT NULL AUTO_INCREMENT,
  `status_contas_pagar` enum('Aberto','Agendado','Pago','Vencido','Cancelado') NOT NULL,
  PRIMARY KEY (`pk_id_status_contas_pagar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_contas_pagar`
--

LOCK TABLES `tb_status_contas_pagar` WRITE;
/*!40000 ALTER TABLE `tb_status_contas_pagar` DISABLE KEYS */;
INSERT INTO `tb_status_contas_pagar` VALUES (1,'Aberto'),(2,'Agendado'),(3,'Pago');
/*!40000 ALTER TABLE `tb_status_contas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_contas_receber`
--

DROP TABLE IF EXISTS `tb_status_contas_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_contas_receber` (
  `pk_id_status_contas_receber` int NOT NULL AUTO_INCREMENT,
  `status_contas_receber` enum('Pendente','Liquidado','Vencido','Cancelado','Em Contestação') NOT NULL,
  PRIMARY KEY (`pk_id_status_contas_receber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_contas_receber`
--

LOCK TABLES `tb_status_contas_receber` WRITE;
/*!40000 ALTER TABLE `tb_status_contas_receber` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_contas_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_contrato_educacional`
--

DROP TABLE IF EXISTS `tb_status_contrato_educacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_contrato_educacional` (
  `pk_id_status_contrato_educacional` int NOT NULL AUTO_INCREMENT,
  `status_contrato_educacional` enum('Ativo','Finalizado','Suspenso','Cancelado','Em Aditamento') DEFAULT NULL,
  PRIMARY KEY (`pk_id_status_contrato_educacional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_contrato_educacional`
--

LOCK TABLES `tb_status_contrato_educacional` WRITE;
/*!40000 ALTER TABLE `tb_status_contrato_educacional` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_contrato_educacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_ferias`
--

DROP TABLE IF EXISTS `tb_status_ferias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_ferias` (
  `pk_id_status_ferias` int NOT NULL AUTO_INCREMENT,
  `nome_status_ferias` enum('Agendada','Em Gozo','Concluída','Cancelada') NOT NULL,
  PRIMARY KEY (`pk_id_status_ferias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_ferias`
--

LOCK TABLES `tb_status_ferias` WRITE;
/*!40000 ALTER TABLE `tb_status_ferias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_ferias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_matricula`
--

DROP TABLE IF EXISTS `tb_status_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_matricula` (
  `pk_id_status_matricula` int NOT NULL AUTO_INCREMENT,
  `status_matricula` enum('Confirmada','Pendente','Em Análise','Trancada','Cancelada') NOT NULL,
  PRIMARY KEY (`pk_id_status_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_matricula`
--

LOCK TABLES `tb_status_matricula` WRITE;
/*!40000 ALTER TABLE `tb_status_matricula` DISABLE KEYS */;
INSERT INTO `tb_status_matricula` VALUES (1,'Confirmada'),(2,'Pendente');
/*!40000 ALTER TABLE `tb_status_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_semestre`
--

DROP TABLE IF EXISTS `tb_status_semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_status_semestre` (
  `pk_id_status_semestre` int NOT NULL AUTO_INCREMENT,
  `status_semestre` enum('Cursando','Aprovado','Reprovado','Trancado','DP') NOT NULL,
  PRIMARY KEY (`pk_id_status_semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_semestre`
--

LOCK TABLES `tb_status_semestre` WRITE;
/*!40000 ALTER TABLE `tb_status_semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_telefones`
--

DROP TABLE IF EXISTS `tb_telefones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_telefones` (
  `pk_id_telefone` int NOT NULL AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `pais` char(2) NOT NULL,
  `ddd` char(2) NOT NULL,
  `numero` varchar(9) NOT NULL,
  `tipo` enum('Fixo','Celular') NOT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id_telefone`),
  UNIQUE KEY `tb_telefones_index_0` (`fk_cpf`,`ddd`,`numero`),
  UNIQUE KEY `uk_telefone` (`pais`,`ddd`,`numero`),
  CONSTRAINT `tb_telefones_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_pessoas` (`pk_cpf`),
  CONSTRAINT `tb_telefones_chk_1` CHECK ((length(`ddd`) = 2)),
  CONSTRAINT `tb_telefones_chk_2` CHECK ((length(`numero`) >= 8))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_telefones`
--

LOCK TABLES `tb_telefones` WRITE;
/*!40000 ALTER TABLE `tb_telefones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_telefones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turmas`
--

DROP TABLE IF EXISTS `tb_turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_turmas` (
  `pk_id_turma` int NOT NULL AUTO_INCREMENT,
  `nome_turma` varchar(50) NOT NULL,
  `fk_id_unidade` int NOT NULL,
  `fk_id_turno` int NOT NULL,
  `fk_id_professor` char(11) NOT NULL,
  `fk_id_disciplina` int NOT NULL,
  `fk_ano_letivo` year NOT NULL,
  `fk_num_semestre` int NOT NULL,
  `dia_semana` int NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_fim` time NOT NULL,
  `bloco` varchar(20) NOT NULL,
  `sala` varchar(20) NOT NULL,
  PRIMARY KEY (`pk_id_turma`),
  UNIQUE KEY `nome_turma` (`nome_turma`),
  UNIQUE KEY `tb_turmas_index_4` (`nome_turma`,`fk_ano_letivo`,`fk_num_semestre`),
  KEY `fk_id_unidade` (`fk_id_unidade`),
  KEY `fk_id_turno` (`fk_id_turno`),
  KEY `fk_id_professor` (`fk_id_professor`),
  KEY `fk_id_disciplina` (`fk_id_disciplina`),
  KEY `fk_ano_letivo` (`fk_ano_letivo`,`fk_num_semestre`),
  CONSTRAINT `tb_turmas_ibfk_1` FOREIGN KEY (`fk_id_unidade`) REFERENCES `tb_unidade` (`pk_id_unidade`),
  CONSTRAINT `tb_turmas_ibfk_2` FOREIGN KEY (`fk_id_turno`) REFERENCES `tb_turnos` (`pk_id_turno`),
  CONSTRAINT `tb_turmas_ibfk_3` FOREIGN KEY (`fk_id_professor`) REFERENCES `tb_professores` (`fk_cpf`),
  CONSTRAINT `tb_turmas_ibfk_4` FOREIGN KEY (`fk_id_disciplina`) REFERENCES `tb_disciplina` (`pk_id_disciplina`),
  CONSTRAINT `tb_turmas_ibfk_5` FOREIGN KEY (`fk_ano_letivo`, `fk_num_semestre`) REFERENCES `tb_semestre` (`ano_letivo`, `num_semestre`),
  CONSTRAINT `tb_turmas_chk_1` CHECK ((`dia_semana` between 1 and 7))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turmas`
--

LOCK TABLES `tb_turmas` WRITE;
/*!40000 ALTER TABLE `tb_turmas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turnos`
--

DROP TABLE IF EXISTS `tb_turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_turnos` (
  `pk_id_turno` int NOT NULL AUTO_INCREMENT,
  `nome_turno` enum('Manhã','Tarde','Noite','Integral') NOT NULL,
  PRIMARY KEY (`pk_id_turno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turnos`
--

LOCK TABLES `tb_turnos` WRITE;
/*!40000 ALTER TABLE `tb_turnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_unidade`
--

DROP TABLE IF EXISTS `tb_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_unidade` (
  `pk_id_unidade` int NOT NULL AUTO_INCREMENT,
  `nome_unidade` varchar(100) NOT NULL,
  `cep` char(8) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `dt_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_alteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_id_unidade`),
  UNIQUE KEY `unique_nome_unidade` (`nome_unidade`),
  CONSTRAINT `tb_unidade_chk_1` CHECK ((length(`cep`) = 8)),
  CONSTRAINT `tb_unidade_chk_2` CHECK ((length(`estado`) = 2))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_unidade`
--

LOCK TABLES `tb_unidade` WRITE;
/*!40000 ALTER TABLE `tb_unidade` DISABLE KEYS */;
INSERT INTO `tb_unidade` VALUES (1,'Sede','00000000','10','Rua Principal','Centro','SP','SP','Brasil',NULL,'2026-05-09 02:09:04','2026-05-09 02:09:04');
/*!40000 ALTER TABLE `tb_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_vinculo_professor_disciplina`
--

DROP TABLE IF EXISTS `tb_vinculo_professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vinculo_professor_disciplina` (
  `pk_id_vinculo` int NOT NULL AUTO_INCREMENT,
  `fk_cpf` char(11) NOT NULL,
  `fk_id_disciplina` int NOT NULL,
  `fk_sigla_curso` varchar(10) NOT NULL,
  `carga_horaria` decimal(5,2) NOT NULL,
  `ano_letivo` int NOT NULL,
  `semestre` int NOT NULL,
  PRIMARY KEY (`pk_id_vinculo`),
  KEY `fk_id_professor` (`fk_cpf`),
  KEY `fk_id_disciplina` (`fk_id_disciplina`),
  KEY `fk_sigla_curso` (`fk_sigla_curso`),
  CONSTRAINT `tb_vinculo_professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `tb_professores` (`fk_cpf`),
  CONSTRAINT `tb_vinculo_professor_disciplina_ibfk_2` FOREIGN KEY (`fk_id_disciplina`) REFERENCES `tb_disciplina` (`pk_id_disciplina`),
  CONSTRAINT `tb_vinculo_professor_disciplina_chk_1` CHECK ((`carga_horaria` > 0)),
  CONSTRAINT `tb_vinculo_professor_disciplina_chk_2` CHECK ((`ano_letivo` >= 2000)),
  CONSTRAINT `tb_vinculo_professor_disciplina_chk_3` CHECK ((`semestre` in (1,2)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vinculo_professor_disciplina`
--

LOCK TABLES `tb_vinculo_professor_disciplina` WRITE;
/*!40000 ALTER TABLE `tb_vinculo_professor_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_vinculo_professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12 19:15:22
