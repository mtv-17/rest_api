SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `plants`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'JP', '2021-08-11 19:31:15', '2021-08-11 19:31:15'),
(2, 'KR', '2021-08-11 19:31:18', '2021-08-11 19:31:18'),
(3, 'VN', '2021-08-11 19:31:20', '2021-08-11 19:31:20'),
(4, 'MX', '2021-08-11 19:31:23', '2021-08-11 19:31:23'),
(5, 'MG', '2021-08-11 19:31:24', '2021-08-11 19:31:24'),
(6, 'AO', '2021-08-11 19:31:30', '2021-08-11 19:31:30'),
(7, 'ZM', '2021-08-11 19:31:36', '2021-08-11 19:31:36');

-- --------------------------------------------------------

--
-- Структура таблицы `families`
--

CREATE TABLE `families` (
  `id` int(11) NOT NULL,
  `family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `families`
--

INSERT INTO `families` (`id`, `family`, `created_at`, `updated_at`) VALUES
(1, 'Розовые', '2021-08-11 19:29:38', '2021-08-11 19:29:38'),
(2, 'Лавровые', '2021-08-11 19:30:04', '2021-08-11 19:30:04'),
(3, 'Асфоделовые', '2021-08-11 19:30:50', '2021-08-11 19:30:50'),
(4, 'Бобовые', '2021-08-11 19:31:02', '2021-08-11 19:31:02'),
(5, 'Мелиевые', '2021-08-11 19:31:08', '2021-08-11 19:31:08');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_11_233336_create_families_table', 1),
(2, '2021_08_11_233348_create_countries_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `plant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plants`
--

INSERT INTO `plants` (`id`, `plant`, `family`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Абрикос японский', 1, 'Дерево высотой 5—7 м, иногда кустарник', '0000-00-00 00:00:00', '2021-08-12 18:27:28'),
(2, 'Авока́до', 2, 'быстрорастущее дерево, достигающее в высоту 20 м', '0000-00-00 00:00:00', '2021-08-12 18:27:28'),
(3, 'Ало́э', 3, 'Короткий стебель (или ствол)', '0000-00-00 00:00:00', '2021-08-12 18:27:28'),
(4, 'Ака́ция', 4, 'Акации относятся к числу наиболее быстрорастущих ', '0000-00-00 00:00:00', '2021-08-12 18:27:28'),
(5, 'Аглайя', 5, 'Деревья или кустарники высотой от 3 до 40 м', '0000-00-00 00:00:00', '2021-08-12 18:27:28');

-- --------------------------------------------------------

--
-- Структура таблицы `plants_countries`
--

CREATE TABLE `plants_countries` (
  `id` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_plant` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plants_countries`
--

INSERT INTO `plants_countries` (`id`, `id_country`, `id_plant`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(2, 2, 1, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(3, 1, 1, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(4, 4, 2, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(5, 6, 2, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(7, 7, 2, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(8, 5, 3, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(9, 4, 4, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(10, 3, 4, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(11, 2, 4, '2021-08-12 18:28:01', '2021-08-12 18:28:19'),
(12, 1, 5, '2021-08-12 18:28:01', '2021-08-12 18:28:19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`country`(191));

--
-- Индексы таблицы `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `family` (`family`);

--
-- Индексы таблицы `plants_countries`
--
ALTER TABLE `plants_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_plant` (`id_plant`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `families`
--
ALTER TABLE `families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `plants_countries`
--
ALTER TABLE `plants_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`family`) REFERENCES `families` (`id`);

--
-- Ограничения внешнего ключа таблицы `plants_countries`
--
ALTER TABLE `plants_countries`
  ADD CONSTRAINT `plants_countries_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `plants_countries_ibfk_2` FOREIGN KEY (`id_plant`) REFERENCES `plants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
