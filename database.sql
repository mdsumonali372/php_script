-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2022 at 05:56 AM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `convfuzq_exdbweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_content`
--

CREATE TABLE `exchangerix_content` (
  `content_id` int(11) UNSIGNED NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_location` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_content`
--

INSERT INTO `exchangerix_content` (`content_id`, `language`, `name`, `link_title`, `title`, `description`, `page_location`, `page_url`, `meta_description`, `meta_keywords`, `status`, `modified`) VALUES
(1, 'english', 'home', '', 'Home page', '<h1 style=\'border:none;text-align:center;\'>Welcome to our exchange site!</h1>\r\n<p style=\'text-align: justify;\'>We have the best rates. Simply start your exchange right now. Sign up for our parther program and earn commission from each exchange. The earnings are credited in your account instantly and can be withdrawn right away.</p>\r\n<br/>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(2, 'english', 'aboutus', '', 'About Us', '<p>Information about site.</p>', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(3, 'english', 'howitworks', '', 'How it works', '<p>how it works information</p>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(4, 'english', 'help', '', 'Help', 'some help information here (you can edit from content admin area)', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(5, 'english', 'terms', '', 'Terms and Conditions', '<p>site\'s terms and conditions, edit from admin panel</p>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(6, 'english', 'privacy', '', 'Privacy Policy', '<p>privacy policy information, edit from admin panel</p>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(7, 'english', 'contact', '', 'Contact Us', '<p>If you have any questions, please contact us.</p>\r\n<p>Email: support@yourdomain.com</p>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(8, 'english', 'affiliate', '', 'Affiliate Program', '<p>Do you have an account? Then you\'re already an affiliate! Just sign in to your account and start earning money by referring visitors to our site. It\'s fast, FREE and as easy as telling us how you want to be paid! You will receive commission of the fees charged for all exchange orders made by your referrals. The earnings are credited in your account instantly and can be withdrawn right away.</p>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(9, 'english', 'payment_success', '', 'Successful Payment', '<h3>Thank you for payment!</h3>', '', '', '', '', 'active', '2020-09-19 14:08:08'),
(10, 'english', 'payment_declined', '', 'Payment Declined', '<h3>Your payment was declined.</h3> <p>Please try to make it again our you can contact us to resolve this problem.</p>', '', '', '', '', 'active', '2020-09-19 14:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_countries`
--

CREATE TABLE `exchangerix_countries` (
  `country_id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signup` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_countries`
--

INSERT INTO `exchangerix_countries` (`country_id`, `code`, `name`, `currency`, `signup`, `sort_order`, `status`) VALUES
(1, 'AF', 'Afghanistan', '', 1, 0, 'active'),
(2, 'AX', 'Aland Islands', '', 1, 0, 'active'),
(3, 'AL', 'Albania', '', 1, 0, 'active'),
(4, 'DZ', 'Algeria', '', 1, 0, 'active'),
(5, 'AS', 'American Samoa', '', 1, 0, 'active'),
(6, 'AD', 'Andorra', '', 1, 0, 'active'),
(7, 'AO', 'Angola', '', 1, 0, 'active'),
(8, 'AI', 'Anguilla', '', 1, 0, 'active'),
(9, 'AG', 'Antigua and Barbuda', '', 1, 0, 'active'),
(10, 'AR', 'Argentina', '', 1, 0, 'active'),
(11, 'AM', 'Armenia', '', 1, 0, 'active'),
(12, 'AW', 'Aruba', '', 1, 0, 'active'),
(13, 'AU', 'Australia', '', 1, 0, 'active'),
(14, 'AT', 'Austria', '', 1, 0, 'active'),
(15, 'AZ', 'Azerbaijan', '', 1, 0, 'active'),
(16, 'BS', 'Bahamas', '', 1, 0, 'active'),
(17, 'BH', 'Bahrain', '', 1, 0, 'active'),
(18, 'BD', 'Bangladesh', '', 1, 0, 'active'),
(19, 'BB', 'Barbados', '', 1, 0, 'active'),
(20, 'BY', 'Belarus', '', 1, 0, 'active'),
(21, 'BE', 'Belgium', '', 1, 0, 'active'),
(22, 'BZ', 'Belize', '', 1, 0, 'active'),
(23, 'BJ', 'Benin', '', 1, 0, 'active'),
(24, 'BM', 'Bermuda', '', 1, 0, 'active'),
(25, 'BT', 'Bhutan', '', 1, 0, 'active'),
(26, 'BO', 'Bolivia', '', 1, 0, 'active'),
(27, 'BA', 'Bosnia and Herzegovina', '', 1, 0, 'active'),
(28, 'BW', 'Botswana', '', 1, 0, 'active'),
(29, 'BV', 'Bouvet Island', '', 1, 0, 'active'),
(30, 'BR', 'Brazil', '', 1, 0, 'active'),
(31, 'IO', 'British Indian Ocean Territory', '', 1, 0, 'active'),
(32, 'BN', 'Brunei Darussalam', '', 1, 0, 'active'),
(33, 'BG', 'Bulgaria', '', 1, 0, 'active'),
(34, 'BF', 'Burkina Faso', '', 1, 0, 'active'),
(35, 'BI', 'Burundi', '', 1, 0, 'active'),
(36, 'KH', 'Cambodia', '', 1, 0, 'active'),
(37, 'CM', 'Cameroon', '', 1, 0, 'active'),
(38, 'CA', 'Canada', '', 1, 0, 'active'),
(39, 'CV', 'Cape Verde', '', 1, 0, 'active'),
(40, 'KY', 'Cayman Islands', '', 1, 0, 'active'),
(41, 'CF', 'Central African Republic', '', 1, 0, 'active'),
(42, 'TD', 'Chad', '', 1, 0, 'active'),
(43, 'CL', 'Chile', '', 1, 0, 'active'),
(44, 'CN', 'China', '', 1, 0, 'active'),
(45, 'CX', 'Christmas Island', '', 1, 0, 'active'),
(46, 'CC', 'Cocos (Keeling) Islands', '', 1, 0, 'active'),
(47, 'CO', 'Colombia', '', 1, 0, 'active'),
(48, 'KM', 'Comoros', '', 1, 0, 'active'),
(49, 'CG', 'Congo', '', 1, 0, 'active'),
(50, 'CD', 'Congo, The Democratic Republic of the', '', 1, 0, 'active'),
(51, 'CK', 'Cook Islands', '', 1, 0, 'active'),
(52, 'CR', 'Costa Rica', '', 1, 0, 'active'),
(53, 'CI', 'Cote D\'Ivoire', '', 1, 0, 'active'),
(54, 'HR', 'Croatia', '', 1, 0, 'active'),
(55, 'CU', 'Cuba', '', 1, 0, 'active'),
(56, 'CY', 'Cyprus', '', 1, 0, 'active'),
(57, 'CZ', 'Czech Republic', '', 1, 0, 'active'),
(58, 'DK', 'Denmark', '', 1, 0, 'active'),
(59, 'DJ', 'Djibouti', '', 1, 0, 'active'),
(60, 'DM', 'Dominica', '', 1, 0, 'active'),
(61, 'DO', 'Dominican Republic', '', 1, 0, 'active'),
(62, 'EC', 'Ecuador', '', 1, 0, 'active'),
(63, 'EG', 'Egypt', '', 1, 0, 'active'),
(64, 'SV', 'El Salvador', '', 1, 0, 'active'),
(65, 'GQ', 'Equatorial Guinea', '', 1, 0, 'active'),
(66, 'ER', 'Eritrea', '', 1, 0, 'active'),
(67, 'EE', 'Estonia', '', 1, 0, 'active'),
(68, 'ET', 'Ethiopia', '', 1, 0, 'active'),
(69, 'FK', 'Falkland Islands (Malvinas)', '', 1, 0, 'active'),
(70, 'FO', 'Faroe Islands', '', 1, 0, 'active'),
(71, 'FJ', 'Fiji', '', 1, 0, 'active'),
(72, 'FI', 'Finland', '', 1, 0, 'active'),
(73, 'FR', 'France', '', 1, 0, 'active'),
(74, 'GF', 'French Guiana', '', 1, 0, 'active'),
(75, 'PF', 'French Polynesia', '', 1, 0, 'active'),
(76, 'TF', 'French Southern Territories', '', 1, 0, 'active'),
(77, 'GA', 'Gabon', '', 1, 0, 'active'),
(78, 'GM', 'Gambia', '', 1, 0, 'active'),
(79, 'GE', 'Georgia', '', 1, 0, 'active'),
(80, 'DE', 'Germany', '', 1, 0, 'active'),
(81, 'GH', 'Ghana', '', 1, 0, 'active'),
(82, 'GI', 'Gibraltar', '', 1, 0, 'active'),
(83, 'GR', 'Greece', '', 1, 0, 'active'),
(84, 'GL', 'Greenland', '', 1, 0, 'active'),
(85, 'GD', 'Grenada', '', 1, 0, 'active'),
(86, 'GP', 'Guadeloupe', '', 1, 0, 'active'),
(87, 'GU', 'Guam', '', 1, 0, 'active'),
(88, 'GT', 'Guatemala', '', 1, 0, 'active'),
(89, 'GN', 'Guinea', '', 1, 0, 'active'),
(90, 'GW', 'Guinea-Bissau', '', 1, 0, 'active'),
(91, 'GY', 'Guyana', '', 1, 0, 'active'),
(92, 'HT', 'Haiti', '', 1, 0, 'active'),
(93, 'HM', 'Heard Island and McDonald Islands', '', 1, 0, 'active'),
(94, 'VA', 'Holy See (Vatican City State)', '', 1, 0, 'active'),
(95, 'HN', 'Honduras', '', 1, 0, 'active'),
(96, 'HK', 'Hong Kong', '', 1, 0, 'active'),
(97, 'HU', 'Hungary', '', 1, 0, 'active'),
(98, 'IS', 'Iceland', '', 1, 0, 'active'),
(99, 'IN', 'India', '', 1, 0, 'active'),
(100, 'ID', 'Indonesia', '', 1, 0, 'active'),
(101, 'IR', 'Iran, Islamic Republic of', '', 1, 0, 'active'),
(102, 'IQ', 'Iraq', '', 1, 0, 'active'),
(103, 'IE', 'Ireland', '', 1, 0, 'active'),
(104, 'IL', 'Israel', '', 1, 0, 'active'),
(105, 'IT', 'Italy', '', 1, 0, 'active'),
(106, 'JM', 'Jamaica', '', 1, 0, 'active'),
(107, 'JP', 'Japan', '', 1, 0, 'active'),
(108, 'JO', 'Jordan', '', 1, 0, 'active'),
(109, 'KZ', 'Kazakhstan', '', 1, 0, 'active'),
(110, 'KE', 'Kenya', '', 1, 0, 'active'),
(111, 'KI', 'Kiribati', '', 1, 0, 'active'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', '', 1, 0, 'active'),
(113, 'KR', 'Korea, Republic of', '', 1, 0, 'active'),
(114, 'KW', 'Kuwait', '', 1, 0, 'active'),
(115, 'KG', 'Kyrgyzstan', '', 1, 0, 'active'),
(116, 'LA', 'Lao People\'s Democratic Republic', '', 1, 0, 'active'),
(117, 'LV', 'Latvia', '', 1, 0, 'active'),
(118, 'LB', 'Lebanon', '', 1, 0, 'active'),
(119, 'LS', 'Lesotho', '', 1, 0, 'active'),
(120, 'LR', 'Liberia', '', 1, 0, 'active'),
(121, 'LY', 'Libyan Arab Jamahiriya', '', 1, 0, 'active'),
(122, 'LI', 'Liechtenstein', '', 1, 0, 'active'),
(123, 'LT', 'Lithuania', '', 1, 0, 'active'),
(124, 'LU', 'Luxembourg', '', 1, 0, 'active'),
(125, 'MO', 'Macao', '', 1, 0, 'active'),
(126, 'MK', 'Macedonia', '', 1, 0, 'active'),
(127, 'MG', 'Madagascar', '', 1, 0, 'active'),
(128, 'MW', 'Malawi', '', 1, 0, 'active'),
(129, 'MY', 'Malaysia', '', 1, 0, 'active'),
(130, 'MV', 'Maldives', '', 1, 0, 'active'),
(131, 'ML', 'Mali', '', 1, 0, 'active'),
(132, 'MT', 'Malta', '', 1, 0, 'active'),
(133, 'MH', 'Marshall Islands', '', 1, 0, 'active'),
(134, 'MQ', 'Martinique', '', 1, 0, 'active'),
(135, 'MR', 'Mauritania', '', 1, 0, 'active'),
(136, 'MU', 'Mauritius', '', 1, 0, 'active'),
(137, 'YT', 'Mayotte', '', 1, 0, 'active'),
(138, 'MX', 'Mexico', '', 1, 0, 'active'),
(139, 'FM', 'Micronesia, Federated States of', '', 1, 0, 'active'),
(140, 'MD', 'Moldova, Republic of', '', 1, 0, 'active'),
(141, 'MC', 'Monaco', '', 1, 0, 'active'),
(142, 'MN', 'Mongolia', '', 1, 0, 'active'),
(143, 'ME', 'Montenegro', '', 1, 0, 'active'),
(144, 'MS', 'Montserrat', '', 1, 0, 'active'),
(145, 'MA', 'Morocco', '', 1, 0, 'active'),
(146, 'MZ', 'Mozambique', '', 1, 0, 'active'),
(147, 'MM', 'Myanmar', '', 1, 0, 'active'),
(148, 'NA', 'Namibia', '', 1, 0, 'active'),
(149, 'NR', 'Nauru', '', 1, 0, 'active'),
(150, 'NP', 'Nepal', '', 1, 0, 'active'),
(151, 'NL', 'Netherlands', '', 1, 0, 'active'),
(152, 'AN', 'Netherlands Antilles', '', 1, 0, 'active'),
(153, 'NC', 'New Caledonia', '', 1, 0, 'active'),
(154, 'NZ', 'New Zealand', '', 1, 0, 'active'),
(155, 'NI', 'Nicaragua', '', 1, 0, 'active'),
(156, 'NE', 'Niger', '', 1, 0, 'active'),
(157, 'NG', 'Nigeria', '', 1, 0, 'active'),
(158, 'NU', 'Niue', '', 1, 0, 'active'),
(159, 'NF', 'Norfolk Island', '', 1, 0, 'active'),
(160, 'MP', 'Northern Mariana Islands', '', 1, 0, 'active'),
(161, 'NO', 'Norway', '', 1, 0, 'active'),
(162, 'OM', 'Oman', '', 1, 0, 'active'),
(163, 'PK', 'Pakistan', '', 1, 0, 'active'),
(164, 'PW', 'Palau', '', 1, 0, 'active'),
(165, 'PS', 'Palestinian Territory, Occupied', '', 1, 0, 'active'),
(166, 'PA', 'Panama', '', 1, 0, 'active'),
(167, 'PG', 'Papua New Guinea', '', 1, 0, 'active'),
(168, 'PY', 'Paraguay', '', 1, 0, 'active'),
(169, 'PE', 'Peru', '', 1, 0, 'active'),
(170, 'PH', 'Philippines', '', 1, 0, 'active'),
(171, 'PN', 'Pitcairn', '', 1, 0, 'active'),
(172, 'PL', 'Poland', '', 1, 0, 'active'),
(173, 'PT', 'Portugal', '', 1, 0, 'active'),
(174, 'PR', 'Puerto Rico', '', 1, 0, 'active'),
(175, 'QA', 'Qatar', '', 1, 0, 'active'),
(176, 'RE', 'Reunion', '', 1, 0, 'active'),
(177, 'RO', 'Romania', '', 1, 0, 'active'),
(178, 'RU', 'Russian Federation', '', 1, 0, 'active'),
(179, 'RW', 'Rwanda', '', 1, 0, 'active'),
(180, 'SH', 'Saint Helena', '', 1, 0, 'active'),
(181, 'KN', 'Saint Kitts and Nevis', '', 1, 0, 'active'),
(182, 'LC', 'Saint Lucia', '', 1, 0, 'active'),
(183, 'PM', 'Saint Pierre and Miquelon', '', 1, 0, 'active'),
(184, 'VC', 'Saint Vincent and the Grenadines', '', 1, 0, 'active'),
(185, 'WS', 'Samoa', '', 1, 0, 'active'),
(186, 'SM', 'San Marino', '', 1, 0, 'active'),
(187, 'ST', 'Sao Tome and Principe', '', 1, 0, 'active'),
(188, 'SA', 'Saudi Arabia', '', 1, 0, 'active'),
(189, 'SN', 'Senegal', '', 1, 0, 'active'),
(190, 'RS', 'Serbia', '', 1, 0, 'active'),
(191, 'SC', 'Seychelles', '', 1, 0, 'active'),
(192, 'SL', 'Sierra Leone', '', 1, 0, 'active'),
(193, 'SG', 'Singapore', '', 1, 0, 'active'),
(194, 'SK', 'Slovakia', '', 1, 0, 'active'),
(195, 'SI', 'Slovenia', '', 1, 0, 'active'),
(196, 'SB', 'Solomon Islands', '', 1, 0, 'active'),
(197, 'SO', 'Somalia', '', 1, 0, 'active'),
(198, 'ZA', 'South Africa', '', 1, 0, 'active'),
(199, 'GS', 'South Georgia', '', 1, 0, 'active'),
(200, 'ES', 'Spain', '', 1, 0, 'active'),
(201, 'LK', 'Sri Lanka', '', 1, 0, 'active'),
(202, 'SD', 'Sudan', '', 1, 0, 'active'),
(203, 'SR', 'Suriname', '', 1, 0, 'active'),
(204, 'SJ', 'Svalbard and Jan Mayen', '', 1, 0, 'active'),
(205, 'SZ', 'Swaziland', '', 1, 0, 'active'),
(206, 'SE', 'Sweden', '', 1, 0, 'active'),
(207, 'CH', 'Switzerland', '', 1, 0, 'active'),
(208, 'SY', 'Syrian Arab Republic', '', 1, 0, 'active'),
(209, 'TW', 'Taiwan, Province Of China', '', 1, 0, 'active'),
(210, 'TJ', 'Tajikistan', '', 1, 0, 'active'),
(211, 'TZ', 'Tanzania, United Republic of', '', 1, 0, 'active'),
(212, 'TH', 'Thailand', '', 1, 0, 'active'),
(213, 'TL', 'Timor-Leste', '', 1, 0, 'active'),
(214, 'TG', 'Togo', '', 1, 0, 'active'),
(215, 'TK', 'Tokelau', '', 1, 0, 'active'),
(216, 'TO', 'Tonga', '', 1, 0, 'active'),
(217, 'TT', 'Trinidad and Tobago', '', 1, 0, 'active'),
(218, 'TN', 'Tunisia', '', 1, 0, 'active'),
(219, 'TR', 'Turkey', '', 1, 0, 'active'),
(220, 'TM', 'Turkmenistan', '', 1, 0, 'active'),
(221, 'TC', 'Turks and Caicos Islands', '', 1, 0, 'active'),
(222, 'TV', 'Tuvalu', '', 1, 0, 'active'),
(223, 'UG', 'Uganda', '', 1, 0, 'active'),
(224, 'UA', 'Ukraine', '', 1, 0, 'active'),
(225, 'AE', 'United Arab Emirates', '', 1, 0, 'active'),
(226, 'GB', 'United Kingdom', '', 1, 0, 'active'),
(227, 'US', 'United States', '', 1, 0, 'active'),
(228, 'UM', 'United States Minor Outlying Islands', '', 1, 0, 'active'),
(229, 'UY', 'Uruguay', '', 1, 0, 'active'),
(230, 'UZ', 'Uzbekistan', '', 1, 0, 'active'),
(231, 'VU', 'Vanuatu', '', 1, 0, 'active'),
(232, 'VE', 'Venezuela', '', 1, 0, 'active'),
(233, 'VN', 'Viet Nam', '', 1, 0, 'active'),
(234, 'VG', 'Virgin Islands, British', '', 1, 0, 'active'),
(235, 'VI', 'Virgin Islands, U.S.', '', 1, 0, 'active'),
(236, 'WF', 'Wallis And Futuna', '', 1, 0, 'active'),
(237, 'EH', 'Western Sahara', '', 1, 0, 'active'),
(238, 'YE', 'Yemen', '', 1, 0, 'active'),
(239, 'ZM', 'Zambia', '', 1, 0, 'active'),
(240, 'ZW', 'Zimbabwe', '', 1, 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_currencies`
--

CREATE TABLE `exchangerix_currencies` (
  `currency_id` int(11) UNSIGNED NOT NULL,
  `gateway_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `currency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_crypto` tinyint(1) NOT NULL DEFAULT 0,
  `reserve` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `min_reserve` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fee` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `instructions` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `site_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xml_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allow_send` tinyint(1) NOT NULL DEFAULT 0,
  `allow_receive` tinyint(1) NOT NULL DEFAULT 0,
  `allow_affiliate` tinyint(1) NOT NULL DEFAULT 0,
  `default_send` tinyint(1) NOT NULL DEFAULT 0,
  `default_receive` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` tinyint(1) NOT NULL DEFAULT 0,
  `is_new_currency` tinyint(1) NOT NULL DEFAULT 0,
  `hide_code` tinyint(1) NOT NULL DEFAULT 0,
  `curr_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_currencies`
--

INSERT INTO `exchangerix_currencies` (`currency_id`, `gateway_id`, `currency_name`, `currency_code`, `image`, `is_crypto`, `reserve`, `min_reserve`, `fee`, `instructions`, `website`, `site_code`, `xml_code`, `allow_send`, `allow_receive`, `allow_affiliate`, `default_send`, `default_receive`, `sort_order`, `is_new_currency`, `hide_code`, `curr_code`, `status`, `added`) VALUES
(1, 6, 'Bitcoin', 'BTC', 'BTC.png', 1, '12.68', '', '', '', 'https://bitcoin.org', '', '', 1, 1, 0, 0, 0, 2, 0, 1, 'bitcoin', 'active', '2020-09-19 14:08:08'),
(4, 15, 'Ripple', 'XRP', 'XRP.png', 1, '89700', '', '5', '', '', '', '', 1, 1, 0, 0, 0, 8, 0, 0, '', 'active', '2020-09-19 14:08:08'),
(5, 8, 'Litecoin', 'LTC', 'LTC.png', 1, '3000', '', '5', '', 'https://litecoin.org', 'LTC', 'LTC', 1, 1, 1, 0, 0, 6, 0, 0, '', 'active', '2020-09-19 14:08:08'),
(11, 1, 'Paypal', 'USD', 'PAYPAL.png', 0, '78000', '', '', '', '', '', '', 1, 1, 0, 0, 0, 10, 0, 0, '', 'active', '2020-09-19 14:08:08'),
(13, 5, 'Payeer', 'USD', 'PR.png', 0, '41300', '', '', '', '', '', '', 1, 1, 0, 0, 0, 12, 0, 0, '', 'active', '2020-09-19 14:08:08'),
(15, 34, 'Bank Transfer', 'USD', 'BANK.png', 0, '50000', '', '', '', '', '', '', 1, 1, 0, 0, 0, 14, 0, 0, '', 'active', '2020-09-19 14:08:08'),
(16, 37, 'Webmoney', 'USD', 'WM.png', 0, '50000', '', '', '', '', '', '', 1, 1, 0, 0, 0, 14, 0, 0, '', 'active', '2020-09-19 14:08:08'),
(18, 2, 'Perfect Money', 'USD', 'logo_831604247015.png', 0, '335.2369', '10', '10', 'Instructions for use - Currency PAGE', '', 'USD', 'USD', 1, 1, 1, 1, 0, 1, 0, 0, '', 'active', '2020-11-01 11:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_email_templates`
--

CREATE TABLE `exchangerix_email_templates` (
  `template_id` int(11) UNSIGNED NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_email_templates`
--

INSERT INTO `exchangerix_email_templates` (`template_id`, `language`, `email_name`, `email_subject`, `email_message`, `modified`) VALUES
(1, 'english', 'signup', 'Welcome to exchange site!', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nDear {first_name},<br /><br />\r\nThank you for registering!<br /><br />\rYou can start to make e-currency exchanges!<br /><br />\r\nHere is your login information:<br /><br />\r\nLogin: <b>{username}</b><br />\r\nPassword: <b>{password}</b><br /><br />\r\nPlease click at <a href=\'{login_url}\'>click here</a> to login in to your account.<br /><br />Thank you.\r\n</p>', '2020-09-19 14:08:08'),
(2, 'english', 'activate', 'Registration confirmation email', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nHi {first_name},<br /><br />\r\nThank you for registering!<br /><br />\r\nHere is your login information:<br /><br />\r\nUsername: <b>{username}</b><br />\r\nPassword: <b>{password}</b><br /><br />\r\n\r\nPlease click the following link to activate your account: <a href=\'{activate_link}\'>{activate_link}</a><br /><br />Thank you.\r\n</p>', '2020-09-19 14:08:08'),
(3, 'english', 'activate2', 'Account activation email', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nHi {first_name},<br /><br />\r\nPlease click the following link to activate your account: <a href=\'{activate_link}\'>{activate_link}</a><br /><br />Thank you.\r\n</p>', '2020-09-19 14:08:08'),
(4, 'english', 'forgot_password', 'Forgot password email', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nDear {first_name},<br /><br />\r\nAs you requested, here is new password for your account:<br /><br />\r\nLogin: <b>{username}</b><br />Password: <b>{password}</b> <br /><br />\r\nPlease <a href=\'{login_url}\'>click here</a> to log in.\r\n<br /><br />\r\nThank you.\r\n</p>', '2020-09-19 14:08:08'),
(5, 'english', 'invite_friend', 'Invitation from your friend', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nHello {friend_name}, <br /><br />\r\nYour friend <b>{first_name}</b> wants to invite you to register on our site.<br /><br />\r\nPlease <a href=\'{referral_link}\'>click here</a> to accept his invitation.\r\n<br /><br />\r\nBest Regards.\r\n</p>', '2020-09-19 14:08:08'),
(6, 'english', 'cashout_paid', 'Your cash out request was paid', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nHello {first_name}, <br /><br />\r\nYour cash out request was paid.<br />Transaction ID: {transaction_id}<br />Amount: <b>{amount}</b><br /><br />\r\nThank you for choosing us.<br /><br />\r\nBest Regards.\r\n</p>', '2020-09-19 14:08:08'),
(7, 'english', 'cashout_declined', 'Your cash out request was declined', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nHello {first_name}, <br /><br />\r\nYour cash out request #<b>{transaction_id}</b> for {amount} was declined.<br />Reason: {reason}<br /><br />\r\n</p>', '2020-09-19 14:08:08'),
(8, 'english', 'manual_credit', 'Your account balance was updated', '<p style=\'font-family: Verdana, Arial, Helvetica, sans-serif; font-size:13px\'>\r\nHello {first_name}, <br /><br />\r\nYou received new payment.<br /><br /> Transaction ID: <b>{transaction_id}</b><br/>Payment name: <b>{payment_type}</b><br />Amount: <b>{amount}</b><br /><br />\r\n</p>', '2020-09-19 14:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_exchanges`
--

CREATE TABLE `exchangerix_exchanges` (
  `exchange_id` int(11) UNSIGNED NOT NULL,
  `exdirection_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `reference_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_currency_id` int(11) NOT NULL DEFAULT 0,
  `to_currency_id` int(11) NOT NULL DEFAULT 0,
  `from_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `to_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ex_from_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ex_to_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `exchange_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `exchange_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `receive_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `exchange_fee` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `from_account` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_account` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `proof` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `country_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_sent` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `process_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_exchanges`
--

INSERT INTO `exchangerix_exchanges` (`exchange_id`, `exdirection_id`, `user_id`, `reference_id`, `from_currency_id`, `to_currency_id`, `from_currency`, `to_currency`, `ex_from_rate`, `ex_to_rate`, `exchange_rate`, `exchange_amount`, `receive_amount`, `exchange_fee`, `from_account`, `to_account`, `client_email`, `client_details`, `proof`, `ref_id`, `country_code`, `status`, `reason`, `notification_sent`, `created`, `updated`, `process_date`) VALUES
(1, 1, 1, '997361582', 19, 18, 'Skrill USD', 'Perfect Money USD', '1', '0.95', '', 10.0000, 9.5000, 0.0000, 'dvxzv', 'pmid', 'test@gmail.com', 'Name<br>12345', '', 0, 'hu', 'confirmed', '', 0, '2020-11-01 11:22:17', '2022-04-05 05:45:59', '0000-00-00 00:00:00'),
(2, 2, 0, '720191152', 20, 21, 'bKash BDT', 'Rocket BDT', '1', '0.9', '', 1000.0000, 900.0000, 0.0000, '', 'rocket number', 'test@gmail.com', 'Name<br>12345', '', 0, 'hu', 'confirmed', '', 0, '2020-11-01 11:32:56', '2022-04-05 05:46:06', '0000-00-00 00:00:00'),
(8, 2, 2, '553919273', 20, 21, 'bKash BDT', 'Rocket BDT', '1', '0.9', '', 500.0000, 450.0000, 0.0000, '', '121212', 'md.jual.ah@gmail.com', 'jaula<br>01784622362', '', 0, '', 'confirmed', '', 0, '2020-11-02 11:27:33', '2022-04-05 05:46:11', '0000-00-00 00:00:00'),
(15, 3, 0, '872902655', 20, 18, 'bKash BDT', 'Perfect Money USD', '95', '1', '', 500.0000, 5.2631, 0.0000, 'jj', 'pmid', 'test@gmail.com', 'Name<br>12345', '', 0, 'hu', 'pending', NULL, 0, '2020-11-02 13:19:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_exdirections`
--

CREATE TABLE `exchangerix_exdirections` (
  `exdirection_id` int(11) UNSIGNED NOT NULL,
  `from_currency` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `to_currency` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `from_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `to_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `exchange_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fee` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `min_amount` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `max_amount` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_instructions` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_manual` tinyint(1) NOT NULL DEFAULT 0,
  `hide_from_visitors` tinyint(1) NOT NULL DEFAULT 0,
  `allow_affiliate` tinyint(1) NOT NULL DEFAULT 0,
  `auto_rate` tinyint(1) NOT NULL DEFAULT 0,
  `today_exchanges` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `total_exchanges` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_exchange_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_gateways`
--

CREATE TABLE `exchangerix_gateways` (
  `gateway_id` int(11) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `other_val` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `other_val2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `other_val3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `other_val4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `other_val5` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gateway_description` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_gateways`
--

INSERT INTO `exchangerix_gateways` (`gateway_id`, `gateway_name`, `logo`, `account_id`, `api_key`, `secret_key`, `other_val`, `other_val2`, `other_val3`, `other_val4`, `other_val5`, `gateway_description`, `website`, `status`, `added`) VALUES
(1, 'PayPal', 'PAYPAL.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(2, 'Perfect Money', 'PM.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(3, 'Perfect Money Voucher', 'PM.png', 'PMACCOUNTID', '', '', '', '', '', '', '', '', '', 'inactive', '0000-00-00 00:00:00'),
(4, 'Skrill', 'SKRILL.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(5, 'Payeer', 'PR.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(6, 'Bitcoin', 'BTC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(7, 'Bitcoin Cash', 'BCH.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(8, 'Litecoin', 'LTC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(9, 'Dogecoin', 'DOGE.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(10, 'Dash', 'DASH.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(11, 'Peercoin', 'PPC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(12, 'Ethereum', 'ETH.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(13, 'TheBillioncoin', 'TBC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(14, 'Monero', 'XMR.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(15, 'Ripple', 'XRP.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(16, 'Zcash', 'ZCASH.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(17, 'Ether Classic', 'ETC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(18, 'Augur', 'REP.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(19, 'Golem', 'GNT.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(20, 'Gnosis', 'GNO.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(21, 'Lisk', 'LSK.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(22, 'Clams', 'CLAM.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(23, 'Namecoin', 'NMC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(24, 'AdvCash', 'ADVC.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(25, 'OKPay', 'OK.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(26, 'Entromoney', 'EM.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(27, 'SolidTrust Pay', 'STP.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(28, 'Neteller', 'NTLR.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(29, 'UQUID', 'UQUID.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(30, 'WEX (BTC-e)', 'WEX.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(31, 'Yandex Money', 'YAM.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(32, 'QIWI', 'QIWI.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(33, 'Payza', 'PZ.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(34, 'Bank Transfer', 'BANK.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(35, 'Western Union', 'WU.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(36, 'Moneygram', 'MoneyGram.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00'),
(37, 'WebMoney', 'WM.png', '', '', '', '', '', '', '', '', '', '', 'active', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_languages`
--

CREATE TABLE `exchangerix_languages` (
  `language_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort_order` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_languages`
--

INSERT INTO `exchangerix_languages` (`language_id`, `language_code`, `language`, `currency`, `sort_order`, `status`) VALUES
(1, 'us', 'english', '', 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_news`
--

CREATE TABLE `exchangerix_news` (
  `news_id` int(11) UNSIGNED NOT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_pmethods`
--

CREATE TABLE `exchangerix_pmethods` (
  `pmethod_id` int(11) UNSIGNED NOT NULL,
  `pmethod_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `min_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `commission` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pmethod_details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_pmethods`
--

INSERT INTO `exchangerix_pmethods` (`pmethod_id`, `pmethod_title`, `min_amount`, `commission`, `pmethod_details`, `status`) VALUES
(1, 'PayPal', 0.0000, '', 'Please enter your paypal account', 'active'),
(2, 'Bank Check', 0.0000, '', 'Please enter following information: <br />\r\n - Your Full Name <br />\r\n - Bank Name <br />\r\n - Bank Address <br />\r\n - Account #', 'inactive'),
(3, 'Wire Transfer', 0.0000, '', 'Please enter following information: <br />\r\n - Your Full Name <br />\r\n - Bank Name <br />\r\n - Bank Address <br />\r\n - Account #', 'active'),
(4, 'Skrill', 0.0000, '', 'Please enter your skrill account', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_reserve_requests`
--

CREATE TABLE `exchangerix_reserve_requests` (
  `reserve_request_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `exdirection_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `currency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `amount` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `is_viewed` tinyint(1) NOT NULL DEFAULT 0,
  `is_notified` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('confirmed','declined','pending') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_reviews`
--

CREATE TABLE `exchangerix_reviews` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `exchange_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `review_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rating` tinyint(1) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','pending','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_settings`
--

CREATE TABLE `exchangerix_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_settings`
--

INSERT INTO `exchangerix_settings` (`setting_id`, `setting_key`, `setting_value`) VALUES
(1000, 'website_title', 'Converse'),
(1001, 'website_url', 'https://converse.ma/'),
(1002, 'website_mode', 'live'),
(1003, 'website_home_title', 'Best Money Exchange Service'),
(1004, 'email_from_name', 'Converse Support'),
(1005, 'website_email', 'support@converse.ma'),
(1006, 'noreply_email', 'support@converse.ma'),
(1007, 'alerts_email', 'support@converse.ma'),
(1008, 'website_language', 'english'),
(1009, 'multilingual', '1'),
(1010, 'website_timezone', 'America/New_York'),
(1011, 'website_date_format', '%d %b %Y'),
(1012, 'website_currency', '$'),
(1013, 'website_currency_format', '1'),
(1014, 'account_activation', '1'),
(1015, 'signup_captcha', '1'),
(1016, 'exchange_captcha', '0'),
(1017, 'login_attempts_limit', '0'),
(1018, 'signup_credit', '5'),
(1019, 'refer_credit', '5'),
(1020, 'referral_commission', '2'),
(1021, 'min_payout', '50'),
(1022, 'min_transaction', '50'),
(1023, 'cancel_withdrawal', '1'),
(1024, 'view_list_style', '1'),
(1025, 'one_review', '1'),
(1026, 'homepage_reviews_limit', '5'),
(1027, 'homepage_exchanges_limit', '5'),
(1028, 'featured_items_limit', '12'),
(1029, 'results_per_page', '12'),
(1030, 'reviews_per_page', '10'),
(1031, 'news_per_page', '20'),
(1032, 'image_width', '120'),
(1033, 'image_height', '60'),
(1034, 'show_statistics', '1'),
(1035, 'show_site_statistics', '1'),
(1036, 'show_landing_page', '1'),
(1037, 'reviews_approve', '1'),
(1038, 'max_review_length', '500'),
(1039, 'email_new_exchange', '1'),
(1040, 'email_new_amount_request', '1'),
(1041, 'email_new_review', '1'),
(1042, 'email_new_ticket', '1'),
(1043, 'email_new_ticket_reply', '1'),
(1044, 'email_new_report', '0'),
(1045, 'sms_new_amount_request', '1'),
(1046, 'smtp_mail', '0'),
(1047, 'smtp_port', '25'),
(1048, 'smtp_host', ''),
(1049, 'smtp_username', ''),
(1050, 'smtp_password', ''),
(1051, 'smtp_ssl', ''),
(1052, 'reg_sources', 'Search Engine,Facebook,Twitter,Other'),
(1053, 'addthis_id', 'YOUR-ACCOUNT-ID'),
(1054, 'facebook_page', '#'),
(1055, 'show_fb_likebox', '0'),
(1056, 'twitter_page', '#'),
(1057, 'facebook_connect', '0'),
(1058, 'facebook_appid', ''),
(1059, 'facebook_secret', ''),
(1060, 'google_analytics', ''),
(1061, 'email_verification', '1'),
(1062, 'phone_verification', '0'),
(1063, 'document_verification', '1'),
(1064, 'address_verification', '1'),
(1065, 'payment_proof', '1'),
(1066, 'require_login', '1'),
(1067, 'reserve_minutes', '20'),
(1068, 'update_rates_minutes', '10'),
(1069, 'operator_status', 'online'),
(1070, 'contact_phone', 'â€Ž+12163541234'),
(1071, 'contact_phone2', ''),
(1072, 'contact_phone3', ''),
(1073, 'show_operator_hours', '1'),
(1074, 'operator_hours', '8 AM to 9 PM'),
(1075, 'operator_timezone', ''),
(1076, 'chat_code', ''),
(1077, 'whatsapp', 'â€Ž+12163541234'),
(1078, 'skype', 'helloskype'),
(1079, 'telegram', 'telegramid'),
(1080, 'viber', ''),
(1081, 'sms_api_key', ''),
(1082, 'sms_api_secret', ''),
(1083, 'allowed_files', 'jpg|png|jpeg'),
(1084, 'files_max_size', '5242880'),
(1085, 'total_exchanges_usd', '0.00'),
(1086, 'license', '5720-2095-3203-5566-2506'),
(1087, 'last_admin_login', '2022-04-05 05:43:45'),
(1088, 'word', '34b8a9fad278e44127e1b34228f303d6'),
(1089, 'iword', 'whiTESquiErel954');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_transactions`
--

CREATE TABLE `exchangerix_transactions` (
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `reference_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_method` int(10) NOT NULL DEFAULT 0,
  `payment_details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `transaction_commision` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_sent` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `process_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchangerix_users`
--

CREATE TABLE `exchangerix_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_group` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lname` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address2` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_method` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `discount` tinyint(1) NOT NULL DEFAULT 0,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `verified_email` tinyint(1) NOT NULL DEFAULT 0,
  `verified_phone` tinyint(1) NOT NULL DEFAULT 0,
  `verified_document` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `verified_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `verification_progress` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sms_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `auth_provider` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activation_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `unsubscribe_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `login_session` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_count` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `block_reason` tinytext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchangerix_users`
--

INSERT INTO `exchangerix_users` (`user_id`, `user_group`, `username`, `password`, `email`, `fname`, `lname`, `gender`, `address`, `address2`, `city`, `state`, `zip`, `country`, `phone`, `payment_method`, `reg_source`, `ref_id`, `discount`, `newsletter`, `ip`, `verified_email`, `verified_phone`, `verified_document`, `verified_address`, `verification_progress`, `sms_code`, `status`, `auth_provider`, `auth_uid`, `activation_key`, `unsubscribe_key`, `login_session`, `last_login`, `login_count`, `last_ip`, `created`, `block_reason`) VALUES
(1, 0, 'test@gmail.com', '3833fa9d2f60d4bbe35b299390ca4ed1', 'test@gmail.com', 'Name', '', '', '', '', '', '', '', 0, '12345', '', '', 0, 0, 1, '37.111.248.250', 0, 0, '', '', '', '', 'active', '', '', '', '8b4fb51495ea504abcfb1db7d7af041e', '', '0000-00-00 00:00:00', 0, '', '2020-11-01 11:22:17', NULL),
(2, 0, 'md.jual.ah@gmail.com', 'dddf707bf4b1e458713e095c23a0a7db', 'md.jual.ah@gmail.com', 'Jaula', '', '', '', '', '', '', '', 0, '01784622362', '', '', 0, 0, 1, '103.120.201.2', 0, 0, '', '', '', '', 'active', '', '', '', 'ee48b483077197ada0a5be97ee717c23', '', '0000-00-00 00:00:00', 0, '', '2020-11-02 11:27:33', NULL),
(3, 0, 'sdfsdf@gmail.com', '84d011408b6c034b2c7d2716d2b911d2', 'sdfsdf@gmail.com', 'Fsdf', '', '', '', '', '', '', '', 0, '002', '', '', 0, 0, 1, '103.120.201.2', 0, 0, '', '', '', '', 'active', '', '', '', '5861578ab25a47f1bb5df3c0b1616e7e', '', '0000-00-00 00:00:00', 0, '', '2020-11-02 11:54:29', NULL),
(4, 0, '123123@gmailc.om', '71ee6ecb8ec896fa91718c8d82cd9a1f', '123123@gmailc.om', '123123', '', '', '', '', '', '', '', 0, '12123', '', '', 0, 0, 1, '103.120.201.2', 0, 0, '', '', '', '', 'active', '', '', '', 'e87e3838f8275a13be612952ebfee4b6', '', '0000-00-00 00:00:00', 0, '', '2020-11-02 12:48:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exchangerix_content`
--
ALTER TABLE `exchangerix_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `exchangerix_countries`
--
ALTER TABLE `exchangerix_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `exchangerix_currencies`
--
ALTER TABLE `exchangerix_currencies`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `exchangerix_email_templates`
--
ALTER TABLE `exchangerix_email_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `exchangerix_exchanges`
--
ALTER TABLE `exchangerix_exchanges`
  ADD PRIMARY KEY (`exchange_id`);

--
-- Indexes for table `exchangerix_exdirections`
--
ALTER TABLE `exchangerix_exdirections`
  ADD PRIMARY KEY (`exdirection_id`);

--
-- Indexes for table `exchangerix_gateways`
--
ALTER TABLE `exchangerix_gateways`
  ADD PRIMARY KEY (`gateway_id`);

--
-- Indexes for table `exchangerix_languages`
--
ALTER TABLE `exchangerix_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `exchangerix_news`
--
ALTER TABLE `exchangerix_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `exchangerix_pmethods`
--
ALTER TABLE `exchangerix_pmethods`
  ADD PRIMARY KEY (`pmethod_id`);

--
-- Indexes for table `exchangerix_reserve_requests`
--
ALTER TABLE `exchangerix_reserve_requests`
  ADD PRIMARY KEY (`reserve_request_id`);

--
-- Indexes for table `exchangerix_reviews`
--
ALTER TABLE `exchangerix_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `exchangerix_settings`
--
ALTER TABLE `exchangerix_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `exchangerix_transactions`
--
ALTER TABLE `exchangerix_transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `exchangerix_users`
--
ALTER TABLE `exchangerix_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exchangerix_content`
--
ALTER TABLE `exchangerix_content`
  MODIFY `content_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exchangerix_countries`
--
ALTER TABLE `exchangerix_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `exchangerix_currencies`
--
ALTER TABLE `exchangerix_currencies`
  MODIFY `currency_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `exchangerix_email_templates`
--
ALTER TABLE `exchangerix_email_templates`
  MODIFY `template_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exchangerix_exchanges`
--
ALTER TABLE `exchangerix_exchanges`
  MODIFY `exchange_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `exchangerix_exdirections`
--
ALTER TABLE `exchangerix_exdirections`
  MODIFY `exdirection_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exchangerix_gateways`
--
ALTER TABLE `exchangerix_gateways`
  MODIFY `gateway_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `exchangerix_languages`
--
ALTER TABLE `exchangerix_languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exchangerix_news`
--
ALTER TABLE `exchangerix_news`
  MODIFY `news_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchangerix_pmethods`
--
ALTER TABLE `exchangerix_pmethods`
  MODIFY `pmethod_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exchangerix_reserve_requests`
--
ALTER TABLE `exchangerix_reserve_requests`
  MODIFY `reserve_request_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchangerix_reviews`
--
ALTER TABLE `exchangerix_reviews`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchangerix_settings`
--
ALTER TABLE `exchangerix_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1090;

--
-- AUTO_INCREMENT for table `exchangerix_transactions`
--
ALTER TABLE `exchangerix_transactions`
  MODIFY `transaction_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchangerix_users`
--
ALTER TABLE `exchangerix_users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
