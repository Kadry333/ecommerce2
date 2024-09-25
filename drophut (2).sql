-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 02:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drophut`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `special_content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `author_id`, `created_at`, `image`, `author_name`, `special_content`) VALUES
(1, 'Best drone experience ever', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which do not look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum', 7, '2024-09-17 18:25:18', '1.jpg', 'john', 'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. In venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque.'),
(2, 'The Future of AI in Everyday Life', 'Artificial intelligence is transforming industries at an unprecedented rate. From healthcare to finance, the integration of AI technologies is creating new opportunities for automation, improving decision-making processes, and enhancing customer experiences. The potential of AI in everyday life is limitless, with applications ranging from personalized assistants to autonomous vehicles. However, with great power comes great responsibility. As AI becomes more ingrained in society, ethical considerations such as privacy and bias are also increasingly important to address.', 9, '2024-09-17 18:27:13', '2.jpg', 'jane_smith', 'Curabitur vel orci ut sapien dictum vehicula eget vitae lorem. Nulla facilisi. Integer sodales elit a mauris malesuada fermentum. Etiam ullamcorper varius metus sit amet vehicula.'),
(3, 'Exploring the World of Quantum Computing', 'Quantum computing is poised to revolutionize the way we process and analyze information. Unlike classical computers that process data in bits, quantum computers utilize qubits, which can represent both 0 and 1 simultaneously. This allows quantum computers to solve complex problems much faster than traditional machines. Although quantum computing is still in its infancy, the potential applications in fields like cryptography, drug discovery, and artificial intelligence are immense, leading many to call it the next frontier of computing.', 9, '2024-09-17 18:27:13', '3.jpg', 'alex_jones', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis condimentum lectus quis purus interdum, ac venenatis felis fermentum. Suspendisse potenti.'),
(4, 'Top Drone Flying Tips', 'Flying a drone can be exciting, but it also requires skill and responsibility. Make sure to understand local regulations, practice in open areas, and keep your drone in sight at all times.', 7, '2024-09-18 14:57:23', '4.jpg', 'jane_doe', 'Practice makes perfect when flying drones. Always be aware of your surroundings.'),
(5, 'Best Photography Drones in 2024', 'Looking for the best drone to capture stunning aerial photography? This guide covers top picks for both beginners and professionals, including features like 4K cameras and intelligent flight modes.', 7, '2024-09-18 14:57:23', '5.jpg', 'mark_smith', 'Discover the best drones for every skill level in this comprehensive guide.'),
(6, 'Drone Racing: A Beginner’s Guide', 'Drone racing has taken off in popularity! If you are new to the sport, learn the basics of setting up your drone, understanding race rules, and enhancing your piloting skills.', 7, '2024-09-18 14:57:23', '6.jpg', 'admin', 'Speed and precision are key in drone racing. Master these skills to excel!'),
(7, 'The Future of Delivery Drones', 'With the rise of e-commerce, delivery drones are becoming a reality. This blog explores the current state of delivery drone technology and its potential to revolutionize the logistics industry.', 9, '2024-09-18 14:57:23', '7.jpg', 'sarah_lee', 'The future of delivery is airborne, and drones are leading the way.'),
(8, 'How to Maintain Your Drone for Optimal Performance', 'Regular maintenance is crucial for keeping your drone in top shape. Learn how to clean your drone, check for damage, and ensure its longevity.', 7, '2024-09-18 14:57:23', '8.jpg', 'chris_evans', 'Proper care extends your drone\'s life. Follow these tips to avoid costly repairs.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `products` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `user_id`) VALUES
(8, 'Kareem Kadry', 'cr7.rm35@gmail.com', 'new message from user', 9),
(9, 'Kareem Kadry', 'kareemkadry1966@outlook.com', 'hellooooooooooo', 7),
(10, 'user', 'kareemkadry1966@outlook.com', 'new message', 7);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `country`, `address`, `city`, `phone`, `user_id`, `name`, `created_at`, `total_price`) VALUES
(110, '2', 'Cairo. El-Obour Bldgs...', 'Mansoura', '01211998633', 7, 'Kareem Kadry', '2024-09-21 16:00:33', 250),
(111, '2', 'Cairo. El-Obour Bldgs...', 'Mansoura', '01211998633', 7, 'Kareem Kadry', '2024-09-21 16:07:44', 110),
(112, '2', 'Cairo. El-Obour Bldgs...', 'Mansoura', '01211998633', 9, 'Kareem Kadry', '2024-09-21 16:08:32', 128),
(113, '2', 'Cairo. El-Obour Bldgs. 2 Salah Salem Rd., Nasr City', 'Mansoura', '01211998633', 7, 'Kareem Kadry', '2024-09-25 11:56:06', 160);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_name`, `product_price`, `user_id`) VALUES
(28, 110, 'Dolor corporis nihil', NULL, 7),
(29, 110, 'Doloribus distinctio quaerat', NULL, 7),
(30, 111, 'Repudiandae error quae', NULL, 7),
(31, 112, 'Ut praesentium earum', NULL, 9),
(32, 113, 'Ut praesentium earum', NULL, 7),
(33, 113, ' Doloribus distinctio quaerat', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_after_sale` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating` smallint(6) NOT NULL DEFAULT 0,
  `review` smallint(6) NOT NULL DEFAULT 0,
  `styles` varchar(100) NOT NULL,
  `properties` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `subtitle`, `description`, `price`, `price_after_sale`, `image`, `rating`, `review`, `styles`, `properties`) VALUES
(1, 'Ut praesentium earum', 'MEVRIK', 'Lorem ipsum dolor sit amet meis aliquando consetetur ea sit Eu his autem facete. Consul nostrum ei his, errem voluptatibus nam. Cu brute tempor eos, vide illud pro id.', 80, 70, '1.jpg', 4, 20, 'Multi-Rotor', 'smooth and simple landing'),
(2, 'Doloribus distinctio quaerat', 'ELECTROMAX', 'Nam vero voluptatem pariatur aut voluptatibus necessitatibus sit nihil. Aliquam cupiditate maiores occaecati et eum. Amet doloremque quidem veritatis.', 120, 100, '2.jpg', 5, 15, 'High-Speed', 'advanced stabilization technology'),
(3, 'Modi reiciendis iusto', 'AEROFLYER', 'Exercitationem quae voluptatibus alias maiores nihil voluptatum. Perferendis libero iste consequatur reprehenderit eius. Eum quaerat ut maiores.', 150, 130, '3.jpg', 3, 30, 'Compact Design', 'durable and lightweight construction'),
(4, 'Aperiam consequuntur', 'NEXUS', 'Quo asperiores distinctio placeat eveniet. Optio tempora saepe eaque magni. Nisi odit alias repudiandae, deleniti reiciendis perferendis.', 95, 85, '4.jpg', 4, 18, 'All-Terrain', 'high durability and control'),
(5, 'Repudiandae error quae', 'AIRMAX', 'Sed rerum ullam sequi aperiam. Quaerat blanditiis nam, deserunt consequatur soluta. Tempore architecto molestias iusto quidem.', 110, 95, '5.jpg', 5, 22, 'High-Performance', 'advanced aerodynamic design'),
(6, 'Dolor corporis nihil', 'AERONOVA', 'Voluptatum omnis iusto nulla, totam esse vel voluptatibus. Cumque magni obcaecati soluta, aliquam delectus quo. Eveniet quas debitis.', 130, 115, '6.jpg', 3, 25, 'Compact Design', 'enhanced flight stability');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `description`, `link`) VALUES
(1, '01.png', 'Next level of Drone', 'Insane Quality for use', 'Special offer 20% off this week'),
(2, '02.png', 'Best Camera Included', '100% Flexible', 'exclusive offer 20% off this week'),
(3, '03.png', 'With some gifts', 'Special one for you', 'exclusive offer 20% off this week');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `permissions` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `permissions`, `is_active`) VALUES
(7, 'Kareem Kadry', '12345678', 'kareemkadry1966@outlook.com', 'user', '0', 1),
(9, 'Kareem Kadry', '12345678', 'cr7.rm35@gmail.com', 'user', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_opinion`
--

CREATE TABLE `users_opinion` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `opinion` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_opinion`
--

INSERT INTO `users_opinion` (`id`, `name`, `position`, `opinion`, `image`) VALUES
(1, 'Kath Young', 'CEO OF SunPark', 'Contrary to popular belief...', '01.jpg'),
(2, 'John Sullivan', 'Customer', 'There are many variations...', '02.jpg'),
(3, 'Jenifer Brown', 'Manager of AZ', 'College in Virginia...', '03.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_opinion`
--
ALTER TABLE `users_opinion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_opinion`
--
ALTER TABLE `users_opinion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
