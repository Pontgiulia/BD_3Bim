-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2024 às 13:48
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
-- Banco de dados: `imobiliria`
--
CREATE DATABASE IF NOT EXISTS `imobiliria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `id_aluguel` int(11) NOT NULL,
  `preco_mensal` decimal(4,2) NOT NULL,
  `vencimento` date NOT NULL,
  `descrição` varchar(50) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `id_corretor` int(11) NOT NULL,
  `imobiliaria` varchar(30) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `nome` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `Id_endereço` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `Cep` varchar(20) NOT NULL,
  `num_casa` varchar(10) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `Rua` varchar(20) NOT NULL,
  `complemento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`Id_endereço`, `estado`, `bairro`, `Cep`, `num_casa`, `cidade`, `Rua`, `complemento`) VALUES
(1, 'SP', 'Zaíra', '09321-010', '234', 'Mauá', 'Av. Zaíra Mansur Sad', ''),
(2, 'MG', 'Jardim dos Estados', '37701-788', '151', 'Poços de Caldas', 'Rua Tutóia', ''),
(3, 'AM', 'Floresta Amazônica', '69750-000', '777', 'Ipanoré', 'Rua das pedras', 'perto do rio azul'),
(4, 'RJ', 'Jacarepaguá', '22710-560', '212', 'Rio de janeiro', 'Estr. de Curicica', ''),
(5, 'SP', 'Vila Mariana', '04111-000', '345', 'São Paulo', 'Rua Domingos de Mora', ''),
(6, 'RJ', 'Copacabana', '22070-002', '789', 'Rio de janeiro', 'Avenida Atlântica', ''),
(7, 'MG', 'Savassi', '30150-000', '123', 'Belo Horizonte', 'Rua Antônio de Albuq', ''),
(8, 'RS', 'Cidade Baixa', '90050-001', '456', 'Porto alegre', 'Rua Lima e Silva', ''),
(9, 'PE', 'Boa Viagem', '90050-001', '567', 'Recife', 'Avenida Conselheiro ', ''),
(10, 'BA', 'Barra', '40140-000', '321', 'Salvador', 'Avenida Oceanica', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `id_fiador` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `Id_endereço` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`id_fiador`, `email`, `rg`, `data_nasc`, `cpf`, `telefone`, `Id_endereço`) VALUES
(1, 'zezesouza@hotmail.com', '12.345.678-9', '0000-00-00', '123.456.789-01', '(11)91234-5678', 10),
(2, 'florzinha@gmail.com', '23.456.789-0', '0000-00-00', '234.567.890-12', '(21)93456-7890', 7),
(3, 'moranguinho@yahoo.com', '34.567.890-x', '0000-00-00', '345.678.901-23', '(31)94567-8901', 5),
(4, 'caetaninho@apple.com', '45.678.901-2', '0000-00-00', '456.789.012-34', '(21)95678-9012', 3),
(5, 'lininha@hotmail.com', '56.789.012-3', '0000-00-00', '567.890.123-45', '(51)96789-0123', 6),
(6, 'francaliz@gmail.com', '67.890.123-x', '0000-00-00', '678.901.234-56', '(61)97890-1234', 1),
(7, 'yujipris@sbt.com', '78.901.234-5', '0000-00-00', '789.012.345-67', '(11)98901-2345', 4),
(8, 'superbat123@hotmail.com', '89.012.345-6', '0000-00-00', '890.123.456-78', '(81)99123-4567', 2),
(9, 'miranha345@spider.com', ' 90.123.456-7', '0000-00-00', '901.234.567-89', '(91)99234-5678', 8),
(10, 'kevyn420@gmail.com', '01.234.567-x', '0000-00-00', '012.345.678-90', '(11)99345-6789', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `id_imovel` int(11) NOT NULL,
  `Suite` int(11) NOT NULL,
  `comodos` int(11) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `quintal` bit(1) NOT NULL,
  `banheiros` int(11) NOT NULL,
  `area` varchar(20) NOT NULL,
  `quartos` int(11) NOT NULL,
  `disponivel` bit(1) NOT NULL,
  `piscina` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL,
  `Id_endereço` int(11) NOT NULL,
  `id_proprietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `id_inqulino` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `id_fiador` int(11) DEFAULT NULL,
  `id_aluguel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias`
--

CREATE TABLE `midias` (
  `id_midia` int(11) NOT NULL,
  `mida` varchar(255) NOT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `id_proprietario` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `banco` varchar(255) NOT NULL,
  `agencia` varchar(255) NOT NULL,
  `conta` varchar(255) NOT NULL,
  `pix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id_aluguel`),
  ADD KEY `id_corretor` (`id_corretor`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`id_corretor`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`Id_endereço`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`id_fiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `Id_endereço` (`Id_endereço`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`),
  ADD KEY `id_proprietario` (`id_proprietario`),
  ADD KEY `Id_endereço` (`Id_endereço`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`id_inqulino`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `id_fiador` (`id_fiador`),
  ADD KEY `id_aluguel` (`id_aluguel`);

--
-- Índices para tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`id_midia`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `pix` (`pix`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id_aluguel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `id_corretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `Id_endereço` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `id_fiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id_imovel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `id_inqulino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id_midia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);

--
-- Limitadores para a tabela `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`Id_endereço`) REFERENCES `endereco` (`Id_endereço`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`Id_endereço`) REFERENCES `endereco` (`Id_endereço`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`),
  ADD CONSTRAINT `inquilino_ibfk_2` FOREIGN KEY (`id_aluguel`) REFERENCES `aluguel` (`id_aluguel`);

--
-- Limitadores para a tabela `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
