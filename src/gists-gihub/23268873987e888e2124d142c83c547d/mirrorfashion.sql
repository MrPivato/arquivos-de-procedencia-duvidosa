-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2018 at 09:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mirrorfashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cor` varchar(100) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `tamanho` varchar(20) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `lavagem` varchar(100) NOT NULL,
  `detalhes` varchar(100) NOT NULL,
  `imagem_grande` varchar(200) NOT NULL,
  `eh_novidade` tinyint(1) NOT NULL,
  `eh_mais_vendido` tinyint(1) NOT NULL,
  `imagem_pequena` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto`
--

INSERT INTO `produto` (`id`, `nome`, `cor`, `preco`, `tamanho`, `modelo`, `material`, `lavagem`, `detalhes`, `imagem_grande`, `eh_novidade`, `eh_mais_vendido`, `imagem_pequena`) VALUES
(1, 'Fuzzy Cardigan ', 'azul | rosa | verde', '129.99', '42|44|46', 'Cardiga 7845', 'Algodao e poliester', 'Lavar a mão', 'aaaaaaaaaaaa', 'foto1-rosa.png', 1, 1, ''),
(2, 'Fuzzy Cardigan 2', 'azul | rosa | verde', '139.99', '44|46|48', 'Cardiga 7844', 'algodao e poliester', 'Lavar a mão2', 'BBBBBBBBBBBBBBBBb', 'foto1-verde.png', 1, 1, ''),
(3, 'Fuzzy Cardigan 3', 'azul | rosa | verde', '159.98', '50|52|54', 'Cardiga 7843', 'algodao e poliester7', 'Lavar a mão3', 'ccccccccccccccccccccccccc', 'foto1-azul.png', 1, 1, ''),
(4, 'BlusaAAA', 'verde|rosa|azul', '123.56', '34|36|38', 'OOOO+P', 'AlgodÃ£o', 'MÃ£o', 'privados nada cara', 'foto7-verde.png', 1, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
