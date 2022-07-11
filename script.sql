-- --------------------------------------------------------
-- Host:                    127.0.0.1
-- Server OS:               Win64
-- Network type:            MariaDB or MySQL (TCP/IP)
-- Server version:          10.6.5-MariaDB - mariadb.org binary distribution
-- Generation Time:         11-JUl-2022 20:17
-- --------------------------------------------------------

--
-- Dumping database structure for `db_example`
--
CREATE DATABASE IF NOT EXISTS `db_example`;

USE `db_example`;

ALTER DATABASE `db_example` CHARSET = `utf8mb4` COLLATE = `utf8mb4_general_ci`;

--
-- Dumping structure for table `CLIENTES`
--
CREATE TABLE IF NOT EXISTS `CLIENTES` (
  `CODIGO` INT(11),
  `NOME` VARCHAR(100) NOT NULL,
  `CIDADE` VARCHAR(80) DEFAULT NULL,
  `UF` CHAR(2) DEFAULT NULL,
  `ATIVO` CHAR(1) DEFAULT 'T'
) 
ENGINE = InnoDB
COLLATE = `utf8mb4_general_ci`;

--
-- Indexes for table `CLIENTES`
--
ALTER TABLE `CLIENTES`
  ADD PRIMARY KEY (`CODIGO`) USING BTREE;

--
-- AUTO_INCREMENT for table `CLIENTES`
--
ALTER TABLE `CLIENTES`
  MODIFY `CODIGO` INT(11) NOT NULL AUTO_INCREMENT;

--
-- CREATE INDEX for table `CLIENTES`
--
CREATE UNIQUE INDEX IDX_COD_CLIENTE ON CLIENTES(CODIGO) USING BTREE;

--
-- Dumping data for table `CLIENTES`
--
INSERT INTO `CLIENTES` (`NOME`, `CIDADE`, `UF`, `ATIVO`)
VALUES ('VITOR DE LIMA', 'Recife', 'PE', 'T'),
       ('CLAUDIO DE LIMA', 'Recife', 'PE', 'T'),
       ('ANTONIO PEREIRA', 'Recife', 'PE', 'T'),
       ('REGINALDO FELIX', 'Recife', 'PE', 'T'),
       ('JOÁS OLIVEIRA', 'Recife', 'PE', 'T'),
       ('CRISTIANO RONALDO', 'Recife', 'PE', 'T'),
       ('JOSIBERTO GOMES', 'Recife', 'PE', 'T'),
       ('GOMES ALUISIO', 'Recife', 'PE', 'T'),
       ('ANTONIO JOSELITO', 'Recife', 'PE', 'T'),
       ('NEYMAR JUNIOR', 'Recife', 'PE', 'T'),
       ('ALUISIO VON CLEIN', 'Recife', 'PE', 'T'),
       ('TOBIAS MANUEL', 'Recife', 'PE', 'T'),
       ('NATHALIA PEREIRA', 'Recife', 'PE', 'T'),
       ('MARCIA CRISTINA', 'Recife', 'PE', 'T'),
       ('DARAH SMITH', 'Recife', 'PE', 'T'),
       ('MARIA CLAUDIA', 'Recife', 'PE', 'T'),
       ('LETICIA FERNANDA', 'Recife', 'PE', 'T'),
       ('MANUEL PEREIRA', 'Recife', 'PE', 'T'),
       ('SAMUEL FERNANDO', 'Recife', 'PE', 'T'),
       ('MARINA DE LIMA', 'Recife', 'PE', 'T'),
       ('JANETE DE FREITAS', 'Recife', 'PE', 'T'),
       ('MEYRI LANNUCE', 'Recife', 'PE', 'T'),
       ('ANGELICA MACDOWELL', 'Recife', 'PE', 'T'),
       ('ALBERTINA PEREIRA', 'Recife', 'PE', 'T'),
       ('JOSUE FREITAS', 'Recife', 'PE', 'T'),
       ('ADONIAS ANDRADE', 'Recife', 'PE', 'T'),
       ('JOICE RIBEIRO', 'Recife', 'PE', 'T'),
       ('RAYANA GALVAO', 'Recife', 'PE', 'T'),
       ('YASMIN ANDRADE', 'Recife', 'PE', 'T'),
       ('ADIEL GOMES', 'Recife', 'PE', 'T'),
       ('JACIARA FERREIRA', 'Recife', 'PE', 'T'),
       ('GUSTAVO BUENO', 'Recife', 'PE', 'T'),
       ('ANTONIO FIGUEIREDO', 'Recife', 'PE', 'T'),
       ('IRANILDO SANTOS', 'Recife', 'PE', 'T'),
       ('FRANCISCO FELIX', 'Recife', 'PE', 'T'),
       ('WILIAM BERNARDES', 'Recife', 'PE', 'T'),
       ('ANSELMO MARTINS', 'Recife', 'PE', 'T'),
       ('AUGUSTO NUNES', 'Recife', 'PE', 'T'),
       ('FARIAS DE FREITAS', 'Recife', 'PE', 'T'),
       ('GABRIEL DE LIMA', 'Recife', 'PE', 'T');

