-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 07:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelx`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'rerum', 'rerum', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(2, 'natus', 'natus', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(3, 'dolor', 'dolor', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(4, 'optio', 'optio', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(5, 'totam', 'totam', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(6, 'laudantium', 'laudantium', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(7, 'facilis', 'facilis', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(8, 'explicabo', 'explicabo', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(9, 'accusamus', 'accusamus', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(10, 'non', 'non', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(11, 'culpa', 'culpa', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(12, 'assumenda', 'assumenda', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(13, 'veritatis', 'veritatis', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(14, 'nesciunt', 'nesciunt', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(15, 'et', 'et', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(16, 'accusantium', 'accusantium', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(17, 'et', 'et', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(18, 'quo', 'quo', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(19, 'assumenda', 'assumenda', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(20, 'molestiae', 'molestiae', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(21, 'reprehenderit', 'reprehenderit', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(22, 'omnis', 'omnis', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(23, 'consequatur', 'consequatur', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(24, 'atque', 'atque', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(25, 'id', 'id', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(26, 'dolore', 'dolore', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(27, 'nam', 'nam', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(28, 'et', 'et', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(29, 'commodi', 'commodi', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(30, 'totam', 'totam', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(31, 'tenetur', 'tenetur', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(32, 'error', 'error', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(33, 'quisquam', 'quisquam', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(34, 'rerum', 'rerum', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(35, 'itaque', 'itaque', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(36, 'omnis', 'omnis', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(37, 'molestiae', 'molestiae', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(38, 'voluptas', 'voluptas', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(39, 'facere', 'facere', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(40, 'perferendis', 'perferendis', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(41, 'veritatis', 'veritatis', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(42, 'vero', 'vero', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(43, 'perferendis', 'perferendis', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(44, 'quos', 'quos', '2023-01-08 18:48:56', '2023-01-08 18:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `author_email`, `content`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Joanne Sporer', 'fadel.neoma@hotmail.com', 'Laborum voluptas et qui. Eligendi voluptatem non nihil nobis quae unde minus aut. Ducimus omnis nam et possimus sunt.', 2, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(2, 'Brenna McDermott', 'maxie.ferry@jast.com', 'Consectetur quis odit iure earum. Consequuntur dignissimos temporibus omnis. Natus praesentium rem quo consequatur in delectus sed. Aspernatur rerum quia quisquam qui voluptatem soluta.', 4, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(3, 'Chauncey Kautzer Jr.', 'homenick.ralph@legros.com', 'Aspernatur itaque id iusto eum molestias explicabo. Nemo sed vero ipsa repudiandae. Reprehenderit iure sed provident ut tempore aut. Magni et ad facilis libero dolores culpa ut. Optio sint sequi ea nobis labore ipsa et.', 6, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(4, 'Miss Evie Bergnaum V', 'lspinka@gmail.com', 'Nihil placeat ratione et et voluptatem iste facere sed. Sint qui labore et qui. Dolores ducimus alias dolorem exercitationem rerum quasi eaque.', 6, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(5, 'Kevon Hagenes', 'mhirthe@lueilwitz.biz', 'Voluptates harum deserunt nobis deserunt distinctio. Iure quidem et consequatur et placeat labore. Quod labore in nihil. Earum explicabo quae optio sequi nihil.', 6, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(6, 'Aubree Murazik V', 'alexane58@emard.com', 'Id tempora eaque rem aut voluptate nisi. Modi id voluptas ratione eaque repellendus. Aut quam sapiente sit quo quibusdam.', 6, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(7, 'Mr. Isom Halvorson IV', 'shuels@howe.org', 'Ullam velit saepe aspernatur laudantium aliquam eaque quae. Sunt totam minima accusantium quas ab. Dolorem amet totam est eveniet.', 11, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(8, 'German Marvin III', 'laufderhar@mohr.com', 'Sapiente minima rerum possimus libero voluptatum temporibus. Praesentium vitae magni sint tempora ex ea ut.', 11, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(9, 'Nelson Runolfsson', 'alexandria62@mcdermott.biz', 'Ut iure voluptatem aut recusandae fuga odit. Quos ut esse a.', 11, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(10, 'Miss Lucie Koss Sr.', 'rex06@gmail.com', 'Nulla dolore voluptas nihil inventore. Itaque consequuntur molestiae consectetur. Dolor quaerat eius eos illo.', 15, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(11, 'Jettie Schiller', 'romaguera.norma@hill.net', 'Animi quibusdam dolores repellat qui quo optio. Assumenda est tempore distinctio quaerat deleniti sint. Laudantium hic dolorum aut et.', 15, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(12, 'Margarett Yundt', 'jokuneva@green.info', 'Ut et et a ipsum qui. Magni earum quasi culpa quis amet similique fugit. In excepturi unde ipsam dignissimos quas. Voluptas suscipit quam magnam et. Voluptates eum id aut qui.', 15, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(13, 'Vada Klein', 'hhowell@yahoo.com', 'Et architecto dolor nam numquam natus. Dolor placeat quasi ea voluptatem. Excepturi sint recusandae earum alias labore sequi.', 15, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(14, 'Dr. Emmanuelle Wolf III', 'ada.rippin@stokes.net', 'Consequatur non molestiae rem nostrum nemo deleniti incidunt eos. Voluptatum dolores sed velit in. Ut et ea nihil perspiciatis.', 21, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(15, 'Miss Gisselle Morissette III', 'elenora46@hegmann.com', 'Dolores unde nam voluptas laborum. Quidem provident assumenda aperiam optio eius repellendus. Omnis qui enim labore mollitia et rem officiis repellendus. Quaerat sed animi et deleniti aliquid magni.', 21, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(16, 'Jacquelyn Greenfelder', 'lemke.werner@kovacek.com', 'Qui voluptatibus exercitationem numquam velit. Atque incidunt enim sit beatae veritatis. Nostrum voluptas nemo magni architecto et sint.', 21, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(17, 'Helena Keebler', 'feil.ona@lynch.org', 'Eum possimus tempore doloribus. Commodi modi ad minus quisquam ad aut est dolor. Sunt numquam eaque enim omnis.', 25, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(18, 'Eleanore Bednar', 'nitzsche.jaylan@orn.biz', 'Qui totam voluptatem quis quia ratione consequatur fugit. Ut distinctio perspiciatis occaecati. Hic et totam nesciunt ut molestias non labore. Distinctio id commodi sunt error est.', 25, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(19, 'Howard Gleichner', 'theron.fritsch@hyatt.com', 'Quia rerum laboriosam dolores sed molestiae sed nam. Ducimus accusamus excepturi non iusto voluptas voluptatem earum repudiandae. Officia consequatur quis dolores ex.', 25, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(20, 'Shaun Schinner', 'ayden56@gmail.com', 'Autem rerum amet dolorem enim deleniti et sint. Iure quibusdam necessitatibus id repudiandae harum sed voluptatem. Ipsa blanditiis qui voluptate omnis accusantium ut possimus.', 29, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(21, 'Kali Maggio', 'wilma69@gmail.com', 'Est est qui commodi dolor aspernatur consectetur. Nesciunt veritatis aut eligendi ducimus magni occaecati debitis. Veniam dolores cumque et quis consequatur pariatur rerum. Est et velit id doloremque temporibus sed sunt.', 29, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(22, 'Dr. Gillian Pagac Jr.', 'otoy@weimann.info', 'Aliquam deleniti sequi aliquam sapiente laudantium. Accusamus consequatur rem animi debitis et. Voluptatem alias distinctio vel suscipit non velit expedita.', 29, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(23, 'Bernardo Borer PhD', 'luella.sporer@lang.com', 'Veritatis vero ut veritatis qui autem dignissimos. Et vel quis tempore adipisci tempore excepturi repellat cum. Ea voluptatum culpa aut qui. Ea aut repellat fugit voluptatibus.', 29, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(24, 'Kole Koepp', 'rachael23@steuber.com', 'Quae repellat placeat non deserunt. Laboriosam quo illo tempore culpa at. Assumenda dolor aut est voluptas aut. Dolorem sint quia at et deserunt iste. Sunt quisquam voluptatum eligendi eaque.', 34, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(25, 'Hulda Graham', 'chance.koch@hotmail.com', 'Et corrupti cupiditate ullam quibusdam. Aut nam voluptatum saepe et inventore nam. Non doloremque consequatur laudantium quisquam facere reprehenderit.', 34, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(26, 'Miss Faye Stark Jr.', 'breitenberg.peyton@hayes.com', 'Quae ad qui voluptate culpa eum laboriosam quae. Dignissimos numquam fugit ratione molestiae alias maxime soluta expedita. Aspernatur quae atque omnis mollitia quis.', 37, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(27, 'Lloyd Emard', 'makenna77@gmail.com', 'Distinctio ipsam fuga molestiae. Quae totam neque soluta. Eos molestiae velit voluptatibus ipsum sequi. Illum quaerat praesentium ab nesciunt.', 37, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(28, 'Frida Cummings', 'little.verda@yahoo.com', 'Voluptatum qui delectus eos animi consequuntur. Minus debitis at iure ut perspiciatis velit quae sed. Suscipit non minus ullam. Ut quia sed ex voluptas.', 37, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(29, 'Wilford King', 'declan.braun@gmail.com', 'Magni cumque cumque laudantium est voluptatibus nulla sit. Sint officia quo deleniti qui quis. Occaecati velit nihil placeat. Voluptatem numquam unde voluptatem fugit.', 37, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(30, 'Rosemary Schulist', 'ida02@yahoo.com', 'Exercitationem dicta inventore odio inventore tenetur eum ullam. Delectus est nostrum ipsa explicabo vel fugiat cumque. Cum ut voluptatem ipsam similique velit. Omnis ipsam a non aut.', 44, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(31, 'Mozell O\'Reilly', 'wilford45@goyette.com', 'Odio veritatis aut minus veritatis ducimus. Maiores odit iusto illum ratione. Aut aut quas dicta amet in. Repudiandae voluptas sint qui et cumque.', 44, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(32, 'Lauryn Runte MD', 'graham62@dickinson.biz', 'Unde sit ut aperiam. Commodi rem qui et sunt. Est et saepe consequuntur explicabo facere quidem nisi.', 44, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(33, 'Dr. Jude Halvorson', 'stacey49@gmail.com', 'Deleniti totam laudantium necessitatibus non consequatur recusandae. Non aperiam et omnis incidunt. Et nihil non consequatur ipsa iure cum quisquam. Quisquam iste repudiandae sapiente harum.', 44, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(34, 'Melisa Borer V', 'heller.abel@bradtke.com', 'Saepe ad rerum laboriosam dolorem nihil. Est unde maiores assumenda accusamus. Facere laborum quod quia libero dolorum hic corporis. Velit sunt placeat maxime ea fugit quidem neque.', 49, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(35, 'Tamia Erdman PhD', 'stracke.clarissa@kling.com', 'Quo recusandae molestiae praesentium sed ratione. Corporis dolor nemo fugit quae. Omnis est recusandae deserunt harum illo.', 49, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(36, 'Jed Torp', 'gleichner.rogers@willms.com', 'Rerum ratione alias hic non molestiae perferendis saepe. Debitis amet est delectus voluptatibus delectus. Omnis ab delectus doloribus corrupti. Occaecati recusandae quis corrupti voluptates laudantium possimus. Et deleniti et qui qui aperiam.', 52, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(37, 'Julia Schumm', 'rmclaughlin@yahoo.com', 'Id et facilis eveniet. Officia enim fuga adipisci magnam ut sunt quod. Alias rerum maxime omnis harum dolores.', 52, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(38, 'Adaline Considine', 'lula.baumbach@blick.com', 'Ut quia eligendi autem temporibus quis. Ad eum fugit at eaque aut. Consequatur illum sunt vel soluta et sunt explicabo. Quo ducimus sed beatae eius porro asperiores. Sit placeat est fugiat dolorem ipsam explicabo aut.', 55, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(39, 'Michael Cummerata', 'lila.walker@yahoo.com', 'Veritatis architecto id non possimus. Amet maiores quos id reprehenderit. Vel illo dolor harum consequatur at vitae sequi. Ea dolor optio aut fuga minima architecto.', 55, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(40, 'tesr', 'aaa@gmail.com', 'fdad', 34, '2023-01-08 18:51:18', '2023-01-08 18:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_05_201200_create_categories_table', 1),
(4, '2019_06_05_201221_create_posts_table', 1),
(5, '2019_06_15_065429_create_comments_table', 1),
(6, '2019_07_06_093648_create_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `online` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `visits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `cover_path`, `content`, `online`, `user_id`, `visits`, `created_at`, `updated_at`) VALUES
(1, 1, 'Culpa quidem quasi aspernatur quam.', 'culpa-quidem-quasi-aspernatur-quam', 'http://localhost/cover.jpg', 'Debitis voluptatum illum consequatur qui dolor dolores quidem. Perspiciatis rerum quia similique tempore sit quis. Quidem explicabo voluptatibus quod esse atque nemo.', 1, 1, 31, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(2, 4, 'Iusto et dolore mollitia ut.', 'iusto-et-dolore-mollitia-ut', 'http://localhost/cover.jpg', 'Ipsum ipsa voluptatem aut inventore voluptatem non qui. Sapiente libero distinctio incidunt eligendi aperiam sunt. Sunt omnis ipsam perferendis aperiam. Labore officiis assumenda laborum maiores.', 1, 2, 15, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(3, 6, 'Sint earum aliquam magnam totam incidunt.', 'sint-earum-aliquam-magnam-totam-incidunt', 'http://localhost/storage/covers/cover.jpg', 'Est consequatur sit sed fugit enim enim. Asperiores et vitae doloremque similique. Aspernatur reiciendis exercitationem quia voluptas qui sed. Ut id vitae dolorum quis nostrum ut sunt.', 1, 3, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(4, 3, 'Sint quia est deleniti.', 'sint-quia-est-deleniti', 'http://localhost/cover.jpg', 'Dolorem veniam quia dolores velit omnis id. Pariatur dolorem totam temporibus quia voluptas atque pariatur. Dolorem possimus ut rerum voluptatem temporibus aut enim.', 1, 4, 43, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(5, 7, 'Est maxime voluptatem excepturi quia et.', 'est-maxime-voluptatem-excepturi-quia-et', 'http://localhost/storage/covers/cover.jpg', 'Eligendi qui animi consequuntur enim itaque et. Quae mollitia quo sint. Sit officiis odio laudantium repellendus dolores. Iure voluptatibus fuga aut quo at quos praesentium.', 1, 5, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(6, 2, 'Id porro quidem aut praesentium neque libero.', 'id-porro-quidem-aut-praesentium-neque-libero', 'http://localhost/cover.jpg', 'Aliquid saepe qui eius aut eveniet voluptas veritatis sequi. Non sit repudiandae sed dolorem officiis. Omnis dolor laborum facere harum. Eos animi quo culpa voluptatem.', 1, 6, 15, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(7, 8, 'Est qui dolores numquam qui veritatis.', 'est-qui-dolores-numquam-qui-veritatis', 'http://localhost/storage/covers/cover.jpg', 'Quia voluptates omnis at consequuntur qui autem culpa reiciendis. Omnis officia assumenda aspernatur dolorem sed. Magni deserunt quam voluptatem recusandae.', 1, 7, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(8, 9, 'Eveniet blanditiis incidunt corporis eveniet eveniet.', 'eveniet-blanditiis-incidunt-corporis-eveniet-eveniet', 'http://localhost/storage/covers/cover.jpg', 'Consequatur enim accusamus dolor magnam. Voluptas dicta voluptatem deserunt fugiat error aperiam aut. Earum laborum minus nihil sunt. Voluptate magnam sequi dignissimos id numquam similique.', 1, 8, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(9, 10, 'Delectus tempora ipsum ut laudantium odio.', 'delectus-tempora-ipsum-ut-laudantium-odio', 'http://localhost/storage/covers/cover.jpg', 'Recusandae debitis commodi quam est illo ut facilis aspernatur. Possimus vitae pariatur perspiciatis fugiat.', 1, 9, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(10, 11, 'Voluptates quas accusamus ut nemo qui voluptates.', 'voluptates-quas-accusamus-ut-nemo-qui-voluptates', 'http://localhost/storage/covers/cover.jpg', 'Porro adipisci ut quia facere sed in. Omnis at sequi tempore ab ullam. Veritatis dolore omnis sit ea quia. Consequatur qui esse vero voluptatibus et.', 1, 10, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(11, 2, 'Provident aut aliquam consequuntur est eveniet.', 'provident-aut-aliquam-consequuntur-est-eveniet', 'http://localhost/cover.jpg', 'Minus expedita et dicta quos. Itaque maiores voluptatem maiores ducimus. Reiciendis sit libero in officia. Ducimus dolores rem expedita sequi deserunt. Dolore eos reprehenderit est dolore.', 1, 11, 46, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(12, 12, 'Consequatur numquam quasi distinctio ea.', 'consequatur-numquam-quasi-distinctio-ea', 'http://localhost/storage/covers/cover.jpg', 'Ipsum odio qui amet animi aut temporibus aperiam recusandae. Sunt sint cupiditate alias officia. Libero corrupti magnam vero velit.', 1, 12, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(13, 13, 'Consectetur est dolorem explicabo consequuntur nihil nemo.', 'consectetur-est-dolorem-explicabo-consequuntur-nihil-nemo', 'http://localhost/storage/covers/cover.jpg', 'Nulla et repellendus cupiditate est rerum voluptatem. Magnam nihil ullam sint sunt a. Minus et dignissimos accusamus iure excepturi. Magnam tempore voluptatum nobis aut voluptas.', 1, 13, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(14, 14, 'Non non enim autem.', 'non-non-enim-autem', 'http://localhost/storage/covers/cover.jpg', 'Excepturi laudantium laboriosam voluptatem commodi. Minima nisi harum et nesciunt nam sit a. Unde temporibus reprehenderit sit est voluptas.', 1, 14, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(15, 1, 'Qui non iure fugit totam.', 'qui-non-iure-fugit-totam', 'http://localhost/cover.jpg', 'Sed ut quis odit nobis. Ut magnam explicabo explicabo beatae mollitia. Sunt ipsum dolor saepe commodi. Dolor quibusdam perferendis iste occaecati incidunt.', 1, 15, 13, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(16, 15, 'Repellat qui earum atque id amet.', 'repellat-qui-earum-atque-id-amet', 'http://localhost/storage/covers/cover.jpg', 'Tempore nihil odit omnis sit doloribus. Repellat in voluptas eos. Perspiciatis ipsa nulla et quasi aspernatur fuga dignissimos. Neque iusto nihil et laboriosam suscipit sint.', 1, 16, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(17, 16, 'In aut ad in soluta.', 'in-aut-ad-in-soluta', 'http://localhost/storage/covers/cover.jpg', 'Nihil at dolor ratione natus. Ipsa laboriosam voluptatem ut corporis nihil. Veniam suscipit eos animi sed non. In unde eos illo ratione hic voluptatibus qui.', 1, 17, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(18, 17, 'Similique molestiae sint eveniet soluta deleniti magni.', 'similique-molestiae-sint-eveniet-soluta-deleniti-magni', 'http://localhost/storage/covers/cover.jpg', 'Consequatur ut sint ut aut. Vel reiciendis eos debitis et aliquam. Aut doloremque officiis voluptatem.', 1, 18, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(19, 18, 'Quia quod alias exercitationem.', 'quia-quod-alias-exercitationem', 'http://localhost/storage/covers/cover.jpg', 'Quo ut rerum eveniet harum quia repellat soluta. Consequuntur vitae quis consequuntur incidunt. Voluptas dolor iste deserunt aut quia. Enim reiciendis error ullam dolores tempore.', 1, 19, 0, '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(20, 3, 'Optio ad minima dolorum vel non aut.', 'optio-ad-minima-dolorum-vel-non-aut', 'http://127.0.0.1:2222/user/Maths_topics.png', 'Iste tenetur incidunt enim pariatur error nam sed excepturi. Dolore sunt recusandae quos quia. Rerum enim ea quam fugit numquam.', 1, 1, 81, '2023-01-08 18:48:56', '2023-01-13 12:18:31'),
(21, 5, 'Autem et accusamus velit.', 'autem-et-accusamus-velit', 'http://localhost/cover.jpg', 'Esse et in dolor aut ut non nesciunt. Excepturi esse in et omnis facere aperiam laboriosam. Sint atque laboriosam atque sunt ut alias saepe.', 1, 21, 44, '2023-01-08 18:48:56', '2023-01-08 19:19:24'),
(22, 19, 'Vel sint nisi quidem neque et.', 'vel-sint-nisi-quidem-neque-et', 'http://localhost/storage/covers/cover.jpg', 'Assumenda aut dolor id rerum vel soluta quae. Incidunt ipsum est accusantium ut omnis fuga. Natus dolores id molestiae cumque officiis nihil. Vel suscipit quod perspiciatis at.', 1, 22, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(23, 20, 'Rerum est aut perspiciatis maxime expedita.', 'rerum-est-aut-perspiciatis-maxime-expedita', 'http://localhost/storage/covers/cover.jpg', 'Doloremque consequuntur et magni ut vel cupiditate. Natus corrupti quia ducimus dicta. Laudantium in perferendis iure quae consectetur rem omnis molestiae. Aut quis sed molestias ea.', 1, 23, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(24, 21, 'Qui iure tempora suscipit voluptatibus ut.', 'qui-iure-tempora-suscipit-voluptatibus-ut', 'http://localhost/storage/covers/cover.jpg', 'Ex sit quia porro aut et quos. Rerum dolorem dignissimos expedita autem non est. Dolor tenetur saepe sed nobis qui labore.', 1, 24, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(25, 3, 'Animi ex saepe in a rerum.', 'animi-ex-saepe-in-a-rerum', 'http://localhost/cover.jpg', 'Rerum omnis magnam at possimus. Nesciunt itaque et qui dolor. Eaque fugit libero earum quo. Deserunt sit quis corporis nesciunt optio praesentium.', 1, 25, 34, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(26, 22, 'Minima enim quaerat quibusdam et.', 'minima-enim-quaerat-quibusdam-et', 'http://localhost/storage/covers/cover.jpg', 'Rem eum quo qui nisi dolorem. Itaque enim est in nobis quae quo voluptates et. Ullam non animi similique quisquam velit.', 1, 26, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(27, 23, 'Eum eum id quo.', 'eum-eum-id-quo', 'http://localhost/storage/covers/cover.jpg', 'Delectus consequatur consectetur ut sit fugit et sequi. Explicabo quibusdam animi reprehenderit velit nesciunt. Dicta amet rerum soluta amet deleniti in voluptates.', 1, 27, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(28, 24, 'Incidunt asperiores quibusdam quae.', 'incidunt-asperiores-quibusdam-quae', 'http://localhost/storage/covers/cover.jpg', 'Deserunt praesentium non officiis velit excepturi. Aut officia explicabo ullam dolores autem aspernatur. Excepturi reiciendis vel magni vel.', 1, 28, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(29, 5, 'Dicta est occaecati pariatur.', 'dicta-est-occaecati-pariatur', 'http://localhost/cover.jpg', 'Illum incidunt illum doloribus doloribus. Debitis quia ratione perspiciatis. Rerum est minima delectus possimus. Repellendus impedit ipsa quas minima rerum impedit corrupti.', 1, 29, 11, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(30, 25, 'Velit placeat consequatur aspernatur quam magnam.', 'velit-placeat-consequatur-aspernatur-quam-magnam', 'http://localhost/storage/covers/cover.jpg', 'Ratione incidunt ut tempore qui voluptate ipsum possimus. Qui provident necessitatibus quia earum praesentium. Tempore atque sunt atque ut sed.', 1, 30, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(31, 26, 'Ut qui tempore accusantium quidem officia perspiciatis.', 'ut-qui-tempore-accusantium-quidem-officia-perspiciatis', 'http://localhost/storage/covers/cover.jpg', 'Eos in ducimus rerum dignissimos. Eos incidunt earum quia quaerat soluta modi aperiam. Non incidunt nisi doloribus asperiores laborum. Qui dicta sunt consequuntur velit sunt debitis.', 1, 31, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(32, 27, 'Ipsa dolores assumenda omnis dolor.', 'ipsa-dolores-assumenda-omnis-dolor', 'http://localhost/storage/covers/cover.jpg', 'Sint est sed eligendi expedita et qui alias ut. Magnam itaque sit qui laudantium. Sunt autem exercitationem qui ab provident enim aut.', 1, 32, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(33, 28, 'Veniam aliquid laborum ea ducimus.', 'veniam-aliquid-laborum-ea-ducimus', 'http://localhost/storage/covers/cover.jpg', 'Fugit et ratione et eum quia aut sunt. Cupiditate ex voluptatem perspiciatis non. Soluta nobis sit sit dolor non voluptatem.', 1, 33, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(34, 2, 'Quos perspiciatis aut culpa occaecati magni.', 'quos-perspiciatis-aut-culpa-occaecati-magni', 'http://localhost/cover.jpg', 'Officia hic eius adipisci et. Ab et ratione molestiae nulla eum ipsum vero. Sint et temporibus consequatur nam assumenda. A inventore consequatur libero reiciendis est soluta et.', 1, 34, 50, '2023-01-08 18:48:56', '2023-01-08 18:50:51'),
(35, 29, 'Eligendi rem nesciunt rerum fuga.', 'eligendi-rem-nesciunt-rerum-fuga', 'http://localhost/storage/covers/cover.jpg', 'Ducimus expedita quis facere voluptatibus suscipit officiis. Est quia sit autem pariatur ut ut. Pariatur autem nemo minima aut quia et.', 1, 35, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(36, 30, 'Et quod neque et optio.', 'et-quod-neque-et-optio', 'http://localhost/storage/covers/cover.jpg', 'Explicabo sed cum a nam ullam. Aperiam voluptas quae impedit fugit. Quibusdam qui sint sunt consequatur ut nihil. Reiciendis placeat itaque iste qui.', 1, 36, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(37, 3, 'Sunt sit laudantium adipisci et corrupti.', 'sunt-sit-laudantium-adipisci-et-corrupti', 'http://localhost/cover.jpg', 'Veniam aperiam tempore deleniti molestias soluta veritatis deleniti iure. Fugiat aperiam et ipsa ipsam rem fugiat. Nesciunt id totam natus necessitatibus.', 1, 37, 21, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(38, 31, 'Rerum rerum ut voluptatem.', 'rerum-rerum-ut-voluptatem', 'http://localhost/storage/covers/cover.jpg', 'Blanditiis dolores ea quia vitae labore. Corporis in et adipisci quibusdam quod. Quidem saepe exercitationem vitae rerum dolorum illo.', 1, 38, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(39, 32, 'Sed recusandae repudiandae repellendus.', 'sed-recusandae-repudiandae-repellendus', 'http://localhost/storage/covers/cover.jpg', 'Eum perferendis incidunt voluptatum. Unde odio voluptate beatae sint. Beatae sequi neque ipsum similique dolor sint aliquid.', 1, 39, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(40, 33, 'Et voluptatem reiciendis molestiae.', 'et-voluptatem-reiciendis-molestiae', 'http://localhost/storage/covers/cover.jpg', 'Quasi libero laborum velit aliquam consequatur mollitia laborum magni. Error quisquam ipsum tenetur et suscipit. Explicabo temporibus itaque rerum dolore possimus.', 1, 40, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(41, 34, 'Sint eos impedit quia veritatis quis ducimus.', 'sint-eos-impedit-quia-veritatis-quis-ducimus', 'http://localhost/storage/covers/cover.jpg', 'Dignissimos rem sint est ducimus id. Nisi nostrum sed excepturi et. Voluptas optio ut quia quia ipsa.', 1, 41, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(42, 3, 'Quisquam quis ipsa enim ut est.', 'quisquam-quis-ipsa-enim-ut-est', 'http://localhost/cover.jpg', 'Ut consequuntur excepturi nemo qui recusandae. Aliquam soluta ea corrupti tempore saepe. Aut autem velit inventore.', 1, 42, 2, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(43, 2, 'Quae aut dolores nihil ratione.', 'quae-aut-dolores-nihil-ratione', 'http://localhost/cover.jpg', 'Voluptate molestiae earum aut fuga qui suscipit. Et porro sint dicta optio. Facere possimus sed omnis itaque fugiat placeat. Ab ea tempore voluptatem voluptatem laborum rerum dolores.', 1, 43, 35, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(44, 2, 'Consequatur autem dolor aliquam sunt.', 'consequatur-autem-dolor-aliquam-sunt', 'http://localhost/cover.jpg', 'Enim similique qui aut fuga. Maxime explicabo rem quia et distinctio vero neque porro. Illum rerum ad animi quibusdam.', 1, 44, 23, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(45, 35, 'Ea voluptates alias aliquid.', 'ea-voluptates-alias-aliquid', 'http://localhost/storage/covers/cover.jpg', 'Fuga ipsam voluptas consequatur consectetur laborum. Et harum dolor dignissimos consectetur et. Placeat dignissimos vitae error quisquam.', 1, 45, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(46, 36, 'Eaque sint quis repudiandae est.', 'eaque-sint-quis-repudiandae-est', 'http://localhost/storage/covers/cover.jpg', 'Voluptates itaque esse magni nesciunt. Totam non quod nisi dolores. Natus officiis molestiae provident.', 1, 46, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(47, 37, 'Animi ut dolor explicabo.', 'animi-ut-dolor-explicabo', 'http://localhost/storage/covers/cover.jpg', 'Ratione laborum id rerum hic. Incidunt consectetur molestiae expedita eligendi non nemo debitis. Modi ut voluptas velit nemo culpa odit consequuntur. Quod impedit quis dolorem nam.', 1, 47, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(48, 38, 'Molestiae sed et nostrum.', 'molestiae-sed-et-nostrum', 'http://localhost/storage/covers/cover.jpg', 'Ex quia quibusdam officia dolor in dolorem omnis laborum. Molestiae et labore aut porro sed ut. In consequuntur incidunt et eos quis.', 1, 48, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(49, 3, 'Ut pariatur sed occaecati.', 'ut-pariatur-sed-occaecati', 'http://localhost/cover.jpg', 'Vel aut cum voluptatem sed totam sint. Dolor quia harum velit nihil exercitationem non est et. Nostrum quibusdam soluta provident omnis eum aliquid atque.', 1, 49, 43, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(50, 39, 'Autem reprehenderit possimus cum possimus animi modi.', 'autem-reprehenderit-possimus-cum-possimus-animi-modi', 'http://localhost/storage/covers/cover.jpg', 'Sequi nostrum quo et cumque alias. Quis ea sed hic veritatis ut quia.', 1, 50, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(51, 40, 'Consequatur voluptatibus cumque illum.', 'consequatur-voluptatibus-cumque-illum', 'http://localhost/storage/covers/cover.jpg', 'Delectus nemo voluptatem voluptatem ut. Et est rerum nemo incidunt ab ut animi. Nisi fugiat et ducimus est quo. Cupiditate aspernatur mollitia incidunt quas adipisci.', 1, 51, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(52, 2, 'Rerum quibusdam sed quibusdam.', 'rerum-quibusdam-sed-quibusdam', 'http://localhost/cover.jpg', 'Eum nemo dolor quibusdam velit et. Harum nobis est dolorum commodi fuga. Et hic porro voluptatem enim.', 1, 52, 37, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(53, 41, 'Laboriosam rem sit debitis sapiente.', 'laboriosam-rem-sit-debitis-sapiente', 'http://localhost/storage/covers/cover.jpg', 'Sint in rem tempora pariatur aperiam enim. Nam consequatur sed nihil sint voluptas labore. Porro a sed ducimus harum natus molestiae.', 1, 53, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(54, 42, 'Ut dolor alias qui deleniti dolor.', 'ut-dolor-alias-qui-deleniti-dolor', 'http://localhost/storage/covers/cover.jpg', 'Fuga id omnis quas illo corrupti sed. Est eaque sed hic modi aut quibusdam nesciunt. Voluptatem dolor dolore qui aut sapiente. Laborum dolor sed adipisci a cum a aut.', 1, 54, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(55, 2, 'Molestiae consectetur cum nihil nobis architecto harum.', 'molestiae-consectetur-cum-nihil-nobis-architecto-harum', 'http://localhost/cover.jpg', 'Quae voluptatem est hic quisquam ut eos. Sequi nostrum eaque voluptatum sit ut. Velit rerum magnam optio id.', 1, 55, 48, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(56, 43, 'Aliquam corporis ea sit consectetur ut.', 'aliquam-corporis-ea-sit-consectetur-ut', 'http://localhost/storage/covers/cover.jpg', 'Quisquam sunt qui voluptatem repellat. Quia quod ea facilis porro voluptas quaerat. Et vitae sint aliquam. Temporibus id non voluptas molestiae enim occaecati dolorem quae.', 1, 56, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(57, 44, 'Velit qui recusandae aut.', 'velit-qui-recusandae-aut', 'http://localhost/storage/covers/cover.jpg', 'Sunt similique nostrum omnis soluta eius aliquam eos consequatur. Amet ab voluptatem delectus enim eligendi id. Sequi commodi itaque exercitationem et. Voluptas et fuga ut ad odio.', 1, 57, 0, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(58, 4, 'Quas quam eaque recusandae.', 'quas-quam-eaque-recusandae', 'http://localhost/cover.jpg', 'Aut quia est sed animi consequatur nostrum. Minus ex quia et omnis repellendus adipisci eaque necessitatibus. Quaerat est quos eaque est. Minima ut nobis non autem quisquam impedit.', 1, 58, 20, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(59, 4, 'Repellendus temporibus eum ut aut mollitia veniam.', 'repellendus-temporibus-eum-ut-aut-mollitia-veniam', 'http://localhost/cover.jpg', 'Quos dolor omnis quis dolore repellat sint earum veniam. Saepe sunt itaque aut neque. Sunt beatae neque enim. Ut totam qui qui molestias ut assumenda.', 1, 59, 32, '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(60, 5, 'test', 'test', 'http://127.0.0.1:2222/storage/covers/1673624796.png', '{\"time\":1673624785638,\"blocks\":[{\"id\":\"Aevkgjck4o\",\"type\":\"paragraph\",\"data\":{\"text\":\"fdaesfsd\"}},{\"id\":\"fDNJRysfM3\",\"type\":\"paragraph\",\"data\":{\"text\":\"safdsad\"}},{\"id\":\"L9bt7vIAip\",\"type\":\"paragraph\",\"data\":{\"text\":\"dfasfds\"}},{\"id\":\"Npa6jmAUDr\",\"type\":\"paragraph\",\"data\":{\"text\":\"dfadsf\"}},{\"id\":\"QBLkaeoCmc\",\"type\":\"paragraph\",\"data\":{\"text\":\"dsafsdf\"}}],\"version\":\"2.26.4\"}', 1, 60, 11, '2023-01-13 13:46:36', '2023-01-13 15:07:13'),
(61, 5, 'testingslug', 'testingslug', 'http://127.0.0.1:2222/storage/covers/1673629792.png', '{\"time\":1673629710957,\"blocks\":[{\"id\":\"oeLV55Jroc\",\"type\":\"image\",\"data\":{\"file\":{\"url\":\"https://media.giphy.com/media/d2jioMTLON9bDogE/giphy.gif\"},\"caption\":\"test\",\"withBorder\":false,\"stretched\":true,\"withBackground\":false}},{\"id\":\"ddxwpjIFCE\",\"type\":\"paragraph\",\"data\":{\"text\":\"test\"}},{\"id\":\"V0HGSxayB_\",\"type\":\"paragraph\",\"data\":{\"text\":\"dfsafd\"}}],\"version\":\"2.26.4\"}', 1, 60, 8, '2023-01-13 15:09:52', '2023-01-13 15:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(20, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Larue Mohr', 'glover.ezekiel@example.org', '2023-01-08 18:48:55', '$2y$10$XV8pMrXc8myxrsjshZTrR.8quu7aXEaA1a8ptrJ/vb0UxDtBP6oyS', 'CqNHansmD1', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(2, 'Miss Heaven Hansen I', 'otillman@example.com', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g540beimmr', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(3, 'Kathryn Ebert DDS', 'franecki.harmon@example.com', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wrXB6zvXgr', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(4, 'Friedrich Ernser IV', 'hyatt.camryn@example.net', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JUqCucG2Tp', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(5, 'Miss Elinor Treutel Jr.', 'samantha.bradtke@example.net', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qi8rc87pXS', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(6, 'Mr. Gus Jaskolski', 'jaiden04@example.net', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZkylReBtgn', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(7, 'Dr. Elfrieda Jenkins PhD', 'awaters@example.com', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j8DG6qWIyn', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(8, 'Merl Lind II', 'wrosenbaum@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uNL42J91wp', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(9, 'Kaci Schmidt', 'ppadberg@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XSLFP5JhkZ', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(10, 'Loraine Casper', 'tmuller@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7OQKkT4hN1', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(11, 'Jennyfer Swift Sr.', 'clehner@example.com', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mqyQaOHzTc', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(12, 'Kendall Kihn', 'reva53@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9GxYLXTgix', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(13, 'Rhea Glover', 'stuart.spinka@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Xp2JZ7iT4', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(14, 'Schuyler Williamson', 'wiegand.dalton@example.net', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '77d7WmgB3k', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(15, 'Melyssa Will', 'taryn96@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GJPgcZdeaL', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(16, 'Mrs. Lavina Conn', 'wkassulke@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hfkx7ecnwe', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(17, 'Gilberto Konopelski MD', 'psatterfield@example.net', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bx2LkDJKlT', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(18, 'Dr. Emilio Reichert', 'hilpert.tressie@example.com', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PMzpURc1rJ', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(19, 'Craig Jakubowski', 'asha87@example.org', '2023-01-08 18:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2aRTM6pMid', '2023-01-08 18:48:55', '2023-01-08 18:48:55'),
(20, 'Salvador O\'Reilly', 'palma71@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OEGjKbsQbt', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(21, 'Mercedes Schoen', 'soledad.gerhold@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dtsrMJSQf9', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(22, 'Percy Spencer', 'joannie.schulist@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zQNSH9pR7m', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(23, 'Saige Walter', 'priscilla36@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x4zcU1I0d2', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(24, 'Blaise Volkman', 'bogisich.einar@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8JppWPaIrc', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(25, 'Dr. Keshawn Stiedemann IV', 'amy01@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XprBHuySob', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(26, 'Katelin Ziemann', 'cassie13@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yYac6uaJvq', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(27, 'Prof. Antonetta Waters', 'bogan.cesar@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9SyOK0BcXu', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(28, 'Dr. Jaylen Stehr V', 'heath.moore@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5y2wIyzDxR', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(29, 'Aron Hane', 'felipe60@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5bHL0wR1e8', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(30, 'Frank Funk', 'charlie55@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k30dDTGGX7', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(31, 'Dr. Edwardo Cronin', 'floyd.halvorson@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1CR5YxPjfv', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(32, 'Destiny Mohr', 'ankunding.leonor@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JNitriW2El', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(33, 'Prof. Edison Emmerich', 'vbartell@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kV0OXI7dEb', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(34, 'Miss Anabelle Hirthe Sr.', 'rbogan@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5D6xhUraKR', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(35, 'Dr. Carley Beahan III', 'eondricka@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nIdhoWQBQ5', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(36, 'Prof. Millie Abshire', 'zmuller@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '23Yry0ysSX', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(37, 'Prof. Christy Koepp', 'rborer@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mdXeZNCV7s', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(38, 'Vincent Stanton', 'timmothy41@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1mjCWpwhDz', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(39, 'Sydney Fahey', 'saul.rogahn@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VirQfxMdtA', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(40, 'Mustafa Reichel PhD', 'ward.krystina@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lwqQRqn4Ha', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(41, 'Prof. Anastacio Shields', 'magnolia.krajcik@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lRooeLEC1t', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(42, 'Prof. Obie Hilpert II', 'ford79@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y6d8iSRsK7', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(43, 'Michel Bosco', 'chyna.kerluke@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xAMbGSSK35', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(44, 'Casimir Tremblay', 'abel.altenwerth@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HdBxuNuguu', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(45, 'Rowena Thompson PhD', 'mia62@example.net', '2023-01-08 18:48:56', '$2y$10$XV8pMrXc8myxrsjshZTrR.8quu7aXEaA1a8ptrJ/vb0UxDtBP6oyS', '2KpmF0HGz0', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(46, 'Adan Gibson', 'hazle.lindgren@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gpBXZtxbT1', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(47, 'Ms. Else Upton', 'brekke.kirk@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fTCjPAx5cS', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(48, 'Ms. Patience Corwin II', 'pnikolaus@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xczrLGBbEP', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(49, 'Prof. Clark Schultz PhD', 'jkoepp@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NVzVBIlkaB', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(50, 'Kariane Glover III', 'shyanne.kemmer@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1JNsN0cLAs', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(51, 'Buck Herman', 'mccullough.jovanny@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yRSxNHwVQA', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(52, 'Quinn Hegmann Jr.', 'herman.eveline@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vm8Y0gUXS0', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(53, 'Victor Schneider', 'jett.schaden@example.org', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZNHGeFnqnl', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(54, 'Derrick Oberbrunner', 'laverna.pollich@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LD7LYPqHTB', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(55, 'Mitchell Pouros', 'kathleen.treutel@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TOj7HOC4zz', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(56, 'Faustino Mayer Sr.', 'vivienne13@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3czBOFqxkB', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(57, 'Prof. Myrl Simonis', 'fdoyle@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6R0mVoyCJW', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(58, 'Maci Dickens', 'eorn@example.com', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cdBzULdOhz', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(59, 'Rodrick Ryan', 'vernice.rath@example.net', '2023-01-08 18:48:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LOXCYvyEj2', '2023-01-08 18:48:56', '2023-01-08 18:48:56'),
(60, 'John Doe', 'john@example.com', '2023-01-08 18:48:56', '$2y$10$XV8pMrXc8myxrsjshZTrR.8quu7aXEaA1a8ptrJ/vb0UxDtBP6oyS', 'OLuVvxwob1', '2023-01-08 18:48:56', '2023-01-08 18:48:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_slug_index` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_slug_index` (`slug`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_slug_index` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
