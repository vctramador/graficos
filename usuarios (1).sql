-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/03/2024 às 19:45
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
-- Banco de dados: `painel-de-controle`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `receitas` decimal(10,2) DEFAULT NULL,
  `gastos` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `endereco`, `email`, `senha`, `receitas`, `gastos`) VALUES
(1, 'João Silva', 'Rua das Flores 123, São Paulo, SP', 'joaosilva@example.com', 'senha123', 1500.00, 1200.00),
(2, 'Maria Oliveira', 'Avenida Brasil 456, Rio de Janeiro, RJ', 'mariaoliveira@example.com', 'senha456', 2000.00, 800.00),
(3, 'Carlos Pereira', 'Praça da Sé 789, Salvador, BA', 'carlospereira@example.com', 'senha789', 1800.00, 950.00),
(4, 'Pedro', 'Av. D, 1011', 'pedro@email.com', 'senha1011', 2500.25, 1000.75),
(5, 'Julia', 'Rua E, 1213', 'julia@email.com', 'senha1213', 2800.50, 1200.25),
(6, 'Lucas', 'Av. F, 1415', 'lucas@email.com', 'senha1415', 3200.75, 1400.50),
(7, 'Mariana', 'Rua G, 1617', 'mariana@email.com', 'senha1617', 3500.25, 1600.75),
(8, 'Carlos', 'Av. H, 1819', 'carlos@email.com', 'senha1819', 3800.50, 1800.25),
(9, 'Larissa', 'Rua I, 2021', 'larissa@email.com', 'senha2021', 4000.75, 2000.50),
(10, 'Rafael', 'Av. J, 2223', 'rafael@email.com', 'senha2223', 4200.25, 2200.75),
(11, 'Camila', 'Rua K, 2425', 'camila@email.com', 'senha2425', 4500.50, 2400.25),
(12, 'Guilherme', 'Av. L, 2627', 'guilherme@email.com', 'senha2627', 4800.75, 2600.50),
(13, 'Isabela', 'Rua M, 2829', 'isabela@email.com', 'senha2829', 5000.25, 2800.75),
(14, 'Fernando', 'Av. N, 3031', 'fernando@email.com', 'senha3031', 5300.50, 3000.25),
(15, 'Amanda', 'Rua O, 3233', 'amanda@email.com', 'senha3233', 5500.75, 3200.50);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