--
-- Dumping structure for table `PRODUTOS`
--
CREATE TABLE IF NOT EXISTS `PRODUTOS` (
  `CODIGO` INT(11),
  `DESCRICAO` VARCHAR(80) NOT NULL,
  `PRECOVENDA` DECIMAL(10, 2) NOT NULL,
  `ATIVO` CHAR(1) DEFAULT 'T'
) 
ENGINE = InnoDB
COLLATE = `utf8mb4_general_ci`;

--
-- Indexes for table `PRODUTOS`
--
ALTER TABLE `PRODUTOS`
  ADD PRIMARY KEY (`CODIGO`) USING BTREE;

--
-- AUTO_INCREMENT for table `PRODUTOS`
--
ALTER TABLE `PRODUTOS`
  MODIFY `CODIGO` INT(11) NOT NULL AUTO_INCREMENT;

--
-- Create Index for table `PRODUTOS`
--
CREATE UNIQUE INDEX IDX_COD_PRODUTO ON PRODUTOS(CODIGO) USING BTREE;

--
-- Dumping data for table `PRODUTOS`
--
INSERT INTO `PRODUTOS` (`DESCRICAO`, `PRECOVENDA`, `ATIVO`)
VALUES ('ARROZ DO PADRE', 10.9, 'T'),
       ('FEIJAO TURQUEZA', 5.00, 'T'),
       ('CARNE DE PORCO', 55.4, 'T'),
       ('TOMATE', 1.00, 'T'),
       ('CEBOLA', 2.26, 'T'),
       ('BOLACHA FORTALEZA', 5.20, 'T'),
       ('BISCOITO TRELOSO', 1.00, 'T'),
       ('FERMENTO DE BOLO', 1.09, 'T'),
       ('GOMA', 5.21, 'T'),
       ('PIPOCA BOKAO', 2.20, 'T'),
       ('SONHO DE VALSA', 3.29, 'T'),
       ('AMENDOAS', 20.2, 'T'),
       ('AVEIA', 14.70, 'T'),
       ('MACARRAO', 2.40, 'T'),
       ('BANANA', 5.97, 'T'),
       ('CONFEITOS ASSAY', 10.9, 'T'),
       ('CHOCOLATE EM BARRA', 8.56, 'T'),
       ('ABACAXI', 3.30, 'T'),
       ('GOIABA', 2.56, 'T'),
       ('LIMAO', 6.10, 'T'),
       ('UVA', 4.10, 'T'),
       ('AMEIXA SECA', 12.1, 'T'),
       ('FRANGO', 20.1, 'T'),
       ('CARNE BOVINA', 30.12, 'T'),
       ('CENOURA', 1.75, 'T'),
       ('COUVE MANTEIGA', 3.20, 'T'),
       ('CAMARAO', 12.99, 'T'),
       ('OVOS DE GALINHA', 12.70, 'T'),
       ('PEIXES', 40.21, 'T'),
       ('PERU/CHESTER/PERNIL', 20.71, 'T'),
       ('LEITE', 6.29, 'T'),
       ('FARINHA DE TRIGO', 10.20, 'T'),
       ('BATATA', 3.10, 'T'),
       ('ACHOCOLATADO', 12.50, 'T'),
       ('BOLO DE BRIGADEIRO', 20.55, 'T'),
       ('ADOCANTE', 5.51, 'T'),
       ('CAFÉ', 2.21, 'T'),
       ('COCADA', 1.28, 'T'),
       ('ERVILHAS', 6.89, 'T'),
       ('MILHO COZIDO', 2.15, 'T');

