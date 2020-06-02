-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 02, 2020 alle 20:44
-- Versione del server: 10.4.8-MariaDB
-- Versione PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gibsondb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `matricolaUtente` int(11) NOT NULL,
  `idGuitar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `guitars`
--

CREATE TABLE `guitars` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `options` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `guitars`
--

INSERT INTO `guitars` (`id`, `type`, `model`, `version`, `options`, `price`, `img`) VALUES
(1, 'Electric Guitars', 'Les Paul', '60th Anniversary 1960 Les Paul Standard', 'Custom Shop', 6499.00, 'https://static.gibson.com/product-images/Custom/CUSQKW566/V1 Deep Cherry Sunburst/front-banner-1600_900.png'),
(2, 'Electric Guitar', 'Les Paul', '60th Anniversary 1959 Les Paul Standard', 'Custom Shop', 6499.00, 'https://static.gibson.com/product-images/Custom/CUSFXC951/Cherry Teaburst/front-banner.png'),
(3, 'Electric Guitar', 'Les Paul', '1957 Les Paul Junior Reissue', 'Custom Shop', 3799.00, 'https://static.gibson.com/product-images/Custom/CUSCB4758/Vintage Sunburst/front-banner-1600_900.png'),
(4, 'Electric Guitar', 'Les Paul', '1958 Les Paul Junior Double Cut Reissue', 'Custom Shop', 3799.00, 'https://static.gibson.com/product-images/Custom/CUSGFA436/Cherry Red/front-banner-1600_900.png'),
(5, 'Electric Guitar', 'Les Paul', '1957 Les Paul Special Single Cut Reissue', 'Custom Shop', 3799.00, 'https://static.gibson.com/product-images/Custom/CUSNZT900/TV Yellow/front-banner-1600_900.png'),
(6, 'Electric Guitar', 'Les Paul', '1960 Les Paul Special Double Cut Reissue', 'Custom Shop', 3799.00, 'https://static.gibson.com/product-images/Custom/CUSU6S317/Cherry Red/front-banner-1600_900.png'),
(7, 'Electric Guitar', 'Les Paul', '1954 Les Paul Goldtop Reissue', 'Custom Shop', 4499.00, 'https://static.gibson.com/product-images/Custom/CUSQT7550/Double Gold/front-banner-1600_900.png'),
(8, 'Electric Guitar', 'Les Paul', '1956 Les Paul Goldtop Reissue', 'Custom Shop', 4699.00, 'https://static.gibson.com/product-images/Custom/CUS2X7387/Double Gold/front-banner-1600_900.png'),
(9, 'Electric Guitar', 'Les Paul', '1957 Les Paul Goldtop Reissue', 'Custom Shop', 4699.00, 'https://static.gibson.com/product-images/Custom/CUS1RX706/Double Gold/front-banner-1600_900.png'),
(10, 'Electric Guitar', 'Les Paul', '1958 Les Paul Standard Reissue', 'Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Custom/CUSVXV696/Bourbon Burst/front-banner-1600_900.png'),
(11, 'Electric Guitar', 'Les Paul', '1959 Les Paul Standard Reissue', 'Custom Shop', 6499.00, 'https://static.gibson.com/product-images/Custom/CUS9IM458/Washed Cherry Sunburst/front-banner-1600_900.png'),
(12, 'Electric Guitar', 'Les Paul', '1957 Les Paul Custom Reissue', 'Custom Shop', 6699.00, 'https://static.gibson.com/product-images/Custom/CUSGJ5555/Ebony 2-Pickup/front-banner-1600_900.png'),
(13, 'Electric Guitar', 'Les Paul', '1968 Les Paul Custom Reissue', 'Custom Shop', 5799.00, 'https://static.gibson.com/product-images/Custom/CUS118365/Ebony/front-banner-1600_900.png'),
(14, 'Electric Guitar', 'Les Paul', '1968 Les Paul Standard Goldtop Reissue', 'Custom Shop', 4699.00, 'https://static.gibson.com/product-images/Custom/CUSF1E569/60s Gold/front-banner-1600_900.png'),
(15, 'Electric Guitar', 'Les Paul', 'Les Paul Custom w/ Ebony Fingerboard Gloss', 'Custom Shop', 4699.00, 'https://static.gibson.com/product-images/Custom/CUSZJG839/Ebony/front-banner-1600_900.png'),
(16, 'Electric Guitar', 'Les Paul', 'Les Paul Special Double Cut Figured Top', 'Custom Shop', 4499.00, 'https://static.gibson.com/product-images/Custom/CUSF5K865/Cobra Burst/front-banner-1600_900.png'),
(17, 'Electric Guitar', 'Les Paul', 'Les Paul Axcess Standard Figured Floyd Rose Gloss', 'Custom Shop', 4699.00, 'https://static.gibson.com/product-images/Custom/CUSX9K662/DC Rust/front-banner-1600_900.png'),
(18, 'Electric Guitar', 'Les Paul', 'Les Paul Axcess Custom w/Ebony FingerBoard Floyd Rose Gloss', 'Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Custom/CUSQD2632/Ebony/front-banner-1600_900.png'),
(19, 'Electric Guitar', 'Les Paul', 'Les Paul Axcess Custom Figured Top w/Ebony Fingerboard Gloss', 'Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Custom/CUSUJ8597/Bengal Burst/front-banner-1600_900.png'),
(20, 'Electric Guitar', 'Les Paul ', 'Slash Les Paul Standard ', 'Slash', 2999.00, 'https://static.gibson.com/product-images/USA/USAC69345/November Burst/front-banner-1600_900.png'),
(21, 'Electric Guitar', 'Les Paul', 'Slash Les Paul Standard Limited Edition', 'Slash', 2999.00, 'https://static.gibson.com/product-images/USA/USAVUK642/Vermillion Burst/front-banner-1600_900.png'),
(22, 'Electric Guitar', 'Les Paul', 'Les Paul Junior', 'Original', 1499.00, 'https://static.gibson.com/product-images/USA/USARLS446/Ebony/front-banner-1600_900.png'),
(23, 'Electric Guitar', 'Les Paul', 'Les Paul Standard \'50s', 'Original', 2499.00, 'https://static.gibson.com/product-images/USA/USAUBC849/Gold Top/front-banner-1600_900.png'),
(24, 'Electric Guitar', 'Les Paul', 'Les Paul Standard \'50s P-90', 'Original', 2499.00, 'https://static.gibson.com/product-images/USA/USA85B326/Gold Top/front-banner-1600_900.png'),
(25, 'Electric Guitar', 'Les Paul', 'Les Paul Standard \'60s', 'Original', 2499.00, 'https://static.gibson.com/product-images/USA/USA1R6524/Iced Tea/front-banner-1600_900.png'),
(26, 'Electric Guitar', 'Les Paul', 'Les Paul Special', 'Original', 1599.00, 'https://static.gibson.com/product-images/USA/USA2KP357/TV Yellow/front-banner-1600_900.png'),
(27, 'Electric Guitar', 'Les Paul', 'Les Paul Special Tribute DC', 'Modern', 999.00, 'https://static.gibson.com/product-images/USA/USAHE5811/Worn Ebony/front-banner-1600_900.png'),
(28, 'Electric Guitar', 'Les Paul', 'Les Paul Junior Tribute DC', 'Modern', 899.00, 'https://static.gibson.com/product-images/USA/USAVDZ830/Worn Cherry/front-banner-1600_900.png'),
(29, 'Electric Guitar', 'Les Paul', 'Les Paul Modern', 'Modern', 2799.00, 'https://static.gibson.com/product-images/USA/USAQ17249/Faded Pelham Blue Top/front-banner-1600_900.png'),
(30, 'Electric Guitar', 'Les Paul', 'Les Paul Classic', 'Modern', 1999.00, 'https://static.gibson.com/product-images/USA/USAI9Q269/Translucent Cherry/front-banner-1600_900.png'),
(31, 'Electric Guitar', 'Les Paul', 'Les Paul Studio', 'Modern', 1499.00, 'https://static.gibson.com/product-images/USA/USAYNB363/Wine Red/front-banner-1600_900.png'),
(32, 'Electric Guitar', 'Les Paul', 'Les Paul Tribute', 'Modern', 1199.00, 'https://static.gibson.com/product-images/USA/USAANM97/Satin Iced Tea/front-banner-1600_900.png'),
(33, 'Electric Guitar', 'Les Paul', 'Les Paul Special Tribute - Humbucker', 'Modern', 999.00, 'https://static.gibson.com/product-images/USA/USASAV482/Worn White Satin/front-banner-1600_900.png'),
(34, 'Electric Guitar', 'Les Paul', 'Les Paul Special Tribute P-90', 'Modern', 999.00, 'https://static.gibson.com/product-images/USA/USAPF9427/Worn White Satin/front-banner-1600_900.png'),
(35, 'Basses', 'Les Paul', 'Les Paul Junior Tribute DC Bass', 'Modern', 999.00, 'https://static.gibson.com/product-images/USA/USACYC512/Worn Ebony/front-banner-1600_900.png'),
(36, 'Electric Guitar', 'Les Paul', 'Dave Amato Les Paul Axcess Standard', 'Artist', 5099.00, 'https://static.gibson.com/product-images/Custom/CUSDPH453/Boston Sunset Fade/front-banner-1600_900.png'),
(37, 'Electric Guitar', 'Les Paul', 'Lee Roy Parnell \'59 Les Paul Standard', 'Artist', 7499.00, 'https://static.gibson.com/product-images/Custom/CUS1GX98/Abilene Sunset Burst/front-banner-1600_900.png'),
(38, 'Electric Guitar', 'Les Paul', 'Joe Perry \"Gold Rush\" Les Paul Axcess', 'Artist', 5499.00, 'https://static.gibson.com/product-images/Custom/CUSTE4147/Aged Antique Gold/front-banner-1600_900.png'),
(40, 'Electric Guitar', 'SG', '1964 SG Standard Reissue w/ Maestro Vibrola', 'Custom Shop', 4599.00, 'https://static.gibson.com/product-images/Custom/CUSFUM384/Cherry Red/front-banner-1600_900.png'),
(41, 'Electric Guitar', 'SG', 'SG Custom 2-Pickup w/Ebony Fingerboard Gloss', 'Custom Shop', 4699.00, 'https://static.gibson.com/product-images/Custom/CUSCPA862/Ebony/front-banner-1600_900.png'),
(42, 'Electric Guitar', 'SG', 'EDS-1275 Doubleneck', 'Custom Shop', 6499.00, 'https://static.gibson.com/product-images/Custom/CUSQLT562/Cherry Red/front-banner-1600_900.png'),
(43, 'Electric Guitar', 'SG', '1961 Les Paul SG Standard Reissue Stop Bar', 'Custom SG', 4199.00, 'https://static.gibson.com/product-images/Custom/CUSNAE888/Cherry Red/front-banner-1600_900.png'),
(44, 'Electric Guitar', 'SG', '1963 Les Paul SG Custom Reissue w/ Maestro Vibrola', 'Custom SG', 6699.00, 'https://static.gibson.com/product-images/Custom/CUSGSY394/Classic White/front-banner-1600_900.png'),
(45, 'Electric Guitar', 'SG', '1963 SG Junior Reissue', 'Historic Reissue Solid Body', 2999.00, 'https://static.gibson.com/product-images/Custom/CUSTRV936/Cherry Red/front-banner-1600_900.png'),
(46, 'Electric Guitar', 'SG', '1963 SG Specialist Reissue', 'Historic Reissue Solid Body', 3299.00, 'https://static.gibson.com/product-images/Custom/CUS81Y891/Cherry Red/front-banner-1600_900.png'),
(47, 'Electric Guitar', 'SG', 'SG Junior', 'Original', 1399.00, 'https://static.gibson.com/product-images/USA/USAFG1643/Vintage Cherry/front-banner-1600_900.png'),
(48, 'Electric Guitar', 'SG', 'SG Standard \'61 Maestro Vibrola', 'Original', 1399.00, 'https://static.gibson.com/product-images/USA/USAD9T241/Vintage Cherry/front-banner-1600_900.png'),
(49, 'Electric Guitar', 'SG', 'SG Standard \'61 Sideways Vibrola', 'Original', 1999.00, 'https://static.gibson.com/product-images/USA/USAKA9147/Vintage Cherry/front-banner-1600_900.png'),
(50, 'Electric Guitar', 'SG', 'SG Standard \'61', 'Original', 1799.00, 'https://static.gibson.com/product-images/USA/USAEDH414/Vintage Cherry/front-banner-1600_900.png'),
(51, 'Electric Gutar', 'SG', 'SG Special', 'Original', 1499.00, 'https://static.gibson.com/product-images/USA/USAFN1750/Faded Pelham Blue/front-banner-1600_900.png'),
(52, 'Basses', 'SG', 'SG Standard Bass', 'Original', 1499.00, 'https://static.gibson.com/product-images/USA/USABCH291/Heritage Cherry/front-banner-1600_900.png'),
(53, 'Electric Guitar', 'SG', 'SG Modern', 'Modern', 1999.00, 'https://static.gibson.com/product-images/USA/USAQHL543/Blueberry Fade/front-banner-1600_900.png'),
(54, 'Electric Guitar', 'SG', 'SG Standard', 'Modern', 1499.00, 'https://static.gibson.com/product-images/USA/USA8LG109/Heritage Cherry/front-banner-1600_900.png'),
(55, 'Electric Guitar', 'SG', 'SG Tribute', 'Modern', 1499.00, 'https://static.gibson.com/product-images/USA/USAG74273/Vintage Cherry Satin/front-banner-1600_900.png'),
(56, 'Electric Guitar', 'SG', 'Tony Iommi \"Monkey\" 1964 SG Special Replica', 'Artist', 0.00, 'https://static.gibson.com/product-images/Custom/CUSREE710/Left-Handed Aged/Signed/right-front-banner-1600_900.png'),
(57, 'Electric Guitar', 'SG', 'Slash 1966 ED-1275 Doubleneck - Signed/Aged', 'Artist', 13299.00, 'https://static.gibson.com/product-images/Custom/CUSWLK508/Aged Ebony/front-banner-1600_900.png'),
(58, 'Electric Guitar', 'SG', 'Brian Ray \'62 SG Junior', 'Artist', 4199.00, 'https://static.gibson.com/product-images/Custom/CUS4CC145/White Fox/front-banner-1600_900.png'),
(59, 'Electric Guitar', 'ES', '1959 ES-335 Reissue', 'Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Custom/CUSKP2119/Vintage Burst/front-banner-1600_900.png'),
(60, 'Electric Guitar', 'ES', '1961 ES-335 Reissue', 'Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Custom/CUS793206/Sixties Cherry/front-banner-1600_900.png'),
(61, 'Electric Guitar', 'ES', '1964 ES-335 Reissue', 'Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Custom/CUSWTP326/Sixties Cherry/front-banner-1600_900.png'),
(62, 'Electric Guitar', 'ES', '1959 ES-355 Reissue', 'Custom Shop', 5999.00, 'https://static.gibson.com/product-images/Custom/CUSRN3778/Vintage Natural/front-banner-1600_900.png'),
(63, 'Electric Guitar', 'ES', 'ES-335', 'Original', 2999.00, 'https://static.gibson.com/product-images/USA/USAVLJ627/Sixties Cherry/front-banner-1600_900.png'),
(64, 'Electric Guitar', 'ES', 'ES-335 Figured', 'Original', 3699.00, 'https://static.gibson.com/product-images/USA/USAS7F953/Sixties Cherry/front-banner-1600_900.png'),
(65, 'Electric Guitar', 'ES', 'ES-345', 'Original', 3299.00, 'https://static.gibson.com/product-images/USA/USABRA979/Sixties Cherry/front-banner-1600_900.png'),
(66, 'Electric Guitar', 'ES', 'ES-339', 'Modern', 2299.00, 'https://static.gibson.com/product-images/USA/USAPRN180/Cherry/front-banner-1600_900.png'),
(67, 'Electric Guitar', 'ES', 'ES-339 Figured', 'Modern', 2999.00, 'https://static.gibson.com/product-images/USA/USARIR238/Sixties Cherry/front-banner-1600_900.png'),
(68, 'Electric Guitar', 'ES', 'ES-335 Stain', 'Modern', 2599.00, 'https://static.gibson.com/product-images/USA/USA8JR46/Satin Cherry/front-banner-1600_900.png'),
(69, 'Electric Guitar', 'ES', 'Chris Cornell ES-335 Tribute', 'Artist', 5645.00, 'https://static.gibson.com/product-images/Memphis/MEMQ9N633/Olive Drab Green/front-banner-1600_900.png'),
(70, 'Electric Guitar', 'ES', 'Joan Jett ES-339', 'Artist', 2999.00, 'https://static.gibson.com/product-images/Memphis/MEMSL3116/Figured Wine Red/front-banner-1600_900.png'),
(71, 'Electric Guitar', 'ES', 'Chuck Berry 1955 ES-350T', 'Artist', 9999.00, 'https://static.gibson.com/product-images/Custom/CUSXXP683/Antique Natural/front-banner-1600_900.png'),
(72, 'Electric Guitar', 'ES', 'Alvin Lee ES-335 \'69 Festival\'', 'Artist', 7299.00, 'https://static.gibson.com/product-images/Custom/CUSU3K953/Aged Sixties Cherry/front-banner-1600_900.png'),
(73, 'Electric Guitar', 'ES', '1964 Trini Lopez Standard Reissue', 'Artist', 5499.00, 'https://static.gibson.com/product-images/Custom/CUSAYG382/Ebony/front-banner-1600_900.png'),
(74, 'Acoustic Guitar', 'Acoustic', 'G-45 Studio', 'Modern Acoustic', 999.00, 'https://static.gibson.com/product-images/Acoustic/ACCA5D830/Antique Natural/front-banner-1600_900.png'),
(75, 'Acoustic Guitar', 'Acoustic', 'G-45 Standard Walnut', 'Modern Acoustic', 1299.00, 'https://static.gibson.com/product-images/Acoustic/ACC37J379/Antique Natural/front-banner-1600_900.png'),
(76, 'Acoustic Guitar', 'Acoustic', 'J-15 Standard Wlanut', 'Modern Acoustic', 1949.00, 'https://static.gibson.com/product-images/Acoustic/ACCXV8819/Walnut Burst/front-banner-1600_900.png'),
(77, 'Acoustic Guitar', 'Acoustic', 'J-15 Standard', 'Modern Acoustic', 2749.00, 'https://static.gibson.com/product-images/Acoustic/ACC7JP801/Vintage Sunburst/front-banner-1600_900.png'),
(78, 'Acoustic Guitar', 'Acoustic', 'J-45 Studio Walnut', 'Modern Acoustic', 1499.00, 'https://static.gibson.com/product-images/Acoustic/ACC1PT348/Antique Natural/front-banner-1600_900.png'),
(79, 'Acoustic Guitar', 'Acoustic', 'J-15 Standard Walnut', 'Modern Acoustic', 2099.00, 'https://static.gibson.com/product-images/Acoustic/ACC3YP77/Antique Natural/front-banner-1600_900.png'),
(80, 'Acoustic Guitar', 'Acoustic', 'J-45 Sustainable', 'Modern Acoustic', 2299.00, 'https://static.gibson.com/product-images/Acoustic/ACC8QL152/Antique Natural/front-banner-1600_900.png'),
(81, 'Acoustic Guitar', 'Acoustic', 'J-45 Studio Rosewood', 'Modern Acoustic', 1999.00, 'https://static.gibson.com/product-images/Acoustic/ACCKBD65/Antique Natural/front-banner-1600_900.png'),
(82, 'Acoustic Guitar', 'Acoustic', 'J-185 EC Modern Walnut', 'Modern Acoustic', 2299.00, 'https://static.gibson.com/product-images/Acoustic/ACC8T4719/Antique Natural/front-banner-1600_900.png'),
(83, 'Acoustic Guitar', 'Acoustic', 'J-185 EC Modern Rosewood', 'Modern Acoustic', 3099.00, 'https://static.gibson.com/product-images/Acoustic/ACCWQX529/Antique Natural/front-banner-1600_900.png'),
(84, 'Acoustic Guitar\r\n', 'Acoustic', 'Hummingbird Studio Walnut', 'Modern Acoustic', 1999.00, 'https://static.gibson.com/product-images/Acoustic/ACC4YT544/Antique Natural/front-banner-1600_900.png'),
(85, 'Acoustic Guitar', 'Acoustic', 'Hummingbird Sustainable', 'Modern Acoustic', 2499.00, 'https://static.gibson.com/product-images/Acoustic/ACCVAU468/Antique Natural/front-banner-1600_900.png'),
(86, 'Acoustic Guitar', 'Acoustic', 'Hummingbird Studio Rosewood', 'Modern Acoustic', 2699.00, 'https://static.gibson.com/product-images/Acoustic/ACCZSE927/Antique Natural/front-banner-1600_900.png'),
(87, 'Acoustic Guitar', 'Acoustic', 'Songwriter Modern EC Walnut', 'Modern Acoustic', 2199.00, 'https://static.gibson.com/product-images/Acoustic/ACCR7I652/Walnut Burst/front-banner-1600_900.png'),
(88, 'Acoustic Guitar', 'Acoustic', 'Songwriter Modern EC Mahogany', 'Modern Acoustic', 2499.00, 'https://static.gibson.com/product-images/Acoustic/ACC8HE801/Light Cherry Sunburst/front-banner-1600_900.png'),
(89, 'Acoustic Guitar', 'Acoustic', 'Songwriter Modern EC Rosewood', 'Modern Acoustic', 2699.00, 'https://static.gibson.com/product-images/Acoustic/ACC4KW14/Rosewood Burst/front-banner-1600_900.png'),
(90, 'Acoustic Guitar', 'Acoustic', 'Songwriter Standard Rosewood', 'Modern Acoustic', 2999.00, 'https://static.gibson.com/product-images/Acoustic/ACCNXQ460/Antique Natural/front-banner-1600_900.png'),
(91, 'Acoustic Guitar', 'Acoustic', 'Songwriter Standard EC Rosewood', 'Moden Acoustic', 3149.00, 'https://static.gibson.com/product-images/Acoustic/ACCXW2802/Rosewood Burst/front-banner-1600_900.png'),
(92, 'Acoustic Guitar', 'Acoustic', 'Songwriter 12-String Rosewood', 'Modern Acoustic', 3299.00, 'https://static.gibson.com/product-images/Acoustic/ACCVPP944/Antique Natural/front-banner-1600_900.png'),
(93, 'Acoustic Guitar', 'Acoustic', 'L-00 Studio Walnut', 'Modern Acoustic', 1499.00, 'https://static.gibson.com/product-images/Acoustic/ACCX5Q355/Antique Natural/front-banner-1600_900.png'),
(94, 'Acoustic Guitar', 'Acoustic', 'L-00 Sustainable', 'Modern Acoustic', 2299.00, 'https://static.gibson.com/product-images/Acoustic/ACCMAN451/Antique Natural/front-banner-1600_900.png'),
(95, 'Acoustic Guitar', 'Acoustic', 'Parlor Modern EC Rosewood', 'Modern Acoustic', 2249.00, 'https://static.gibson.com/product-images/Acoustic/ACCTI1387/Antique Natural/front-banner-1600_900.png'),
(96, 'Acoustic Guitar', 'Acoustic', 'L-00 Standard', 'Modern acoustic', 3099.00, 'https://static.gibson.com/product-images/Acoustic/ACCSMC348/Vintage Sunburst/front-banner-1600_900.png'),
(97, 'Acoustic Guitar', 'Acoustic', 'L-00 Studio Rosewood', 'Modern Acoustic', 1999.00, 'https://static.gibson.com/product-images/Acoustic/ACC868611/Antique Natural/front-banner-1600_900.png'),
(99, 'Acoustic Guitar', 'Acoustic', 'SJ-200 Studio Walnut', 'Modern Acoustic', 2999.00, 'https://static.gibson.com/product-images/Acoustic/ACC8E5211/Antique Natural/front-banner-1600_900.png'),
(100, 'Acoustic Guitar', 'Acoustic', 'SJ-200 Studio Rosewood', 'Modern Acoustic', 3499.00, 'https://static.gibson.com/product-images/Acoustic/ACCIBN653/Antique Natural/front-banner-1600_900.png'),
(101, 'Acoustic Guitar', 'Acoustic', 'SJ-200 Standard Maple', 'Modern Acoustic', 4499.00, 'https://static.gibson.com/product-images/Acoustic/ACCBUQ665/Antique Natural/front-banner-1600_900.png'),
(102, 'Acoustic Guitar', 'Acoustic', '50s J-45 Original', 'Original Acoustic', 2699.00, 'https://static.gibson.com/product-images/Acoustic/ACCSRX331/Ebony/front-banner-1600_900.png'),
(103, 'Acoustic Guitar', 'Acoustic', '50s J-50 Original', 'Original Acoustic', 2699.00, 'https://static.gibson.com/product-images/Acoustic/ACC6P5331/Antique Natural/front-banner-1600_900.png'),
(104, 'Acoustic Guitar', 'Acoustic', '60s J-45 Original', 'Original Acoustic', 2499.00, 'https://static.gibson.com/product-images/Acoustic/ACCJ5F910/Ebony/front-banner-1600_900.png'),
(105, 'Acoustic Guitar', 'Acoustic', '60s J-50 Original', 'Original Acoustic', 2499.00, 'https://static.gibson.com/product-images/Acoustic/ACC26R79/Antique Natural/front-banner-1600_900.png'),
(106, 'Acoustic Guitar', 'Acoustic', 'Southern Jumbo Original', 'Original Acoustic', 2999.00, 'https://static.gibson.com/product-images/Acoustic/ACCYBI462/Vintage Sunburst/front-banner-1600_900.png'),
(107, 'Acoustic Guitar', 'Acoustic', 'Hummingbird Original', 'Original Acoustic', 3699.00, 'https://static.gibson.com/product-images/Acoustic/ACCFR6729/Antique Natural/front-banner-1600_900.png'),
(108, 'Acoustic Guitar', 'Acoustic', 'Dove Original', 'Original Acoustic', 4299.00, 'https://static.gibson.com/product-images/Acoustic/ACCN8H793/Vintage Cherry Sunburst/front-banner-1600_900.png'),
(109, 'Acoustic Guitar', 'Acoustic', 'J-185 Original', 'Original Acoustic', 3499.00, 'https://static.gibson.com/product-images/Acoustic/ACCG14863/Antique Natural/front-banner-1600_900.png'),
(110, 'Acoustic Guitar', 'Acoustic', 'SJ-200 Original', 'Original Acoustic', 4499.00, 'https://static.gibson.com/product-images/Acoustic/ACCFZN743/Antique Natural/front-banner-1600_900.png'),
(111, 'Acoustic Guitar', 'Acoustic', '50s LG-2', 'Original Acoustic', 2499.00, 'https://static.gibson.com/product-images/Acoustic/ACCDYV983/Vintage Sunburst/front-banner-1600_900.png'),
(112, 'Acoustic Guitar', 'Acoustic', 'L-00 Original', 'Original Guitar', 2699.00, 'https://static.gibson.com/product-images/Acoustic/ACCL5X202/Ebony/front-banner-1600_900.png'),
(113, 'Acoustic Guitar', 'Acoustic', '1942 Banner LG-2', 'Acoustic Custom Shop', 4299.00, 'https://static.gibson.com/product-images/Acoustic/ACCMH3461/Vintage Sunburst/front-banner-1600_900.png'),
(114, 'Acoustic Guitar', 'Acoustic', '1942 Banner J-45', 'Acoustic Custom Shop', 4799.00, 'https://static.gibson.com/product-images/Acoustic/ACCFN1635/Vintage Sunburst/front-banner-1600_900.png'),
(115, 'Acoustic Guitar', 'Acoustic', '1934 Jumbo', 'Acoustic Custom Shop', 4799.00, 'https://static.gibson.com/product-images/Acoustic/ACC6LP318/Vintage Sunburst/front-banner-1600_900.png'),
(116, 'Acoustic Guitar', 'Acoustic', '1936 J-35', 'Acoustic Custom Shop', 4799.00, 'https://static.gibson.com/product-images/Acoustic/ACC6G425/Vintage Sunburst/front-banner-1600_900.png'),
(117, 'Acoustic Guitar', 'Acoustic', '1936 Advanced Jumbo', 'Acoustic Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Acoustic/ACCKA4679/Vintage Sunburst/front-banner-1600_900.png'),
(118, 'Acoustic Guitar', 'Acoustic', '1939 J-55', 'Acoustic Custom Shop', 4899.00, 'https://static.gibson.com/product-images/Acoustic/ACCNSE863/Faded Vintage Sunburst/front-banner-1600_900.png'),
(119, 'Acoustic Guitar', 'Acoustic', '1942 Banner Southern Jumbo', 'Acoustic Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Acoustic/ACCKK1699/Vintage Sunburst/front-banner-1600_900.png'),
(120, 'Acoustic Guitar', 'Acoustic', '1960 Hummingbird Adjustable Saddle', 'Acoustic Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Acoustic/ACC3PP294/Heritage Cherry Sunburst/front-banner-1600_900.png'),
(121, 'Acoustic Guitar', 'Acoustic', '1960 Hummingbird Fixed Bridge', 'Acoustic Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Acoustic/ACCA45535/Heritage Cherry Sunburst/front-banner-1600_900.png'),
(122, 'Acoustci Guitar', 'Acoustic', '1952 J-185', 'Acoustic Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Acoustic/ACCGIW828/Vintage Sunburst/front-banner-1600_900.png'),
(123, 'Acoustic Guitar', 'Acoustic', '1957 SJ-200', 'Acoustic Custom Shop', 5999.00, 'https://static.gibson.com/product-images/Acoustic/ACCMT3131/Antique Natural/front-banner-1600_900.png'),
(124, 'Acoustic Guitar', 'Acoustic', 'Pre-War SJ-200 Rosewood', 'Acoustic Custom Shop', 6499.00, 'https://static.gibson.com/product-images/Acoustic/ACC5RX962/Vintage Sunburst/front-banner-1600_900.png'),
(125, 'Acoustic Guitar', 'Acoustic', 'J-45 Deluxe Rosewood', 'Acoustic Custom Shop', 3499.00, 'https://static.gibson.com/product-images/Acoustic/ACCGBH714/Rosewood Burst/front-banner-1600_900.png'),
(126, 'Acoustic Guitar', 'Acoustic', 'Songwriter Chroma', 'Acoustic Custom Shop', 3999.00, 'https://static.gibson.com/product-images/Acoustic/ACCESS901/Black Cherry/front-banner-1600_900.png'),
(127, 'Acoustic Guitar', 'Acoustic', 'Hummingbird Deluxe', 'Acoustic Custom Shop', 4499.00, 'https://static.gibson.com/product-images/Acoustic/ACC3SX671/Rosewood Burst/front-banner-1600_900.png'),
(128, 'Acoustic Guitar', 'Acoustic', 'Firebird', 'Acoustic Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Acoustic/ACC3CE763/Antique Natural/front-banner-1600_900.png'),
(129, 'Acoustic Guitar', 'Acoustic', 'Hummingbird Custom', 'Acoustic Custom Shop', 7499.00, 'https://static.gibson.com/product-images/Acoustic/ACCANS368/Antique Natural/front-banner-1600_900.png'),
(130, 'Acoustic Guitar', 'Acoustic', 'Doves in Flight', 'Acoustic Custom Shop', 7499.00, 'https://static.gibson.com/product-images/Acoustic/ACC46V941/Antique Natural/front-banner-1600_900.png'),
(131, 'Acoustic Guitar', 'Acoustic', 'L-00 Deluxe', 'Acoustic Custom Shop', 3499.00, 'https://static.gibson.com/product-images/Acoustic/ACCBNZ601/Rosewood Burst/front-banner-1600_900.png'),
(132, 'Acoustic Guitar', 'Acoustic', 'SJ-200 Deluxe', 'Acoustic Custom Shop', 5999.00, 'https://static.gibson.com/product-images/Acoustic/ACCHB4552/Rosewood Burst/front-banner-1600_900.png'),
(133, 'Acoustic Guitar', 'Acoustic', 'Hummingbird Standard', 'Modern', 3849.00, 'https://static.gibson.com/product-images/Acoustic/ACCMGI264/Vintage Cherry Sunburst/front-banner-1600_900.png'),
(134, 'Acoustic Guitar', 'Acoustic', 'Slash J-45', 'Artist', 3499.00, 'https://static.gibson.com/product-images/Acoustic/ACC59V470/Vermillion Burst/front-banner-1600_900.png'),
(135, 'Acoustic Guitar', 'Acoustic', 'Sheryl Crow Country Western Supreme', 'Artist', 4299.00, 'https://static.gibson.com/product-images/Acoustic/ACCSVU796/Antique Cherry/front-banner-1600_900.png'),
(136, 'Electric Guitar', 'Designer', 'Explorer Custom w/ Ebony Fingerboard Gloss', 'Custom Designer', 4699.00, 'https://static.gibson.com/product-images/Custom/CUST9M301/Ebony/front-banner-1600_900.png'),
(137, 'Electric Guitar', 'Designer', 'Firebird Custom w/ Ebony Fingerboard Gloss', 'Custom Designer', 4699.00, 'https://static.gibson.com/product-images/Custom/CUSK3Z535/Ebony/front-banner-1600_900.png'),
(138, 'Electric Guitar', 'Designer', 'Flying V Custom w/ Ebony Fingerboard Gloss', 'Custom Designer', 4699.00, 'https://static.gibson.com/product-images/Custom/CUSHTT69/Ebony/front-banner-1600_900.png'),
(139, 'Electric Guitar', 'Designer', '1965 Non-Reverse Firebird V w/ Vibrola', 'Historic Reissue Solid Body', 4199.00, 'https://static.gibson.com/product-images/Custom/CUSPY6379/Vintage Sunburst/front-banner-1600_900.png'),
(140, 'Electric Guitar', 'Designer', '1963 Firebird V', 'Custom Shop', 5299.00, 'https://static.gibson.com/product-images/Custom/CUSEZ5229/Vintage Sunburst/front-banner-1600_900.png'),
(141, 'Electric Guitar', 'Designer', '1967 Flying V w/ Vibrola', 'Custom Shop', 4999.00, 'https://static.gibson.com/product-images/Custom/CUS8GE266/Sparkling Burgundy/front-banner-1600_900.png'),
(142, 'Electric Guitar', 'Designer', 'Firebird', 'Original', 1999.00, 'https://static.gibson.com/product-images/USA/USA5KL895/Tobacco Burst/front-banner-1600_900.png'),
(143, 'Electric Guitar', 'Designer', 'Flying V', 'Original', 1699.00, 'https://static.gibson.com/product-images/USA/USAM1U838/Antique Natural/front-banner-1600_900.png'),
(144, 'Electric Guitar', 'Designer', 'Explorer', 'Original', 1499.00, 'https://static.gibson.com/product-images/USA/USAI3T44/Antique Natural/front-banner-1600_900.png'),
(145, 'Electric Guitar', 'Designer', '70s Flying V', 'Original', 1999.00, 'https://static.gibson.com/product-images/USA/USADW9572/Classic White/front-banner-1600_900.png'),
(146, 'Electric Guitar', 'Designer', '70s Explorer', 'Original', 1999.00, 'https://static.gibson.com/product-images/USA/USAENQ873/Classic White/front-banner-1600_900.png'),
(147, 'Electric Guitar', 'Designer', 'Flying V B-2', 'Modern', 1399.00, 'https://static.gibson.com/product-images/USA/USA15M813/Satin Ebony/front-banner-1600_900.png'),
(148, 'Electric Guitar', 'Designer', 'Explorer B-2', 'Modern', 1399.00, 'https://static.gibson.com/product-images/USA/USAH3U1/Satin Ebony/front-banner-1600_900.png'),
(149, 'Electric Guitar', 'Designer', 'Eric Clapton 1964 Firebird I', 'Artist', 7999.00, 'https://static.gibson.com/product-images/Custom/CUSSK4171/Vintage Sunburst/front-banner-1600_900.png'),
(150, 'Basses', 'Basses', 'Thunderbird Bass', 'Original', 2299.00, 'https://static.gibson.com/product-images/USA/USAKUC232/Tobacco Burst/front-banner-1600_900.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `matricola` int(11) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`matricola`, `cognome`, `nome`, `telefono`, `mail`, `username`, `password`) VALUES
(1, 'alessio', 'costamagna', '3349363929', 'a.costamagna.0418@vallauri.edu', 'AlessioCostamagna', 'dee0b592074eb6cfde27affd177eca37');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `guitars`
--
ALTER TABLE `guitars`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`matricola`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `guitars`
--
ALTER TABLE `guitars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `matricola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
