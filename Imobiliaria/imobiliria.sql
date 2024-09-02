-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/09/2024 às 23:03
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

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
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `id_aluguel` int(11) NOT NULL,
  `preco_mensal` decimal(6,2) NOT NULL,
  `descrição` varchar(50) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`id_aluguel`, `preco_mensal`, `descrição`, `data_inicio`, `data_fim`, `id_corretor`, `id_inquilino`) VALUES
(1, 410.44, 'Apartamento com 2 suítes e piscina', '2024-01-01', '2024-12-31', 1, 1),
(2, 585.57, 'Casa com 3 quartos e quintal', '2024-02-01', '2025-01-31', 2, 2),
(3, 1050.50, 'Cobertura com vista para a cidade', '2024-03-01', '2024-12-31', 3, 3),
(4, 878.51, 'Chácara com 4 quartos e piscina', '2024-04-01', '2025-03-31', 4, 4),
(5, 316.66, 'Apartamento compacto no centro', '2024-05-01', '2024-10-31', 5, 5),
(6, 534.54, 'Casa com 4 suítes e garagem', '2024-06-01', '2025-05-31', 6, 6),
(7, 921.84, 'Apartamento com 3 quartos e lavanderia', '2024-07-01', '2025-06-30', 7, 7),
(8, 639.73, 'Casa com 2 quartos e quintal pequeno', '2024-08-01', '2024-12-31', 8, 8),
(9, 1065.75, 'Apartamento de luxo com área de lazer', '2024-09-01', '2025-08-31', 9, 9),
(10, 1161.69, 'Cobertura com 3 quartos e piscina', '2024-10-01', '2025-09-30', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretor`
--

CREATE TABLE `corretor` (
  `id_corretor` int(11) NOT NULL,
  `imobiliaria` varchar(30) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `nome` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `corretor`
--

INSERT INTO `corretor` (`id_corretor`, `imobiliaria`, `telefone`, `nome`, `Email`) VALUES
(1, 'Imobiliária ABC', '(11) 98765-4321', 'João Silva', 'joao.silva@imobiliariaabc.com.'),
(2, 'Imobiliária XYZ', '(21) 97654-3210', 'Maria Oliveira', 'maria.oliveira@imobiliariaxyz.'),
(3, 'Imóveis e Cia', '(31) 96543-2109', 'Carlos Souza', 'souzacarlos@gmail.com'),
(4, 'Elite Imóveis', '(41) 95432-1098', 'Ana Costa', 'ana.costa@eliteimoveis.com.br'),
(5, 'Prime Imobiliária', '(51) 94321-0987', 'Pedro Santos', 'pedro.santos@primeimobiliaria.'),
(6, 'Real Estate Group', '(61) 93210-9876', 'Lucia Pereira', 'lucia.pereira@realestategroup.'),
(7, 'Top Imóveis', '(71) 92109-8765', 'Roberto Lima', 'roberto.lima@topimoveis.com.br'),
(8, 'Imóveis do Sul', '(81) 91098-7654', 'Juliana Almeida', 'juliana.almeida@imoveisdosul.c'),
(9, 'Centro Imobiliário', '(91) 90987-6543', 'Felipe Martins', 'felipe.martins@centroimobiliar'),
(10, 'Vista Imóveis', '(11) 89876-5432', 'Fernanda Rocha', 'fernanda.rocha@vistaimoveis.co');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `Id_endereco` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `Cep` varchar(20) NOT NULL,
  `num_casa` varchar(10) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `Rua` varchar(20) NOT NULL,
  `complemento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`Id_endereco`, `estado`, `bairro`, `Cep`, `num_casa`, `cidade`, `Rua`, `complemento`) VALUES
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
-- Estrutura para tabela `fiador`
--