--
-- Dumping structure for table `PEDIDOS`
--
CREATE TABLE IF NOT EXISTS `PEDIDOS` (
  `CODIGO` INT(11),
  `CODCLIENTE` INT(11) NOT NULL,
  `DATAEMISSAO` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  `VALORTOTAL` DECIMAL(10, 2) DEFAULT 0
) 
ENGINE = InnoDB
COLLATE = `utf8mb4_general_ci`;

--
-- Indexes for table `PEDIDOS`
--
ALTER TABLE `PEDIDOS`
  ADD PRIMARY KEY (`CODIGO`) USING BTREE, 
  ADD KEY `CODCLIENTE` (CODCLIENTE) USING BTREE;

--
-- AUTO_INCREMENT for table `PEDIDOS`
--
ALTER TABLE `PEDIDOS`
  MODIFY `CODIGO` INT(11) NOT NULL AUTO_INCREMENT;

--
-- Create Index for table `PEDIDOS`
--
CREATE UNIQUE INDEX IDX_COD_PEDIDOS ON PEDIDOS(CODIGO) USING BTREE;

--
-- Dumping structure for table `PEDIDOSDET`
--
CREATE TABLE IF NOT EXISTS `PEDIDOSDET` (
  `CODIGO` INT(11),
  `SEQUENCIAL` INT(11),
  `CODPRODUTO` INT(11) UNSIGNED  NOT NULL DEFAULT 0,
  `QUANTIDADE` DOUBLE PRECISION NOT NULL DEFAULT 0,
  `PRECOUNITARIO` DECIMAL(10, 2) DEFAULT 0,
  `VALORTOTAL` DECIMAL(10, 2) DEFAULT 0
) 
ENGINE = InnoDB
COLLATE = `utf8mb4_general_ci`;

--
-- Indexes for table `PEDIDOSDET`
--
ALTER TABLE `PEDIDOSDET`
  ADD KEY (`SEQUENCIAL`) USING BTREE,
  ADD KEY `CODIGO` (CODIGO) USING BTREE,
  ADD KEY `CODPRODUTO` (CODPRODUTO) USING BTREE;

ALTER TABLE `PEDIDOSDET`
  MODIFY `CODIGO` INT(11) NOT NULL;

--
-- AUTO_INCREMENT for table `PEDIDOSDET`
--
ALTER TABLE `PEDIDOSDET`
  MODIFY `SEQUENCIAL` INT(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limiters for the table `PEDIDOS`
--
ALTER TABLE `PEDIDOS` 
  ADD CONSTRAINT CODCLIENTE FOREIGN KEY (CODIGO) REFERENCES CLIENTES(CODIGO)
  ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiters for the table `PEDIDOSDET`
--
ALTER TABLE `PEDIDOSDET`
  ADD CONSTRAINT CODPRODUTO FOREIGN KEY (CODIGO) REFERENCES PRODUTOS(CODIGO)
  ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;