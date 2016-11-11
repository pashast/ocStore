-- H1 --
ALTER TABLE `oc_category_description` ADD `meta_h1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `meta_title`;
ALTER TABLE `oc_information_description` ADD `meta_h1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `meta_title`;
ALTER TABLE `oc_product_description` ADD `meta_h1` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `meta_title`;

-- Main category--
ALTER TABLE `oc_product_to_category` ADD `main_category` tinyint(1) NOT NULL DEFAULT '0';

-- Seo pro--
INSERT INTO `oc_url_alias` (`query`, `keyword`) VALUES
('account/voucher', 'vouchers'),
('account/wishlist', 'wishlist'),
('account/account', 'my-account'),
('account/login', 'login'),
('account/logout', 'logout'),
('account/order', 'order-history'),
('account/newsletter', 'newsletter'),
('account/return/insert', 'request-return'),
('account/forgotten', 'forgot-password'),
('account/download', 'downloads'),
('account/return', 'returns'),
('account/transaction', 'transactions'),
('account/register', 'create-account'),
('account/edit', 'edit-account'),
('account/password', 'change-password'),
('account/address', 'address-book'),
('account/reward', 'reward-points'),
('account/return/add', 'add-return'),
('product/compare', 'compare-products'),
('product/search', 'search'),
('product/special', 'specials'),
('product/manufacturer', 'brands'),
('information/contact', 'contact-us'),
('information/sitemap', 'sitemap'),
('affiliate/account', 'affiliates'),
('affiliate/edit', 'edit-affiliate-account'),
('affiliate/password', 'change-affiliate-password'),
('affiliate/payment', 'affiliate-payment-options'),
('affiliate/tracking', 'affiliate-tracking-code'),
('affiliate/transaction', 'affiliate-transactions'),
('affiliate/logout', 'affiliate-logout'),
('affiliate/forgotten', 'affiliate-forgot-password'),
('affiliate/register', 'create-affiliate-account'),
('affiliate/login', 'affiliate-login'),
('common/home', '');

-- Order status--
DELETE FROM `oc_order_status` WHERE `language_id` = 2;
INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Ожидание'),
(2, 2, 'В обработке'),
(3, 2, 'Доставлено'),
(7, 2, 'Отменено'),
(5, 2, 'Сделка завершена'),
(8, 2, 'Возврат'),
(9, 2, 'Отмена и аннулирование'),
(10, 2, 'Неудавшийся'),
(11, 2, 'Возмещенный'),
(12, 2, 'Полностью измененный'),
(13, 2, 'Полный возврат');

-- Return reason --
DELETE FROM `oc_return_reason` WHERE `language_id` = 2;
INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 2, 'Получен/доставлен неисправным (сломанным)'),
(2, 2, 'Получен не тот (ошибочный) товар'),
(4, 2, 'Ошибочный, пожалуйста, укажите/приложите подробности'),
(5, 2, 'Другое (другая причина), пожалуйста, укажите/приложите подробности');

-- Return status --
DELETE FROM `oc_return_status` WHERE `language_id` = 2;
INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Рассматриваемый / находящийся в процессе рассмотрения'),
(3, 2, 'Готов (к отправке) / или Завершен'),
(2, 2, 'Заказ "висит" в ожидании поступления товаров, которых в данный момент нет на складе.');

-- Stock status --
DELETE FROM `oc_stock_status` WHERE `language_id` = 2;
INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'В наличии'),
(8, 2, 'Предзаказ'),
(5, 2, 'Нет в наличии'),
(6, 2, 'Ожидание 2-3 дня');

-- Voucher theme --
DELETE FROM `oc_voucher_theme_description` WHERE `language_id` = 2;
INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 2, 'Рождество'),
(7, 2, 'День рождения'),
(8, 2, 'Основной');

-- Country --
UPDATE `oc_country` SET `name` = 'Украина' WHERE `country_id` = 220;
UPDATE `oc_country` SET `name` = 'Российская Федерация' WHERE `country_id` = 176;

-- Zone UA--
DELETE FROM `oc_zone` WHERE `country_id` = 220;
INSERT INTO `oc_zone` (`country_id`, `name`, `code`, `status`) VALUES
(220, 'Черкасская область', '71', 1),
(220, 'Черниговская область', '74', 1),
(220, 'Черновицкая область', '77', 1),
(220, 'Автономная Республика Крым', '43', 1),
(220, 'Днепропетровская область', '12', 1),
(220, 'Донецкая область', '14', 1),
(220, 'Ивано-Франковская область', '26', 1),
(220, 'Херсонская область', '65', 1),
(220, 'Хмельницкая область', '68', 1),
(220, 'Кировоградская область', '35', 1),
(220, 'Киев', '30', 1),
(220, 'Киевская область', '32', 1),
(220, 'Луганская область', '09', 1),
(220, 'Львовская область', '46', 1),
(220, 'Николаевская область', '48', 1),
(220, 'Одесская область', '51', 1),
(220, 'Полтавская область', '53', 1),
(220, 'Ровненская область', '56', 1),
(220, 'Севастополь', '40', 1),
(220, 'Сумская область', '59', 1),
(220, 'Тернопольская область', '61', 1),
(220, 'Винницкая область', '05', 1),
(220, 'Волынская область', '07', 1),
(220, 'Закарпатская область', '21', 1),
(220, 'Запорожская область', '23', 1),
(220, 'Житомирская область', '18', 1)
(220, 'Харьковская область', '63', 1);

