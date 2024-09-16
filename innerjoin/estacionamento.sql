-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:05
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `id_lugar` int(11) NOT NULL,
  `capaciade` int(11) DEFAULT NULL,
  `andar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`id_lugar`, `capaciade`, `andar`) VALUES
(1, 100, 1),
(2, 100, 2),
(3, 100, 3),
(4, 100, 4),
(5, 100, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('012.345.678-19', '1996-11-02 00:00:00', 'Felipe Oliveira'),
('012.345.678-90', '1992-03-17 00:00:00', 'Juliana Martins'),
('123.456.789-01', '1985-06-15 00:00:00', 'João da Silva'),
('123.456.789-10', '1981-11-11 00:00:00', 'Ricardo Souza'),
('234.567.890-12', '1990-11-22 00:00:00', 'Maria Oliveira'),
('234.567.890-21', '1987-10-03 00:00:00', 'Camila Oliveira'),
('345.678.901-23', '1975-03-30 00:00:00', 'Pedro Santos'),
('345.678.901-32', '1994-06-28 00:00:00', 'Diego Fernandes'),
('456.789.012-34', '1982-01-10 00:00:00', 'Ana Souza'),
('456.789.012-43', '1991-05-19 00:00:00', 'Gabriela Rocha'),
('567.890.123-45', '1993-07-20 00:00:00', 'Carlos Pereira'),
('567.890.123-54', '1984-07-08 00:00:00', 'Lucas Lima'),
('678.901.234-56', '1988-09-05 00:00:00', 'Fernanda Costa'),
('678.901.234-65', '1976-02-14 00:00:00', 'Sônia Santos'),
('789.012.345-67', '1979-12-30 00:00:00', 'Roberto Lima'),
('789.012.345-76', '1998-09-22 00:00:00', 'Amanda Costa'),
('890.123.456-78', '1995-04-14 00:00:00', 'Tatiane Almeida'),
('890.123.456-87', '1983-12-11 00:00:00', 'Tiago Santos'),
('901.234.567-89', '1986-08-25 00:00:00', 'Juliano Silva'),
('901.234.567-98', '1978-01-30 00:00:00', 'Renata Alves');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `id_esta` int(11) NOT NULL,
  `horasaida` datetime DEFAULT NULL,
  `horaEntra` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `dtEntra` datetime DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `id_lugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `modelo`) VALUES
(1, 'Fusca'),
(2, 'Civic'),
(3, 'Corolla'),
(4, 'Palio'),
(5, 'Astra'),
(6, 'Focus'),
(7, 'Onix'),
(8, 'Siena'),
(9, 'Ecosport'),
(10, 'Kombi'),
(11, 'Jetta'),
(12, 'Hilux'),
(13, 'Polo'),
(14, 'Sentra'),
(15, 'Camry'),
(16, 'X-Trail'),
(17, 'C4 Cactus'),
(18, 'Renegade'),
(19, 'Fit'),
(20, 'Compass');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `id_modelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `id_modelo`) VALUES
('ABC1234', 'Preto', NULL, NULL),
('ASD2345', 'Laranja', NULL, NULL),
('CVB4567', 'Bege', NULL, NULL),
('EDC9012', 'Bronze', NULL, NULL),
('FGH2345', 'Cinza', NULL, NULL),
('IKL4567', 'Branco Perolado', NULL, NULL),
('JKL6789', 'Verde', NULL, NULL),
('LMN9012', 'Prata', NULL, NULL),
('MNB4567', 'Amarelo', NULL, NULL),
('POI8901', 'Rosa', NULL, NULL),
('QAZ1234', 'Marrom', NULL, NULL),
('QWE3456', 'Azul', NULL, NULL),
('RFV3456', 'Prata', NULL, NULL),
('RTY7890', 'Vermelho', NULL, NULL),
('TGB7890', 'Azul Claro', NULL, NULL),
('UJM6789', 'Vinho', NULL, NULL),
('WSX5678', 'Roxo', NULL, NULL),
('XYZ5678', 'Branco', NULL, NULL),
('YHN2345', 'Verde Escuro', NULL, NULL),
('ZXC6789', 'Dourado', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_esta`),
  ADD KEY `placa` (`placa`),
  ADD KEY `id_lugar` (`id_lugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_esta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`id_lugar`) REFERENCES `andar` (`id_lugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