CREATE TABLE `fiador` (
  `id_fiador` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `Id_endereço` int(11) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiador`
--

INSERT INTO `fiador` (`id_fiador`, `email`, `rg`, `data_nasc`, `cpf`, `telefone`, `Id_endereço`, `nome`) VALUES
(1, 'zezesouza@hotmail.com', '12.345.678-9', '1989-02-03', '123.456.789-01', '(11)91234-5678', 10, 'Giuseppe Souza'),
(2, 'florzinha@gmail.com', '23.456.789-0', '2000-05-06', '234.567.890-12', '(21)93456-7890', 7, 'Flor Aparecida'),
(3, 'moranguinho@yahoo.com', '34.567.890-x', '1976-12-09', '345.678.901-23', '(31)94567-8901', 5, 'Morango Pequena'),
(4, 'caetaninho@apple.com', '45.678.901-2', '2002-09-09', '456.789.012-34', '(21)95678-9012', 3, 'Caetano Veloso'),
(5, 'lininha@hotmail.com', '56.789.012-3', '1951-02-12', '567.890.123-45', '(51)96789-0123', 6, 'Aline Ana'),
(6, 'francaliz@gmail.com', '67.890.123-x', '1999-02-22', '678.901.234-56', '(61)97890-1234', 1, 'Liz Franca'),
(7, 'yujipris@sbt.com', '78.901.234-5', '1945-08-25', '789.012.345-67', '(11)98901-2345', 4, 'Yuji Priscilla'),
(8, 'superbat123@hotmail.com', '89.012.345-6', '2001-08-07', '890.123.456-78', '(81)99123-4567', 2, 'Bruce Clark'),
(9, 'miranha345@spider.com', ' 90.123.456-7', '1998-11-01', '901.234.567-89', '(91)99234-5678', 8, 'Peter Miles'),
(10, 'kevyn420@gmail.com', '01.234.567-x', '2000-10-10', '012.345.678-90', '(11)99345-6789', 9, 'Kevyn Marcos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
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
  `Id_endereco` int(11) NOT NULL,
  `id_proprietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`id_imovel`, `Suite`, `comodos`, `garagem`, `quintal`, `banheiros`, `area`, `quartos`, `disponivel`, `piscina`, `lavanderia`, `Id_endereco`, `id_proprietario`) VALUES