-- Zone RU--
DELETE FROM `oc_zone` WHERE `country_id` = 176;
INSERT INTO `oc_zone` (`country_id`, `name`, `code`, `status`) VALUES
(176, 'Республика Хакасия', 'KK', 1),
(176, 'Московская область', 'MOS', 1),
(176, 'Чукотский АО', 'CHU', 1),
(176, 'Архангельская область', 'ARK', 1),
(176, 'Астраханская область', 'AST', 1),
(176, 'Алтайский край', 'ALT', 1),
(176, 'Белгородская область', 'BEL', 1),
(176, 'Еврейская АО', 'YEV', 1),
(176, 'Амурская область', 'AMU', 1),
(176, 'Брянская область', 'BRY', 1),
(176, 'Чувашская Республика', 'CU', 1),
(176, 'Челябинская область', 'CHE', 1),
(176, 'Карачаево-Черкеcсия', 'KC', 1),
(176, 'Забайкальский край', 'ZAB', 1),
(176, 'Ленинградская область', 'LEN', 1),
(176, 'Республика Калмыкия', 'KL', 1),
(176, 'Сахалинская область', 'SAK', 1),
(176, 'Республика Алтай', 'AL', 1),
(176, 'Чеченская Республика', 'CE', 1),
(176, 'Иркутская область', 'IRK', 1),
(176, 'Ивановская область', 'IVA', 1),
(176, 'Удмуртская Республика', 'UD', 1),
(176, 'Калининградская область', 'KGD', 1),
(176, 'Калужская область', 'KLU', 1),
(176, 'Республика Татарстан', 'TA', 1),
(176, 'Кемеровская область', 'KEM', 1),
(176, 'Хабаровский край', 'KHA', 1),
(176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(176, 'Костромская область', 'KOS', 1),
(176, 'Краснодарский край', 'KDA', 1),
(176, 'Красноярский край', 'KYA', 1),
(176, 'Курганская область', 'KGN', 1),
(176, 'Курская область', 'KRS', 1),
(176, 'Республика Тыва', 'TY', 1),
(176, 'Липецкая область', 'LIP', 1),
(176, 'Магаданская область', 'MAG', 1),
(176, 'Республика Дагестан', 'DA', 1),
(176, 'Республика Адыгея', 'AD', 1),
(176, 'Москва', 'MOW', 1),
(176, 'Мурманская область', 'MUR', 1),
(176, 'Республика Кабардино-Балкария', 'KB', 1),
(176, 'Ненецкий АО', 'NEN', 1),
(176, 'Республика Ингушетия', 'IN', 1),
(176, 'Нижегородская область', 'NIZ', 1),
(176, 'Новгородская область', 'NGR', 1),
(176, 'Новосибирская область', 'NVS', 1),
(176, 'Омская область', 'OMS', 1),
(176, 'Орловская область', 'ORL', 1),
(176, 'Оренбургская область', 'ORE', 1),
(176, 'Пензенская область', 'PNZ', 1),
(176, 'Пермский край', 'PER', 1),
(176, 'Камчатский край', 'KAM', 1),
(176, 'Республика Карелия', 'KR', 1),
(176, 'Псковская область', 'PSK', 1),
(176, 'Ростовская область', 'ROS', 1),
(176, 'Рязанская область', 'RYA', 1),
(176, 'Ямало-Ненецкий АО', 'YAN', 1),
(176, 'Самарская область', 'SAM', 1),
(176, 'Республика Мордовия', 'MO', 1),
(176, 'Саратовская область', 'SAR', 1),
(176, 'Смоленская область', 'SMO', 1),
(176, 'Санкт-Петербург', 'SPE', 1),
(176, 'Ставропольский край', 'STA', 1),
(176, 'Республика Коми', 'KO', 1),
(176, 'Тамбовская область', 'TAM', 1),
(176, 'Томская область', 'TOM', 1),
(176, 'Тульская область', 'TUL', 1),
(176, 'Тверская область', 'TVE', 1),
(176, 'Тюменская область', 'TYU', 1),
(176, 'Республика Башкортостан', 'BA', 1),
(176, 'Ульяновская область', 'ULY', 1),
(176, 'Республика Бурятия', 'BU', 1),
(176, 'Республика Северная Осетия', 'SE', 1),
(176, 'Владимирская область', 'VLA', 1),
(176, 'Приморский край', 'PRI', 1),
(176, 'Волгоградская область', 'VGG', 1),
(176, 'Вологодская область', 'VLG', 1),
(176, 'Воронежская область', 'VOR', 1),
(176, 'Кировская область', 'KIR', 1),
(176, 'Республика Саха', 'SA', 1),
(176, 'Ярославская область', 'YAR', 1),
(176, 'Свердловская область', 'SVE', 1),
(176, 'Республика Марий Эл', 'ME', 1);