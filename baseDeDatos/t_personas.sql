-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 03:07 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expedientemedico`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_personas`
--

CREATE TABLE `t_personas` (
  `nombre` varchar(255) NOT NULL,
  `apellido paterno` varchar(255) NOT NULL,
  `apellido materno` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fecha de nacimiento` date NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_personas`
--

INSERT INTO `t_personas` (`nombre`, `apellido paterno`, `apellido materno`, `telefono`, `email`, `fecha de nacimiento`, `sexo`, `nacionalidad`) VALUES
('Juan', 'Martinez', 'Zaragoza', '5515263637', 'juanmtz@gmail.com', '0000-00-00', 'Masculino', 'Brasileño'),
('Pedro', 'Lopez', 'Cruz', '527636382', 'pedro@hotmail.com', '2020-10-06', 'Masculino', 'Mexicano'),
('Carmen', 'Perez', 'Lopez', '5683898932', 'carmen@hotmil.com', '2019-10-13', 'Femenino', 'Mexicana'),
('Maria', 'Jurado', 'Gonzalez', '65876870', 'maria@gmail.com', '2021-05-04', 'Femenino', 'Mexicana'),
('Dulce', 'Guitierrez', 'Dominguez', '76897989', 'dulce@gmail.com', '2017-08-31', 'Femenino', 'Mexicana');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