(1, 2, 6, b'1', b'1', 3, '120m2', 4, b'1', b'1', b'1', 2, 1),
(2, 1, 4, b'1', b'0', 2, '85m2', 3, b'1', b'1', b'1', 3, 2),
(3, 0, 5, b'1', b'1', 2, '95m2', 3, b'1', b'1', b'1', 1, 3),
(4, 1, 7, b'1', b'1', 4, '150m2', 5, b'1', b'1', b'1', 5, 4),
(5, 0, 4, b'0', b'0', 1, '60m2', 1, b'1', b'1', b'1', 6, 5),
(6, 2, 6, b'1', b'1', 3, '110m2', 4, b'1', b'1', b'1', 9, 3),
(7, 1, 5, b'1', b'0', 2, '80m2', 3, b'1', b'1', b'1', 10, 2),
(8, 0, 4, b'1', b'0', 1, '70m2', 2, b'1', b'1', b'1', 2, 4),
(9, 3, 8, b'1', b'1', 4, '140m2', 4, b'1', b'1', b'1', 1, 5),
(10, 1, 6, b'1', b'0', 2, '90m2', 3, b'1', b'1', b'1', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `id_inqulino` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `id_fiador` int(11) DEFAULT NULL,
  `id_aluguel` int(11) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `inquilino`
--

INSERT INTO `inquilino` (`id_inqulino`, `email`, `cpf`, `rg`, `data_nasc`, `telefone`, `id_fiador`, `id_aluguel`, `nome`, `salario`) VALUES
(1, 'lucas.silva@example.com', '123.456.789-00', '12.345.678-9', '1985-04-12', '(11) 99876-5432', 1, 1, 'Lucas Silva', 2500.00),
(2, 'mariana.oliveira@example.com', '234.567.890-11', '23.456.789-0', '1990-05-23', '(21) 98765-4321', 2, 2, 'Mariana Oliveira', 3000.00),
(3, 'pedro.santos@example.com', '345.678.901-22', '34.567.890-1', '1988-06-30', '(31) 97654-3210', 3, 3, 'Pedro Santos', 3200.00),
(4, 'juliana.pereira@example.com', '456.789.012-33', '45.678.901-2', '1992-07-15', '(41) 96543-2109', 4, 4, 'Juliana Pereira', 2800.00),
(5, 'roberto.lima@example.com', '567.890.123-44', '56.789.012-3', '1980-08-21', '(51) 95432-1098', 5, 5, 'Roberto Lima', 3500.00),
(6, 'fernanda.rocha@example.com', '678.901.234-55', '67.890.123-4', '1995-09-05', '(61) 94321-0987', 6, 6, 'Fernanda Rocha', 2700.00),
(7, 'renan.martins@example.com', '789.012.345-66', '78.901.234-5', '1987-10-10', '(71) 93210-9876', 7, 7, 'Renan Martins', 3300.00),
(8, 'ana.costa@example.com', '890.123.456-77', '89.012.345-6', '1989-11-12', '(81) 92109-8765', 8, 8, 'Ana Costa', 3400.00),
(9, 'carlos.souza@example.com', '901.234.567-88', '90.123.456-7', '1991-12-20', '(91) 91098-7654', 9, 9, 'Carlos Souza', 3100.00),
(10, 'maria.oliveira@example.com', '012.345.678-99', '01.234.567-8', '1983-03-25', '(11) 89876-5432', 10, 10, 'Maria Oliveira', 2600.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `midias`
--

CREATE TABLE `midias` (
  `id_midia` int(11) NOT NULL,
  `midia` varchar(255) NOT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietario`
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
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `proprietario`
--

INSERT INTO `proprietario` (`id_proprietario`, `Email`, `telefone`, `data_nasc`, `cpf`, `rg`, `banco`, `agencia`, `conta`, `nome`) VALUES
(1, 'zesouza@hotmail.com', '(11) 9245-8798', '1990-08-25', '123.456.789-01', '12.345.678-9', 'Santander', '234', '12345', 'José Souza'),
(2, 'zulmira@hotmail.com', '(11) 9342-6538', '1982-04-13', '234.567.890-12', '01.234.567-8', 'Bradesco', '567', '678901', 'Zulmira Silva'),
(3, 'AnaPaula@hotmail.com', '(11) 9742-6573', '2000-12-01', '345.678.901-23', '90.123.456-7', 'Banco do Brasil', '8911', '123451', 'Ana Paula Santos'),
(4, 'blablablka@hotmail.com', '(11) 9936-3932', '1998-02-25', '456.789.012-34', '89.012.345-6', 'Itau', '890', '123451', 'Bianca Cristina'),
(5, 'menino@hotmail.com', '(11) 9765-4567', '2001-05-12', '567.890.123-45', '78.901.234-5', 'Santander', '125', '667781', 'Mike Jonathan'),
(6, 'carlos.araujo@example.com', '(11) 9808-6547', '1985-05-15', '120.456.789-01', '12.345.678-9', 'Banco do Brasil', '1234', '567890-1', 'Carlos Araújo'),
(7, 'claudia.silva@example.com', '(11) 9010-2323', '1990-08-22', '234.507.890-12', '23.456.789-0', 'Itaú', '5678', '123456-2', 'Claudia Machado Silva'),
(8, 'joao.mendes@example.com', '(11) 9654-7232', '1988-12-30', '045.678.901-23', '34.567.890-1', 'Bradesco', '9102', '345678-3', 'João Araújo Mendes'),
(9, 'marina.costa@example.com', '(11) 9332-2232', '1995-03-18', '456.709.012-34', '45.678.901-2', 'Santander', '3344', '789012-4', 'Marina Costa'),
(10, 'pedro.lima@example.com', '(11) 9903-4555', '1992-07-25', '567.890.103-45', '56.789.012-3', 'Caixa Econômica', '5566', '901234-5', 'Pedro Lima');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id_aluguel`),
  ADD KEY `id_corretor` (`id_corretor`),
  ADD KEY `id_imovel` (`id_inquilino`);

--
-- Índices de tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`id_corretor`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`Id_endereco`);

--
-- Índices de tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`id_fiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `Id_endereço` (`Id_endereço`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`),
  ADD KEY `id_proprietario` (`id_proprietario`),
  ADD KEY `Id_endereço` (`Id_endereco`);

--
-- Índices de tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`id_inqulino`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `id_fiador` (`id_fiador`),
  ADD KEY `id_aluguel` (`id_aluguel`);

--
-- Índices de tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`id_midia`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices de tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id_aluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `id_corretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `Id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `id_fiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id_imovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `id_inqulino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `id_midia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`id_inquilino`) REFERENCES `imovel` (`id_imovel`);

--
-- Restrições para tabelas `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`Id_endereço`) REFERENCES `endereco` (`Id_endereco`);

--
-- Restrições para tabelas `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`Id_endereco`) REFERENCES `endereco` (`Id_endereco`);

--
-- Restrições para tabelas `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`),
  ADD CONSTRAINT `inquilino_ibfk_2` FOREIGN KEY (`id_aluguel`) REFERENCES `aluguel` (`id_aluguel`);

--
-- Restrições para tabelas `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
