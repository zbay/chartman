-- Data set: fiat currencies first, then cryptos
--  create temporary table currencies_load (
--  	"currency_code" text,
--  	"currency_name" text
--  );

--  copy currencies_load ("currency_code", "currency_name")
--  from '/home/jacques/autocomplete_data/physical_currency_list.csv'
--  csv header;

--  insert into public.currencies (code, "name")
--  select c.currency_code, c.currency_name
--  from currencies_load c;

--  delete from currencies_load;

--  copy currencies_load ("currency_code", "currency_name")
--  from '/home/jacques/autocomplete_data/digital_currency_list.csv'
--  csv header;

--  insert into public.currencies (code, "name", is_crypto)
--  select c.currency_code, c.currency_name, true
--  from currencies_load c;

--  drop table currencies_load;

INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(1, 'AED', 'United Arab Emirates Dirham', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(2, 'AFN', 'Afghan Afghani', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(3, 'ALL', 'Albanian Lek', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(4, 'AMD', 'Armenian Dram', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(5, 'ANG', 'Netherlands Antillean Guilder', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(6, 'AOA', 'Angolan Kwanza', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(7, 'ARS', 'Argentine Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(8, 'AUD', 'Australian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(9, 'AWG', 'Aruban Florin', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(10, 'AZN', 'Azerbaijani Manat', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(12, 'BBD', 'Barbadian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(13, 'BDT', 'Bangladeshi Taka', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(14, 'BGN', 'Bulgarian Lev', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(15, 'BHD', 'Bahraini Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(16, 'BIF', 'Burundian Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(17, 'BMD', 'Bermudan Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(18, 'BND', 'Brunei Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(19, 'BOB', 'Bolivian Boliviano', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(20, 'BRL', 'Brazilian Real', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(21, 'BSD', 'Bahamian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(22, 'BTN', 'Bhutanese Ngultrum', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(23, 'BWP', 'Botswanan Pula', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(24, 'BZD', 'Belize Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(25, 'CAD', 'Canadian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(26, 'CDF', 'Congolese Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(27, 'CHF', 'Swiss Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(28, 'CLF', 'Chilean Unit of Account UF', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(29, 'CLP', 'Chilean Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(30, 'CNH', 'Chinese Yuan Offshore', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(31, 'CNY', 'Chinese Yuan', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(32, 'COP', 'Colombian Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(33, 'CUP', 'Cuban Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(34, 'CVE', 'Cape Verdean Escudo', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(35, 'CZK', 'Czech Republic Koruna', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(36, 'DJF', 'Djiboutian Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(37, 'DKK', 'Danish Krone', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(38, 'DOP', 'Dominican Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(39, 'DZD', 'Algerian Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(40, 'EGP', 'Egyptian Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(41, 'ERN', 'Eritrean Nakfa', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(42, 'ETB', 'Ethiopian Birr', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(43, 'EUR', 'Euro', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(44, 'FJD', 'Fijian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(45, 'FKP', 'Falkland Islands Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(46, 'GBP', 'British Pound Sterling', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(47, 'GEL', 'Georgian Lari', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(48, 'GHS', 'Ghanaian Cedi', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(49, 'GIP', 'Gibraltar Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(50, 'GMD', 'Gambian Dalasi', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(51, 'GNF', 'Guinean Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(52, 'GTQ', 'Guatemalan Quetzal', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(53, 'GYD', 'Guyanaese Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(54, 'HKD', 'Hong Kong Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(55, 'HNL', 'Honduran Lempira', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(56, 'HRK', 'Croatian Kuna', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(57, 'HTG', 'Haitian Gourde', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(58, 'HUF', 'Hungarian Forint', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(59, 'IDR', 'Indonesian Rupiah', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(60, 'ILS', 'Israeli New Sheqel', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(61, 'INR', 'Indian Rupee', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(62, 'IQD', 'Iraqi Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(63, 'IRR', 'Iranian Rial', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(64, 'JEP', 'Jersey Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(65, 'JMD', 'Jamaican Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(66, 'JOD', 'Jordanian Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(67, 'JPY', 'Japanese Yen', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(68, 'KES', 'Kenyan Shilling', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(69, 'KGS', 'Kyrgystani Som', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(70, 'KHR', 'Cambodian Riel', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(71, 'KMF', 'Comorian Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(72, 'KPW', 'North Korean Won', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(73, 'KRW', 'South Korean Won', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(74, 'KWD', 'Kuwaiti Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(75, 'KYD', 'Cayman Islands Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(76, 'KZT', 'Kazakhstani Tenge', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(77, 'LAK', 'Laotian Kip', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(78, 'LBP', 'Lebanese Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(79, 'LKR', 'Sri Lankan Rupee', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(80, 'LRD', 'Liberian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(81, 'LSL', 'Lesotho Loti', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(82, 'LYD', 'Libyan Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(83, 'MAD', 'Moroccan Dirham', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(84, 'MDL', 'Moldovan Leu', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(85, 'MGA', 'Malagasy Ariary', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(86, 'MKD', 'Macedonian Denar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(87, 'MMK', 'Myanma Kyat', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(88, 'MNT', 'Mongolian Tugrik', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(89, 'MOP', 'Macanese Pataca', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(90, 'MRO', 'Mauritanian Ouguiya (pre-2018)', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(91, 'MRU', 'Mauritanian Ouguiya', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(92, 'MUR', 'Mauritian Rupee', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(93, 'MVR', 'Maldivian Rufiyaa', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(94, 'MWK', 'Malawian Kwacha', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(95, 'MXN', 'Mexican Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(96, 'MYR', 'Malaysian Ringgit', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(97, 'MZN', 'Mozambican Metical', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(98, 'NAD', 'Namibian Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(99, 'NGN', 'Nigerian Naira', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(100, 'NOK', 'Norwegian Krone', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(101, 'NPR', 'Nepalese Rupee', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(102, 'NZD', 'New Zealand Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(103, 'OMR', 'Omani Rial', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(104, 'PAB', 'Panamanian Balboa', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(105, 'PEN', 'Peruvian Nuevo Sol', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(106, 'PGK', 'Papua New Guinean Kina', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(107, 'PHP', 'Philippine Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(108, 'PKR', 'Pakistani Rupee', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(109, 'PLN', 'Polish Zloty', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(110, 'PYG', 'Paraguayan Guarani', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(111, 'QAR', 'Qatari Rial', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(112, 'RON', 'Romanian Leu', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(113, 'RSD', 'Serbian Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(114, 'RUB', 'Russian Ruble', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(115, 'RUR', 'Old Russian Ruble', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(116, 'RWF', 'Rwandan Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(117, 'SAR', 'Saudi Riyal', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(118, 'SBDf', 'Solomon Islands Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(119, 'SCR', 'Seychellois Rupee', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(120, 'SDG', 'Sudanese Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(121, 'SEK', 'Swedish Krona', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(122, 'SGD', 'Singapore Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(123, 'SHP', 'Saint Helena Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(124, 'SLL', 'Sierra Leonean Leone', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(125, 'SOS', 'Somali Shilling', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(126, 'SRD', 'Surinamese Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(127, 'SYP', 'Syrian Pound', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(128, 'SZL', 'Swazi Lilangeni', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(129, 'THB', 'Thai Baht', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(130, 'TJS', 'Tajikistani Somoni', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(131, 'TMT', 'Turkmenistani Manat', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(132, 'TND', 'Tunisian Dinar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(133, 'TOP', 'Tongan Pa''anga', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(134, 'TRY', 'Turkish Lira', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(135, 'TTD', 'Trinidad and Tobago Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(136, 'TWD', 'New Taiwan Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(137, 'TZS', 'Tanzanian Shilling', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(138, 'UAH', 'Ukrainian Hryvnia', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(139, 'UGX', 'Ugandan Shilling', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(140, 'USD', 'United States Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(141, 'UYU', 'Uruguayan Peso', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(142, 'UZS', 'Uzbekistan Som', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(143, 'VND', 'Vietnamese Dong', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(144, 'VUV', 'Vanuatu Vatu', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(145, 'WST', 'Samoan Tala', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(146, 'XAF', 'CFA Franc BEAC', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(147, 'XAG', 'Silver Ounce', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(148, 'XAU', 'Gold Ounce', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(149, 'XCD', 'East Caribbean Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(150, 'XDR', 'Special Drawing Rights', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(151, 'XOF', 'CFA Franc BCEAO', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(152, 'XPF', 'CFP Franc', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(153, 'YER', 'Yemeni Rial', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(154, 'ZAR', 'South African Rand', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(155, 'ZMW', 'Zambian Kwacha', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(156, 'ZWL', 'Zimbabwean Dollar', false);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(157, '1ST', 'FirstBlood', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(158, '2GIVE', 'GiveCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(159, '808', '808Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(160, 'ABT', 'ArcBlock', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(161, 'ABY', 'ArtByte', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(162, 'AC', 'AsiaCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(163, 'ACT', 'Achain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(164, 'ADA', 'Cardano', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(165, 'ADT', 'adToken', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(166, 'ADX', 'AdEx', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(167, 'AE', 'Aeternity', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(168, 'AEON', 'Aeon', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(169, 'AGI', 'SingularityNET', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(170, 'AGRS', 'IDNI-Agoras', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(171, 'AI', 'POLY-AI', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(172, 'AID', 'AidCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(173, 'AION', 'Aion', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(174, 'AIR', 'AirToken', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(175, 'AKY', 'Akuya-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(176, 'ALIS', 'ALIS', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(177, 'AMBER', 'AmberCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(178, 'AMP', 'Synereo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(179, 'ANC', 'Anoncoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(180, 'ANT', 'Aragon', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(181, 'APPC', 'AppCoins', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(182, 'APX', 'APX-Ventures', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(183, 'ARDR', 'Ardor', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(184, 'ARK', 'Ark', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(185, 'ARN', 'Aeron', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(186, 'AST', 'AirSwap', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(187, 'ATB', 'ATBCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(188, 'ATM', 'ATMChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(189, 'ATS', 'Authorship', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(190, 'AUR', 'Auroracoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(191, 'AVT', 'Aventus', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(192, 'B3', 'B3Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(193, 'BAT', 'Basic-Attention-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(194, 'BAY', 'BitBay', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(195, 'BBR', 'Boolberry', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(196, 'BCAP', 'BCAP', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(197, 'BCC', 'BitConnect', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(198, 'BCD', 'Bitcoin-Diamond', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(199, 'BCH', 'Bitcoin-Cash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(200, 'BCN', 'Bytecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(201, 'BCPT', 'BlockMason-Credit-Protocol-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(202, 'BCX', 'BitcoinX', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(203, 'BCY', 'BitCrystals', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(204, 'BDL', 'Bitdeal', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(205, 'BEE', 'Bee-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(206, 'BELA', 'BelaCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(207, 'BET', 'DAO-Casino', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(208, 'BFT', 'BF-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(209, 'BIS', 'Bismuth', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(210, 'BITB', 'BitBean', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(211, 'BITBTC', 'BitBTC', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(212, 'BITCNY', 'BitCNY', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(213, 'BITEUR', 'BitEUR', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(214, 'BITGOLD', 'BitGOLD', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(215, 'BITSILVER', 'BitSILVER', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(216, 'BITUSD', 'BitUSD', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(217, 'BIX', 'Bibox-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(218, 'BLITZ', 'Blitzcash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(219, 'BLK', 'Blackcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(220, 'BLN', 'Bolenum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(221, 'BLOCK', 'Blocknet', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(222, 'BLZ', 'Bluzelle', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(223, 'BMC', 'Blackmoon-Crypto', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(224, 'BNB', 'Binance-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(225, 'BNT', 'Bancor-Network-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(226, 'BNTY', 'Bounty0x', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(227, 'BOST', 'BoostCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(228, 'BOT', 'Bodhi', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(229, 'BQ', 'bitqy', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(230, 'BRD', 'Bread', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(231, 'BRK', 'Breakout-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(232, 'BRX', 'Breakout-Stake', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(233, 'BTA', 'Bata', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(234, 'BTC', 'Bitcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(235, 'BTCD', 'BitcoinDark', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(236, 'BTCP', 'Bitcoin-Private', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(237, 'BTG', 'Bitcoin-Gold', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(238, 'BTM', 'Bitmark', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(239, 'BTS', 'BitShares', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(240, 'BTSR', 'BTSR', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(241, 'BTX', 'Bitcore', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(242, 'BURST', 'Burstcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(243, 'BUZZ', 'BuzzCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(244, 'BYC', 'Bytecent', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(245, 'BYTOM', 'Bytom', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(246, 'C20', 'Crypto20', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(247, 'CANN', 'CannabisCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(248, 'CAT', 'BlockCAT', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(249, 'CCRB', 'CryptoCarbon', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(250, 'CDT', 'Blox', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(251, 'CFI', 'Cofound-it', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(252, 'CHAT', 'ChatCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(253, 'CHIPS', 'Chips', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(254, 'CLAM', 'Clams', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(255, 'CLOAK', 'CloakCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(256, 'CMP', 'Compcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(257, 'CMT', 'CyberMiles', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(258, 'CND', 'Cindicator', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(259, 'CNX', 'Cryptonex', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(260, 'COFI', 'CoinFi', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(261, 'COSS', 'COSS', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(262, 'COVAL', 'Circuits-Of-Value', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(263, 'CRBIT', 'CreditBIT', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(264, 'CREA', 'CreativeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(265, 'CREDO', 'Credo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(266, 'CRW', 'Crown', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(267, 'CSNO', 'BitDice', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(268, 'CTR', 'Centra', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(269, 'CTXC', 'Cortex', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(270, 'CURE', 'CureCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(271, 'CVC', 'Civic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(272, 'DAI', 'Dai', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(273, 'DAR', 'Darcrus', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(274, 'DASH', 'Dash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(275, 'DATA', 'DATAcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(276, 'DAY', 'Chronologic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(277, 'DBC', 'DeepBrain-Chain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(278, 'DBIX', 'DubaiCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(279, 'DCN', 'Dentacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(280, 'DCR', 'Decred', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(281, 'DCT', 'DECENT', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(282, 'DDF', 'Digital-Developers-Fund', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(283, 'DENT', 'Dent', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(284, 'DFS', 'DFSCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(285, 'DGB', 'DigiByte', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(286, 'DGC', 'Digitalcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(287, 'DGD', 'DigixDAO', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(288, 'DICE', 'Etheroll', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(289, 'DLT', 'Agrello-Delta', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(290, 'DMD', 'Diamond', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(291, 'DMT', 'DMarket', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(292, 'DNT', 'district0x', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(293, 'DOGE', 'DogeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(294, 'DOPE', 'DopeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(295, 'DRGN', 'Dragonchain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(296, 'DTA', 'Data', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(297, 'DTB', 'Databits', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(298, 'DYN', 'Dynamic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(299, 'EAC', 'EarthCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(300, 'EBST', 'eBoost', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(301, 'EBTC', 'eBTC', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(302, 'ECC', 'ECC', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(303, 'ECN', 'E-coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(304, 'EDG', 'Edgeless', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(305, 'EDO', 'Eidoo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(306, 'EFL', 'Electronic-Gulden', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(307, 'EGC', 'EverGreenCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(308, 'EKT', 'EDUCare', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(309, 'ELA', 'Elastos', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(310, 'ELEC', 'Electrify.Asia', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(311, 'ELF', 'aelf', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(312, 'ELIX', 'Elixir', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(313, 'EMB', 'Embercoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(314, 'EMC', 'Emercoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(315, 'EMC2', 'Einsteinium', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(316, 'ENG', 'Enigma', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(317, 'ENJ', 'Enjin-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(318, 'ENRG', 'EnergyCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(319, 'EOS', 'EOS', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(320, 'EOT', 'EOT-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(321, 'EQT', 'EquiTrader', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(322, 'ERC', 'EuropeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(323, 'ETC', 'Ethereum-Classic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(324, 'ETH', 'Ethereum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(325, 'ETHD', 'Ethereum-Dark', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(326, 'ETHOS', 'Ethos', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(327, 'ETN', 'Electroneum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(328, 'ETP', 'Metaverse-Entropy', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(329, 'ETT', 'EncryptoTel', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(330, 'EVE', 'Devery', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(331, 'EVX', 'Everex', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(332, 'EXCL', 'ExclusiveCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(333, 'EXP', 'Expanse', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(334, 'FCT', 'Factom', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(335, 'FLDC', 'FoldingCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(336, 'FLO', 'FlorinCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(337, 'FLT', 'FlutterCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(338, 'FRST', 'FirstCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(339, 'FTC', 'Feathercoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(340, 'FUEL', 'Etherparty', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(341, 'FUN', 'FunFair', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(342, 'GAM', 'Gambit', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(343, 'GAME', 'GameCredits', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(344, 'GAS', 'Gas', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(345, 'GBG', 'Golos Gold', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(346, 'GBX', 'GoByte', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(347, 'GBYTE', 'Byteball', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(348, 'GCR', 'GCRCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(349, 'GEO', 'GeoCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(350, 'GLD', 'GoldCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(351, 'GNO', 'Gnosis-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(352, 'GNT', 'Golem-Tokens', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(353, 'GOLOS', 'Golos', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(354, 'GRC', 'Gridcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(355, 'GRS', 'Groestlcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(356, 'GRWI', 'Growers-International', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(357, 'GTC', 'Game', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(358, 'GTO', 'Gifto', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(359, 'GUP', 'Guppy', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(360, 'GVT', 'Genesis-Vision', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(361, 'GXS', 'GXShares', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(362, 'HBN', 'HoboNickels', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(363, 'HEAT', 'HEAT', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(364, 'HMQ', 'Humaniq', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(365, 'HPB', 'High-Performance-Blockchain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(366, 'HSR', 'Hshare', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(367, 'HUSH', 'Hush', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(368, 'HVN', 'Hive', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(369, 'HXX', 'HexxCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(370, 'ICN', 'ICONOMI', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(371, 'ICX', 'ICON', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(372, 'IFC', 'Infinitecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(373, 'IFT', 'investFeed', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(374, 'IGNIS', 'Ignis', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(375, 'INCNT', 'Incent', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(376, 'IND', 'Indorse-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(377, 'INF', 'InfChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(378, 'INK', 'Ink', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(379, 'INS', 'INS-Ecosystem', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(380, 'INSTAR', 'Insights-Network', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(381, 'INT', 'Internet-Node-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(382, 'INXT', 'Internxt', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(383, 'IOC', 'IOCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(384, 'ION', 'ION', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(385, 'IOP', 'Internet-of-People', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(386, 'IOST', 'IOStoken', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(387, 'IOTA', 'IOTA', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(388, 'IOTX', 'IoTeX', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(389, 'IQT', 'Iquant-Chain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(390, 'ITC', 'IoT-Chain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(391, 'IXC', 'iXcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(392, 'IXT', 'InsureX', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(393, 'J8T', 'JET8', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(394, 'JNT', 'Jibrel-Network', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(395, 'KCS', 'KuCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(396, 'KICK', 'KickCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(397, 'KIN', 'KIN', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(398, 'KMD', 'Komodo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(399, 'KNC', 'Kyber-Network', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(400, 'KORE', 'KoreCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(401, 'LBC', 'LBRY-Credits', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(402, 'LCC', 'Litecoin-Cash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(403, 'LEND', 'EthLend', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(404, 'LEV', 'Leverj', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(405, 'LGD', 'Legends-Room', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(406, 'LINDA', 'Linda', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(407, 'LINK', 'ChainLink', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(408, 'LKK', 'Lykke', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(409, 'LMC', 'LoMoCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(410, 'LOCI', 'LOCIcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(411, 'LOOM', 'Loom-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(412, 'LRC', 'Loopring', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(413, 'LSK', 'Lisk', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(414, 'LTC', 'Litecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(415, 'LUN', 'Lunyr', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(416, 'MAID', 'MaidSafeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(417, 'MANA', 'Decentraland', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(418, 'MAX', 'Maxcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(419, 'MBRS', 'Embers', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(420, 'MCAP', 'MCAP', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(421, 'MCO', 'Monaco', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(422, 'MDA', 'Moeda-Loyalty-Points', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(423, 'MEC', 'Megacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(424, 'MED', 'MediBlock', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(425, 'MEME', 'Memetic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(426, 'MER', 'Mercury', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(427, 'MGC', 'MergeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(428, 'MGO', 'MobileGo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(429, 'MINEX', 'Minex', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(430, 'MINT', 'Mintcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(431, 'MITH', 'Mithril', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(432, 'MKR', 'Maker', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(433, 'MLN', 'Melon', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(434, 'MNE', 'Minereum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(435, 'MNX', 'MinexCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(436, 'MOD', 'Modum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(437, 'MONA', 'MonaCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(438, 'MRT', 'Miners-Reward-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(439, 'MSP', 'Mothership', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(440, 'MTH', 'Monetha', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(441, 'MTN', 'MedToken', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(442, 'MUE', 'MonetaryUnit', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(443, 'MUSIC', 'Musicoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(444, 'MYB', 'MyBit-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(445, 'MYST', 'Mysterium', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(446, 'MZC', 'Mazacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(447, 'NAMO', 'Namocoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(448, 'NANO', 'Nano', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(449, 'NAS', 'Nebulas-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(450, 'NAV', 'Nav-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(451, 'NBT', 'NuBits', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(452, 'NCASH', 'Nucleus-Vision', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(453, 'NDC', 'NeverDie-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(454, 'NEBL', 'Neblio', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(455, 'NEO', 'NEO', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(456, 'NEOS', 'NeosCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(457, 'NET', 'Nimiq', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(458, 'NLC2', 'NoLimitCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(459, 'NLG', 'Gulden', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(460, 'NMC', 'Namecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(461, 'NMR', 'Numeraire', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(462, 'NOBL', 'NobleCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(463, 'NOTE', 'DNotes', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(464, 'NPXS', 'Pundi-X-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(465, 'NSR', 'NuShares', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(466, 'NTO', 'Fujinto', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(467, 'NULS', 'Nuls', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(468, 'NVC', 'Novacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(469, 'NXC', 'Nexium', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(470, 'NXS', 'Nexus', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(471, 'NXT', 'Nxt', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(472, 'OAX', 'openANX', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(473, 'OBITS', 'Obits', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(474, 'OCL', 'Oceanlab', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(475, 'OCN', 'Odyssey', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(476, 'ODEM', 'ODEM', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(477, 'ODN', 'Obsidian', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(478, 'OF', 'OFCOIN', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(479, 'OK', 'OKCash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(480, 'OMG', 'OmiseGo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(481, 'OMNI', 'Omni', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(482, 'ONION', 'DeepOnion', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(483, 'ONT', 'Ontology', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(484, 'OPT', 'Opus', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(485, 'OST', 'Simple-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(486, 'PART', 'Particl', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(487, 'PASC', 'PascalCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(488, 'PAY', 'TenX', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(489, 'PBL', 'Pebbles', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(490, 'PBT', 'Primalbase-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(491, 'PFR', 'Payfair', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(492, 'PING', 'CryptoPing', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(493, 'PINK', 'Pinkcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(494, 'PIVX', 'PIVX', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(495, 'PIX', 'Lampix', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(496, 'PLBT', 'Polybius', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(497, 'PLR', 'Pillar', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(498, 'PLU', 'Pluton', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(499, 'POA', 'POA-Network', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(500, 'POE', 'Poet', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(501, 'POLY', 'Polymath', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(502, 'POSW', 'PoSW-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(503, 'POT', 'PotCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(504, 'POWR', 'Power-Ledger', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(505, 'PPC', 'Peercoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(506, 'PPT', 'Populous', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(507, 'PPY', 'Peerplays', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(508, 'PRG', 'Paragon-Coin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(509, 'PRL', 'Oyster-Pearl', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(510, 'PRO', 'Propy', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(511, 'PST', 'Primas', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(512, 'PTC', 'Pesetacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(513, 'PTOY', 'Patientory', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(514, 'PURA', 'Pura', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(515, 'QASH', 'QASH', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(516, 'QAU', 'Quantum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(517, 'QLC', 'Qlink', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(518, 'QRK', 'Quark', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(519, 'QRL', 'Quantum-Resistant-Ledger', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(520, 'QSP', 'Quantstamp', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(521, 'QTL', 'Quatloo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(522, 'QTUM', 'Qtum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(523, 'QWARK', 'Qwark', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(524, 'R', 'Revain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(525, 'RADS', 'Radium', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(526, 'RAIN', 'Condensate', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(527, 'RBIES', 'Rubies', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(528, 'RBX', 'Ripto-Bux', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(529, 'RBY', 'RubyCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(530, 'RCN', 'Ripio-Credit-Network', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(531, 'RDD', 'ReddCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(532, 'RDN', 'Raiden-Network-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(533, 'REC', 'Regalcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(534, 'RED', 'Redcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(535, 'REP', 'Augur', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(536, 'REQ', 'Request-Network', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(537, 'RHOC', 'RChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(538, 'RIC', 'Riecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(539, 'RISE', 'Rise', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(540, 'RLC', 'RLC-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(541, 'RLT', 'RouletteToken', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(542, 'RPX', 'Red-Pulse', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(543, 'RRT', 'Recovery-Right-Tokens', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(544, 'RUFF', 'Ruff', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(545, 'RUP', 'Rupee', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(546, 'RVT', 'Rivetz', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(547, 'SAFEX', 'SafeExchangeCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(548, 'SALT', 'Salt', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(549, 'SAN', 'Santiment-Network-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(550, 'SBD', 'Steem-Dollars', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(551, 'SBTC', 'Super-Bitcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(552, 'SC', 'Siacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(553, 'SEELE', 'Seele', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(554, 'SEQ', 'Sequence', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(555, 'SHIFT', 'SHIFT', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(556, 'SIB', 'SIBCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(557, 'SIGMA', 'SIGMAcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(558, 'SIGT', 'Signatum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(559, 'SJCX', 'Storjcoin-X', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(560, 'SKIN', 'SkinCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(561, 'SKY', 'Skycoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(562, 'SLR', 'SolarCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(563, 'SLS', 'SaluS', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(564, 'SMART', 'SmartCash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(565, 'SMT', 'SmartMesh', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(566, 'SNC', 'SunContract', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(567, 'SNGLS', 'SingularDTV', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(568, 'SNM', 'SONM', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(569, 'SNRG', 'Synergy', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(570, 'SNT', 'Status-Network-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(571, 'SOC', 'All-Sports', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(572, 'SOUL', 'Phantasma', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(573, 'SPANK', 'SpankChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(574, 'SPC', 'SpaceChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(575, 'SPHR', 'Sphere', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(576, 'SPR', 'SpreadCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(577, 'SRN', 'Sirin-Labs-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(578, 'START', 'Startcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(579, 'STEEM', 'Steem', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(580, 'STK', 'STK-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(581, 'STORJ', 'Storj', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(582, 'STORM', 'Storm', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(583, 'STQ', 'Storiqa', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(584, 'STRAT', 'Stratis', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(585, 'STX', 'Stox', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(586, 'SUB', 'Substratum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(587, 'SWFTC', 'SwftCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(588, 'SWIFT', 'Bitswift', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(589, 'SWT', 'Swarm-City', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(590, 'SYNX', 'Syndicate', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(591, 'SYS', 'SysCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(592, 'TAAS', 'Taas', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(593, 'TAU', 'Lamden', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(594, 'TCC', 'The-ChampCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(595, 'TFL', 'True-Flip', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(596, 'THC', 'HempCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(597, 'THETA', 'Theta-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(598, 'TIME', 'Time', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(599, 'TIX', 'Blocktix', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(600, 'TKN', 'TokenCard', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(601, 'TKR', 'Trackr', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(602, 'TKS', 'Tokes', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(603, 'TNB', 'Time-New-Bank', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(604, 'TNT', 'Tierion', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(605, 'TOA', 'ToaCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(606, 'TRAC', 'OriginTrail', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(607, 'TRC', 'Terracoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(608, 'TRCT', 'Tracto', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(609, 'TRIG', 'Triggers', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(610, 'TRST', 'Trustcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(611, 'TRUE', 'TrueChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(612, 'TRUST', 'TrustPlus', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(613, 'TRX', 'Tronix', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(614, 'TUSD', 'TrueUSD', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(615, 'TX', 'TransferCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(616, 'UBQ', 'Ubiq', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(617, 'UKG', 'UnikoinGold', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(618, 'ULA', 'Ulatech', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(619, 'UNB', 'UnbreakableCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(620, 'UNITY', 'SuperNET', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(621, 'UNO', 'Unobtanium', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(622, 'UNY', 'Unity-Ingot', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(623, 'UP', 'UpToken', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(624, 'URO', 'Uro', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(625, 'USDT', 'Tether', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(626, 'UTK', 'UTrust', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(627, 'VEE', 'BLOCKv', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(628, 'VEN', 'VeChain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(629, 'VERI', 'Veritaseum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(630, 'VIA', 'Viacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(631, 'VIB', 'Viberate', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(632, 'VIBE', 'Vibe', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(633, 'VIVO', 'VIVO', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(634, 'VOISE', 'Voise', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(635, 'VOX', 'Voxels', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(636, 'VPN', 'VPNCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(637, 'VRC', 'Vericoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(638, 'VRM', 'Verium', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(639, 'VRS', 'Veros', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(640, 'VSL', 'vSlice', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(641, 'VTC', 'Vertcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(642, 'VTR', 'vTorrent', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(643, 'WABI', 'WaBi', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(644, 'WAN', 'Wanchain', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(645, 'WAVES', 'Waves', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(646, 'WAX', 'Wax-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(647, 'WCT', 'Waves-Community', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(648, 'WDC', 'WorldCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(649, 'WGO', 'WavesGo', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(650, 'WGR', 'Wagerr', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(651, 'WINGS', 'Wings', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(652, 'WPR', 'WePower', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(653, 'WTC', 'Walton', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(654, 'WTT', 'Giga-Watt-Token', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(655, 'XAS', 'Asch', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(656, 'XAUR', 'Xaurum', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(657, 'XBC', 'Bitcoin-Plus', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(658, 'XBY', 'XtraBYtes', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(659, 'XCN', 'Cryptonite', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(660, 'XCP', 'Counterparty', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(661, 'XDN', 'DigitalNote', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(662, 'XEL', 'Elastic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(663, 'XEM', 'NEM', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(664, 'XID', 'Sphere-Identity', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(665, 'XLM', 'Stellar', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(666, 'XMG', 'Magi', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(667, 'XMR', 'Monero', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(668, 'XMT', 'Metal', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(669, 'XMY', 'Myriadcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(670, 'XPM', 'Primecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(671, 'XRL', 'Rialto', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(672, 'XRP', 'Ripple', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(673, 'XSPEC', 'Spectrecoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(674, 'XST', 'Stealthcoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(675, 'XTZ', 'Tezos', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(676, 'XUC', 'Exchange-Union', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(677, 'XVC', 'Vcash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(678, 'XVG', 'Verge', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(679, 'XWC', 'WhiteCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(680, 'XZC', 'ZCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(681, 'XZR', 'ZrCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(682, 'YEE', 'Yee', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(683, 'YOYOW', 'YOYOW', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(684, 'ZCC', 'ZcCoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(685, 'ZCL', 'Zclassic', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(686, 'ZCO', 'Zebi', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(687, 'ZEC', 'Zcash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(688, 'ZEN', 'ZenCash', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(689, 'ZET', 'Zetacoin', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(690, 'ZIL', 'Zilliqa', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(691, 'ZLA', 'Zilla', true);
INSERT INTO public.currencies
(id, code, "name", is_crypto)
VALUES(692, 'ZRX', '0x', true);
