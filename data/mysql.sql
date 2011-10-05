-- Adminer 3.3.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `example`;
CREATE TABLE `example` (
  `idexample` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(128) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `born` int(11) NOT NULL,
  `dead` int(11) NOT NULL,
  `daughters` int(11) NOT NULL,
  `sons` int(11) NOT NULL,
  PRIMARY KEY (`idexample`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `example` (`idexample`, `surname`, `name`, `sex`, `born`, `dead`, `daughters`, `sons`) VALUES
(1,	'Quam',	'Pellentesq',	'female',	485283421,	636012478,	0,	3),
(2,	'Nemo',	'Velit',	'female',	699546973,	884040323,	2,	1),
(3,	'Ipsam',	'Enim',	'female',	564706800,	977876553,	4,	2),
(4,	'Quia',	'Voluptatem',	'female',	531385976,	1126938311,	1,	2),
(5,	'Aspernatur',	'Voluptas',	'male',	912160292,	1220856236,	4,	4),
(6,	'Fugit',	'Odit',	'female',	764288459,	1242192466,	0,	0),
(7,	'Magni',	'Consequuntur',	'male',	549801111,	861429070,	3,	0),
(8,	'Ratione',	'Dolores',	'male',	795175162,	934906434,	4,	1),
(9,	'Nesciunt',	'Sequi',	'female',	769722764,	911582129,	4,	2),
(10,	'Tincidunt',	'Nunc',	'female',	866622869,	888463187,	4,	1),
(11,	'Vitae',	'Ante',	'female',	533976843,	1189942001,	3,	2),
(12,	'Auctor',	'Massa',	'male',	832520804,	1157833463,	2,	2),
(13,	'Wisi',	'Ornare',	'female',	473673618,	554978663,	0,	1),
(14,	'Proin',	'Metus',	'female',	796257946,	1055601838,	4,	2),
(15,	'Lacinia',	'Mattis',	'male',	494504989,	971518698,	2,	1),
(16,	'Erat',	'Justo',	'female',	746997549,	1087630571,	0,	0),
(17,	'Convallis',	'Volutpat',	'male',	651263786,	1222660486,	3,	4),
(18,	'Quidem',	'Harum',	'male',	1067544552,	1076427120,	1,	4),
(19,	'Facilis',	'Rerum',	'male',	1024387425,	1214538346,	1,	1),
(20,	'Distinctio',	'Expedita',	'male',	740121016,	1058420577,	1,	4),
(21,	'Elementum',	'Cras',	'male',	477589361,	962021477,	4,	1),
(22,	'Viverra',	'Duis',	'female',	1018826310,	1045786979,	4,	3),
(23,	'Phasellus',	'Diam',	'male',	939868746,	1089630912,	2,	4),
(24,	'Posuere',	'Vestibulum',	'male',	925628544,	1109165833,	2,	4),
(25,	'Tortor',	'Dapibus',	'male',	887878790,	998601788,	4,	3),
(26,	'Sociis',	'Sollicitudin',	'female',	581280692,	961172393,	0,	3),
(27,	'Penatibus',	'Natoque',	'female',	971345815,	1224846034,	0,	0),
(28,	'Montes',	'Parturient',	'female',	959311410,	1170456370,	2,	1),
(29,	'Ridiculus',	'Nascetur',	'male',	510860553,	954395343,	4,	3),
(30,	'Fusce',	'Maecenas',	'male',	879916084,	950313380,	2,	4),
(31,	'Risus',	'Consectetuer',	'male',	775098894,	1144078915,	0,	0),
(32,	'Nullam',	'Nunc',	'male',	588895852,	1118076679,	2,	4),
(33,	'Nonummy',	'Sapien',	'male',	822558735,	1134944082,	0,	0),
(34,	'Suspendisse',	'Lobortis',	'female',	539794989,	1106610695,	0,	4),
(35,	'Ultrices',	'Sagittis',	'male',	812129755,	820094342,	0,	2),
(36,	'Donec',	'Augue',	'female',	599958300,	1249799837,	0,	2),
(37,	'Ullamcorper',	'Ipsum',	'male',	581244135,	690469041,	2,	1),
(38,	'Mauris',	'Scelerisque',	'male',	813798000,	931771868,	2,	4),
(39,	'Felis',	'Dolor',	'male',	742805466,	1052682338,	2,	4),
(40,	'Tellus',	'Luctus',	'male',	620823293,	1177673473,	3,	0),
(41,	'Turpisss',	'Null',	'male',	788828400,	899965348,	0,	2),
(42,	'Cursus',	'Magna',	'male',	694735244,	868309709,	4,	4),
(43,	'Suscipit',	'Amet',	'male',	529711069,	689982972,	1,	3),
(44,	'Minima',	'Interdum',	'female',	674967738,	1005778203,	0,	4),
(45,	'Quis',	'Veniam',	'male',	556654332,	1025927747,	2,	1),
(46,	'Exercitationem',	'Nostrum',	'male',	492442285,	827263177,	2,	1),
(47,	'Corporis',	'Ullam',	'male',	563368386,	1068966712,	1,	1),
(48,	'Nisi',	'Laboriosam',	'female',	621027399,	896576869,	2,	2),
(49,	'Commodi',	'Aliquid',	'female',	1023722128,	1040432941,	1,	4);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_active` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` char(120) NOT NULL,
  `role` varchar(255) NOT NULL,
  `retik` varchar(255) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`iduser`, `name`, `email`, `last_active`, `password`, `role`, `retik`) VALUES
(1,	'Supruser',	'admin',	'2010-12-03 04:16:42',	'af8b8654e4e80cedd57fde2d248f8b9391bff2c3',	'admin',	'');

-- 2011-10-05 21:05:18
