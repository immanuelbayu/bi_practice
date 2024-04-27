/*
SQLyog Community v12.3.3 (64 bit)
MySQL - 5.7.17-log : Database - dwsakila
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dwsakila` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dwsakila`;

/*Table structure for table `dim_category` */

DROP TABLE IF EXISTS `dim_category`;

CREATE TABLE `dim_category` (
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(25) DEFAULT NULL,
  KEY `idx_dim_category_lookup` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dim_category` */

insert  into `dim_category`(`category_id`,`category_name`) values 
(1,'Action'),
(2,'Animation'),
(3,'Children'),
(4,'Classics'),
(5,'Comedy'),
(6,'Documentary'),
(7,'Drama'),
(8,'Family'),
(9,'Foreign'),
(10,'Games'),
(11,'Horror'),
(12,'Music'),
(13,'New'),
(14,'Sci-Fi'),
(15,'Sports'),
(16,'Travel');

/*Table structure for table `dim_customer` */

DROP TABLE IF EXISTS `dim_customer`;

CREATE TABLE `dim_customer` (
  `id_customer` int(11) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  KEY `idx_dim_customer_lookup` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dim_customer` */

insert  into `dim_customer`(`id_customer`,`first_name`,`email`) values 
(1,'MARY','MARY.SMITH@sakilacustomer.org'),
(2,'PATRICIA','PATRICIA.JOHNSON@sakilacustomer.org'),
(3,'LINDA','LINDA.WILLIAMS@sakilacustomer.org'),
(4,'BARBARA','BARBARA.JONES@sakilacustomer.org'),
(5,'ELIZABETH','ELIZABETH.BROWN@sakilacustomer.org'),
(6,'JENNIFER','JENNIFER.DAVIS@sakilacustomer.org'),
(7,'MARIA','MARIA.MILLER@sakilacustomer.org'),
(8,'SUSAN','SUSAN.WILSON@sakilacustomer.org'),
(9,'MARGARET','MARGARET.MOORE@sakilacustomer.org'),
(10,'DOROTHY','DOROTHY.TAYLOR@sakilacustomer.org'),
(11,'LISA','LISA.ANDERSON@sakilacustomer.org'),
(12,'NANCY','NANCY.THOMAS@sakilacustomer.org'),
(13,'KAREN','KAREN.JACKSON@sakilacustomer.org'),
(14,'BETTY','BETTY.WHITE@sakilacustomer.org'),
(15,'HELEN','HELEN.HARRIS@sakilacustomer.org'),
(17,'DONNA','DONNA.THOMPSON@sakilacustomer.org'),
(18,'CAROL','CAROL.GARCIA@sakilacustomer.org'),
(19,'RUTH','RUTH.MARTINEZ@sakilacustomer.org'),
(20,'SHARON','SHARON.ROBINSON@sakilacustomer.org'),
(21,'MICHELLE','MICHELLE.CLARK@sakilacustomer.org'),
(22,'LAURA','LAURA.RODRIGUEZ@sakilacustomer.org'),
(23,'SARAH','SARAH.LEWIS@sakilacustomer.org'),
(24,'KIMBERLY','KIMBERLY.LEE@sakilacustomer.org'),
(25,'DEBORAH','DEBORAH.WALKER@sakilacustomer.org'),
(26,'JESSICA','JESSICA.HALL@sakilacustomer.org'),
(27,'SHIRLEY','SHIRLEY.ALLEN@sakilacustomer.org'),
(28,'CYNTHIA','CYNTHIA.YOUNG@sakilacustomer.org'),
(29,'ANGELA','ANGELA.HERNANDEZ@sakilacustomer.org'),
(30,'MELISSA','MELISSA.KING@sakilacustomer.org'),
(31,'BRENDA','BRENDA.WRIGHT@sakilacustomer.org'),
(32,'AMY','AMY.LOPEZ@sakilacustomer.org'),
(33,'ANNA','ANNA.HILL@sakilacustomer.org'),
(34,'REBECCA','REBECCA.SCOTT@sakilacustomer.org'),
(35,'VIRGINIA','VIRGINIA.GREEN@sakilacustomer.org'),
(36,'KATHLEEN','KATHLEEN.ADAMS@sakilacustomer.org'),
(37,'PAMELA','PAMELA.BAKER@sakilacustomer.org'),
(38,'MARTHA','MARTHA.GONZALEZ@sakilacustomer.org'),
(39,'DEBRA','DEBRA.NELSON@sakilacustomer.org'),
(40,'AMANDA','AMANDA.CARTER@sakilacustomer.org'),
(41,'STEPHANIE','STEPHANIE.MITCHELL@sakilacustomer.org'),
(42,'CAROLYN','CAROLYN.PEREZ@sakilacustomer.org'),
(43,'CHRISTINE','CHRISTINE.ROBERTS@sakilacustomer.org'),
(44,'MARIE','MARIE.TURNER@sakilacustomer.org'),
(45,'JANET','JANET.PHILLIPS@sakilacustomer.org'),
(46,'CATHERINE','CATHERINE.CAMPBELL@sakilacustomer.org'),
(47,'FRANCES','FRANCES.PARKER@sakilacustomer.org'),
(48,'ANN','ANN.EVANS@sakilacustomer.org'),
(49,'JOYCE','JOYCE.EDWARDS@sakilacustomer.org'),
(50,'DIANE','DIANE.COLLINS@sakilacustomer.org'),
(51,'ALICE','ALICE.STEWART@sakilacustomer.org'),
(52,'JULIE','JULIE.SANCHEZ@sakilacustomer.org'),
(53,'HEATHER','HEATHER.MORRIS@sakilacustomer.org'),
(54,'TERESA','TERESA.ROGERS@sakilacustomer.org'),
(55,'DORIS','DORIS.REED@sakilacustomer.org'),
(56,'GLORIA','GLORIA.COOK@sakilacustomer.org'),
(57,'EVELYN','EVELYN.MORGAN@sakilacustomer.org'),
(58,'JEAN','JEAN.BELL@sakilacustomer.org'),
(59,'CHERYL','CHERYL.MURPHY@sakilacustomer.org'),
(60,'MILDRED','MILDRED.BAILEY@sakilacustomer.org'),
(61,'KATHERINE','KATHERINE.RIVERA@sakilacustomer.org'),
(62,'JOAN','JOAN.COOPER@sakilacustomer.org'),
(63,'ASHLEY','ASHLEY.RICHARDSON@sakilacustomer.org'),
(65,'ROSE','ROSE.HOWARD@sakilacustomer.org'),
(66,'JANICE','JANICE.WARD@sakilacustomer.org'),
(67,'KELLY','KELLY.TORRES@sakilacustomer.org'),
(68,'NICOLE','NICOLE.PETERSON@sakilacustomer.org'),
(69,'JUDY','JUDY.GRAY@sakilacustomer.org'),
(70,'CHRISTINA','CHRISTINA.RAMIREZ@sakilacustomer.org'),
(71,'KATHY','KATHY.JAMES@sakilacustomer.org'),
(72,'THERESA','THERESA.WATSON@sakilacustomer.org'),
(73,'BEVERLY','BEVERLY.BROOKS@sakilacustomer.org'),
(74,'DENISE','DENISE.KELLY@sakilacustomer.org'),
(75,'TAMMY','TAMMY.SANDERS@sakilacustomer.org'),
(76,'IRENE','IRENE.PRICE@sakilacustomer.org'),
(77,'JANE','JANE.BENNETT@sakilacustomer.org'),
(78,'LORI','LORI.WOOD@sakilacustomer.org'),
(79,'RACHEL','RACHEL.BARNES@sakilacustomer.org'),
(80,'MARILYN','MARILYN.ROSS@sakilacustomer.org'),
(81,'ANDREA','ANDREA.HENDERSON@sakilacustomer.org'),
(82,'KATHRYN','KATHRYN.COLEMAN@sakilacustomer.org'),
(83,'LOUISE','LOUISE.JENKINS@sakilacustomer.org'),
(84,'SARA','SARA.PERRY@sakilacustomer.org'),
(85,'ANNE','ANNE.POWELL@sakilacustomer.org'),
(86,'JACQUELINE','JACQUELINE.LONG@sakilacustomer.org'),
(87,'WANDA','WANDA.PATTERSON@sakilacustomer.org'),
(88,'BONNIE','BONNIE.HUGHES@sakilacustomer.org'),
(89,'JULIA','JULIA.FLORES@sakilacustomer.org'),
(90,'RUBY','RUBY.WASHINGTON@sakilacustomer.org'),
(91,'LOIS','LOIS.BUTLER@sakilacustomer.org'),
(92,'TINA','TINA.SIMMONS@sakilacustomer.org'),
(93,'PHYLLIS','PHYLLIS.FOSTER@sakilacustomer.org'),
(94,'NORMA','NORMA.GONZALES@sakilacustomer.org'),
(95,'PAULA','PAULA.BRYANT@sakilacustomer.org'),
(96,'DIANA','DIANA.ALEXANDER@sakilacustomer.org'),
(97,'ANNIE','ANNIE.RUSSELL@sakilacustomer.org'),
(98,'LILLIAN','LILLIAN.GRIFFIN@sakilacustomer.org'),
(99,'EMILY','EMILY.DIAZ@sakilacustomer.org'),
(100,'ROBIN','ROBIN.HAYES@sakilacustomer.org'),
(101,'PEGGY','PEGGY.MYERS@sakilacustomer.org'),
(102,'CRYSTAL','CRYSTAL.FORD@sakilacustomer.org'),
(103,'GLADYS','GLADYS.HAMILTON@sakilacustomer.org'),
(104,'RITA','RITA.GRAHAM@sakilacustomer.org'),
(105,'DAWN','DAWN.SULLIVAN@sakilacustomer.org'),
(106,'CONNIE','CONNIE.WALLACE@sakilacustomer.org'),
(107,'FLORENCE','FLORENCE.WOODS@sakilacustomer.org'),
(108,'TRACY','TRACY.COLE@sakilacustomer.org'),
(109,'EDNA','EDNA.WEST@sakilacustomer.org'),
(110,'TIFFANY','TIFFANY.JORDAN@sakilacustomer.org'),
(111,'CARMEN','CARMEN.OWENS@sakilacustomer.org'),
(112,'ROSA','ROSA.REYNOLDS@sakilacustomer.org'),
(113,'CINDY','CINDY.FISHER@sakilacustomer.org'),
(114,'GRACE','GRACE.ELLIS@sakilacustomer.org'),
(115,'WENDY','WENDY.HARRISON@sakilacustomer.org'),
(116,'VICTORIA','VICTORIA.GIBSON@sakilacustomer.org'),
(117,'EDITH','EDITH.MCDONALD@sakilacustomer.org'),
(118,'KIM','KIM.CRUZ@sakilacustomer.org'),
(119,'SHERRY','SHERRY.MARSHALL@sakilacustomer.org'),
(120,'SYLVIA','SYLVIA.ORTIZ@sakilacustomer.org'),
(121,'JOSEPHINE','JOSEPHINE.GOMEZ@sakilacustomer.org'),
(122,'THELMA','THELMA.MURRAY@sakilacustomer.org'),
(123,'SHANNON','SHANNON.FREEMAN@sakilacustomer.org'),
(125,'ETHEL','ETHEL.WEBB@sakilacustomer.org'),
(126,'ELLEN','ELLEN.SIMPSON@sakilacustomer.org'),
(127,'ELAINE','ELAINE.STEVENS@sakilacustomer.org'),
(128,'MARJORIE','MARJORIE.TUCKER@sakilacustomer.org'),
(129,'CARRIE','CARRIE.PORTER@sakilacustomer.org'),
(130,'CHARLOTTE','CHARLOTTE.HUNTER@sakilacustomer.org'),
(131,'MONICA','MONICA.HICKS@sakilacustomer.org'),
(132,'ESTHER','ESTHER.CRAWFORD@sakilacustomer.org'),
(133,'PAULINE','PAULINE.HENRY@sakilacustomer.org'),
(134,'EMMA','EMMA.BOYD@sakilacustomer.org'),
(135,'JUANITA','JUANITA.MASON@sakilacustomer.org'),
(136,'ANITA','ANITA.MORALES@sakilacustomer.org'),
(137,'RHONDA','RHONDA.KENNEDY@sakilacustomer.org'),
(138,'HAZEL','HAZEL.WARREN@sakilacustomer.org'),
(139,'AMBER','AMBER.DIXON@sakilacustomer.org'),
(140,'EVA','EVA.RAMOS@sakilacustomer.org'),
(141,'DEBBIE','DEBBIE.REYES@sakilacustomer.org'),
(142,'APRIL','APRIL.BURNS@sakilacustomer.org'),
(143,'LESLIE','LESLIE.GORDON@sakilacustomer.org'),
(144,'CLARA','CLARA.SHAW@sakilacustomer.org'),
(145,'LUCILLE','LUCILLE.HOLMES@sakilacustomer.org'),
(146,'JAMIE','JAMIE.RICE@sakilacustomer.org'),
(147,'JOANNE','JOANNE.ROBERTSON@sakilacustomer.org'),
(148,'ELEANOR','ELEANOR.HUNT@sakilacustomer.org'),
(149,'VALERIE','VALERIE.BLACK@sakilacustomer.org'),
(150,'DANIELLE','DANIELLE.DANIELS@sakilacustomer.org'),
(151,'MEGAN','MEGAN.PALMER@sakilacustomer.org'),
(152,'ALICIA','ALICIA.MILLS@sakilacustomer.org'),
(153,'SUZANNE','SUZANNE.NICHOLS@sakilacustomer.org'),
(154,'MICHELE','MICHELE.GRANT@sakilacustomer.org'),
(155,'GAIL','GAIL.KNIGHT@sakilacustomer.org'),
(156,'BERTHA','BERTHA.FERGUSON@sakilacustomer.org'),
(157,'DARLENE','DARLENE.ROSE@sakilacustomer.org'),
(158,'VERONICA','VERONICA.STONE@sakilacustomer.org'),
(159,'JILL','JILL.HAWKINS@sakilacustomer.org'),
(160,'ERIN','ERIN.DUNN@sakilacustomer.org'),
(161,'GERALDINE','GERALDINE.PERKINS@sakilacustomer.org'),
(162,'LAUREN','LAUREN.HUDSON@sakilacustomer.org'),
(163,'CATHY','CATHY.SPENCER@sakilacustomer.org'),
(164,'JOANN','JOANN.GARDNER@sakilacustomer.org'),
(165,'LORRAINE','LORRAINE.STEPHENS@sakilacustomer.org'),
(166,'LYNN','LYNN.PAYNE@sakilacustomer.org'),
(167,'SALLY','SALLY.PIERCE@sakilacustomer.org'),
(168,'REGINA','REGINA.BERRY@sakilacustomer.org'),
(170,'BEATRICE','BEATRICE.ARNOLD@sakilacustomer.org'),
(171,'DOLORES','DOLORES.WAGNER@sakilacustomer.org'),
(172,'BERNICE','BERNICE.WILLIS@sakilacustomer.org'),
(173,'AUDREY','AUDREY.RAY@sakilacustomer.org'),
(174,'YVONNE','YVONNE.WATKINS@sakilacustomer.org'),
(175,'ANNETTE','ANNETTE.OLSON@sakilacustomer.org'),
(176,'JUNE','JUNE.CARROLL@sakilacustomer.org'),
(177,'SAMANTHA','SAMANTHA.DUNCAN@sakilacustomer.org'),
(178,'MARION','MARION.SNYDER@sakilacustomer.org'),
(179,'DANA','DANA.HART@sakilacustomer.org'),
(180,'STACY','STACY.CUNNINGHAM@sakilacustomer.org'),
(181,'ANA','ANA.BRADLEY@sakilacustomer.org'),
(182,'RENEE','RENEE.LANE@sakilacustomer.org'),
(183,'IDA','IDA.ANDREWS@sakilacustomer.org'),
(184,'VIVIAN','VIVIAN.RUIZ@sakilacustomer.org'),
(185,'ROBERTA','ROBERTA.HARPER@sakilacustomer.org'),
(186,'HOLLY','HOLLY.FOX@sakilacustomer.org'),
(187,'BRITTANY','BRITTANY.RILEY@sakilacustomer.org'),
(188,'MELANIE','MELANIE.ARMSTRONG@sakilacustomer.org'),
(189,'LORETTA','LORETTA.CARPENTER@sakilacustomer.org'),
(190,'YOLANDA','YOLANDA.WEAVER@sakilacustomer.org'),
(191,'JEANETTE','JEANETTE.GREENE@sakilacustomer.org'),
(192,'LAURIE','LAURIE.LAWRENCE@sakilacustomer.org'),
(193,'KATIE','KATIE.ELLIOTT@sakilacustomer.org'),
(194,'KRISTEN','KRISTEN.CHAVEZ@sakilacustomer.org'),
(195,'VANESSA','VANESSA.SIMS@sakilacustomer.org'),
(196,'ALMA','ALMA.AUSTIN@sakilacustomer.org'),
(197,'SUE','SUE.PETERS@sakilacustomer.org'),
(198,'ELSIE','ELSIE.KELLEY@sakilacustomer.org'),
(199,'BETH','BETH.FRANKLIN@sakilacustomer.org'),
(200,'JEANNE','JEANNE.LAWSON@sakilacustomer.org'),
(201,'VICKI','VICKI.FIELDS@sakilacustomer.org'),
(202,'CARLA','CARLA.GUTIERREZ@sakilacustomer.org'),
(203,'TARA','TARA.RYAN@sakilacustomer.org'),
(204,'ROSEMARY','ROSEMARY.SCHMIDT@sakilacustomer.org'),
(205,'EILEEN','EILEEN.CARR@sakilacustomer.org'),
(206,'TERRI','TERRI.VASQUEZ@sakilacustomer.org'),
(207,'GERTRUDE','GERTRUDE.CASTILLO@sakilacustomer.org'),
(208,'LUCY','LUCY.WHEELER@sakilacustomer.org'),
(209,'TONYA','TONYA.CHAPMAN@sakilacustomer.org'),
(210,'ELLA','ELLA.OLIVER@sakilacustomer.org'),
(211,'STACEY','STACEY.MONTGOMERY@sakilacustomer.org'),
(212,'WILMA','WILMA.RICHARDS@sakilacustomer.org'),
(213,'GINA','GINA.WILLIAMSON@sakilacustomer.org'),
(214,'KRISTIN','KRISTIN.JOHNSTON@sakilacustomer.org'),
(215,'JESSIE','JESSIE.BANKS@sakilacustomer.org'),
(216,'NATALIE','NATALIE.MEYER@sakilacustomer.org'),
(217,'AGNES','AGNES.BISHOP@sakilacustomer.org'),
(218,'VERA','VERA.MCCOY@sakilacustomer.org'),
(219,'WILLIE','WILLIE.HOWELL@sakilacustomer.org'),
(220,'CHARLENE','CHARLENE.ALVAREZ@sakilacustomer.org'),
(221,'BESSIE','BESSIE.MORRISON@sakilacustomer.org'),
(222,'DELORES','DELORES.HANSEN@sakilacustomer.org'),
(223,'MELINDA','MELINDA.FERNANDEZ@sakilacustomer.org'),
(224,'PEARL','PEARL.GARZA@sakilacustomer.org'),
(225,'ARLENE','ARLENE.HARVEY@sakilacustomer.org'),
(226,'MAUREEN','MAUREEN.LITTLE@sakilacustomer.org'),
(227,'COLLEEN','COLLEEN.BURTON@sakilacustomer.org'),
(228,'ALLISON','ALLISON.STANLEY@sakilacustomer.org'),
(229,'TAMARA','TAMARA.NGUYEN@sakilacustomer.org'),
(230,'JOY','JOY.GEORGE@sakilacustomer.org'),
(231,'GEORGIA','GEORGIA.JACOBS@sakilacustomer.org'),
(232,'CONSTANCE','CONSTANCE.REID@sakilacustomer.org'),
(233,'LILLIE','LILLIE.KIM@sakilacustomer.org'),
(234,'CLAUDIA','CLAUDIA.FULLER@sakilacustomer.org'),
(235,'JACKIE','JACKIE.LYNCH@sakilacustomer.org'),
(236,'MARCIA','MARCIA.DEAN@sakilacustomer.org'),
(237,'TANYA','TANYA.GILBERT@sakilacustomer.org'),
(238,'NELLIE','NELLIE.GARRETT@sakilacustomer.org'),
(239,'MINNIE','MINNIE.ROMERO@sakilacustomer.org'),
(240,'MARLENE','MARLENE.WELCH@sakilacustomer.org'),
(242,'GLENDA','GLENDA.FRAZIER@sakilacustomer.org'),
(243,'LYDIA','LYDIA.BURKE@sakilacustomer.org'),
(244,'VIOLA','VIOLA.HANSON@sakilacustomer.org'),
(245,'COURTNEY','COURTNEY.DAY@sakilacustomer.org'),
(246,'MARIAN','MARIAN.MENDOZA@sakilacustomer.org'),
(247,'STELLA','STELLA.MORENO@sakilacustomer.org'),
(248,'CAROLINE','CAROLINE.BOWMAN@sakilacustomer.org'),
(249,'DORA','DORA.MEDINA@sakilacustomer.org'),
(250,'JO','JO.FOWLER@sakilacustomer.org'),
(251,'VICKIE','VICKIE.BREWER@sakilacustomer.org'),
(252,'MATTIE','MATTIE.HOFFMAN@sakilacustomer.org'),
(253,'TERRY','TERRY.CARLSON@sakilacustomer.org'),
(254,'MAXINE','MAXINE.SILVA@sakilacustomer.org'),
(255,'IRMA','IRMA.PEARSON@sakilacustomer.org'),
(256,'MABEL','MABEL.HOLLAND@sakilacustomer.org'),
(257,'MARSHA','MARSHA.DOUGLAS@sakilacustomer.org'),
(258,'MYRTLE','MYRTLE.FLEMING@sakilacustomer.org'),
(259,'LENA','LENA.JENSEN@sakilacustomer.org'),
(260,'CHRISTY','CHRISTY.VARGAS@sakilacustomer.org'),
(261,'DEANNA','DEANNA.BYRD@sakilacustomer.org'),
(262,'PATSY','PATSY.DAVIDSON@sakilacustomer.org'),
(263,'HILDA','HILDA.HOPKINS@sakilacustomer.org'),
(264,'GWENDOLYN','GWENDOLYN.MAY@sakilacustomer.org'),
(265,'JENNIE','JENNIE.TERRY@sakilacustomer.org'),
(266,'NORA','NORA.HERRERA@sakilacustomer.org'),
(267,'MARGIE','MARGIE.WADE@sakilacustomer.org'),
(268,'NINA','NINA.SOTO@sakilacustomer.org'),
(269,'CASSANDRA','CASSANDRA.WALTERS@sakilacustomer.org'),
(270,'LEAH','LEAH.CURTIS@sakilacustomer.org'),
(272,'KAY','KAY.CALDWELL@sakilacustomer.org'),
(273,'PRISCILLA','PRISCILLA.LOWE@sakilacustomer.org'),
(274,'NAOMI','NAOMI.JENNINGS@sakilacustomer.org'),
(275,'CAROLE','CAROLE.BARNETT@sakilacustomer.org'),
(276,'BRANDY','BRANDY.GRAVES@sakilacustomer.org'),
(277,'OLGA','OLGA.JIMENEZ@sakilacustomer.org'),
(278,'BILLIE','BILLIE.HORTON@sakilacustomer.org'),
(279,'DIANNE','DIANNE.SHELTON@sakilacustomer.org'),
(280,'TRACEY','TRACEY.BARRETT@sakilacustomer.org'),
(281,'LEONA','LEONA.OBRIEN@sakilacustomer.org'),
(282,'JENNY','JENNY.CASTRO@sakilacustomer.org'),
(283,'FELICIA','FELICIA.SUTTON@sakilacustomer.org'),
(284,'SONIA','SONIA.GREGORY@sakilacustomer.org'),
(285,'MIRIAM','MIRIAM.MCKINNEY@sakilacustomer.org'),
(286,'VELMA','VELMA.LUCAS@sakilacustomer.org'),
(287,'BECKY','BECKY.MILES@sakilacustomer.org'),
(288,'BOBBIE','BOBBIE.CRAIG@sakilacustomer.org'),
(289,'VIOLET','VIOLET.RODRIQUEZ@sakilacustomer.org'),
(290,'KRISTINA','KRISTINA.CHAMBERS@sakilacustomer.org'),
(291,'TONI','TONI.HOLT@sakilacustomer.org'),
(292,'MISTY','MISTY.LAMBERT@sakilacustomer.org'),
(293,'MAE','MAE.FLETCHER@sakilacustomer.org'),
(294,'SHELLY','SHELLY.WATTS@sakilacustomer.org'),
(295,'DAISY','DAISY.BATES@sakilacustomer.org'),
(296,'RAMONA','RAMONA.HALE@sakilacustomer.org'),
(297,'SHERRI','SHERRI.RHODES@sakilacustomer.org'),
(298,'ERIKA','ERIKA.PENA@sakilacustomer.org'),
(299,'JAMES','JAMES.GANNON@sakilacustomer.org'),
(300,'JOHN','JOHN.FARNSWORTH@sakilacustomer.org'),
(301,'ROBERT','ROBERT.BAUGHMAN@sakilacustomer.org'),
(302,'MICHAEL','MICHAEL.SILVERMAN@sakilacustomer.org'),
(303,'WILLIAM','WILLIAM.SATTERFIELD@sakilacustomer.org'),
(304,'DAVID','DAVID.ROYAL@sakilacustomer.org'),
(305,'RICHARD','RICHARD.MCCRARY@sakilacustomer.org'),
(306,'CHARLES','CHARLES.KOWALSKI@sakilacustomer.org'),
(307,'JOSEPH','JOSEPH.JOY@sakilacustomer.org'),
(308,'THOMAS','THOMAS.GRIGSBY@sakilacustomer.org'),
(309,'CHRISTOPHER','CHRISTOPHER.GRECO@sakilacustomer.org'),
(310,'DANIEL','DANIEL.CABRAL@sakilacustomer.org'),
(311,'PAUL','PAUL.TROUT@sakilacustomer.org'),
(312,'MARK','MARK.RINEHART@sakilacustomer.org'),
(313,'DONALD','DONALD.MAHON@sakilacustomer.org'),
(314,'GEORGE','GEORGE.LINTON@sakilacustomer.org'),
(316,'STEVEN','STEVEN.CURLEY@sakilacustomer.org'),
(317,'EDWARD','EDWARD.BAUGH@sakilacustomer.org'),
(318,'BRIAN','BRIAN.WYMAN@sakilacustomer.org'),
(319,'RONALD','RONALD.WEINER@sakilacustomer.org'),
(320,'ANTHONY','ANTHONY.SCHWAB@sakilacustomer.org'),
(321,'KEVIN','KEVIN.SCHULER@sakilacustomer.org'),
(322,'JASON','JASON.MORRISSEY@sakilacustomer.org'),
(323,'MATTHEW','MATTHEW.MAHAN@sakilacustomer.org'),
(324,'GARY','GARY.COY@sakilacustomer.org'),
(325,'TIMOTHY','TIMOTHY.BUNN@sakilacustomer.org'),
(326,'JOSE','JOSE.ANDREW@sakilacustomer.org'),
(327,'LARRY','LARRY.THRASHER@sakilacustomer.org'),
(328,'JEFFREY','JEFFREY.SPEAR@sakilacustomer.org'),
(329,'FRANK','FRANK.WAGGONER@sakilacustomer.org'),
(330,'SCOTT','SCOTT.SHELLEY@sakilacustomer.org'),
(331,'ERIC','ERIC.ROBERT@sakilacustomer.org'),
(332,'STEPHEN','STEPHEN.QUALLS@sakilacustomer.org'),
(333,'ANDREW','ANDREW.PURDY@sakilacustomer.org'),
(334,'RAYMOND','RAYMOND.MCWHORTER@sakilacustomer.org'),
(335,'GREGORY','GREGORY.MAULDIN@sakilacustomer.org'),
(336,'JOSHUA','JOSHUA.MARK@sakilacustomer.org'),
(337,'JERRY','JERRY.JORDON@sakilacustomer.org'),
(338,'DENNIS','DENNIS.GILMAN@sakilacustomer.org'),
(339,'WALTER','WALTER.PERRYMAN@sakilacustomer.org'),
(340,'PATRICK','PATRICK.NEWSOM@sakilacustomer.org'),
(341,'PETER','PETER.MENARD@sakilacustomer.org'),
(342,'HAROLD','HAROLD.MARTINO@sakilacustomer.org'),
(343,'DOUGLAS','DOUGLAS.GRAF@sakilacustomer.org'),
(344,'HENRY','HENRY.BILLINGSLEY@sakilacustomer.org'),
(345,'CARL','CARL.ARTIS@sakilacustomer.org'),
(346,'ARTHUR','ARTHUR.SIMPKINS@sakilacustomer.org'),
(347,'RYAN','RYAN.SALISBURY@sakilacustomer.org'),
(348,'ROGER','ROGER.QUINTANILLA@sakilacustomer.org'),
(349,'JOE','JOE.GILLILAND@sakilacustomer.org'),
(350,'JUAN','JUAN.FRALEY@sakilacustomer.org'),
(351,'JACK','JACK.FOUST@sakilacustomer.org'),
(352,'ALBERT','ALBERT.CROUSE@sakilacustomer.org'),
(353,'JONATHAN','JONATHAN.SCARBOROUGH@sakilacustomer.org'),
(354,'JUSTIN','JUSTIN.NGO@sakilacustomer.org'),
(355,'TERRY','TERRY.GRISSOM@sakilacustomer.org'),
(356,'GERALD','GERALD.FULTZ@sakilacustomer.org'),
(357,'KEITH','KEITH.RICO@sakilacustomer.org'),
(358,'SAMUEL','SAMUEL.MARLOW@sakilacustomer.org'),
(359,'WILLIE','WILLIE.MARKHAM@sakilacustomer.org'),
(360,'RALPH','RALPH.MADRIGAL@sakilacustomer.org'),
(361,'LAWRENCE','LAWRENCE.LAWTON@sakilacustomer.org'),
(362,'NICHOLAS','NICHOLAS.BARFIELD@sakilacustomer.org'),
(363,'ROY','ROY.WHITING@sakilacustomer.org'),
(364,'BENJAMIN','BENJAMIN.VARNEY@sakilacustomer.org'),
(365,'BRUCE','BRUCE.SCHWARZ@sakilacustomer.org'),
(366,'BRANDON','BRANDON.HUEY@sakilacustomer.org'),
(367,'ADAM','ADAM.GOOCH@sakilacustomer.org'),
(369,'FRED','FRED.WHEAT@sakilacustomer.org'),
(370,'WAYNE','WAYNE.TRUONG@sakilacustomer.org'),
(371,'BILLY','BILLY.POULIN@sakilacustomer.org'),
(372,'STEVE','STEVE.MACKENZIE@sakilacustomer.org'),
(373,'LOUIS','LOUIS.LEONE@sakilacustomer.org'),
(374,'JEREMY','JEREMY.HURTADO@sakilacustomer.org'),
(375,'AARON','AARON.SELBY@sakilacustomer.org'),
(376,'RANDY','RANDY.GAITHER@sakilacustomer.org'),
(377,'HOWARD','HOWARD.FORTNER@sakilacustomer.org'),
(378,'EUGENE','EUGENE.CULPEPPER@sakilacustomer.org'),
(379,'CARLOS','CARLOS.COUGHLIN@sakilacustomer.org'),
(380,'RUSSELL','RUSSELL.BRINSON@sakilacustomer.org'),
(381,'BOBBY','BOBBY.BOUDREAU@sakilacustomer.org'),
(382,'VICTOR','VICTOR.BARKLEY@sakilacustomer.org'),
(383,'MARTIN','MARTIN.BALES@sakilacustomer.org'),
(384,'ERNEST','ERNEST.STEPP@sakilacustomer.org'),
(385,'PHILLIP','PHILLIP.HOLM@sakilacustomer.org'),
(386,'TODD','TODD.TAN@sakilacustomer.org'),
(387,'JESSE','JESSE.SCHILLING@sakilacustomer.org'),
(388,'CRAIG','CRAIG.MORRELL@sakilacustomer.org'),
(389,'ALAN','ALAN.KAHN@sakilacustomer.org'),
(390,'SHAWN','SHAWN.HEATON@sakilacustomer.org'),
(391,'CLARENCE','CLARENCE.GAMEZ@sakilacustomer.org'),
(392,'SEAN','SEAN.DOUGLASS@sakilacustomer.org'),
(393,'PHILIP','PHILIP.CAUSEY@sakilacustomer.org'),
(394,'CHRIS','CHRIS.BROTHERS@sakilacustomer.org'),
(395,'JOHNNY','JOHNNY.TURPIN@sakilacustomer.org'),
(396,'EARL','EARL.SHANKS@sakilacustomer.org'),
(397,'JIMMY','JIMMY.SCHRADER@sakilacustomer.org'),
(398,'ANTONIO','ANTONIO.MEEK@sakilacustomer.org'),
(399,'DANNY','DANNY.ISOM@sakilacustomer.org'),
(400,'BRYAN','BRYAN.HARDISON@sakilacustomer.org'),
(401,'TONY','TONY.CARRANZA@sakilacustomer.org'),
(402,'LUIS','LUIS.YANEZ@sakilacustomer.org'),
(403,'MIKE','MIKE.WAY@sakilacustomer.org'),
(404,'STANLEY','STANLEY.SCROGGINS@sakilacustomer.org'),
(405,'LEONARD','LEONARD.SCHOFIELD@sakilacustomer.org'),
(407,'DALE','DALE.RATCLIFF@sakilacustomer.org'),
(408,'MANUEL','MANUEL.MURRELL@sakilacustomer.org'),
(409,'RODNEY','RODNEY.MOELLER@sakilacustomer.org'),
(410,'CURTIS','CURTIS.IRBY@sakilacustomer.org'),
(411,'NORMAN','NORMAN.CURRIER@sakilacustomer.org'),
(412,'ALLEN','ALLEN.BUTTERFIELD@sakilacustomer.org'),
(413,'MARVIN','MARVIN.YEE@sakilacustomer.org'),
(414,'VINCENT','VINCENT.RALSTON@sakilacustomer.org'),
(415,'GLENN','GLENN.PULLEN@sakilacustomer.org'),
(416,'JEFFERY','JEFFERY.PINSON@sakilacustomer.org'),
(417,'TRAVIS','TRAVIS.ESTEP@sakilacustomer.org'),
(418,'JEFF','JEFF.EAST@sakilacustomer.org'),
(419,'CHAD','CHAD.CARBONE@sakilacustomer.org'),
(420,'JACOB','JACOB.LANCE@sakilacustomer.org'),
(421,'LEE','LEE.HAWKS@sakilacustomer.org'),
(422,'MELVIN','MELVIN.ELLINGTON@sakilacustomer.org'),
(423,'ALFRED','ALFRED.CASILLAS@sakilacustomer.org'),
(424,'KYLE','KYLE.SPURLOCK@sakilacustomer.org'),
(425,'FRANCIS','FRANCIS.SIKES@sakilacustomer.org'),
(426,'BRADLEY','BRADLEY.MOTLEY@sakilacustomer.org'),
(427,'JESUS','JESUS.MCCARTNEY@sakilacustomer.org'),
(428,'HERBERT','HERBERT.KRUGER@sakilacustomer.org'),
(429,'FREDERICK','FREDERICK.ISBELL@sakilacustomer.org'),
(430,'RAY','RAY.HOULE@sakilacustomer.org'),
(431,'JOEL','JOEL.FRANCISCO@sakilacustomer.org'),
(432,'EDWIN','EDWIN.BURK@sakilacustomer.org'),
(433,'DON','DON.BONE@sakilacustomer.org'),
(434,'EDDIE','EDDIE.TOMLIN@sakilacustomer.org'),
(435,'RICKY','RICKY.SHELBY@sakilacustomer.org'),
(436,'TROY','TROY.QUIGLEY@sakilacustomer.org'),
(437,'RANDALL','RANDALL.NEUMANN@sakilacustomer.org'),
(438,'BARRY','BARRY.LOVELACE@sakilacustomer.org'),
(439,'ALEXANDER','ALEXANDER.FENNELL@sakilacustomer.org'),
(440,'BERNARD','BERNARD.COLBY@sakilacustomer.org'),
(441,'MARIO','MARIO.CHEATHAM@sakilacustomer.org'),
(442,'LEROY','LEROY.BUSTAMANTE@sakilacustomer.org'),
(443,'FRANCISCO','FRANCISCO.SKIDMORE@sakilacustomer.org'),
(444,'MARCUS','MARCUS.HIDALGO@sakilacustomer.org'),
(445,'MICHEAL','MICHEAL.FORMAN@sakilacustomer.org'),
(447,'CLIFFORD','CLIFFORD.BOWENS@sakilacustomer.org'),
(448,'MIGUEL','MIGUEL.BETANCOURT@sakilacustomer.org'),
(449,'OSCAR','OSCAR.AQUINO@sakilacustomer.org'),
(450,'JAY','JAY.ROBB@sakilacustomer.org'),
(451,'JIM','JIM.REA@sakilacustomer.org'),
(452,'TOM','TOM.MILNER@sakilacustomer.org'),
(453,'CALVIN','CALVIN.MARTEL@sakilacustomer.org'),
(454,'ALEX','ALEX.GRESHAM@sakilacustomer.org'),
(455,'JON','JON.WILES@sakilacustomer.org'),
(456,'RONNIE','RONNIE.RICKETTS@sakilacustomer.org'),
(457,'BILL','BILL.GAVIN@sakilacustomer.org'),
(458,'LLOYD','LLOYD.DOWD@sakilacustomer.org'),
(459,'TOMMY','TOMMY.COLLAZO@sakilacustomer.org'),
(460,'LEON','LEON.BOSTIC@sakilacustomer.org'),
(461,'DEREK','DEREK.BLAKELY@sakilacustomer.org'),
(462,'WARREN','WARREN.SHERROD@sakilacustomer.org'),
(463,'DARRELL','DARRELL.POWER@sakilacustomer.org'),
(464,'JEROME','JEROME.KENYON@sakilacustomer.org'),
(465,'FLOYD','FLOYD.GANDY@sakilacustomer.org'),
(466,'LEO','LEO.EBERT@sakilacustomer.org'),
(467,'ALVIN','ALVIN.DELOACH@sakilacustomer.org'),
(468,'TIM','TIM.CARY@sakilacustomer.org'),
(469,'WESLEY','WESLEY.BULL@sakilacustomer.org'),
(470,'GORDON','GORDON.ALLARD@sakilacustomer.org'),
(471,'DEAN','DEAN.SAUER@sakilacustomer.org'),
(472,'GREG','GREG.ROBINS@sakilacustomer.org'),
(473,'JORGE','JORGE.OLIVARES@sakilacustomer.org'),
(474,'DUSTIN','DUSTIN.GILLETTE@sakilacustomer.org'),
(475,'PEDRO','PEDRO.CHESTNUT@sakilacustomer.org'),
(476,'DERRICK','DERRICK.BOURQUE@sakilacustomer.org'),
(477,'DAN','DAN.PAINE@sakilacustomer.org'),
(478,'LEWIS','LEWIS.LYMAN@sakilacustomer.org'),
(479,'ZACHARY','ZACHARY.HITE@sakilacustomer.org'),
(480,'COREY','COREY.HAUSER@sakilacustomer.org'),
(481,'HERMAN','HERMAN.DEVORE@sakilacustomer.org'),
(483,'VERNON','VERNON.CHAPA@sakilacustomer.org'),
(484,'ROBERTO','ROBERTO.VU@sakilacustomer.org'),
(485,'CLYDE','CLYDE.TOBIAS@sakilacustomer.org'),
(486,'GLEN','GLEN.TALBERT@sakilacustomer.org'),
(487,'HECTOR','HECTOR.POINDEXTER@sakilacustomer.org'),
(488,'SHANE','SHANE.MILLARD@sakilacustomer.org'),
(489,'RICARDO','RICARDO.MEADOR@sakilacustomer.org'),
(490,'SAM','SAM.MCDUFFIE@sakilacustomer.org'),
(491,'RICK','RICK.MATTOX@sakilacustomer.org'),
(492,'LESTER','LESTER.KRAUS@sakilacustomer.org'),
(493,'BRENT','BRENT.HARKINS@sakilacustomer.org'),
(494,'RAMON','RAMON.CHOATE@sakilacustomer.org'),
(495,'CHARLIE','CHARLIE.BESS@sakilacustomer.org'),
(496,'TYLER','TYLER.WREN@sakilacustomer.org'),
(497,'GILBERT','GILBERT.SLEDGE@sakilacustomer.org'),
(498,'GENE','GENE.SANBORN@sakilacustomer.org'),
(499,'MARC','MARC.OUTLAW@sakilacustomer.org'),
(500,'REGINALD','REGINALD.KINDER@sakilacustomer.org'),
(501,'RUBEN','RUBEN.GEARY@sakilacustomer.org'),
(502,'BRETT','BRETT.CORNWELL@sakilacustomer.org'),
(503,'ANGEL','ANGEL.BARCLAY@sakilacustomer.org'),
(504,'NATHANIEL','NATHANIEL.ADAM@sakilacustomer.org'),
(505,'RAFAEL','RAFAEL.ABNEY@sakilacustomer.org'),
(506,'LESLIE','LESLIE.SEWARD@sakilacustomer.org'),
(507,'EDGAR','EDGAR.RHOADS@sakilacustomer.org'),
(508,'MILTON','MILTON.HOWLAND@sakilacustomer.org'),
(509,'RAUL','RAUL.FORTIER@sakilacustomer.org'),
(511,'CHESTER','CHESTER.BENNER@sakilacustomer.org'),
(512,'CECIL','CECIL.VINES@sakilacustomer.org'),
(513,'DUANE','DUANE.TUBBS@sakilacustomer.org'),
(514,'FRANKLIN','FRANKLIN.TROUTMAN@sakilacustomer.org'),
(515,'ANDRE','ANDRE.RAPP@sakilacustomer.org'),
(516,'ELMER','ELMER.NOE@sakilacustomer.org'),
(517,'BRAD','BRAD.MCCURDY@sakilacustomer.org'),
(518,'GABRIEL','GABRIEL.HARDER@sakilacustomer.org'),
(519,'RON','RON.DELUCA@sakilacustomer.org'),
(520,'MITCHELL','MITCHELL.WESTMORELAND@sakilacustomer.org'),
(521,'ROLAND','ROLAND.SOUTH@sakilacustomer.org'),
(522,'ARNOLD','ARNOLD.HAVENS@sakilacustomer.org'),
(523,'HARVEY','HARVEY.GUAJARDO@sakilacustomer.org'),
(524,'JARED','JARED.ELY@sakilacustomer.org'),
(525,'ADRIAN','ADRIAN.CLARY@sakilacustomer.org'),
(526,'KARL','KARL.SEAL@sakilacustomer.org'),
(527,'CORY','CORY.MEEHAN@sakilacustomer.org'),
(528,'CLAUDE','CLAUDE.HERZOG@sakilacustomer.org'),
(529,'ERIK','ERIK.GUILLEN@sakilacustomer.org'),
(530,'DARRYL','DARRYL.ASHCRAFT@sakilacustomer.org'),
(531,'JAMIE','JAMIE.WAUGH@sakilacustomer.org'),
(532,'NEIL','NEIL.RENNER@sakilacustomer.org'),
(533,'JESSIE','JESSIE.MILAM@sakilacustomer.org'),
(535,'JAVIER','JAVIER.ELROD@sakilacustomer.org'),
(536,'FERNANDO','FERNANDO.CHURCHILL@sakilacustomer.org'),
(537,'CLINTON','CLINTON.BUFORD@sakilacustomer.org'),
(538,'TED','TED.BREAUX@sakilacustomer.org'),
(539,'MATHEW','MATHEW.BOLIN@sakilacustomer.org'),
(540,'TYRONE','TYRONE.ASHER@sakilacustomer.org'),
(541,'DARREN','DARREN.WINDHAM@sakilacustomer.org'),
(542,'LONNIE','LONNIE.TIRADO@sakilacustomer.org'),
(543,'LANCE','LANCE.PEMBERTON@sakilacustomer.org'),
(544,'CODY','CODY.NOLEN@sakilacustomer.org'),
(545,'JULIO','JULIO.NOLAND@sakilacustomer.org'),
(546,'KELLY','KELLY.KNOTT@sakilacustomer.org'),
(547,'KURT','KURT.EMMONS@sakilacustomer.org'),
(548,'ALLAN','ALLAN.CORNISH@sakilacustomer.org'),
(549,'NELSON','NELSON.CHRISTENSON@sakilacustomer.org'),
(550,'GUY','GUY.BROWNLEE@sakilacustomer.org'),
(551,'CLAYTON','CLAYTON.BARBEE@sakilacustomer.org'),
(552,'HUGH','HUGH.WALDROP@sakilacustomer.org'),
(553,'MAX','MAX.PITT@sakilacustomer.org'),
(554,'DWAYNE','DWAYNE.OLVERA@sakilacustomer.org'),
(555,'DWIGHT','DWIGHT.LOMBARDI@sakilacustomer.org'),
(556,'ARMANDO','ARMANDO.GRUBER@sakilacustomer.org'),
(557,'FELIX','FELIX.GAFFNEY@sakilacustomer.org'),
(559,'EVERETT','EVERETT.BANDA@sakilacustomer.org'),
(560,'JORDAN','JORDAN.ARCHULETA@sakilacustomer.org'),
(561,'IAN','IAN.STILL@sakilacustomer.org'),
(562,'WALLACE','WALLACE.SLONE@sakilacustomer.org'),
(563,'KEN','KEN.PREWITT@sakilacustomer.org'),
(564,'BOB','BOB.PFEIFFER@sakilacustomer.org'),
(565,'JAIME','JAIME.NETTLES@sakilacustomer.org'),
(566,'CASEY','CASEY.MENA@sakilacustomer.org'),
(567,'ALFREDO','ALFREDO.MCADAMS@sakilacustomer.org'),
(568,'ALBERTO','ALBERTO.HENNING@sakilacustomer.org'),
(569,'DAVE','DAVE.GARDINER@sakilacustomer.org'),
(570,'IVAN','IVAN.CROMWELL@sakilacustomer.org'),
(571,'JOHNNIE','JOHNNIE.CHISHOLM@sakilacustomer.org'),
(572,'SIDNEY','SIDNEY.BURLESON@sakilacustomer.org'),
(573,'BYRON','BYRON.BOX@sakilacustomer.org'),
(574,'JULIAN','JULIAN.VEST@sakilacustomer.org'),
(575,'ISAAC','ISAAC.OGLESBY@sakilacustomer.org'),
(576,'MORRIS','MORRIS.MCCARTER@sakilacustomer.org'),
(577,'CLIFTON','CLIFTON.MALCOLM@sakilacustomer.org'),
(578,'WILLARD','WILLARD.LUMPKIN@sakilacustomer.org'),
(579,'DARYL','DARYL.LARUE@sakilacustomer.org'),
(580,'ROSS','ROSS.GREY@sakilacustomer.org'),
(581,'VIRGIL','VIRGIL.WOFFORD@sakilacustomer.org'),
(582,'ANDY','ANDY.VANHORN@sakilacustomer.org'),
(583,'MARSHALL','MARSHALL.THORN@sakilacustomer.org'),
(584,'SALVADOR','SALVADOR.TEEL@sakilacustomer.org'),
(585,'PERRY','PERRY.SWAFFORD@sakilacustomer.org'),
(586,'KIRK','KIRK.STCLAIR@sakilacustomer.org'),
(587,'SERGIO','SERGIO.STANFIELD@sakilacustomer.org'),
(588,'MARION','MARION.OCAMPO@sakilacustomer.org'),
(589,'TRACY','TRACY.HERRMANN@sakilacustomer.org'),
(590,'SETH','SETH.HANNON@sakilacustomer.org'),
(591,'KENT','KENT.ARSENAULT@sakilacustomer.org'),
(593,'RENE','RENE.MCALISTER@sakilacustomer.org'),
(594,'EDUARDO','EDUARDO.HIATT@sakilacustomer.org'),
(595,'TERRENCE','TERRENCE.GUNDERSON@sakilacustomer.org'),
(596,'ENRIQUE','ENRIQUE.FORSYTHE@sakilacustomer.org'),
(597,'FREDDIE','FREDDIE.DUGGAN@sakilacustomer.org'),
(598,'WADE','WADE.DELVALLE@sakilacustomer.org'),
(599,'AUSTIN','AUSTIN.CINTRON@sakilacustomer.org');

/*Table structure for table `dim_date` */

DROP TABLE IF EXISTS `dim_date`;

CREATE TABLE `dim_date` (
  `id_date` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `minggu` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `hari` varchar(6) DEFAULT NULL,
  `bulan` varchar(9) DEFAULT NULL,
  KEY `idx_dim_date_lookup` (`id_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dim_date` */

insert  into `dim_date`(`id_date`,`date`,`minggu`,`tahun`,`hari`,`bulan`) values 
(1,'2005-01-01 00:00:00',1,2005,'Sabtu','Januari'),
(2,'2005-01-02 00:00:00',2,2005,'Minggu','Januari'),
(3,'2005-01-03 00:00:00',2,2005,'Senin','Januari'),
(4,'2005-01-04 00:00:00',2,2005,'Selasa','Januari'),
(5,'2005-01-05 00:00:00',2,2005,'Rabu','Januari'),
(6,'2005-01-06 00:00:00',2,2005,'Kamis','Januari'),
(7,'2005-01-07 00:00:00',2,2005,'Jumat','Januari'),
(8,'2005-01-08 00:00:00',2,2005,'Sabtu','Januari'),
(9,'2005-01-09 00:00:00',3,2005,'Minggu','Januari'),
(10,'2005-01-10 00:00:00',3,2005,'Senin','Januari'),
(11,'2005-01-11 00:00:00',3,2005,'Selasa','Januari'),
(12,'2005-01-12 00:00:00',3,2005,'Rabu','Januari'),
(13,'2005-01-13 00:00:00',3,2005,'Kamis','Januari'),
(14,'2005-01-14 00:00:00',3,2005,'Jumat','Januari'),
(15,'2005-01-15 00:00:00',3,2005,'Sabtu','Januari'),
(16,'2005-01-16 00:00:00',4,2005,'Minggu','Januari'),
(17,'2005-01-17 00:00:00',4,2005,'Senin','Januari'),
(18,'2005-01-18 00:00:00',4,2005,'Selasa','Januari'),
(19,'2005-01-19 00:00:00',4,2005,'Rabu','Januari'),
(20,'2005-01-20 00:00:00',4,2005,'Kamis','Januari'),
(21,'2005-01-21 00:00:00',4,2005,'Jumat','Januari'),
(22,'2005-01-22 00:00:00',4,2005,'Sabtu','Januari'),
(23,'2005-01-23 00:00:00',5,2005,'Minggu','Januari'),
(24,'2005-01-24 00:00:00',5,2005,'Senin','Januari'),
(25,'2005-01-25 00:00:00',5,2005,'Selasa','Januari'),
(26,'2005-01-26 00:00:00',5,2005,'Rabu','Januari'),
(27,'2005-01-27 00:00:00',5,2005,'Kamis','Januari'),
(28,'2005-01-28 00:00:00',5,2005,'Jumat','Januari'),
(29,'2005-01-29 00:00:00',5,2005,'Sabtu','Januari'),
(30,'2005-01-30 00:00:00',6,2005,'Minggu','Januari'),
(31,'2005-01-31 00:00:00',6,2005,'Senin','Januari'),
(32,'2005-02-01 00:00:00',6,2005,'Selasa','Februari'),
(33,'2005-02-02 00:00:00',6,2005,'Rabu','Februari'),
(34,'2005-02-03 00:00:00',6,2005,'Kamis','Februari'),
(35,'2005-02-04 00:00:00',6,2005,'Jumat','Februari'),
(36,'2005-02-05 00:00:00',6,2005,'Sabtu','Februari'),
(37,'2005-02-06 00:00:00',7,2005,'Minggu','Februari'),
(38,'2005-02-07 00:00:00',7,2005,'Senin','Februari'),
(39,'2005-02-08 00:00:00',7,2005,'Selasa','Februari'),
(40,'2005-02-09 00:00:00',7,2005,'Rabu','Februari'),
(41,'2005-02-10 00:00:00',7,2005,'Kamis','Februari'),
(42,'2005-02-11 00:00:00',7,2005,'Jumat','Februari'),
(43,'2005-02-12 00:00:00',7,2005,'Sabtu','Februari'),
(44,'2005-02-13 00:00:00',8,2005,'Minggu','Februari'),
(45,'2005-02-14 00:00:00',8,2005,'Senin','Februari'),
(46,'2005-02-15 00:00:00',8,2005,'Selasa','Februari'),
(47,'2005-02-16 00:00:00',8,2005,'Rabu','Februari'),
(48,'2005-02-17 00:00:00',8,2005,'Kamis','Februari'),
(49,'2005-02-18 00:00:00',8,2005,'Jumat','Februari'),
(50,'2005-02-19 00:00:00',8,2005,'Sabtu','Februari'),
(51,'2005-02-20 00:00:00',9,2005,'Minggu','Februari'),
(52,'2005-02-21 00:00:00',9,2005,'Senin','Februari'),
(53,'2005-02-22 00:00:00',9,2005,'Selasa','Februari'),
(54,'2005-02-23 00:00:00',9,2005,'Rabu','Februari'),
(55,'2005-02-24 00:00:00',9,2005,'Kamis','Februari'),
(56,'2005-02-25 00:00:00',9,2005,'Jumat','Februari'),
(57,'2005-02-26 00:00:00',9,2005,'Sabtu','Februari'),
(58,'2005-02-27 00:00:00',10,2005,'Minggu','Februari'),
(59,'2005-02-28 00:00:00',10,2005,'Senin','Februari'),
(60,'2005-03-01 00:00:00',10,2005,'Selasa','Maret'),
(61,'2005-03-02 00:00:00',10,2005,'Rabu','Maret'),
(62,'2005-03-03 00:00:00',10,2005,'Kamis','Maret'),
(63,'2005-03-04 00:00:00',10,2005,'Jumat','Maret'),
(64,'2005-03-05 00:00:00',10,2005,'Sabtu','Maret'),
(65,'2005-03-06 00:00:00',11,2005,'Minggu','Maret'),
(66,'2005-03-07 00:00:00',11,2005,'Senin','Maret'),
(67,'2005-03-08 00:00:00',11,2005,'Selasa','Maret'),
(68,'2005-03-09 00:00:00',11,2005,'Rabu','Maret'),
(69,'2005-03-10 00:00:00',11,2005,'Kamis','Maret'),
(70,'2005-03-11 00:00:00',11,2005,'Jumat','Maret'),
(71,'2005-03-12 00:00:00',11,2005,'Sabtu','Maret'),
(72,'2005-03-13 00:00:00',12,2005,'Minggu','Maret'),
(73,'2005-03-14 00:00:00',12,2005,'Senin','Maret'),
(74,'2005-03-15 00:00:00',12,2005,'Selasa','Maret'),
(75,'2005-03-16 00:00:00',12,2005,'Rabu','Maret'),
(76,'2005-03-17 00:00:00',12,2005,'Kamis','Maret'),
(77,'2005-03-18 00:00:00',12,2005,'Jumat','Maret'),
(78,'2005-03-19 00:00:00',12,2005,'Sabtu','Maret'),
(79,'2005-03-20 00:00:00',13,2005,'Minggu','Maret'),
(80,'2005-03-21 00:00:00',13,2005,'Senin','Maret'),
(81,'2005-03-22 00:00:00',13,2005,'Selasa','Maret'),
(82,'2005-03-23 00:00:00',13,2005,'Rabu','Maret'),
(83,'2005-03-24 00:00:00',13,2005,'Kamis','Maret'),
(84,'2005-03-25 00:00:00',13,2005,'Jumat','Maret'),
(85,'2005-03-26 00:00:00',13,2005,'Sabtu','Maret'),
(86,'2005-03-27 00:00:00',14,2005,'Minggu','Maret'),
(87,'2005-03-28 00:00:00',14,2005,'Senin','Maret'),
(88,'2005-03-29 00:00:00',14,2005,'Selasa','Maret'),
(89,'2005-03-30 00:00:00',14,2005,'Rabu','Maret'),
(90,'2005-03-31 00:00:00',14,2005,'Kamis','Maret'),
(91,'2005-04-01 00:00:00',14,2005,'Jumat','April'),
(92,'2005-04-02 00:00:00',14,2005,'Sabtu','April'),
(93,'2005-04-03 00:00:00',15,2005,'Minggu','April'),
(94,'2005-04-04 00:00:00',15,2005,'Senin','April'),
(95,'2005-04-05 00:00:00',15,2005,'Selasa','April'),
(96,'2005-04-06 00:00:00',15,2005,'Rabu','April'),
(97,'2005-04-07 00:00:00',15,2005,'Kamis','April'),
(98,'2005-04-08 00:00:00',15,2005,'Jumat','April'),
(99,'2005-04-09 00:00:00',15,2005,'Sabtu','April'),
(100,'2005-04-10 00:00:00',16,2005,'Minggu','April'),
(101,'2005-04-11 00:00:00',16,2005,'Senin','April'),
(102,'2005-04-12 00:00:00',16,2005,'Selasa','April'),
(103,'2005-04-13 00:00:00',16,2005,'Rabu','April'),
(104,'2005-04-14 00:00:00',16,2005,'Kamis','April'),
(105,'2005-04-15 00:00:00',16,2005,'Jumat','April'),
(106,'2005-04-16 00:00:00',16,2005,'Sabtu','April'),
(107,'2005-04-17 00:00:00',17,2005,'Minggu','April'),
(108,'2005-04-18 00:00:00',17,2005,'Senin','April'),
(109,'2005-04-19 00:00:00',17,2005,'Selasa','April'),
(110,'2005-04-20 00:00:00',17,2005,'Rabu','April'),
(111,'2005-04-21 00:00:00',17,2005,'Kamis','April'),
(112,'2005-04-22 00:00:00',17,2005,'Jumat','April'),
(113,'2005-04-23 00:00:00',17,2005,'Sabtu','April'),
(114,'2005-04-24 00:00:00',18,2005,'Minggu','April'),
(115,'2005-04-25 00:00:00',18,2005,'Senin','April'),
(116,'2005-04-26 00:00:00',18,2005,'Selasa','April'),
(117,'2005-04-27 00:00:00',18,2005,'Rabu','April'),
(118,'2005-04-28 00:00:00',18,2005,'Kamis','April'),
(119,'2005-04-29 00:00:00',18,2005,'Jumat','April'),
(120,'2005-04-30 00:00:00',18,2005,'Sabtu','April'),
(121,'2005-05-01 00:00:00',19,2005,'Minggu','Mei'),
(122,'2005-05-02 00:00:00',19,2005,'Senin','Mei'),
(123,'2005-05-03 00:00:00',19,2005,'Selasa','Mei'),
(124,'2005-05-04 00:00:00',19,2005,'Rabu','Mei'),
(125,'2005-05-05 00:00:00',19,2005,'Kamis','Mei'),
(126,'2005-05-06 00:00:00',19,2005,'Jumat','Mei'),
(127,'2005-05-07 00:00:00',19,2005,'Sabtu','Mei'),
(128,'2005-05-08 00:00:00',20,2005,'Minggu','Mei'),
(129,'2005-05-09 00:00:00',20,2005,'Senin','Mei'),
(130,'2005-05-10 00:00:00',20,2005,'Selasa','Mei'),
(131,'2005-05-11 00:00:00',20,2005,'Rabu','Mei'),
(132,'2005-05-12 00:00:00',20,2005,'Kamis','Mei'),
(133,'2005-05-13 00:00:00',20,2005,'Jumat','Mei'),
(134,'2005-05-14 00:00:00',20,2005,'Sabtu','Mei'),
(135,'2005-05-15 00:00:00',21,2005,'Minggu','Mei'),
(136,'2005-05-16 00:00:00',21,2005,'Senin','Mei'),
(137,'2005-05-17 00:00:00',21,2005,'Selasa','Mei'),
(138,'2005-05-18 00:00:00',21,2005,'Rabu','Mei'),
(139,'2005-05-19 00:00:00',21,2005,'Kamis','Mei'),
(140,'2005-05-20 00:00:00',21,2005,'Jumat','Mei'),
(141,'2005-05-21 00:00:00',21,2005,'Sabtu','Mei'),
(142,'2005-05-22 00:00:00',22,2005,'Minggu','Mei'),
(143,'2005-05-23 00:00:00',22,2005,'Senin','Mei'),
(144,'2005-05-24 00:00:00',22,2005,'Selasa','Mei'),
(145,'2005-05-25 00:00:00',22,2005,'Rabu','Mei'),
(146,'2005-05-26 00:00:00',22,2005,'Kamis','Mei'),
(147,'2005-05-27 00:00:00',22,2005,'Jumat','Mei'),
(148,'2005-05-28 00:00:00',22,2005,'Sabtu','Mei'),
(149,'2005-05-29 00:00:00',23,2005,'Minggu','Mei'),
(150,'2005-05-30 00:00:00',23,2005,'Senin','Mei'),
(151,'2005-05-31 00:00:00',23,2005,'Selasa','Mei'),
(152,'2005-06-01 00:00:00',23,2005,'Rabu','Juni'),
(153,'2005-06-02 00:00:00',23,2005,'Kamis','Juni'),
(154,'2005-06-03 00:00:00',23,2005,'Jumat','Juni'),
(155,'2005-06-04 00:00:00',23,2005,'Sabtu','Juni'),
(156,'2005-06-05 00:00:00',24,2005,'Minggu','Juni'),
(157,'2005-06-06 00:00:00',24,2005,'Senin','Juni'),
(158,'2005-06-07 00:00:00',24,2005,'Selasa','Juni'),
(159,'2005-06-08 00:00:00',24,2005,'Rabu','Juni'),
(160,'2005-06-09 00:00:00',24,2005,'Kamis','Juni'),
(161,'2005-06-10 00:00:00',24,2005,'Jumat','Juni'),
(162,'2005-06-11 00:00:00',24,2005,'Sabtu','Juni'),
(163,'2005-06-12 00:00:00',25,2005,'Minggu','Juni'),
(164,'2005-06-13 00:00:00',25,2005,'Senin','Juni'),
(165,'2005-06-14 00:00:00',25,2005,'Selasa','Juni'),
(166,'2005-06-15 00:00:00',25,2005,'Rabu','Juni'),
(167,'2005-06-16 00:00:00',25,2005,'Kamis','Juni'),
(168,'2005-06-17 00:00:00',25,2005,'Jumat','Juni'),
(169,'2005-06-18 00:00:00',25,2005,'Sabtu','Juni'),
(170,'2005-06-19 00:00:00',26,2005,'Minggu','Juni'),
(171,'2005-06-20 00:00:00',26,2005,'Senin','Juni'),
(172,'2005-06-21 00:00:00',26,2005,'Selasa','Juni'),
(173,'2005-06-22 00:00:00',26,2005,'Rabu','Juni'),
(174,'2005-06-23 00:00:00',26,2005,'Kamis','Juni'),
(175,'2005-06-24 00:00:00',26,2005,'Jumat','Juni'),
(176,'2005-06-25 00:00:00',26,2005,'Sabtu','Juni'),
(177,'2005-06-26 00:00:00',27,2005,'Minggu','Juni'),
(178,'2005-06-27 00:00:00',27,2005,'Senin','Juni'),
(179,'2005-06-28 00:00:00',27,2005,'Selasa','Juni'),
(180,'2005-06-29 00:00:00',27,2005,'Rabu','Juni'),
(181,'2005-06-30 00:00:00',27,2005,'Kamis','Juni'),
(182,'2005-07-01 00:00:00',27,2005,'Jumat','Juli'),
(183,'2005-07-02 00:00:00',27,2005,'Sabtu','Juli'),
(184,'2005-07-03 00:00:00',28,2005,'Minggu','Juli'),
(185,'2005-07-04 00:00:00',28,2005,'Senin','Juli'),
(186,'2005-07-05 00:00:00',28,2005,'Selasa','Juli'),
(187,'2005-07-06 00:00:00',28,2005,'Rabu','Juli'),
(188,'2005-07-07 00:00:00',28,2005,'Kamis','Juli'),
(189,'2005-07-08 00:00:00',28,2005,'Jumat','Juli'),
(190,'2005-07-09 00:00:00',28,2005,'Sabtu','Juli'),
(191,'2005-07-10 00:00:00',29,2005,'Minggu','Juli'),
(192,'2005-07-11 00:00:00',29,2005,'Senin','Juli'),
(193,'2005-07-12 00:00:00',29,2005,'Selasa','Juli'),
(194,'2005-07-13 00:00:00',29,2005,'Rabu','Juli'),
(195,'2005-07-14 00:00:00',29,2005,'Kamis','Juli'),
(196,'2005-07-15 00:00:00',29,2005,'Jumat','Juli'),
(197,'2005-07-16 00:00:00',29,2005,'Sabtu','Juli'),
(198,'2005-07-17 00:00:00',30,2005,'Minggu','Juli'),
(199,'2005-07-18 00:00:00',30,2005,'Senin','Juli'),
(200,'2005-07-19 00:00:00',30,2005,'Selasa','Juli'),
(201,'2005-07-20 00:00:00',30,2005,'Rabu','Juli'),
(202,'2005-07-21 00:00:00',30,2005,'Kamis','Juli'),
(203,'2005-07-22 00:00:00',30,2005,'Jumat','Juli'),
(204,'2005-07-23 00:00:00',30,2005,'Sabtu','Juli'),
(205,'2005-07-24 00:00:00',31,2005,'Minggu','Juli'),
(206,'2005-07-25 00:00:00',31,2005,'Senin','Juli'),
(207,'2005-07-26 00:00:00',31,2005,'Selasa','Juli'),
(208,'2005-07-27 00:00:00',31,2005,'Rabu','Juli'),
(209,'2005-07-28 00:00:00',31,2005,'Kamis','Juli'),
(210,'2005-07-29 00:00:00',31,2005,'Jumat','Juli'),
(211,'2005-07-30 00:00:00',31,2005,'Sabtu','Juli'),
(212,'2005-07-31 00:00:00',32,2005,'Minggu','Juli'),
(213,'2005-08-01 00:00:00',32,2005,'Senin','Agustus'),
(214,'2005-08-02 00:00:00',32,2005,'Selasa','Agustus'),
(215,'2005-08-03 00:00:00',32,2005,'Rabu','Agustus'),
(216,'2005-08-04 00:00:00',32,2005,'Kamis','Agustus'),
(217,'2005-08-05 00:00:00',32,2005,'Jumat','Agustus'),
(218,'2005-08-06 00:00:00',32,2005,'Sabtu','Agustus'),
(219,'2005-08-07 00:00:00',33,2005,'Minggu','Agustus'),
(220,'2005-08-08 00:00:00',33,2005,'Senin','Agustus'),
(221,'2005-08-09 00:00:00',33,2005,'Selasa','Agustus'),
(222,'2005-08-10 00:00:00',33,2005,'Rabu','Agustus'),
(223,'2005-08-11 00:00:00',33,2005,'Kamis','Agustus'),
(224,'2005-08-12 00:00:00',33,2005,'Jumat','Agustus'),
(225,'2005-08-13 00:00:00',33,2005,'Sabtu','Agustus'),
(226,'2005-08-14 00:00:00',34,2005,'Minggu','Agustus'),
(227,'2005-08-15 00:00:00',34,2005,'Senin','Agustus'),
(228,'2005-08-16 00:00:00',34,2005,'Selasa','Agustus'),
(229,'2005-08-17 00:00:00',34,2005,'Rabu','Agustus'),
(230,'2005-08-18 00:00:00',34,2005,'Kamis','Agustus'),
(231,'2005-08-19 00:00:00',34,2005,'Jumat','Agustus'),
(232,'2005-08-20 00:00:00',34,2005,'Sabtu','Agustus'),
(233,'2005-08-21 00:00:00',35,2005,'Minggu','Agustus'),
(234,'2005-08-22 00:00:00',35,2005,'Senin','Agustus'),
(235,'2005-08-23 00:00:00',35,2005,'Selasa','Agustus'),
(236,'2005-08-24 00:00:00',35,2005,'Rabu','Agustus'),
(237,'2005-08-25 00:00:00',35,2005,'Kamis','Agustus'),
(238,'2005-08-26 00:00:00',35,2005,'Jumat','Agustus'),
(239,'2005-08-27 00:00:00',35,2005,'Sabtu','Agustus'),
(240,'2005-08-28 00:00:00',36,2005,'Minggu','Agustus'),
(241,'2005-08-29 00:00:00',36,2005,'Senin','Agustus'),
(242,'2005-08-30 00:00:00',36,2005,'Selasa','Agustus'),
(243,'2005-08-31 00:00:00',36,2005,'Rabu','Agustus'),
(244,'2005-09-01 00:00:00',36,2005,'Kamis','September'),
(245,'2005-09-02 00:00:00',36,2005,'Jumat','September'),
(246,'2005-09-03 00:00:00',36,2005,'Sabtu','September'),
(247,'2005-09-04 00:00:00',37,2005,'Minggu','September'),
(248,'2005-09-05 00:00:00',37,2005,'Senin','September'),
(249,'2005-09-06 00:00:00',37,2005,'Selasa','September'),
(250,'2005-09-07 00:00:00',37,2005,'Rabu','September'),
(251,'2005-09-08 00:00:00',37,2005,'Kamis','September'),
(252,'2005-09-09 00:00:00',37,2005,'Jumat','September'),
(253,'2005-09-10 00:00:00',37,2005,'Sabtu','September'),
(254,'2005-09-11 00:00:00',38,2005,'Minggu','September'),
(255,'2005-09-12 00:00:00',38,2005,'Senin','September'),
(256,'2005-09-13 00:00:00',38,2005,'Selasa','September'),
(257,'2005-09-14 00:00:00',38,2005,'Rabu','September'),
(258,'2005-09-15 00:00:00',38,2005,'Kamis','September'),
(259,'2005-09-16 00:00:00',38,2005,'Jumat','September'),
(260,'2005-09-17 00:00:00',38,2005,'Sabtu','September'),
(261,'2005-09-18 00:00:00',39,2005,'Minggu','September'),
(262,'2005-09-19 00:00:00',39,2005,'Senin','September'),
(263,'2005-09-20 00:00:00',39,2005,'Selasa','September'),
(264,'2005-09-21 00:00:00',39,2005,'Rabu','September'),
(265,'2005-09-22 00:00:00',39,2005,'Kamis','September'),
(266,'2005-09-23 00:00:00',39,2005,'Jumat','September'),
(267,'2005-09-24 00:00:00',39,2005,'Sabtu','September'),
(268,'2005-09-25 00:00:00',40,2005,'Minggu','September'),
(269,'2005-09-26 00:00:00',40,2005,'Senin','September'),
(270,'2005-09-27 00:00:00',40,2005,'Selasa','September'),
(271,'2005-09-28 00:00:00',40,2005,'Rabu','September'),
(272,'2005-09-29 00:00:00',40,2005,'Kamis','September'),
(273,'2005-09-30 00:00:00',40,2005,'Jumat','September'),
(274,'2005-10-01 00:00:00',40,2005,'Sabtu','Oktober'),
(275,'2005-10-02 00:00:00',41,2005,'Minggu','Oktober'),
(276,'2005-10-03 00:00:00',41,2005,'Senin','Oktober'),
(277,'2005-10-04 00:00:00',41,2005,'Selasa','Oktober'),
(278,'2005-10-05 00:00:00',41,2005,'Rabu','Oktober'),
(279,'2005-10-06 00:00:00',41,2005,'Kamis','Oktober'),
(280,'2005-10-07 00:00:00',41,2005,'Jumat','Oktober'),
(281,'2005-10-08 00:00:00',41,2005,'Sabtu','Oktober'),
(282,'2005-10-09 00:00:00',42,2005,'Minggu','Oktober'),
(283,'2005-10-10 00:00:00',42,2005,'Senin','Oktober'),
(284,'2005-10-11 00:00:00',42,2005,'Selasa','Oktober'),
(285,'2005-10-12 00:00:00',42,2005,'Rabu','Oktober'),
(286,'2005-10-13 00:00:00',42,2005,'Kamis','Oktober'),
(287,'2005-10-14 00:00:00',42,2005,'Jumat','Oktober'),
(288,'2005-10-15 00:00:00',42,2005,'Sabtu','Oktober'),
(289,'2005-10-16 00:00:00',43,2005,'Minggu','Oktober'),
(290,'2005-10-17 00:00:00',43,2005,'Senin','Oktober'),
(291,'2005-10-18 00:00:00',43,2005,'Selasa','Oktober'),
(292,'2005-10-19 00:00:00',43,2005,'Rabu','Oktober'),
(293,'2005-10-20 00:00:00',43,2005,'Kamis','Oktober'),
(294,'2005-10-21 00:00:00',43,2005,'Jumat','Oktober'),
(295,'2005-10-22 00:00:00',43,2005,'Sabtu','Oktober'),
(296,'2005-10-23 00:00:00',44,2005,'Minggu','Oktober'),
(297,'2005-10-24 00:00:00',44,2005,'Senin','Oktober'),
(298,'2005-10-25 00:00:00',44,2005,'Selasa','Oktober'),
(299,'2005-10-26 00:00:00',44,2005,'Rabu','Oktober'),
(300,'2005-10-27 00:00:00',44,2005,'Kamis','Oktober'),
(301,'2005-10-28 00:00:00',44,2005,'Jumat','Oktober'),
(302,'2005-10-29 00:00:00',44,2005,'Sabtu','Oktober'),
(303,'2005-10-30 00:00:00',45,2005,'Minggu','Oktober'),
(304,'2005-10-31 00:00:00',45,2005,'Senin','Oktober'),
(305,'2005-11-01 00:00:00',45,2005,'Selasa','November'),
(306,'2005-11-02 00:00:00',45,2005,'Rabu','November'),
(307,'2005-11-03 00:00:00',45,2005,'Kamis','November'),
(308,'2005-11-04 00:00:00',45,2005,'Jumat','November'),
(309,'2005-11-05 00:00:00',45,2005,'Sabtu','November'),
(310,'2005-11-06 00:00:00',46,2005,'Minggu','November'),
(311,'2005-11-07 00:00:00',46,2005,'Senin','November'),
(312,'2005-11-08 00:00:00',46,2005,'Selasa','November'),
(313,'2005-11-09 00:00:00',46,2005,'Rabu','November'),
(314,'2005-11-10 00:00:00',46,2005,'Kamis','November'),
(315,'2005-11-11 00:00:00',46,2005,'Jumat','November'),
(316,'2005-11-12 00:00:00',46,2005,'Sabtu','November'),
(317,'2005-11-13 00:00:00',47,2005,'Minggu','November'),
(318,'2005-11-14 00:00:00',47,2005,'Senin','November'),
(319,'2005-11-15 00:00:00',47,2005,'Selasa','November'),
(320,'2005-11-16 00:00:00',47,2005,'Rabu','November'),
(321,'2005-11-17 00:00:00',47,2005,'Kamis','November'),
(322,'2005-11-18 00:00:00',47,2005,'Jumat','November'),
(323,'2005-11-19 00:00:00',47,2005,'Sabtu','November'),
(324,'2005-11-20 00:00:00',48,2005,'Minggu','November'),
(325,'2005-11-21 00:00:00',48,2005,'Senin','November'),
(326,'2005-11-22 00:00:00',48,2005,'Selasa','November'),
(327,'2005-11-23 00:00:00',48,2005,'Rabu','November'),
(328,'2005-11-24 00:00:00',48,2005,'Kamis','November'),
(329,'2005-11-25 00:00:00',48,2005,'Jumat','November'),
(330,'2005-11-26 00:00:00',48,2005,'Sabtu','November'),
(331,'2005-11-27 00:00:00',49,2005,'Minggu','November'),
(332,'2005-11-28 00:00:00',49,2005,'Senin','November'),
(333,'2005-11-29 00:00:00',49,2005,'Selasa','November'),
(334,'2005-11-30 00:00:00',49,2005,'Rabu','November'),
(335,'2005-12-01 00:00:00',49,2005,'Kamis','Desember'),
(336,'2005-12-02 00:00:00',49,2005,'Jumat','Desember'),
(337,'2005-12-03 00:00:00',49,2005,'Sabtu','Desember'),
(338,'2005-12-04 00:00:00',50,2005,'Minggu','Desember'),
(339,'2005-12-05 00:00:00',50,2005,'Senin','Desember'),
(340,'2005-12-06 00:00:00',50,2005,'Selasa','Desember'),
(341,'2005-12-07 00:00:00',50,2005,'Rabu','Desember'),
(342,'2005-12-08 00:00:00',50,2005,'Kamis','Desember'),
(343,'2005-12-09 00:00:00',50,2005,'Jumat','Desember'),
(344,'2005-12-10 00:00:00',50,2005,'Sabtu','Desember'),
(345,'2005-12-11 00:00:00',51,2005,'Minggu','Desember'),
(346,'2005-12-12 00:00:00',51,2005,'Senin','Desember'),
(347,'2005-12-13 00:00:00',51,2005,'Selasa','Desember'),
(348,'2005-12-14 00:00:00',51,2005,'Rabu','Desember'),
(349,'2005-12-15 00:00:00',51,2005,'Kamis','Desember'),
(350,'2005-12-16 00:00:00',51,2005,'Jumat','Desember'),
(351,'2005-12-17 00:00:00',51,2005,'Sabtu','Desember'),
(352,'2005-12-18 00:00:00',52,2005,'Minggu','Desember'),
(353,'2005-12-19 00:00:00',52,2005,'Senin','Desember'),
(354,'2005-12-20 00:00:00',52,2005,'Selasa','Desember'),
(355,'2005-12-21 00:00:00',52,2005,'Rabu','Desember'),
(356,'2005-12-22 00:00:00',52,2005,'Kamis','Desember'),
(357,'2005-12-23 00:00:00',52,2005,'Jumat','Desember'),
(358,'2005-12-24 00:00:00',52,2005,'Sabtu','Desember'),
(359,'2005-12-25 00:00:00',53,2005,'Minggu','Desember'),
(360,'2005-12-26 00:00:00',53,2005,'Senin','Desember'),
(361,'2005-12-27 00:00:00',53,2005,'Selasa','Desember'),
(362,'2005-12-28 00:00:00',53,2005,'Rabu','Desember'),
(363,'2005-12-29 00:00:00',53,2005,'Kamis','Desember'),
(364,'2005-12-30 00:00:00',53,2005,'Jumat','Desember'),
(365,'2005-12-31 00:00:00',53,2005,'Sabtu','Desember');

/*Table structure for table `dim_film` */

DROP TABLE IF EXISTS `dim_film`;

CREATE TABLE `dim_film` (
  `id_film` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `actor` tinytext,
  KEY `idx_dim_film_lookup` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dim_film` */

insert  into `dim_film`(`id_film`,`title`,`actor`) values 
(1,'ACADEMY DINOSAUR','PENELOPE'),
(2,'ACE GOLDFINGER','BOB'),
(3,'ADAPTATION HOLES','NICK'),
(4,'AFFAIR PREJUDICE','JODIE'),
(5,'AFRICAN EGG','GARY'),
(6,'AGENT TRUMAN','KIRSTEN'),
(7,'AIRPLANE SIERRA','JIM'),
(8,'AIRPORT POLLOCK','FAY'),
(9,'ALABAMA DEVIL','CHRISTIAN'),
(10,'ALADDIN CALENDAR','ALEC'),
(11,'ALAMO VIDEOTAPE','JOHNNY'),
(12,'ALASKA PHANTOM','VAL'),
(13,'ALI FOREVER','CARY'),
(14,'ALICE FANTASIA','WOODY'),
(15,'ALIEN CENTER','BURT'),
(16,'ALLEY EVOLUTION','KARL'),
(17,'ALONE TRIP','ED'),
(18,'ALTER VICTORY','REESE'),
(19,'AMADEUS HOLY','JOHNNY'),
(20,'AMELIE HELLFIGHTERS','CARMEN'),
(21,'AMERICAN CIRCUS','KEVIN'),
(22,'AMISTAD MIDSUMMER','CARY'),
(23,'ANACONDA CONFESSIONS','PENELOPE'),
(24,'ANALYZE HOOSIERS','TOM'),
(25,'ANGELS LIFE','PENELOPE'),
(26,'ANNIE IDENTITY','ADAM'),
(27,'ANONYMOUS HUMAN','GRACE'),
(28,'ANTHEM LUKE','MILLA'),
(29,'ANTITRUST TOMATOES','BETTE'),
(30,'ANYTHING SAVANNAH','JOE'),
(31,'APACHE DIVINE','NICK'),
(32,'APOCALYPSE FLAMINGOS','MAE'),
(33,'APOLLO TEEN','MAE'),
(34,'ARABIA DOGMA','KARL'),
(35,'ARACHNOPHOBIA ROLLERCOASTER','GRACE'),
(36,'ARGONAUTS TOWN','JULIA'),
(37,'ARIZONA BANG','KARL'),
(38,'ARK RIDGEMONT','PARKER'),
(39,'ARMAGEDDON LOST','ANGELA'),
(40,'ARMY FLINTSTONES','ED'),
(41,'ARSENIC INDEPENDENCE','CUBA'),
(42,'ARTIST COLDBLOODED','ED'),
(43,'ATLANTIS CAUSE','WOODY'),
(44,'ATTACKS HATE','DAN'),
(45,'ATTRACTION NEWTON','UMA'),
(46,'AUTUMN CROW','DUSTIN'),
(47,'BABY HALL','NICK'),
(48,'BACKLASH UNDEFEATED','CHRISTIAN'),
(49,'BADMAN DAWN','BEN'),
(50,'BAKED CLEOPATRA','MICHELLE'),
(51,'BALLOON HOMEWARD','PARKER'),
(52,'BALLROOM MOCKINGBIRD','JUDY'),
(53,'BANG KWAI','BETTE'),
(54,'BANGER PINOCCHIO','JOHNNY'),
(55,'BARBARELLA STREETCAR','MARY'),
(56,'BAREFOOT MANCHURIAN','JENNIFER'),
(57,'BASIC EASY','JESSICA'),
(58,'BEACH HEARTBREAKERS','WOODY'),
(59,'BEAR GRACELAND','SCARLETT'),
(60,'BEAST HUNCHBACK','BETTE'),
(61,'BEAUTY GREASE','CAMERON'),
(62,'BED HIGHBALL','JENNIFER'),
(63,'BEDAZZLED MARRIED','LUCILLE'),
(64,'BEETHOVEN EXORCIST','SANDRA'),
(65,'BEHAVIOR RUNAWAY','TIM'),
(66,'BENEATH RUSH','REESE'),
(67,'BERETS AGENT','GRACE'),
(68,'BETRAYED REAR','CHRISTIAN'),
(69,'BEVERLY OUTLAW','SANDRA'),
(70,'BIKINI BORROWERS','BETTE'),
(71,'BILKO ANONYMOUS','GOLDIE'),
(72,'BILL OTHERS','DUSTIN'),
(73,'BINGO TALENTED','GOLDIE'),
(74,'BIRCH ANTITRUST','JOE'),
(75,'BIRD INDEPENDENCE','FAY'),
(76,'BIRDCAGE CASPER','KENNETH'),
(77,'BIRDS PERDITION','SANDRA'),
(78,'BLACKOUT PRIVATE','SANDRA'),
(79,'BLADE POLISH','JENNIFER'),
(80,'BLANKET BEVERLY','FRED'),
(81,'BLINDNESS GUN','BURT'),
(82,'BLOOD ARGONAUTS','CATE'),
(83,'BLUES INSTINCT','CAMERON'),
(84,'BOILED DARES','DAN'),
(85,'BONNIE HOLOCAUST','JOHNNY'),
(86,'BOOGIE AMELIE','KEVIN'),
(87,'BOONDOCK BALLROOM','ED'),
(88,'BORN SPINAL','KIRSTEN'),
(89,'BORROWERS BEDAZZLED','CUBA'),
(90,'BOULEVARD MOB','RIP'),
(91,'BOUND CHEAPER','KARL'),
(92,'BOWFINGER GABLES','KARL'),
(93,'BRANNIGAN SUNRISE','RIP'),
(94,'BRAVEHEART HUMAN','NICK'),
(95,'BREAKFAST GOLDFINGER','ANGELINA'),
(96,'BREAKING HOME','GRACE'),
(97,'BRIDE INTRIGUE','ANGELA'),
(98,'BRIGHT ENCOUNTERS','CAMERON'),
(99,'BRINGING HYSTERICAL','FRANCES'),
(100,'BROOKLYN DESERT','JODIE'),
(101,'BROTHERHOOD BLANKET','FRED'),
(102,'BUBBLE GROSSE','VIVIEN'),
(103,'BUCKET BROTHERHOOD','RIP'),
(104,'BUGSY SONG','WOODY'),
(105,'BULL SHAWSHANK','NICK'),
(106,'BULWORTH COMMANDMENTS','PENELOPE'),
(107,'BUNCH MINDS','KARL'),
(108,'BUTCH PANTHER','CUBA'),
(109,'BUTTERFLY CHOCOLAT','NICK'),
(110,'CABIN FLASH','UMA'),
(111,'CADDYSHACK JEDI','ED'),
(112,'CALENDAR GUNFIGHT','BETTE'),
(113,'CALIFORNIA BIRDS','SCARLETT'),
(114,'CAMELOT VACATION','JUDE'),
(115,'CAMPUS REMEMBER','MATTHEW'),
(116,'CANDIDATE PERDITION','SANDRA'),
(117,'CANDLES GRAPES','SANDRA'),
(118,'CANYON STOCK','ZERO'),
(119,'CAPER MOTIONS','HELEN'),
(120,'CARIBBEAN LIBERTY','BEN'),
(121,'CAROL TEXAS','FRED'),
(122,'CARRIE BUNCH','VAL'),
(123,'CASABLANCA SUPER','KIRSTEN'),
(124,'CASPER DRAGONFLY','HELEN'),
(125,'CASSIDY WYOMING','CUBA'),
(126,'CASUALTIES ENCINO','CAMERON'),
(127,'CAT CONEHEADS','HELEN'),
(128,'CATCH AMISTAD','JOHNNY'),
(129,'CAUSE DATE','PENELOPE'),
(130,'CELEBRITY HORN','DUSTIN'),
(131,'CENTER DINOSAUR','ALEC'),
(132,'CHAINSAW UPTOWN','NICK'),
(133,'CHAMBER ITALIAN','ALEC'),
(134,'CHAMPION FLATLINERS','FRANCES'),
(135,'CHANCE RESURRECTION','MILLA'),
(136,'CHAPLIN LICENSE','TIM'),
(137,'CHARADE DUFFEL','GREG'),
(138,'CHARIOTS CONSPIRACY','GINA'),
(139,'CHASING FIGHT','TOM'),
(140,'CHEAPER CLYDE','PENELOPE'),
(141,'CHICAGO NORTH','MAE'),
(142,'CHICKEN HELLFIGHTERS','KIRSTEN'),
(143,'CHILL LUCK','MARY'),
(144,'CHINATOWN GLADIATOR','UMA'),
(145,'CHISUM BEHAVIOR','NICK'),
(146,'CHITTY LOCK','JOHNNY'),
(147,'CHOCOLAT HARRY','JOE'),
(148,'CHOCOLATE DUCK','JOE'),
(149,'CHRISTMAS MOONSHINE','PENELOPE'),
(150,'CIDER DESIRE','JULIA'),
(151,'CINCINATTI WHISPERER','ANNE'),
(152,'CIRCUS YOUTH','BOB'),
(153,'CITIZEN SHREK','KEVIN'),
(154,'CLASH FREDDY','UMA'),
(155,'CLEOPATRA DEVIL','KARL'),
(156,'CLERKS ANGELS','PENELOPE'),
(157,'CLOCKWORK PARADISE','SPENCER'),
(158,'CLONES PINOCCHIO','MATTHEW'),
(159,'CLOSER BANG','KIRSTEN'),
(160,'CLUB GRAFFITI','TOM'),
(161,'CLUE GRAIL','KIRK'),
(162,'CLUELESS BUCKET','UMA'),
(163,'CLYDE THEORY','SISSY'),
(164,'COAST RAINBOW','BETTE'),
(165,'COLDBLOODED DARLING','BETTE'),
(166,'COLOR PHILADELPHIA','PENELOPE'),
(167,'COMA HEAD','CAMERON'),
(168,'COMANCHEROS ENEMY','GOLDIE'),
(169,'COMFORTS RUSH','RUSSELL'),
(170,'COMMAND DARLING','GRACE'),
(171,'COMMANDMENTS EXPRESS','JOHNNY'),
(172,'CONEHEADS SMOOCHY','JOHNNY'),
(173,'CONFESSIONS MAGUIRE','GRACE'),
(174,'CONFIDENTIAL INTERVIEW','PARKER'),
(175,'CONFUSED CANDLES','CHRISTIAN'),
(176,'CONGENIALITY QUEST','TOM'),
(177,'CONNECTICUT TRAMP','KARL'),
(178,'CONNECTION MICROCOSMOS','CAMERON'),
(179,'CONQUERER NUTS','MATTHEW'),
(180,'CONSPIRACY SPIRIT','KIRK'),
(181,'CONTACT ANONYMOUS','MENA'),
(182,'CONTROL ANTHEM','BOB'),
(183,'CONVERSATION DOWNHILL','DUSTIN'),
(184,'CORE SUIT','PENELOPE'),
(185,'COWBOY DOOM','ED'),
(186,'CRAFT OUTFIELD','RIP'),
(187,'CRANES RESERVOIR','VIVIEN'),
(188,'CRAZY HOME','SISSY'),
(189,'CREATURES SHAKESPEARE','SUSAN'),
(190,'CREEPERS KANE','CHRISTOPHER'),
(191,'CROOKED FROGMEN','JOE'),
(192,'CROSSING DIVORCE','JUDE'),
(193,'CROSSROADS CASUALTIES','BETTE'),
(194,'CROW GREASE','CAMERON'),
(195,'CROWDS TELEMARK','MATTHEW'),
(196,'CRUELTY UNFORGIVEN','GREG'),
(197,'CRUSADE HONEY','TIM'),
(198,'CRYSTAL BREAKING','REESE'),
(199,'CUPBOARD SINNERS','HELEN'),
(200,'CURTAIN VIDEOTAPE','JOE'),
(201,'CYCLONE FAMILY','HELEN'),
(202,'DADDY PITTSBURGH','JOHNNY'),
(203,'DAISY MENAGERIE','JOHNNY'),
(204,'DALMATIONS SWEDEN','JOE'),
(205,'DANCES NONE','MATTHEW'),
(206,'DANCING FEVER','KENNETH'),
(207,'DANGEROUS UPTOWN','ANNE'),
(208,'DARES PLUTO','KARL'),
(209,'DARKNESS WAR','GENE'),
(210,'DARKO DORADO','DUSTIN'),
(211,'DARLING BREAKING','FRANCES'),
(212,'DARN FORRESTER','BOB'),
(213,'DATE SPEED','KARL'),
(214,'DAUGHTER MADIGAN','MILLA'),
(215,'DAWN POND','RIP'),
(216,'DAY UNFAITHFUL','KARL'),
(217,'DAZED PUNK','GRACE'),
(218,'DECEIVER BETRAYED','GRACE'),
(219,'DEEP CRUSADE','TIM'),
(220,'DEER VIRGINIAN','GINA'),
(221,'DELIVERANCE MULHOLLAND','FRED'),
(222,'DESERT POSEIDON','GOLDIE'),
(223,'DESIRE ALIEN','TOM'),
(224,'DESPERATE TRAINSPOTTING','CARY'),
(225,'DESTINATION JERK','GRACE'),
(226,'DESTINY SATURDAY','NICK'),
(227,'DETAILS PACKER','MICHELLE'),
(228,'DETECTIVE VISION','KENNETH'),
(229,'DEVIL DESIRE','MARY'),
(230,'DIARY PANIC','JODIE'),
(231,'DINOSAUR SECRETARY','LUCILLE'),
(232,'DIRTY ACE','VIVIEN'),
(233,'DISCIPLE MOTHER','JOHNNY'),
(234,'DISTURBING SCARFACE','ANGELINA'),
(235,'DIVIDE MONSTER','SANDRA'),
(236,'DIVINE RESURRECTION','CHRISTIAN'),
(237,'DIVORCE SHINING','CHRISTIAN'),
(238,'DOCTOR GRAIL','JAMES'),
(239,'DOGMA FAMILY','KIRK'),
(240,'DOLLS RAGE','CARY'),
(241,'DONNIE ALLEY','VIVIEN'),
(242,'DOOM DANCING','CAMERON'),
(243,'DOORS PRESIDENT','KARL'),
(244,'DORADO NOTTING','AUDREY'),
(245,'DOUBLE WRATH','KEVIN'),
(246,'DOUBTFIRE LABYRINTH','HARRISON'),
(247,'DOWNHILL ENOUGH','WOODY'),
(248,'DOZEN LION','NATALIE'),
(249,'DRACULA CRYSTAL','NICK'),
(250,'DRAGON SQUAD','ANNE'),
(251,'DRAGONFLY STRANGERS','CHRISTIAN'),
(252,'DREAM PICKUP','MILLA'),
(253,'DRIFTER COMMANDMENTS','VIVIEN'),
(254,'DRIVER ANNIE','UMA'),
(255,'DRIVING POLISH','MATTHEW'),
(256,'DROP WATERFRONT','BETTE'),
(257,'DRUMLINE CYCLONE',NULL),
(258,'DRUMS DYNAMITE','VIVIEN'),
(259,'DUCK RACER','WOODY'),
(260,'DUDE BLINDNESS','SANDRA'),
(261,'DUFFEL APOCALYPSE','CARY'),
(262,'DUMBO LUST','SANDRA'),
(263,'DURHAM PANKY','MATTHEW'),
(264,'DWARFS ALTER','MARY'),
(265,'DYING MAKER','GROUCHO'),
(266,'DYNAMITE TARZAN','BOB'),
(267,'EAGLES PANKY','FRED'),
(268,'EARLY HOME','DAN'),
(269,'EARRING INSTINCT','FRED'),
(270,'EARTH VISION','KENNETH'),
(271,'EASY GLADIATOR','FRED'),
(272,'EDGE KISSING','JAYNE'),
(273,'EFFECT GLADIATOR','JULIA'),
(274,'EGG IGBY','LUCILLE'),
(275,'EGYPT TENENBAUMS','CUBA'),
(276,'ELEMENT FREDDY','KIRK'),
(277,'ELEPHANT TROJAN','PENELOPE'),
(278,'ELF MURDER','CAMERON'),
(279,'ELIZABETH SHANE','DAN'),
(280,'EMPIRE MALKOVICH','CUBA'),
(281,'ENCINO ELF','ZERO'),
(282,'ENCOUNTERS CURTAIN','ALEC'),
(283,'ENDING CROWDS','ZERO'),
(284,'ENEMY ODDS','VIVIEN'),
(285,'ENGLISH BULWORTH','MENA'),
(286,'ENOUGH RAGING','JOHNNY'),
(287,'ENTRAPMENT SATISFACTION','FRED'),
(288,'ESCAPE METROPOLIS','JOHNNY'),
(289,'EVE RESURRECTION','ED'),
(290,'EVERYONE CRAFT','GOLDIE'),
(291,'EVOLUTION ALTER','ELVIS'),
(292,'EXCITEMENT EVE','GRACE'),
(293,'EXORCIST STING','GOLDIE'),
(294,'EXPECATIONS NATURAL','ELVIS'),
(295,'EXPENDABLE STALLION','FRANCES'),
(296,'EXPRESS LONELY','ALEC'),
(297,'EXTRAORDINARY CONQUERER','HENRY'),
(298,'EYES DRIVING','DAN'),
(299,'FACTORY DRAGON','SISSY'),
(300,'FALCON VOLUME','MARY'),
(301,'FAMILY SWEET','SANDRA'),
(302,'FANTASIA PARK','WARREN'),
(303,'FANTASY TROOPERS','NATALIE'),
(304,'FARGO GANDHI','MICHELLE'),
(305,'FATAL HAUNTED','MILLA'),
(306,'FEATHERS METAL','MILLA'),
(307,'FELLOWSHIP AUTUMN','MENA'),
(308,'FERRIS MOTHER','SISSY'),
(309,'FEUD FROGMEN','TIM'),
(310,'FEVER EMPIRE','HELEN'),
(311,'FICTION CHRISTMAS','KEVIN'),
(312,'FIDDLER LOST','TIM'),
(313,'FIDELITY DEVIL','HELEN'),
(314,'FIGHT JAWBREAKER','NICK'),
(315,'FINDING ANACONDA','FRANCES'),
(316,'FIRE WOLVES','JOHNNY'),
(317,'FIREBALL PHILADELPHIA','VAL'),
(318,'FIREHOUSE VIETNAM','SANDRA'),
(319,'FISH OPUS','PARKER'),
(320,'FLAMINGOS CONNECTICUT','GOLDIE'),
(321,'FLASH WARS','NICK'),
(322,'FLATLINERS KILLER','NICK'),
(323,'FLIGHT LIES',NULL),
(324,'FLINTSTONES HAPPINESS','ALBERT'),
(325,'FLOATS GARDEN','RIP'),
(326,'FLYING HOOK','CUBA'),
(327,'FOOL MOCKINGBIRD','RIP'),
(328,'FOREVER CANDIDATE','JADA'),
(329,'FORREST SONS','ED'),
(330,'FORRESTER COMANCHEROS','KIRK'),
(331,'FORWARD TEMPLE','RIP'),
(332,'FRANKENSTEIN STRANGER','SCARLETT'),
(333,'FREAKY POCUS','TOM'),
(334,'FREDDY STORM','JULIA'),
(335,'FREEDOM CLEOPATRA','CAMERON'),
(336,'FRENCH HOLIDAY','ED'),
(337,'FRIDA SLIPPER','UMA'),
(338,'FRISCO FORREST','TOM'),
(339,'FROGMEN BREAKING','BEN'),
(340,'FRONTIER CABIN','JOHNNY'),
(341,'FROST HEAD','ED'),
(342,'FUGITIVE MAGUIRE','CUBA'),
(343,'FULL FLATLINERS','MICHELLE'),
(344,'FURY MURDER','KARL'),
(345,'GABLES METROPOLIS','FRED'),
(346,'GALAXY SWEETHEARTS','UMA'),
(347,'GAMES BOWFINGER','JULIA'),
(348,'GANDHI KWAI','ZERO'),
(349,'GANGS PRIDE','ELVIS'),
(350,'GARDEN ISLAND','MARY'),
(351,'GASLIGHT CRUSADE','GRACE'),
(352,'GATHERING CALENDAR','MICHAEL'),
(353,'GENTLEMEN STAGE','TOM'),
(354,'GHOST GROUNDHOG','DAN'),
(355,'GHOSTBUSTERS ELF','JENNIFER'),
(356,'GIANT TROOPERS','MATTHEW'),
(357,'GILBERT PELICAN','NICK'),
(358,'GILMORE BOILED','WOODY'),
(359,'GLADIATOR WESTWARD','JULIA'),
(360,'GLASS DYING','MATTHEW'),
(361,'GLEAMING JAWBREAKER','PENELOPE'),
(362,'GLORY TRACY','CHRISTIAN'),
(363,'GO PURPLE','SEAN'),
(364,'GODFATHER DIARY','ZERO'),
(365,'GOLD RIVER','GROUCHO'),
(366,'GOLDFINGER SENSIBILITY','CHRISTIAN'),
(367,'GOLDMINE TYCOON','SANDRA'),
(368,'GONE TROUBLE','SISSY'),
(369,'GOODFELLAS SALUTE','NICK'),
(370,'GORGEOUS BINGO','VIVIEN'),
(371,'GOSFORD DONNIE','ANGELA'),
(372,'GRACELAND DYNAMITE','NATALIE'),
(373,'GRADUATE LORD','EWAN'),
(374,'GRAFFITI LOVE','JOHNNY'),
(375,'GRAIL FRANKENSTEIN','JOHNNY'),
(376,'GRAPES FURY','CARMEN'),
(377,'GREASE YOUTH','KIRK'),
(378,'GREATEST NORTH','HELEN'),
(379,'GREEDY ROOTS','JENNIFER'),
(380,'GREEK EVERYONE','SISSY'),
(381,'GRINCH MASSAGE','UMA'),
(382,'GRIT CLOCKWORK','CAMERON'),
(383,'GROOVE FICTION','JOHNNY'),
(384,'GROSSE WONDERFUL','SEAN'),
(385,'GROUNDHOG UNCUT','UMA'),
(386,'GUMP DATE','DAN'),
(387,'GUN BONNIE','BURT'),
(388,'GUNFIGHT MOON','CARMEN'),
(389,'GUNFIGHTER MUSSOLINI','AUDREY'),
(390,'GUYS FALCON','RIP'),
(391,'HALF OUTFIELD','ANNE'),
(392,'HALL CASSIDY','JOHNNY'),
(393,'HALLOWEEN NUTS','ED'),
(394,'HAMLET WISDOM','JOHNNY'),
(395,'HANDICAP BOONDOCK','ZERO'),
(396,'HANGING DEEP','MATTHEW'),
(397,'HANKY OCTOBER','RICHARD'),
(398,'HANOVER GALAXY','JENNIFER'),
(399,'HAPPINESS UNITED','NICK'),
(400,'HARDLY ROBBERS','KARL'),
(401,'HAROLD FRENCH','TIM'),
(402,'HARPER DYING','KENNETH'),
(403,'HARRY IDAHO','FAY'),
(404,'HATE HANDICAP','BOB'),
(405,'HAUNTED ANTITRUST','CAMERON'),
(406,'HAUNTING PIANIST','JAYNE'),
(407,'HAWK CHILL','REESE'),
(408,'HEAD STRANGER','GARY'),
(409,'HEARTBREAKERS BRIGHT','GINA'),
(410,'HEAVEN FREEDOM','BURT'),
(411,'HEAVENLY GUN','JOHNNY'),
(412,'HEAVYWEIGHTS BEAST','BEN'),
(413,'HEDWIG ALTER','JAYNE'),
(414,'HELLFIGHTERS SIERRA','GRACE'),
(415,'HIGH ENCINO','VIVIEN'),
(416,'HIGHBALL POTTER','KARL'),
(417,'HILLS NEIGHBORS','VIVIEN'),
(418,'HOBBIT ALIEN','VIVIEN'),
(419,'HOCUS FRIDA','SANDRA'),
(420,'HOLES BRANNIGAN','KARL'),
(421,'HOLIDAY GAMES','DAN'),
(422,'HOLLOW JEOPARDY','EMILY'),
(423,'HOLLYWOOD ANONYMOUS','ANNE'),
(424,'HOLOCAUST HIGHBALL','CARMEN'),
(425,'HOLY TADPOLE','GOLDIE'),
(426,'HOME PITY','KIRSTEN'),
(427,'HOMEWARD CIDER','UMA'),
(428,'HOMICIDE PEACH','BOB'),
(429,'HONEY TIES','ZERO'),
(430,'HOOK CHARIOTS','ELVIS'),
(431,'HOOSIERS BIRDCAGE','SISSY'),
(432,'HOPE TOOTSIE','GREG'),
(433,'HORN WORKING','ZERO'),
(434,'HORROR REIGN','JOE'),
(435,'HOTEL HAPPINESS','SANDRA'),
(436,'HOURS RAGE','ALEC'),
(437,'HOUSE DYNAMITE','NATALIE'),
(438,'HUMAN GRAFFITI','PENELOPE'),
(439,'HUNCHBACK IMPOSSIBLE','GROUCHO'),
(440,'HUNGER ROOF','MERYL'),
(441,'HUNTER ALTER','ED'),
(442,'HUNTING MUSKETEERS','CARY'),
(443,'HURRICANE AFFAIR','KIRSTEN'),
(444,'HUSTLER PARTY','ALEC'),
(445,'HYDE DOCTOR','CUBA'),
(446,'HYSTERICAL GRAIL','BURT'),
(447,'ICE CROSSING','MENA'),
(448,'IDAHO LOVE','TOM'),
(449,'IDENTITY LOVER','SANDRA'),
(450,'IDOLS SNATCHERS','TOM'),
(451,'IGBY MAKER','BETTE'),
(452,'ILLUSION AMELIE','KENNETH'),
(453,'IMAGE PRINCESS','ED'),
(454,'IMPACT ALADDIN','VIVIEN'),
(455,'IMPOSSIBLE PREJUDICE','FRED'),
(456,'INCH JET','UMA'),
(457,'INDEPENDENCE HOTEL','KARL'),
(458,'INDIAN LOVE','NICK'),
(459,'INFORMER DOUBLE','RENEE'),
(460,'INNOCENT USUAL','DAN'),
(461,'INSECTS STONE','GARY'),
(462,'INSIDER ARIZONA','DAN'),
(463,'INSTINCT AIRPORT','JENNIFER'),
(464,'INTENTIONS EMPIRE','ANGELINA'),
(465,'INTERVIEW LIAISONS','MENA'),
(466,'INTOLERABLE INTENTIONS','BURT'),
(467,'INTRIGUE WORST','VAL'),
(468,'INVASION CYCLONE','WOODY'),
(469,'IRON MOON','HELEN'),
(470,'ISHTAR ROCKETEER','KIRSTEN'),
(471,'ISLAND EXORCIST','RAY'),
(472,'ITALIAN AFRICAN','VIVIEN'),
(473,'JACKET FRISCO','BOB'),
(474,'JADE BUNCH','CARMEN'),
(475,'JAPANESE RUN','VIVIEN'),
(476,'JASON TRAP','GOLDIE'),
(477,'JAWBREAKER BROOKLYN','CHRISTIAN'),
(478,'JAWS HARRY','HELEN'),
(479,'JEDI BENEATH','JAMES'),
(480,'JEEPERS WEDDING','ED'),
(481,'JEKYLL FROGMEN','NICK'),
(482,'JEOPARDY ENCINO','ALEC'),
(483,'JERICHO MULAN','ELVIS'),
(484,'JERK PAYCHECK','DAN'),
(485,'JERSEY SASSY','NICK'),
(486,'JET NEIGHBORS','FAY'),
(487,'JINGLE SAGEBRUSH','KIM'),
(488,'JOON NORTHWEST','ALEC'),
(489,'JUGGLER HARDLY','MILLA'),
(490,'JUMANJI BLADE','JENNIFER'),
(491,'JUMPING WRATH','ELVIS'),
(492,'JUNGLE CLOSER','LUCILLE'),
(493,'KANE EXORCIST','AUDREY'),
(494,'KARATE MOON','JOHNNY'),
(495,'KENTUCKIAN GIANT','VIVIEN'),
(496,'KICK SAVANNAH','ANGELA'),
(497,'KILL BROTHERHOOD','KIRSTEN'),
(498,'KILLER INNOCENT','BURT'),
(499,'KING EVOLUTION','PENELOPE'),
(500,'KISS GLORY','CUBA'),
(501,'KISSING DOLLS','TOM'),
(502,'KNOCK WARLOCK','CUBA'),
(503,'KRAMER CHOCOLATE','JOHNNY'),
(504,'KWAI HOMEWARD','NATALIE'),
(505,'LABYRINTH LEAGUE','TOM'),
(506,'LADY STAGE','PENELOPE'),
(507,'LADYBUGS ARMAGEDDON','KIRSTEN'),
(508,'LAMBS CINCINATTI','WOODY'),
(509,'LANGUAGE COWBOY','PENELOPE'),
(510,'LAWLESS VISION','JOE'),
(511,'LAWRENCE LOVE','CHRISTOPHER'),
(512,'LEAGUE HELLFIGHTERS','JESSICA'),
(513,'LEATHERNECKS DWARFS','KARL'),
(514,'LEBOWSKI SOLDIERS','JOE'),
(515,'LEGALLY SECRETARY','UMA'),
(516,'LEGEND JEDI','TOM'),
(517,'LESSON CLEOPATRA','BETTE'),
(518,'LIAISONS SWEET','NICK'),
(519,'LIBERTY MAGNIFICENT','BETTE'),
(520,'LICENSE WEEKEND','NATALIE'),
(521,'LIES TREATMENT','HELEN'),
(522,'LIFE TWISTED','CHRISTIAN'),
(523,'LIGHTS DEER','MATTHEW'),
(524,'LION UNCUT','UMA'),
(525,'LOATHING LEGALLY','AUDREY'),
(526,'LOCK REAR','WALTER'),
(527,'LOLA AGENT','LUCILLE'),
(528,'LOLITA WORLD','UMA'),
(529,'LONELY ELEPHANT','RIP'),
(530,'LORD ARIZONA','CHRISTIAN'),
(531,'LOSE INCH','LUCILLE'),
(532,'LOSER HUSTLER','MATTHEW'),
(533,'LOST BIRD','KIRK'),
(534,'LOUISIANA HARRY','HENRY'),
(535,'LOVE SUICIDES','JOHNNY'),
(536,'LOVELY JINGLE','VIVIEN'),
(537,'LOVER TRUMAN','VIVIEN'),
(538,'LOVERBOY ATTACKS','LUCILLE'),
(539,'LUCK OPUS','ED'),
(540,'LUCKY FLYING','NICK'),
(541,'LUKE MUMMY','CUBA'),
(542,'LUST LOCK','ANNE'),
(543,'MADIGAN DORADO','RAY'),
(544,'MADISON TRAP','RIP'),
(545,'MADNESS ATTACKS','FRANCES'),
(546,'MADRE GABLES','TOM'),
(547,'MAGIC MALLRATS','ALEC'),
(548,'MAGNIFICENT CHITTY','FRED'),
(549,'MAGNOLIA FORRESTER','SANDRA'),
(550,'MAGUIRE APACHE','NICK'),
(551,'MAIDEN HOME','WOODY'),
(552,'MAJESTIC FLOATS','JOE'),
(553,'MAKER GABLES','CUBA'),
(554,'MALKOVICH PET','GRACE'),
(555,'MALLRATS UNITED','NICK'),
(556,'MALTESE HOPE','ANGELA'),
(557,'MANCHURIAN CURTAIN','RAY'),
(558,'MANNEQUIN WORST','ANNE'),
(559,'MARRIED GO','GOLDIE'),
(560,'MARS ROMAN','ADAM'),
(561,'MASK PEACH','NICK'),
(562,'MASKED BUBBLE','GARY'),
(563,'MASSACRE USUAL','SPENCER'),
(564,'MASSAGE IMAGE','KEVIN'),
(565,'MATRIX SNOWMAN','SANDRA'),
(566,'MAUDE MOD','CARY'),
(567,'MEET CHOCOLATE','ZERO'),
(568,'MEMENTO ZOOLANDER','TOM'),
(569,'MENAGERIE RUSHMORE','BURT'),
(570,'MERMAID INSECTS','FRANCES'),
(571,'METAL ARMAGEDDON','JOHNNY'),
(572,'METROPOLIS COMA','VAL'),
(573,'MICROCOSMOS PARADISE','HELEN'),
(574,'MIDNIGHT WESTWARD','WOODY'),
(575,'MIDSUMMER GROUNDHOG','JADA'),
(576,'MIGHTY LUCK','JULIA'),
(577,'MILE MULAN','MENA'),
(578,'MILLION ACE','CHRISTIAN'),
(579,'MINDS TRUMAN','ANNE'),
(580,'MINE TITANS','NICK'),
(581,'MINORITY KISS','VIVIEN'),
(582,'MIRACLE VIRTUAL','FRED'),
(583,'MISSION ZOOLANDER','FRED'),
(584,'MIXED DOORS','CARMEN'),
(585,'MOB DUFFEL','CAMERON'),
(586,'MOCKINGBIRD HOLLYWOOD','JULIA'),
(587,'MOD SECRETARY','CHRISTIAN'),
(588,'MODEL FISH','UMA'),
(589,'MODERN DORADO','LUCILLE'),
(590,'MONEY HAROLD','ALEC'),
(591,'MONSOON CAUSE','NICK'),
(592,'MONSTER SPARTACUS','JUDE'),
(593,'MONTEREY LABYRINTH','KARL'),
(594,'MONTEZUMA COMMAND','CUBA'),
(595,'MOON BUNCH','ANNE'),
(596,'MOONSHINE CABIN','JODIE'),
(597,'MOONWALKER FOOL','ZERO'),
(598,'MOSQUITO ARMAGEDDON','GOLDIE'),
(599,'MOTHER OLEANDER','FRANCES'),
(600,'MOTIONS DETAILS','UMA'),
(601,'MOULIN WAKE','JESSICA'),
(602,'MOURNING PURPLE','CHRISTIAN'),
(603,'MOVIE SHAKESPEARE','HELEN'),
(604,'MULAN MOON','NICK'),
(605,'MULHOLLAND BEAST','PENELOPE'),
(606,'MUMMY CREATURES','HELEN'),
(607,'MUPPET MILE','RIP'),
(608,'MURDER ANTITRUST','KIRK'),
(609,'MUSCLE BRIGHT','SEAN'),
(610,'MUSIC BOONDOCK','MORGAN'),
(611,'MUSKETEERS WAIT','BEN'),
(612,'MUSSOLINI SPOILERS','VIVIEN'),
(613,'MYSTIC TRUMAN','SCARLETT'),
(614,'NAME DETECTIVE','WARREN'),
(615,'NASH CHOCOLAT','JUDY'),
(616,'NATIONAL STORY','JENNIFER'),
(617,'NATURAL STOCK','MILLA'),
(618,'NECKLACE OUTBREAK','ED'),
(619,'NEIGHBORS CHARADE','WOODY'),
(620,'NEMO CAMPUS','FAY'),
(621,'NETWORK PEAK','KIRK'),
(622,'NEWSIES STORY','RALPH'),
(623,'NEWTON LABYRINTH','SEAN'),
(624,'NIGHTMARE CHILL','WALTER'),
(625,'NONE SPIKING','WOODY'),
(626,'NOON PAPI','CUBA'),
(627,'NORTH TEQUILA','GARY'),
(628,'NORTHWEST POLISH','MICHELLE'),
(629,'NOTORIOUS REUNION','KIM'),
(630,'NOTTING SPEAKEASY','MINNIE'),
(631,'NOVOCAINE FLIGHT','KARL'),
(632,'NUTS TIES','NATALIE'),
(633,'OCTOBER SUBMARINE','GRACE'),
(634,'ODDS BOOGIE','ELVIS'),
(635,'OKLAHOMA JUMANJI','PENELOPE'),
(636,'OLEANDER CLUE','ZERO'),
(637,'OPEN AFRICAN','GRACE'),
(638,'OPERATION OPERATION','CHRISTIAN'),
(639,'OPPOSITE NECKLACE','CHRISTIAN'),
(640,'OPUS ICE','SEAN'),
(641,'ORANGE GRAPES','MEG'),
(642,'ORDER BETRAYED','ANGELINA'),
(643,'ORIENT CLOSER','LUCILLE'),
(644,'OSCAR GOLD','BOB'),
(645,'OTHERS SOUP','FRANCES'),
(646,'OUTBREAK DIVINE','ALEC'),
(647,'OUTFIELD MASSACRE','DAN'),
(648,'OUTLAW HANKY','ELVIS'),
(649,'OZ LIAISONS','SANDRA'),
(650,'PACIFIC AMISTAD','JOHNNY'),
(651,'PACKER MADIGAN','TIM'),
(652,'PAJAMA JAWBREAKER','LUCILLE'),
(653,'PANIC CLUB','CAMERON'),
(654,'PANKY SUBMARINE','RIP'),
(655,'PANTHER REDS','BEN'),
(656,'PAPI NECKLACE','MEG'),
(657,'PARADISE SABRINA','JODIE'),
(658,'PARIS WEEKEND','PENELOPE'),
(659,'PARK CITIZEN','GROUCHO'),
(660,'PARTY KNOCK','RIVER'),
(661,'PAST SUICIDES','GENE'),
(662,'PATHS CONTROL','VAL'),
(663,'PATIENT SISTER','LUCILLE'),
(664,'PATRIOT ROMAN','CARMEN'),
(665,'PATTON INTERVIEW','JOHNNY'),
(666,'PAYCHECK WAIT','GARY'),
(667,'PEACH INNOCENT','TIM'),
(668,'PEAK FOREVER','AUDREY'),
(669,'PEARL DESTINY','TIM'),
(670,'PELICAN COMFORTS','BOB'),
(671,'PERDITION FARGO','JOE'),
(672,'PERFECT GROOVE','KARL'),
(673,'PERSONAL LADYBUGS','BOB'),
(674,'PET HAUNTING','JODIE'),
(675,'PHANTOM GLORY','CARMEN'),
(676,'PHILADELPHIA WIFE','MARY'),
(677,'PIANIST OUTFIELD','PENELOPE'),
(678,'PICKUP DRIVING','JODIE'),
(679,'PILOT HOOSIERS','JULIA'),
(680,'PINOCCHIO SIMON','KIRSTEN'),
(681,'PIRATES ROXANNE','HUMPHREY'),
(682,'PITTSBURGH HUNCHBACK','RIP'),
(683,'PITY BOUND','GOLDIE'),
(684,'PIZZA JUMANJI','DARYL'),
(685,'PLATOON INSTINCT','ED'),
(686,'PLUTO OLEANDER','KIRSTEN'),
(687,'POCUS PULP','JOHNNY'),
(688,'POLISH BROOKLYN','VIVIEN'),
(689,'POLLOCK DELIVERANCE','GOLDIE'),
(690,'POND SEATTLE','DARYL'),
(691,'POSEIDON FOREVER','JENNIFER'),
(692,'POTLUCK MIXED','BETTE'),
(693,'POTTER CONNECTICUT','WARREN'),
(694,'PREJUDICE OLEANDER','CHRISTIAN'),
(695,'PRESIDENT BANG','JULIA'),
(696,'PRIDE ALAMO','GOLDIE'),
(697,'PRIMARY GLASS','JOE'),
(698,'PRINCESS GIANT','CHRISTIAN'),
(699,'PRIVATE DROP','NICK'),
(700,'PRIX UNDEFEATED','KIRSTEN'),
(701,'PSYCHO SHRUNK','OLYMPIA'),
(702,'PULP BEVERLY','KIRSTEN'),
(703,'PUNK DIVORCE','CHRISTIAN'),
(704,'PURE RUNNER','CAMERON'),
(705,'PURPLE MOVIE','TOM'),
(706,'QUEEN LUKE','MARY'),
(707,'QUEST MUSSOLINI','JUDY'),
(708,'QUILLS BULL','FAY'),
(709,'RACER EGG','ZERO'),
(710,'RAGE GAMES','SCARLETT'),
(711,'RAGING AIRPLANE','BOB'),
(712,'RAIDERS ANTITRUST','JENNIFER'),
(713,'RAINBOW SHOCK','TOM'),
(714,'RANDOM GO','JENNIFER'),
(715,'RANGE MOONWALKER','RIP'),
(716,'REAP UNFAITHFUL','CHRISTIAN'),
(717,'REAR TRADING','FRED'),
(718,'REBEL AIRPORT','UMA'),
(719,'RECORDS ZORRO','JAYNE'),
(720,'REDEMPTION COMFORTS','AUDREY'),
(721,'REDS POCUS','JENNIFER'),
(722,'REEF SALUTE','JOE'),
(723,'REIGN GENTLEMEN','ALEC'),
(724,'REMEMBER DIARY','JODIE'),
(725,'REQUIEM TYCOON','ANNE'),
(726,'RESERVOIR ADAPTATION','CHRISTIAN'),
(727,'RESURRECTION SILVERADO','MENA'),
(728,'REUNION WITCHES','KARL'),
(729,'RIDER CADDYSHACK','UMA'),
(730,'RIDGEMONT SUBMARINE','JOHNNY'),
(731,'RIGHT CRANES','ELVIS'),
(732,'RINGS HEARTBREAKERS','JOHNNY'),
(733,'RIVER OUTLAW','KIRSTEN'),
(734,'ROAD ROXANNE','HELEN'),
(735,'ROBBERS JOON','MILLA'),
(736,'ROBBERY BRIGHT','GOLDIE'),
(737,'ROCK INSTINCT','MILLA'),
(738,'ROCKETEER MOTHER','JUDY'),
(739,'ROCKY WAR','SISSY'),
(740,'ROLLERCOASTER BRINGING','HARRISON'),
(741,'ROMAN PUNK','JIM'),
(742,'ROOF CHAMPION','NICK'),
(743,'ROOM ROMAN','WOODY'),
(744,'ROOTS REMEMBER','JOHNNY'),
(745,'ROSES TREASURE','CUBA'),
(746,'ROUGE SQUAD','PENELOPE'),
(747,'ROXANNE REBEL','JOHNNY'),
(748,'RUGRATS SHAKESPEARE','JUDY'),
(749,'RULES HUMAN','PENELOPE'),
(750,'RUN PACIFIC','BOB'),
(751,'RUNAWAY TENENBAUMS','NICK'),
(752,'RUNNER MADIGAN','MATTHEW'),
(753,'RUSH GOODFELLAS','KIRK'),
(754,'RUSHMORE MERMAID','NICK'),
(755,'SABRINA MIDNIGHT','KEVIN'),
(756,'SADDLE ANTITRUST','BOB'),
(757,'SAGEBRUSH CLUELESS','LUCILLE'),
(758,'SAINTS BRIDE','GRACE'),
(759,'SALUTE APOLLO','VIVIEN'),
(760,'SAMURAI LION','ANGELINA'),
(761,'SANTA PARIS','KENNETH'),
(762,'SASSY PACKER','GROUCHO'),
(763,'SATISFACTION CONFIDENTIAL','CAMERON'),
(764,'SATURDAY LAMBS','VIVIEN'),
(765,'SATURN NAME','ANGELINA'),
(766,'SAVANNAH TOWN','GRACE'),
(767,'SCALAWAG DUCK','REESE'),
(768,'SCARFACE BANG','PARKER'),
(769,'SCHOOL JACKET','MATTHEW'),
(770,'SCISSORHANDS SLUMS','GRACE'),
(771,'SCORPION APOLLO','MATTHEW'),
(772,'SEA VIRGIN','GOLDIE'),
(773,'SEABISCUIT PUNK','ADAM'),
(774,'SEARCHERS WAIT','SUSAN'),
(775,'SEATTLE EXPECATIONS','ELVIS'),
(776,'SECRET GROUNDHOG','FAY'),
(777,'SECRETARY ROUGE','JULIA'),
(778,'SECRETS PARADISE','REESE'),
(779,'SENSE GREEK','FRED'),
(780,'SENSIBILITY REAR','CHRISTIAN'),
(781,'SEVEN SWARM','CAMERON'),
(782,'SHAKESPEARE SADDLE','CHRISTIAN'),
(783,'SHANE DARKNESS','CUBA'),
(784,'SHANGHAI TYCOON','LUCILLE'),
(785,'SHAWSHANK BUBBLE','BOB'),
(786,'SHEPHERD MIDSUMMER','SYLVESTER'),
(787,'SHINING ROSES','JULIA'),
(788,'SHIP WONDERLAND','AUDREY'),
(789,'SHOCK CABIN','LAURA'),
(790,'SHOOTIST SUPERFLY','WOODY'),
(791,'SHOW LORD','KENNETH'),
(792,'SHREK LICENSE','FRANCES'),
(793,'SHRUNK DIVINE','WOODY'),
(794,'SIDE ARK','HELEN'),
(795,'SIEGE MADRE','CUBA'),
(796,'SIERRA DIVIDE','JIM'),
(797,'SILENCE KANE','SANDRA'),
(798,'SILVERADO GOLDFINGER','JENNIFER'),
(799,'SIMON NORTH','JOHNNY'),
(800,'SINNERS ATLANTIS','HELEN'),
(801,'SISTER FREDDY','SUSAN'),
(802,'SKY MIRACLE','ELVIS'),
(803,'SLACKER LIAISONS',NULL),
(804,'SLEEPING SUSPECTS','KIRSTEN'),
(805,'SLEEPLESS MONSOON','GRACE'),
(806,'SLEEPY JAPANESE','GRACE'),
(807,'SLEUTH ORIENT','RALPH'),
(808,'SLING LUKE','DAN'),
(809,'SLIPPER FIDELITY','CAMERON'),
(810,'SLUMS DUCK','REESE'),
(811,'SMILE EARRING','NICK'),
(812,'SMOKING BARBARELLA','KARL'),
(813,'SMOOCHY CONTROL','DARYL'),
(814,'SNATCH SLIPPER','SCARLETT'),
(815,'SNATCHERS MONTEZUMA','JOE'),
(816,'SNOWMAN ROLLERCOASTER','UMA'),
(817,'SOLDIERS EVOLUTION','JOHNNY'),
(818,'SOMETHING DUCK','ED'),
(819,'SONG HEDWIG','KENNETH'),
(820,'SONS INTERVIEW','SANDRA'),
(821,'SORORITY QUEEN','RIP'),
(822,'SOUP WISDOM','MATTHEW'),
(823,'SOUTH WAIT','MICHELLE'),
(824,'SPARTACUS CHEAPER','CHRIS'),
(825,'SPEAKEASY DATE','NICK'),
(826,'SPEED SUIT','BETTE'),
(827,'SPICE SORORITY','ED'),
(828,'SPIKING ELEMENT','DARYL'),
(829,'SPINAL ROCKY','CAMERON'),
(830,'SPIRIT FLINTSTONES','JULIA'),
(831,'SPIRITED CASUALTIES','GOLDIE'),
(832,'SPLASH GUMP','PENELOPE'),
(833,'SPLENDOR PATTON','UMA'),
(834,'SPOILERS HELLFIGHTERS','RIP'),
(835,'SPY MILE','WOODY'),
(836,'SQUAD FISH','AUDREY'),
(837,'STAGE WORLD','WALTER'),
(838,'STAGECOACH ARMAGEDDON','KARL'),
(839,'STALLION SUNDANCE','VAL'),
(840,'STAMPEDE DISTURBING','VAL'),
(841,'STAR OPERATION','JOHNNY'),
(842,'STATE WASTELAND','DAN'),
(843,'STEEL SANTA','UMA'),
(844,'STEERS ARMAGEDDON','DAN'),
(845,'STEPMOM DREAM','WALTER'),
(846,'STING PERSONAL','GRACE'),
(847,'STOCK GLASS','VIVIEN'),
(848,'STONE FIRE','MILLA'),
(849,'STORM HAPPINESS','CHRISTOPHER'),
(850,'STORY SIDE','ZERO'),
(851,'STRAIGHT HOURS','DAN'),
(852,'STRANGELOVE DESIRE','JUDE'),
(853,'STRANGER STRANGERS','HELEN'),
(854,'STRANGERS GRAFFITI','ZERO'),
(855,'STREAK RIDGEMONT','SANDRA'),
(856,'STREETCAR INTENTIONS','VIVIEN'),
(857,'STRICTLY SCARFACE','GREG'),
(858,'SUBMARINE BED','JENNIFER'),
(859,'SUGAR WONKA','MATTHEW'),
(860,'SUICIDES SILENCE','RAY'),
(861,'SUIT WALLS','TOM'),
(862,'SUMMER SCARFACE','ALEC'),
(863,'SUN CONFESSIONS','DAN'),
(864,'SUNDANCE INVASION','KENNETH'),
(865,'SUNRISE LEAGUE','JOHNNY'),
(866,'SUNSET RACER','ANGELINA'),
(867,'SUPER WYOMING','TOM'),
(868,'SUPERFLY TRIP','JOHNNY'),
(869,'SUSPECTS QUILLS','JOHNNY'),
(870,'SWARM GOLD','JESSICA'),
(871,'SWEDEN SHINING','KARL'),
(872,'SWEET BROTHERHOOD','MILLA'),
(873,'SWEETHEARTS SUSPECTS','JOE'),
(874,'TADPOLE PARK','HELEN'),
(875,'TALENTED HOMICIDE','BURT'),
(876,'TARZAN VIDEOTAPE','TOM'),
(877,'TAXI KICK','BOB'),
(878,'TEEN APOLLO','MILLA'),
(879,'TELEGRAPH VOYAGE','WOODY'),
(880,'TELEMARK HEARTBREAKERS','KARL'),
(881,'TEMPLE ATTRACTION','MILLA'),
(882,'TENENBAUMS COMMAND','SCARLETT'),
(883,'TEQUILA PAST','DAN'),
(884,'TERMINATOR CLUB','LIZA'),
(885,'TEXAS WATCH','RIP'),
(886,'THEORY MERMAID','CUBA'),
(887,'THIEF PELICAN','KIRSTEN'),
(888,'THIN SAGEBRUSH','ZERO'),
(889,'TIES HUNGER','JOE'),
(890,'TIGHTS DAWN','VIVIEN'),
(891,'TIMBERLAND SKY','GARY'),
(892,'TITANIC BOONDOCK','BETTE'),
(893,'TITANS JERK','KIRSTEN'),
(894,'TOMATOES HELLFIGHTERS','JODIE'),
(895,'TOMORROW HUSTLER','MATTHEW'),
(896,'TOOTSIE PILOT','ZERO'),
(897,'TORQUE BOUND','UMA'),
(898,'TOURIST PELICAN','PENELOPE'),
(899,'TOWERS HURRICANE','CATE'),
(900,'TOWN ARK','GRACE'),
(901,'TRACY CIDER','GRACE'),
(902,'TRADING PINOCCHIO','BETTE'),
(903,'TRAFFIC HOBBIT','JOE'),
(904,'TRAIN BUNCH','RIP'),
(905,'TRAINSPOTTING STRANGERS','GREG'),
(906,'TRAMP OTHERS','RIP'),
(907,'TRANSLATION SUMMER','TOM'),
(908,'TRAP GUYS','VIVIEN'),
(909,'TREASURE COMMAND','JENNIFER'),
(910,'TREATMENT JEKYLL','GRACE'),
(911,'TRIP NEWTON','WOODY'),
(912,'TROJAN TOMORROW','ELVIS'),
(913,'TROOPERS METAL','JULIA'),
(914,'TROUBLE DATE','CHRISTIAN'),
(915,'TRUMAN CRAZY','BURT'),
(916,'TURN STAR','MAE'),
(917,'TUXEDO MILE','DAN'),
(918,'TWISTED PIRATES','NATALIE'),
(919,'TYCOON GATHERING','VIVIEN'),
(920,'UNBREAKABLE KARATE','KIRSTEN'),
(921,'UNCUT SUICIDES','RAY'),
(922,'UNDEFEATED DALMATIONS','TOM'),
(923,'UNFAITHFUL KILL','JULIA'),
(924,'UNFORGIVEN ZOOLANDER','JENNIFER'),
(925,'UNITED PILOT','VAL'),
(926,'UNTOUCHABLES SUNRISE','JOE'),
(927,'UPRISING UPTOWN','ANNE'),
(928,'UPTOWN YOUNG','ZERO'),
(929,'USUAL UNTOUCHABLES','CHRISTIAN'),
(930,'VACATION BOONDOCK','CHRISTIAN'),
(931,'VALENTINE VANISHING','BURT'),
(932,'VALLEY PACKER','TOM'),
(933,'VAMPIRE WHALE','JOHNNY'),
(934,'VANILLA DAY','GROUCHO'),
(935,'VANISHED GARDEN','SANDRA'),
(936,'VANISHING ROCKY','MATTHEW'),
(937,'VARSITY TRIP','NICK'),
(938,'VELVET TERMINATOR','ZERO'),
(939,'VERTIGO NORTHWEST','PENELOPE'),
(940,'VICTORY ACADEMY','GARY'),
(941,'VIDEOTAPE ARSENIC','RALPH'),
(942,'VIETNAM SMOOCHY','JODIE'),
(943,'VILLAIN DESPERATE','DUSTIN'),
(944,'VIRGIN DAISY','DAN'),
(945,'VIRGINIAN PLUTO','KARL'),
(946,'VIRTUAL SPOILERS','DUSTIN'),
(947,'VISION TORQUE','MENA'),
(948,'VOICE PEACH','VIVIEN'),
(949,'VOLCANO TEXAS','CUBA'),
(950,'VOLUME HOUSE','AUDREY'),
(951,'VOYAGE LEGALLY','CARMEN'),
(952,'WAGON JAWS','NICK'),
(953,'WAIT CIDER','WOODY'),
(954,'WAKE JAWS','WOODY'),
(955,'WALLS ARTIST','CHRIS'),
(956,'WANDA CHAMBER','BURT'),
(957,'WAR NOTTING','GRACE'),
(958,'WARDROBE PHANTOM','NICK'),
(959,'WARLOCK WEREWOLF','GRACE'),
(960,'WARS PLUTO','MARY'),
(961,'WASH HEAVENLY','MENA'),
(962,'WASTELAND DIVINE','LUCILLE'),
(963,'WATCH TRACY','VAL'),
(964,'WATERFRONT DELIVERANCE','JOE'),
(965,'WATERSHIP FRONTIER','MILLA'),
(966,'WEDDING APOLLO','ED'),
(967,'WEEKEND PERSONAL','ED'),
(968,'WEREWOLF LOLA','CUBA'),
(969,'WEST LION','ZERO'),
(970,'WESTWARD SEABISCUIT','PENELOPE'),
(971,'WHALE BIKINI','ED'),
(972,'WHISPERER GIANT','MILLA'),
(973,'WIFE TURN','WOODY'),
(974,'WILD APOLLO','JOE'),
(975,'WILLOW TRACY','REESE'),
(976,'WIND PHANTOM','CHARLIZE'),
(977,'WINDOW SIDE','LUCILLE'),
(978,'WISDOM WORKER','SISSY'),
(979,'WITCHES PANIC','RALPH'),
(980,'WIZARD COLDBLOODED','PENELOPE'),
(981,'WOLVES DESIRE','SANDRA'),
(982,'WOMEN DORADO','NICK'),
(983,'WON DARES','CHRISTIAN'),
(984,'WONDERFUL DROP','DUSTIN'),
(985,'WONDERLAND CHRISTMAS','CUBA'),
(986,'WONKA SEA','JULIA'),
(987,'WORDS HUNTER','GENE'),
(988,'WORKER TARZAN','ZERO'),
(989,'WORKING MICROCOSMOS','VAL'),
(990,'WORLD LEATHERNECKS','GARY'),
(991,'WORST BANGER','PARKER'),
(992,'WRATH MILE','SPENCER'),
(993,'WRONG BEHAVIOR','MILLA'),
(994,'WYOMING STORM','BETTE'),
(995,'YENTL IDAHO','REESE'),
(996,'YOUNG LANGUAGE','ED'),
(997,'YOUTH KICK','SANDRA'),
(998,'ZHIVAGO CORE','UMA'),
(999,'ZOOLANDER FICTION','CARMEN'),
(1000,'ZORRO ARK','IAN');

/*Table structure for table `factrental` */

DROP TABLE IF EXISTS `factrental`;

CREATE TABLE `factrental` (
  `id_factrental` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `id_rental_date` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `idx_factrental_lookup` (`id_factrental`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `factrental` */

insert  into `factrental`(`id_factrental`,`customer_id`,`film_id`,`amount`,`id_rental_date`,`category_id`) values 
(1,130,80,2.99,144,8),
(2,459,333,2.99,144,12),
(3,408,373,3.99,144,3),
(4,333,535,4.99,144,11),
(5,222,450,6.99,144,3),
(6,549,613,0.99,144,5),
(7,269,870,1.99,144,11),
(8,239,510,4.99,144,2),
(9,126,565,4.99,145,9),
(10,399,396,5.99,145,7),
(11,142,971,8.99,145,9),
(12,261,347,4.99,145,16),
(13,334,499,6.99,145,8),
(14,446,593,0.99,145,11),
(15,319,670,9.99,145,6),
(16,316,86,4.99,145,12),
(17,575,181,2.99,145,16),
(18,19,741,0.99,145,12),
(19,456,422,4.99,145,14),
(20,185,770,2.99,145,9),
(21,388,31,4.99,145,8),
(22,509,159,4.99,145,5),
(23,438,971,4.99,145,9),
(24,350,721,4.99,145,12),
(25,37,863,0.99,145,14),
(26,371,953,3.99,145,2),
(27,301,271,4.99,145,1),
(28,232,887,4.99,145,2),
(29,44,132,0.99,145,14),
(30,430,819,2.99,145,12),
(31,369,979,4.99,145,7),
(32,230,839,0.99,145,14),
(33,272,367,0.99,145,14),
(34,597,573,2.99,145,3),
(35,484,284,4.99,145,12),
(36,88,288,2.99,145,16),
(37,535,89,0.99,145,2),
(38,302,557,4.99,145,8),
(39,207,976,0.99,145,10),
(40,413,579,4.99,145,1),
(41,174,382,5.99,145,10),
(42,523,84,4.99,145,16),
(43,532,564,2.99,145,2),
(44,207,681,0.99,145,15),
(45,436,403,7.99,145,7),
(46,7,730,5.99,145,13),
(47,35,478,3.99,145,5),
(48,282,387,1.99,145,10),
(49,498,650,2.99,145,6),
(50,18,432,2.99,145,4),
(51,256,278,4.99,145,12),
(52,507,875,0.99,145,15),
(53,569,277,4.99,145,11),
(54,291,611,4.99,145,4),
(55,131,252,2.99,145,1),
(56,511,298,2.99,145,14),
(57,6,858,4.99,145,5),
(58,323,670,4.99,145,6),
(59,408,633,5.99,145,4),
(60,470,73,2.99,145,14),
(61,250,915,5.99,145,1),
(62,419,58,2.99,145,6),
(63,383,873,0.99,145,3),
(64,368,16,5.99,145,9),
(65,346,776,4.99,145,6),
(66,86,257,1.99,145,16),
(67,119,54,0.99,145,12),
(68,120,878,7.99,145,16),
(69,305,705,2.99,145,9),
(70,73,468,2.99,145,3),
(71,100,525,0.99,145,4),
(72,48,489,0.99,145,2),
(73,391,114,4.99,145,14),
(74,265,379,0.99,145,7),
(75,510,745,8.99,145,15),
(76,1,663,2.99,145,4),
(77,451,287,0.99,145,1),
(78,135,887,5.99,145,2),
(79,245,726,4.99,145,9),
(80,314,543,5.99,145,16),
(81,286,572,6.99,145,14),
(82,427,304,6.99,145,3),
(83,131,103,4.99,145,16),
(84,492,397,2.99,145,14),
(85,414,103,4.99,145,16),
(86,266,491,1.99,145,3),
(87,331,348,0.99,145,8),
(88,53,480,3.99,145,4),
(89,499,471,2.99,145,4),
(90,25,654,7.99,145,10),
(91,267,28,6.99,145,5),
(92,302,169,5.99,145,16),
(93,288,951,3.99,145,4),
(94,197,366,2.99,145,7),
(95,400,39,3.99,145,14),
(96,49,748,1.99,145,1),
(97,263,284,4.99,145,12),
(98,269,651,0.99,145,2),
(99,44,117,4.99,145,10),
(100,208,571,4.99,145,6),
(101,468,134,6.99,145,2),
(102,343,82,3.99,145,8),
(103,384,735,4.99,145,3),
(104,310,932,0.99,145,5),
(105,108,173,4.99,145,7),
(106,196,791,11.99,145,6),
(107,317,621,6.99,145,8),
(108,242,724,2.99,145,8),
(109,503,233,1.99,145,16),
(110,19,893,9.99,145,14),
(111,227,814,4.99,145,5),
(112,500,465,8.99,145,13),
(113,93,649,2.99,145,2),
(114,506,982,3.99,145,1),
(115,455,164,0.99,145,6),
(116,18,973,4.99,145,6),
(117,7,931,0.99,145,16),
(118,524,191,0.99,145,3),
(119,51,300,4.99,145,2),
(120,365,8,5.99,145,11),
(121,405,234,2.99,145,14),
(122,273,638,3.99,145,5),
(123,43,390,4.99,145,14),
(124,246,48,6.99,145,3),
(125,368,212,5.99,145,1),
(126,439,445,2.99,145,4),
(127,94,440,2.99,145,9),
(128,40,941,4.99,145,10),
(129,23,902,8.99,145,15),
(130,56,869,3.99,145,1),
(131,325,177,5.99,145,14),
(132,479,738,3.99,145,9),
(133,237,89,0.99,145,2),
(134,222,491,4.99,145,3),
(135,304,21,10.99,145,1),
(136,504,500,5.99,145,9),
(137,560,569,2.99,145,2),
(138,586,898,4.99,145,15),
(139,257,73,2.99,145,14),
(140,354,142,0.99,145,6),
(141,89,176,2.99,145,15),
(142,472,963,0.99,145,2),
(143,297,186,0.99,145,7),
(144,357,368,2.99,145,7),
(145,82,852,2.99,145,3),
(146,433,313,8.99,146,11),
(147,274,138,2.99,146,14),
(148,142,924,0.99,146,14),
(149,319,242,3.99,146,5),
(150,429,202,5.99,146,5),
(151,14,646,0.99,146,10),
(152,57,575,9.99,146,6),
(153,348,849,0.99,146,2),
(154,185,299,0.99,146,16),
(155,551,65,7.99,146,11),
(156,462,702,2.99,146,11),
(157,344,197,2.99,146,15),
(158,354,523,1.99,146,4),
(159,505,757,2.99,146,6),
(160,290,410,2.99,146,5),
(161,182,646,0.99,146,10),
(162,296,272,4.99,146,7),
(163,104,501,10.99,146,1),
(164,151,239,4.99,146,2),
(165,33,600,2.99,146,11),
(166,322,850,0.99,146,1),
(167,401,190,4.99,146,4),
(168,469,595,0.99,146,9),
(169,381,382,0.99,146,10),
(170,107,806,5.99,146,13),
(171,400,979,6.99,146,7),
(172,176,630,0.99,146,7),
(173,533,786,0.99,146,3),
(174,552,862,0.99,146,4),
(175,47,947,3.99,146,9),
(176,250,187,3.99,146,15),
(177,548,775,6.99,146,7),
(178,196,326,5.99,146,2),
(179,19,563,6.99,146,10),
(180,75,603,4.99,146,8),
(181,587,527,4.99,146,11),
(182,237,961,4.99,146,9),
(183,254,631,2.99,146,15),
(184,556,429,0.99,146,15),
(185,125,571,3.99,146,6),
(186,468,391,4.99,146,8),
(187,515,872,8.99,146,16),
(188,243,734,4.99,146,6),
(189,247,219,4.99,146,6),
(190,533,863,1.99,146,14),
(191,412,951,0.99,146,4),
(192,437,413,2.99,146,5),
(193,270,851,1.99,146,15),
(194,29,295,1.99,146,6),
(195,564,112,5.99,146,9),
(196,184,43,2.99,146,8),
(197,546,915,5.99,146,1),
(198,54,388,4.99,146,5),
(199,71,462,2.99,146,12),
(200,321,856,4.99,146,11),
(201,444,169,8.99,146,16),
(202,20,147,2.99,146,8),
(203,109,740,5.99,146,11),
(204,528,401,0.99,146,7),
(205,114,68,4.99,146,3),
(206,345,374,0.99,146,14),
(207,47,21,4.99,146,1),
(208,274,803,4.99,146,7),
(209,379,159,4.99,146,5),
(210,391,391,2.99,146,8),
(211,170,872,2.99,146,16),
(212,59,167,4.99,146,16),
(213,394,329,3.99,146,1),
(214,98,319,3.99,146,14),
(215,197,149,0.99,146,3),
(216,91,306,5.99,146,10),
(217,121,961,4.99,146,9),
(218,309,496,6.99,146,16),
(219,489,676,4.99,146,15),
(220,542,279,4.99,146,15),
(221,143,783,2.99,146,16),
(222,83,602,0.99,146,14),
(223,460,686,4.99,146,13),
(224,318,933,9.99,146,13),
(225,467,141,4.99,146,10),
(226,221,911,4.99,146,1),
(227,301,48,5.99,146,3),
(228,571,113,9.99,146,15),
(229,312,251,4.99,146,13),
(230,58,242,0.99,146,5),
(231,365,878,4.99,146,16),
(232,256,646,0.99,146,10),
(233,531,156,4.99,146,6),
(234,566,292,5.99,146,1),
(235,119,773,5.99,146,15),
(236,446,280,0.99,146,3),
(237,536,54,0.99,146,12),
(238,211,112,4.99,146,9),
(239,49,26,3.99,146,14),
(240,103,749,7.99,146,11),
(241,245,970,0.99,146,4),
(242,214,454,1.99,146,12),
(243,543,375,6.99,146,1),
(244,257,232,2.99,146,10),
(245,158,668,4.99,146,15),
(246,240,621,2.99,146,8),
(247,102,892,4.99,146,2),
(248,545,416,0.99,146,9),
(249,472,530,2.99,146,1),
(250,539,81,4.99,146,14),
(251,204,948,0.99,146,13),
(252,187,267,7.99,146,13),
(253,416,650,0.99,146,6),
(254,390,398,4.99,146,12),
(255,114,719,4.99,146,15),
(256,436,702,3.99,146,11),
(257,373,563,4.99,146,10),
(258,502,773,2.99,146,15),
(259,482,6,8.99,146,9),
(260,21,96,3.99,146,13),
(261,414,301,3.99,146,11),
(262,236,927,2.99,146,1),
(263,449,256,4.99,146,15),
(264,251,449,2.99,146,14),
(265,303,492,0.99,146,13),
(266,263,727,0.99,146,8),
(267,417,268,4.99,146,2),
(268,75,374,0.99,146,14),
(269,322,767,4.99,146,12),
(270,200,46,9.99,146,10),
(271,92,521,5.99,146,7),
(272,71,216,9.99,146,13),
(273,193,349,2.99,146,2),
(274,311,142,5.99,146,6),
(275,133,374,6.99,146,14),
(276,58,271,7.99,146,1),
(277,45,308,2.99,146,5),
(278,214,40,3.99,146,6),
(279,384,143,2.99,146,7),
(280,167,413,2.99,146,5),
(281,582,269,0.99,146,8),
(282,282,980,6.99,146,12),
(283,242,772,3.99,146,7),
(284,359,77,8.99,146,13),
(285,162,545,1.99,146,9),
(286,371,70,6.99,146,2),
(287,17,792,2.99,146,9),
(288,82,775,8.99,146,7),
(289,81,534,0.99,146,8),
(290,429,609,2.99,146,16),
(291,577,109,5.99,146,13),
(292,515,927,6.99,146,1),
(293,158,397,5.99,146,14),
(294,369,603,4.99,146,8),
(295,65,878,4.99,146,16),
(296,468,848,6.99,146,16),
(297,48,349,2.99,146,2),
(298,460,241,0.99,146,2),
(299,448,956,4.99,146,10),
(300,47,56,6.99,146,1),
(301,274,756,2.99,146,5),
(302,387,641,4.99,146,9),
(303,596,246,4.99,146,9),
(304,534,370,5.99,146,3),
(305,464,585,3.99,146,7),
(306,547,610,0.99,146,8),
(307,375,244,8.99,146,12),
(308,277,42,6.99,146,15),
(309,251,424,1.99,146,3),
(310,409,129,6.99,146,6),
(311,201,621,3.99,146,8),
(312,143,437,2.99,146,8),
(313,594,902,4.99,146,15),
(314,203,625,0.99,146,14),
(315,238,624,4.99,146,10),
(316,249,838,4.99,146,1),
(317,391,6,5.99,146,9),
(318,60,561,4.99,146,13),
(319,77,664,2.99,146,1),
(320,2,243,4.99,147,2),
(322,496,994,4.99,147,13),
(323,144,514,2.99,147,7),
(324,292,738,0.99,147,9),
(325,449,551,5.99,147,13),
(326,432,867,7.99,147,8),
(327,105,588,8.99,147,3),
(328,451,554,2.99,147,4),
(329,231,583,5.99,147,2),
(330,248,336,7.99,147,6),
(331,67,408,9.99,147,10),
(332,299,334,5.99,147,11),
(333,412,871,4.99,147,5),
(334,194,865,4.99,147,2),
(335,16,309,3.99,147,8),
(336,275,393,2.99,147,6),
(337,19,164,2.99,147,6),
(338,165,570,4.99,147,15),
(339,516,526,3.99,147,16),
(340,209,210,9.99,147,1),
(341,56,906,5.99,147,5),
(342,539,875,0.99,147,15),
(343,455,727,0.99,147,8),
(344,236,505,2.99,147,3),
(345,144,305,2.99,147,13),
(346,14,941,9.99,147,10),
(347,378,355,0.99,147,2),
(348,473,396,4.99,147,7),
(349,36,641,0.99,147,9),
(350,9,604,4.99,147,5),
(351,118,739,5.99,147,7),
(352,157,953,0.99,147,2),
(353,503,869,5.99,147,1),
(354,452,447,2.99,147,10),
(355,446,28,4.99,147,5),
(356,382,628,2.99,147,15),
(357,198,966,0.99,147,6),
(358,102,418,0.99,147,7),
(359,152,255,4.99,147,12),
(360,594,764,8.99,147,15),
(361,587,1,0.99,147,6),
(362,147,504,0.99,147,7),
(363,345,932,0.99,147,5),
(364,430,182,4.99,147,5),
(365,167,634,2.99,147,8),
(366,134,79,3.99,147,7),
(367,439,753,0.99,147,8),
(368,361,275,5.99,147,11),
(369,508,209,2.99,147,7),
(370,22,735,4.99,147,3),
(371,295,273,3.99,147,8),
(372,510,891,5.99,147,4),
(373,464,360,1.99,147,1),
(374,337,966,6.99,147,6),
(375,306,394,3.99,147,14),
(376,542,702,4.99,147,11),
(377,170,661,5.99,147,9),
(378,53,484,2.99,147,4),
(379,584,759,4.99,147,13),
(380,176,385,6.99,147,5),
(381,371,603,4.99,147,8),
(382,183,949,0.99,147,10),
(383,298,213,3.99,147,8),
(384,371,202,5.99,147,5),
(385,213,344,0.99,147,3),
(386,109,285,0.99,147,14),
(387,506,589,2.99,147,6),
(388,28,96,2.99,147,13),
(389,500,151,8.99,147,14),
(390,48,823,4.99,147,1),
(391,197,474,2.99,147,15),
(392,359,58,2.99,147,6),
(393,251,30,2.99,147,11),
(394,274,412,5.99,147,6),
(395,575,164,0.99,147,6),
(396,112,228,0.99,147,4),
(397,544,912,2.99,147,14),
(398,422,367,0.99,147,14),
(399,204,120,4.99,147,15),
(400,249,57,2.99,147,16),
(401,46,471,2.99,147,4),
(402,354,101,0.99,147,6),
(403,424,868,0.99,147,16),
(404,168,285,0.99,147,14),
(405,272,891,6.99,147,4),
(406,381,462,2.99,147,12),
(407,44,240,2.99,147,14),
(408,84,314,0.99,147,2),
(409,220,797,0.99,147,12),
(410,506,873,3.99,147,3),
(411,388,314,4.99,147,2),
(412,375,307,4.99,147,16),
(413,307,770,4.99,147,9),
(414,219,228,0.99,147,4),
(415,304,809,0.99,147,15),
(416,222,517,0.99,147,15),
(417,475,487,4.99,147,4),
(418,151,673,5.99,147,12),
(419,77,552,1.99,147,6),
(420,93,135,6.99,147,15),
(421,246,654,8.99,147,10),
(422,150,254,3.99,147,15),
(423,284,387,0.99,147,10),
(424,35,618,6.99,147,7),
(425,182,331,3.99,147,10),
(426,522,245,5.99,147,2),
(427,288,366,6.99,147,7),
(428,161,735,2.99,147,3),
(429,498,25,8.99,147,13),
(430,190,417,4.99,147,1),
(431,334,984,8.99,147,9),
(432,46,248,4.99,147,6),
(433,574,951,0.99,147,4),
(434,246,738,5.99,147,9),
(435,3,732,1.99,147,1),
(436,267,941,4.99,147,10),
(437,525,391,5.99,147,8),
(438,249,926,6.99,147,6),
(439,319,78,2.99,147,2),
(440,314,973,4.99,147,6),
(441,54,346,4.99,147,4),
(442,403,319,2.99,147,14),
(443,547,439,8.99,147,7),
(444,239,158,2.99,147,12),
(445,293,382,0.99,147,10),
(446,401,426,4.99,147,12),
(447,133,850,2.99,147,1),
(448,247,586,3.99,147,1),
(449,172,540,3.99,147,12),
(450,247,296,6.99,147,14),
(451,87,45,4.99,147,13),
(452,127,656,0.99,147,16),
(453,529,967,2.99,147,14),
(454,575,767,4.99,147,12),
(455,343,735,3.99,147,3),
(456,92,370,4.99,147,3),
(457,300,516,0.99,147,12),
(458,565,736,6.99,147,8),
(459,468,130,0.99,147,1),
(460,240,921,2.99,147,12),
(461,447,450,2.99,147,3),
(462,364,502,5.99,147,5),
(463,21,181,3.99,147,16),
(464,193,290,0.99,147,9),
(465,261,4,3.99,147,11),
(466,442,388,0.99,147,5),
(467,557,75,4.99,147,16),
(468,101,583,9.99,147,2),
(469,154,975,5.99,147,8),
(470,504,352,4.99,147,10),
(471,209,629,0.99,147,6),
(472,528,295,0.99,147,6),
(473,105,174,7.99,147,12),
(474,274,322,2.99,147,15),
(475,159,554,2.99,147,4),
(476,543,535,1.99,147,11),
(477,161,531,3.99,147,9),
(478,557,93,4.99,147,13),
(479,231,447,6.99,147,10),
(480,220,457,3.99,147,6),
(481,445,15,2.99,147,9),
(482,546,908,6.99,147,9),
(483,32,330,4.99,147,2),
(484,491,684,2.99,147,10),
(485,105,522,2.99,147,5),
(486,398,396,4.99,147,7),
(487,569,826,4.99,148,16),
(488,168,86,4.99,148,12),
(489,476,422,4.99,148,14),
(490,95,771,4.99,148,7),
(491,196,293,2.99,148,15),
(492,228,435,4.99,148,9),
(493,501,40,0.99,148,6),
(494,64,403,4.99,148,7),
(495,526,226,4.99,148,13),
(496,56,388,2.99,148,5),
(497,20,578,6.99,148,4),
(498,287,101,0.99,148,6),
(499,199,519,7.99,148,15),
(500,145,982,0.99,148,1),
(501,162,131,4.99,148,4),
(502,179,688,0.99,148,3),
(503,288,659,4.99,148,1),
(504,170,452,0.99,148,9),
(505,111,15,2.99,148,9),
(506,469,145,7.99,148,8),
(507,421,790,0.99,148,7),
(508,434,910,5.99,148,7),
(509,147,748,0.99,148,1),
(510,113,945,0.99,148,6),
(511,296,838,5.99,148,1),
(512,231,470,8.99,148,2),
(513,489,50,2.99,148,8),
(514,597,369,8.99,148,14),
(515,110,739,7.99,148,7),
(516,400,949,1.99,148,10),
(517,403,52,0.99,148,9),
(518,480,891,0.99,148,4),
(519,245,778,7.99,148,8),
(520,161,842,5.99,148,10),
(521,374,524,0.99,148,5),
(522,382,702,2.99,148,11),
(523,138,415,2.99,148,11),
(524,223,428,2.99,148,8),
(525,14,395,5.99,148,1),
(526,408,304,2.99,148,3),
(527,169,59,3.99,148,3),
(528,359,361,3.99,148,15),
(529,469,575,4.99,148,6),
(530,312,733,0.99,148,15),
(531,589,247,0.99,148,5),
(532,120,613,0.99,148,5),
(533,528,938,5.99,148,5),
(534,184,220,4.99,148,12),
(535,307,915,4.99,148,1),
(536,514,649,4.99,148,2),
(537,315,680,8.99,148,5),
(538,110,489,1.99,148,2),
(539,161,751,0.99,148,13),
(540,119,730,6.99,148,13),
(541,535,363,2.99,148,12),
(542,261,971,6.99,148,9),
(543,493,116,7.99,148,4),
(544,311,650,6.99,148,6),
(545,54,242,3.99,148,5),
(546,20,109,1.99,148,13),
(547,506,448,8.99,148,13),
(548,450,810,3.99,148,8),
(549,159,395,1.99,148,1),
(550,432,793,5.99,148,1),
(551,315,686,4.99,148,13),
(552,106,5,3.99,148,8),
(553,176,298,3.99,148,14),
(554,376,425,0.99,148,4),
(555,55,961,4.99,148,9),
(556,22,394,4.99,148,14),
(557,444,34,0.99,148,11),
(558,442,905,6.99,148,5),
(559,572,272,7.99,148,7),
(560,463,140,1.99,148,14),
(561,77,206,2.99,148,6),
(562,102,744,1.99,148,4),
(563,324,11,3.99,148,9),
(564,282,651,0.99,148,2),
(565,288,327,5.99,148,1),
(566,253,944,6.99,148,7),
(567,184,728,1.99,148,7),
(568,155,483,2.99,148,10),
(569,56,989,6.99,148,16),
(570,21,249,0.99,148,4),
(571,516,924,1.99,148,14),
(572,337,414,4.99,148,9),
(573,1,875,0.99,148,15),
(574,76,849,1.99,148,2),
(575,142,973,9.99,148,6),
(576,588,407,2.99,148,6),
(577,6,83,2.99,148,8),
(578,173,645,2.99,148,16),
(579,181,763,6.99,148,15),
(580,17,770,2.99,148,9),
(581,186,303,1.99,148,1),
(582,198,1000,4.99,148,5),
(583,386,588,7.99,148,3),
(584,69,398,4.99,148,12),
(585,490,775,6.99,148,7),
(586,77,200,0.99,148,10),
(587,64,309,0.99,148,8),
(588,89,19,0.99,148,1),
(589,308,920,3.99,148,13),
(590,462,104,3.99,148,9),
(591,19,83,2.99,148,8),
(592,244,139,4.99,148,8),
(593,16,393,2.99,148,6),
(594,538,608,2.99,148,3),
(595,294,130,1.99,148,1),
(596,589,179,4.99,148,7),
(597,249,976,3.99,148,10),
(598,159,130,0.99,148,1),
(599,393,898,4.99,148,15),
(600,332,344,3.99,148,3),
(601,429,708,7.99,148,6),
(602,590,287,3.99,148,1),
(603,537,715,4.99,148,8),
(604,426,348,0.99,148,8),
(605,501,920,1.99,148,13),
(606,299,768,8.99,148,3),
(607,554,561,2.99,148,13),
(608,494,925,4.99,148,6),
(609,150,646,2.99,148,10),
(610,500,795,0.99,148,8),
(611,580,273,0.99,148,8),
(612,161,471,2.99,148,4),
(613,595,60,6.99,148,4),
(614,307,63,1.99,148,8),
(615,533,745,5.99,148,15),
(616,471,220,2.99,148,12),
(617,372,900,2.99,148,9),
(618,248,972,4.99,148,14),
(619,407,544,7.99,148,6),
(620,321,533,5.99,148,9),
(621,239,253,4.99,148,1),
(622,109,514,3.99,148,7),
(623,495,271,4.99,148,1),
(624,569,800,4.99,148,11),
(625,596,634,0.99,148,8),
(626,584,100,4.99,148,9),
(627,241,93,7.99,148,13),
(628,173,552,4.99,148,6),
(629,94,334,4.99,148,11),
(630,417,277,8.99,148,11),
(631,503,539,2.99,148,7),
(632,442,284,5.99,148,12),
(633,360,11,0.99,148,9),
(634,428,577,4.99,148,15),
(635,42,360,5.99,148,1),
(636,239,916,6.99,148,2),
(637,250,347,4.99,148,16),
(638,372,589,2.99,148,6),
(639,198,914,2.99,148,16),
(640,465,110,0.99,148,3),
(641,396,776,5.99,148,6),
(642,157,28,4.99,148,5),
(643,240,682,4.99,148,8),
(644,316,938,8.99,148,5),
(645,505,687,2.99,148,6),
(646,185,417,0.99,148,1),
(647,569,753,1.99,148,8),
(648,253,762,0.99,148,10),
(649,197,387,1.99,148,10),
(650,281,958,2.99,148,7),
(651,266,162,2.99,148,1),
(652,43,267,4.99,148,13),
(653,327,25,6.99,148,13),
(654,23,502,2.99,148,5),
(655,287,73,2.99,148,14),
(656,437,624,4.99,148,10),
(657,65,186,0.99,148,7),
(658,103,708,9.99,148,6),
(659,207,303,0.99,148,1),
(660,578,309,0.99,148,8),
(661,51,486,4.99,148,9),
(662,166,650,1.99,148,6),
(663,176,870,1.99,148,11),
(664,523,18,0.99,148,2),
(665,415,227,4.99,148,10),
(666,437,676,5.99,148,15),
(667,596,174,4.99,148,12),
(668,484,772,2.99,148,7),
(669,313,804,4.99,148,11),
(670,201,51,6.99,148,12),
(671,14,230,2.99,148,7),
(672,306,152,6.99,148,3),
(673,468,383,0.99,148,15),
(674,87,254,2.99,148,15),
(675,338,282,0.99,148,7),
(676,490,506,4.99,148,11),
(677,194,995,7.99,148,11),
(678,269,818,6.99,148,7),
(679,526,201,4.99,148,9),
(680,482,901,2.99,148,2),
(681,531,735,2.99,148,3),
(682,148,694,4.99,148,4),
(683,197,443,2.99,149,5),
(684,461,711,6.99,149,14),
(685,172,304,6.99,149,3),
(686,411,532,4.99,149,15),
(687,250,377,0.99,149,8),
(688,162,898,4.99,149,15),
(689,571,162,3.99,149,1),
(690,85,580,9.99,149,13),
(691,433,879,10.99,149,12),
(692,18,174,4.99,149,12),
(693,190,138,2.99,149,14),
(694,399,129,6.99,149,6),
(695,528,930,3.99,149,14),
(696,19,450,2.99,149,3),
(697,387,861,7.99,149,10),
(698,109,309,0.99,149,8),
(699,246,26,3.99,149,14),
(700,117,111,0.99,149,1),
(701,112,82,2.99,149,8),
(702,475,560,0.99,149,10),
(703,269,249,0.99,149,4),
(704,330,576,3.99,149,6),
(705,257,616,2.99,149,6),
(706,60,493,1.99,149,9),
(707,252,179,4.99,149,7),
(708,127,688,0.99,149,3),
(709,479,537,7.99,149,4),
(710,518,43,2.99,149,8),
(711,215,1000,4.99,149,5),
(712,313,912,2.99,149,14),
(713,507,800,4.99,149,11),
(714,452,437,2.99,149,8),
(715,545,442,3.99,149,8),
(716,36,17,0.99,149,12),
(717,412,303,0.99,149,1),
(718,498,378,2.99,149,12),
(719,245,59,2.99,149,3),
(720,480,806,6.99,149,13),
(721,44,247,0.99,149,5),
(722,259,991,6.99,149,1),
(723,309,747,0.99,149,10),
(724,416,825,3.99,149,1),
(725,245,891,2.99,149,4),
(726,452,206,1.99,149,6),
(727,484,356,2.99,149,3),
(728,551,55,2.99,149,14),
(729,323,368,2.99,149,7),
(730,197,761,3.99,149,3),
(731,5,896,0.99,149,3),
(732,447,555,0.99,149,5),
(733,363,647,3.99,149,12),
(734,538,678,4.99,149,15),
(735,454,749,7.99,149,11),
(736,276,807,3.99,149,10),
(737,589,167,4.99,149,16),
(738,256,494,4.99,149,11),
(739,84,263,6.99,149,15),
(740,89,131,5.99,149,4),
(741,495,700,4.99,149,8),
(742,483,61,6.99,149,7),
(743,548,555,4.99,149,5),
(744,420,814,4.99,149,5),
(745,152,127,4.99,149,5),
(746,130,930,2.99,149,14),
(747,291,434,4.99,149,16),
(748,7,615,2.99,149,2),
(749,375,253,4.99,149,1),
(750,269,159,4.99,149,5),
(751,53,595,0.99,149,9),
(752,126,375,4.99,149,1),
(753,135,228,3.99,149,4),
(754,281,160,2.99,149,2),
(755,576,679,2.99,149,8),
(756,201,692,5.99,149,2),
(757,435,238,7.99,149,3),
(758,563,265,4.99,149,5),
(759,179,515,6.99,149,3),
(760,77,715,5.99,149,8),
(761,58,509,0.99,149,3),
(762,146,805,7.99,149,2),
(763,50,439,4.99,149,7),
(764,149,239,4.99,149,2),
(765,69,114,1.99,149,14),
(766,383,465,8.99,149,13),
(767,67,150,2.99,149,6),
(768,566,636,4.99,149,12),
(769,575,333,2.99,149,12),
(770,405,546,4.99,149,10),
(771,476,78,2.99,149,2),
(772,556,730,5.99,149,13),
(773,563,55,5.99,149,14),
(774,575,265,4.99,149,5),
(775,124,266,0.99,149,4),
(776,113,945,0.99,149,6),
(777,360,100,4.99,149,9),
(778,535,395,3.99,149,1),
(779,105,117,6.99,149,10),
(780,300,417,3.99,149,1),
(781,313,18,0.99,149,2),
(782,596,488,1.99,149,15),
(783,53,668,5.99,149,15),
(784,352,645,2.99,149,16),
(785,72,8,4.99,149,11),
(786,439,578,9.99,149,4),
(787,27,855,2.99,149,6),
(788,562,166,2.99,149,4),
(789,553,154,4.99,149,2),
(790,593,626,2.99,149,3),
(791,284,341,0.99,149,4),
(792,261,623,0.99,149,9),
(793,528,84,5.99,149,16),
(794,50,434,4.99,149,16),
(795,551,132,0.99,149,14),
(796,26,592,2.99,149,12),
(797,244,317,1.99,149,5),
(798,134,245,0.99,149,2),
(799,429,374,4.99,149,14),
(800,472,97,0.99,149,1),
(801,402,358,1.99,149,4),
(802,350,172,4.99,149,7),
(803,32,350,4.99,149,14),
(804,171,853,9.99,149,3),
(805,232,688,3.99,149,3),
(806,435,521,4.99,149,7),
(807,235,474,2.99,149,15),
(808,104,418,3.99,149,7),
(809,222,458,3.99,149,8),
(810,346,556,4.99,149,10),
(811,401,966,1.99,149,6),
(812,225,244,4.99,149,12),
(813,344,994,5.99,149,13),
(814,134,345,6.99,149,8),
(815,14,822,0.99,149,8),
(816,474,137,7.99,149,14),
(817,554,42,2.99,149,15),
(818,321,893,4.99,149,14),
(819,511,135,3.99,149,15),
(820,22,567,8.99,149,9),
(821,348,741,0.99,149,12),
(822,480,578,9.99,149,4),
(823,441,715,4.99,149,8),
(824,357,771,4.99,149,7),
(825,371,155,0.99,149,13),
(826,207,489,6.99,149,2),
(827,573,12,2.99,149,12),
(828,217,540,2.99,149,12),
(829,371,367,2.99,149,14),
(830,3,759,2.99,149,13),
(831,509,854,8.99,149,11),
(832,159,303,3.99,149,1),
(833,417,637,4.99,149,14),
(834,84,791,4.99,149,6),
(835,381,67,2.99,149,1),
(836,368,690,2.99,149,2),
(837,172,218,0.99,150,7),
(838,504,626,4.99,150,3),
(839,337,411,8.99,150,12),
(840,79,881,4.99,150,11),
(841,387,941,4.99,150,10),
(842,238,505,2.99,150,3),
(843,313,479,0.99,150,8),
(844,429,117,4.99,150,10),
(845,72,436,4.99,150,13),
(846,49,208,2.99,150,2),
(847,380,958,3.99,150,7),
(848,436,300,5.99,150,2),
(849,449,529,7.99,150,5),
(850,517,521,4.99,150,7),
(851,530,610,0.99,150,8),
(852,549,354,4.99,150,3),
(853,122,807,0.99,150,10),
(854,369,204,0.99,150,7),
(855,406,555,0.99,150,5),
(856,53,865,9.99,150,2),
(857,204,563,4.99,150,10),
(858,358,279,4.99,150,15),
(859,79,665,2.99,150,11),
(860,276,126,10.99,150,1),
(861,502,812,0.99,150,6),
(862,328,264,2.99,150,10),
(863,379,871,4.99,150,5),
(864,544,609,2.99,150,16),
(865,154,698,7.99,150,6),
(866,8,628,6.99,150,15),
(867,99,744,0.99,150,4),
(868,28,788,2.99,150,6),
(869,296,745,4.99,150,15),
(870,391,638,2.99,150,5),
(871,303,999,2.99,150,3),
(872,548,852,3.99,150,3),
(873,375,998,2.99,150,11),
(874,52,79,0.99,150,7),
(875,326,313,6.99,150,11),
(876,339,322,5.99,150,15),
(877,9,196,0.99,150,4),
(878,323,928,5.99,150,3),
(879,482,875,0.99,150,15),
(880,460,395,0.99,150,1),
(881,242,131,4.99,150,4),
(882,477,841,2.99,150,15),
(883,399,491,4.99,150,3),
(884,17,889,4.99,150,3),
(885,62,140,0.99,150,14),
(886,393,949,0.99,150,10),
(887,16,598,0.99,150,15),
(888,128,86,5.99,150,12),
(889,114,286,2.99,150,16),
(890,349,320,4.99,150,13),
(891,391,572,7.99,150,14),
(892,274,103,4.99,150,16),
(893,502,717,2.99,150,1),
(894,400,247,5.99,150,5),
(895,192,602,1.99,150,14),
(896,207,619,3.99,150,15),
(897,432,294,8.99,150,16),
(898,384,766,0.99,150,7),
(899,156,244,6.99,150,12),
(900,586,775,8.99,150,7),
(901,259,166,2.99,150,4),
(902,561,331,4.99,150,10),
(903,197,529,3.99,150,5),
(904,44,539,2.99,150,7),
(905,50,953,4.99,150,2),
(906,549,406,3.99,150,10),
(907,506,730,0.99,150,13),
(908,85,968,4.99,150,1),
(909,486,827,8.99,150,7),
(910,374,571,2.99,150,6),
(911,366,307,6.99,150,16),
(912,390,703,4.99,150,2),
(913,369,706,7.99,150,7),
(914,596,305,2.99,150,13),
(915,115,406,0.99,150,10),
(916,6,285,0.99,150,14),
(917,385,792,2.99,150,9),
(918,197,178,0.99,150,5),
(919,374,882,0.99,150,7),
(920,584,845,4.99,150,9),
(921,508,397,2.99,150,14),
(922,550,533,7.99,150,9),
(923,37,410,2.99,150,5),
(924,293,723,4.99,150,14),
(925,137,704,2.99,150,5),
(926,76,942,0.99,150,7),
(927,167,255,4.99,150,12),
(928,79,55,2.99,150,14),
(929,536,936,6.99,150,12),
(930,141,621,2.99,150,8),
(931,421,743,0.99,150,2),
(932,198,158,2.99,150,12),
(933,66,804,4.99,150,11),
(934,60,786,2.99,150,3),
(935,256,528,2.99,150,8),
(936,469,200,1.99,150,10),
(937,304,234,2.99,150,14),
(938,46,331,2.99,150,10),
(939,367,290,0.99,150,9),
(940,534,283,0.99,150,13),
(941,562,792,2.99,150,9),
(942,473,931,2.99,150,16),
(943,57,817,4.99,150,14),
(944,131,31,7.99,150,8),
(945,357,315,0.99,150,8),
(946,486,280,2.99,150,3),
(947,62,979,4.99,150,7),
(948,245,127,8.99,150,5),
(949,368,476,2.99,150,8),
(950,83,109,0.99,150,13),
(951,59,305,2.99,150,13),
(952,311,958,2.99,150,7),
(953,210,474,2.99,150,15),
(954,297,273,3.99,150,8),
(955,301,899,0.99,150,4),
(956,296,140,2.99,150,14),
(957,440,968,4.99,150,1),
(958,186,119,0.99,150,5),
(959,535,683,4.99,150,7),
(960,445,429,2.99,150,15),
(961,588,725,4.99,150,4),
(962,520,989,6.99,150,16),
(963,225,417,3.99,150,1),
(964,287,142,2.99,150,6),
(965,502,738,0.99,150,9),
(966,496,285,0.99,150,14),
(967,330,426,7.99,150,12),
(968,576,23,0.99,150,2),
(969,551,98,4.99,150,7),
(970,307,331,6.99,150,10),
(971,561,639,4.99,150,8),
(972,411,1,1.99,150,6),
(973,473,416,3.99,150,9),
(974,596,574,6.99,150,1),
(975,7,683,4.99,150,7),
(976,581,496,4.99,150,16),
(977,394,442,2.99,150,8),
(978,154,90,5.99,150,13),
(979,279,855,2.99,150,6),
(980,273,906,0.99,150,5),
(981,326,640,4.99,150,9),
(982,524,778,4.99,150,8),
(983,115,12,0.99,150,12),
(984,262,501,4.99,150,1),
(985,564,345,2.99,150,8),
(986,253,880,2.99,150,2),
(987,11,86,6.99,150,12),
(988,12,301,4.99,150,11),
(989,83,958,2.99,150,7),
(990,311,907,3.99,150,7),
(991,593,627,8.99,150,6),
(992,123,782,2.99,150,15),
(993,513,451,4.99,150,16),
(994,472,614,4.99,150,10),
(995,150,4,3.99,151,11),
(996,331,450,2.99,151,3),
(997,216,922,4.99,151,11),
(998,389,745,4.99,151,15),
(999,413,969,4.99,151,7),
(1000,332,385,6.99,151,5),
(1001,64,328,2.99,151,3),
(1002,397,155,0.99,151,13),
(1003,161,26,0.99,151,14),
(1004,565,348,0.99,151,8),
(1005,551,872,3.99,151,16),
(1006,222,759,2.99,151,13),
(1007,24,698,6.99,151,6),
(1008,599,203,4.99,151,14),
(1009,485,554,2.99,151,4),
(1010,49,879,4.99,151,12),
(1011,164,23,1.99,151,2),
(1012,291,150,2.99,151,6),
(1013,384,987,2.99,151,12),
(1014,280,167,4.99,151,16),
(1015,526,810,2.99,151,8),
(1016,204,750,1.99,151,13),
(1017,16,274,2.99,151,6),
(1018,594,418,0.99,151,7),
(1019,279,866,0.99,151,8),
(1020,138,746,0.99,151,10),
(1021,541,597,7.99,151,10),
(1022,239,184,7.99,151,4),
(1023,227,544,3.99,151,6),
(1024,457,502,7.99,151,5),
(1025,93,353,4.99,151,9),
(1026,107,137,5.99,151,14),
(1027,55,596,9.99,151,10),
(1028,51,979,4.99,151,7),
(1029,50,451,4.99,151,16),
(1030,267,861,4.99,151,10),
(1031,416,204,2.99,151,7),
(1032,236,645,2.99,151,16),
(1033,25,3,2.99,151,6),
(1034,293,895,8.99,151,4),
(1035,362,211,4.99,151,10),
(1036,438,467,0.99,151,9),
(1037,569,176,3.99,151,15),
(1038,385,277,4.99,151,11),
(1039,124,543,4.99,151,16),
(1040,270,559,4.99,151,14),
(1041,272,969,6.99,151,7),
(1042,506,693,2.99,151,2),
(1043,412,504,3.99,151,7),
(1044,70,563,4.99,151,10),
(1045,594,760,6.99,151,13),
(1046,179,103,4.99,151,16),
(1047,72,301,0.99,151,11),
(1048,55,617,0.99,151,8),
(1049,312,854,4.99,151,11),
(1050,303,159,4.99,151,5),
(1051,246,229,4.99,151,1),
(1052,156,466,4.99,151,6),
(1053,196,816,1.99,151,2),
(1054,126,346,4.99,151,4),
(1055,108,358,0.99,151,4),
(1056,519,349,3.99,151,2),
(1057,124,111,3.99,151,1),
(1058,116,8,4.99,151,11),
(1059,241,667,3.99,151,15),
(1060,570,587,7.99,151,6),
(1061,109,215,7.99,151,10),
(1062,176,481,7.99,151,13),
(1063,7,545,5.99,151,9),
(1064,460,518,4.99,151,16),
(1065,316,741,1.99,151,12),
(1066,541,520,4.99,151,14),
(1067,32,510,4.99,151,2),
(1068,443,31,4.99,151,8),
(1069,251,672,3.99,151,5),
(1070,228,696,0.99,151,2),
(1071,174,103,4.99,151,16),
(1072,272,560,0.99,151,10),
(1073,146,115,4.99,151,1),
(1074,503,551,4.99,151,13),
(1075,9,493,4.99,151,9),
(1076,214,559,2.99,151,14),
(1077,24,433,2.99,151,2),
(1078,230,805,4.99,151,2),
(1079,312,59,6.99,151,3),
(1080,215,764,4.99,151,15),
(1081,404,987,5.99,151,12),
(1082,239,985,5.99,151,14),
(1083,556,522,3.99,151,5),
(1084,12,1000,4.99,151,5),
(1085,5,68,6.99,151,3),
(1086,549,639,4.99,151,8),
(1087,169,95,4.99,151,13),
(1088,356,869,4.99,151,1),
(1089,367,828,2.99,151,4),
(1090,23,732,0.99,151,1),
(1091,251,843,4.99,151,4),
(1092,278,964,4.99,151,1),
(1093,214,473,2.99,151,7),
(1094,547,834,1.99,151,6),
(1095,252,992,0.99,151,6),
(1096,271,237,8.99,151,15),
(1097,491,494,0.99,151,11),
(1098,425,234,5.99,151,14),
(1099,269,205,2.99,151,1),
(1100,497,71,7.99,151,8),
(1101,260,260,8.99,151,15),
(1102,115,445,2.99,151,4),
(1103,353,693,6.99,151,2),
(1104,466,353,2.99,151,9),
(1105,26,373,2.99,151,3),
(1106,109,911,4.99,151,1),
(1107,53,756,2.99,151,5),
(1108,254,561,5.99,151,13),
(1109,481,442,5.99,151,8),
(1110,355,452,3.99,151,9),
(1111,300,252,4.99,151,1),
(1112,214,535,0.99,151,11),
(1113,451,450,2.99,151,3),
(1114,117,496,0.99,151,16),
(1115,109,463,2.99,151,15),
(1116,256,299,0.99,151,16),
(1117,189,897,5.99,151,7),
(1118,510,48,4.99,151,3),
(1119,469,962,2.99,151,4),
(1120,361,637,4.99,151,14),
(1121,74,369,6.99,151,14),
(1122,180,305,2.99,151,13),
(1123,448,29,2.99,151,1),
(1124,134,995,4.99,151,11),
(1125,234,260,4.99,151,15),
(1126,431,608,2.99,151,3),
(1127,387,526,3.99,151,16),
(1128,311,327,6.99,151,1),
(1129,486,85,0.99,151,6),
(1130,124,698,5.99,151,6),
(1131,128,582,2.99,151,2),
(1132,198,382,4.99,151,10),
(1133,73,929,4.99,151,9),
(1134,191,29,2.99,151,1),
(1135,122,685,4.99,151,13),
(1136,50,864,4.99,151,3),
(1137,351,717,1.99,151,1),
(1138,438,859,6.99,151,2),
(1139,562,145,5.99,151,8),
(1140,10,816,4.99,151,2),
(1141,217,897,8.99,151,7),
(1142,5,870,1.99,151,11),
(1143,209,577,2.99,151,15),
(1144,207,535,3.99,151,11),
(1145,284,251,6.99,151,13),
(1146,250,689,2.99,151,9),
(1147,259,135,5.99,151,15),
(1148,235,728,0.99,151,7),
(1149,326,78,3.99,151,2),
(1150,136,356,2.99,151,3),
(1151,581,284,4.99,151,12),
(1152,191,47,4.99,151,9),
(1153,506,598,4.99,151,15),
(1154,59,599,5.99,151,15),
(1155,251,445,2.99,151,4),
(1156,106,101,0.99,151,6),
(1157,61,317,0.99,151,5),
(1158,416,356,2.99,165,3),
(1159,516,961,4.99,165,9),
(1160,239,614,4.99,165,10),
(1161,285,369,7.99,165,14),
(1162,310,220,4.99,165,12),
(1163,592,915,6.99,165,1),
(1164,49,807,0.99,165,10),
(1165,264,625,3.99,165,14),
(1166,46,551,4.99,165,13),
(1167,323,875,0.99,165,15),
(1168,481,952,2.99,165,6),
(1169,139,236,2.99,165,10),
(1170,595,533,2.99,165,9),
(1171,284,890,0.99,165,15),
(1172,306,589,0.99,165,6),
(1173,191,234,2.99,165,14),
(1174,95,581,2.99,166,12),
(1175,197,716,2.99,166,11),
(1176,512,596,6.99,166,10),
(1177,210,413,2.99,166,5),
(1178,279,559,2.99,166,14),
(1179,119,177,7.99,166,14),
(1180,432,686,5.99,166,13),
(1181,546,651,1.99,166,2),
(1182,196,236,5.99,166,10),
(1183,329,154,2.99,166,2),
(1184,295,104,5.99,166,9),
(1185,1,611,5.99,166,4),
(1186,368,341,0.99,166,4),
(1187,334,245,4.99,166,2),
(1188,173,55,2.99,166,14),
(1189,244,29,6.99,166,1),
(1190,370,563,6.99,166,10),
(1191,291,480,2.99,166,4),
(1192,186,898,4.99,166,15),
(1193,561,983,2.99,166,12),
(1194,402,826,4.99,166,16),
(1195,84,491,0.99,166,3),
(1196,52,222,4.99,166,11),
(1197,349,835,2.99,166,10),
(1198,491,252,2.99,166,1),
(1199,238,57,2.99,166,16),
(1200,516,732,1.99,166,1),
(1201,209,588,4.99,166,3),
(1202,451,619,0.99,166,15),
(1203,452,481,4.99,166,13),
(1204,249,535,0.99,166,11),
(1205,340,103,4.99,166,16),
(1206,264,244,4.99,166,12),
(1207,430,492,0.99,166,13),
(1208,376,164,0.99,166,6),
(1209,146,327,7.99,166,1),
(1210,345,1,0.99,166,6),
(1211,122,738,0.99,166,9),
(1212,371,789,2.99,166,9),
(1213,94,700,2.99,166,8),
(1214,46,979,4.99,166,7),
(1215,102,55,2.99,166,14),
(1216,100,865,4.99,166,2),
(1217,203,131,4.99,166,4),
(1218,371,54,1.99,166,12),
(1219,330,659,6.99,166,1),
(1220,290,354,6.99,166,3),
(1221,403,460,4.99,166,9),
(1222,168,614,4.99,166,10),
(1223,50,286,2.99,166,16),
(1224,369,345,0.99,166,8),
(1225,434,418,0.99,166,7),
(1226,409,496,5.99,166,16),
(1227,428,142,3.99,166,6),
(1228,398,977,2.99,166,16),
(1229,468,463,2.99,166,15),
(1230,447,504,0.99,166,7),
(1231,302,658,2.99,166,11),
(1232,391,602,0.99,166,14),
(1233,550,916,6.99,166,2),
(1234,529,155,1.99,166,13),
(1235,255,223,2.99,166,2),
(1236,66,698,2.99,166,6),
(1237,49,715,9.99,166,8),
(1238,205,773,2.99,166,15),
(1239,444,816,0.99,166,2),
(1240,28,841,2.99,166,15),
(1241,62,956,6.99,166,10),
(1242,141,179,7.99,166,7),
(1243,107,576,2.99,166,6),
(1244,515,229,4.99,166,1),
(1245,234,290,3.99,166,9),
(1246,357,95,5.99,166,13),
(1247,287,881,7.99,166,11),
(1248,544,848,1.99,166,16),
(1249,403,460,8.99,166,9),
(1250,38,951,2.99,166,4),
(1251,442,728,5.99,166,7),
(1252,89,253,8.99,166,1),
(1253,498,711,6.99,166,14),
(1254,571,869,4.99,166,1),
(1255,526,313,4.99,166,11),
(1256,470,314,0.99,166,2),
(1257,267,421,4.99,166,9),
(1258,320,989,4.99,166,16),
(1259,570,974,4.99,166,13),
(1260,586,73,2.99,166,14),
(1261,95,534,1.99,166,8),
(1262,236,981,0.99,166,16),
(1263,540,900,2.99,166,9),
(1264,439,908,4.99,166,9),
(1265,163,219,4.99,166,6),
(1266,96,482,3.99,166,4),
(1267,509,923,2.99,166,7),
(1268,142,795,1.99,166,8),
(1269,59,22,2.99,166,13),
(1270,395,12,0.99,166,12),
(1271,560,84,4.99,166,16),
(1272,135,687,0.99,166,6),
(1273,530,79,1.99,166,7),
(1274,430,608,2.99,166,3),
(1275,214,212,4.99,166,1),
(1276,388,330,6.99,166,2),
(1277,464,15,4.99,166,9),
(1278,191,976,0.99,166,10),
(1279,183,153,0.99,166,14),
(1280,266,570,5.99,166,15),
(1281,511,649,2.99,166,2),
(1282,539,42,3.99,166,15),
(1283,470,697,0.99,166,1),
(1284,463,304,2.99,166,3),
(1285,254,234,2.99,166,14),
(1286,179,169,7.99,166,16),
(1287,104,914,3.99,166,16),
(1288,456,181,2.99,166,16),
(1289,522,693,3.99,166,2),
(1290,540,417,4.99,166,1),
(1291,176,679,5.99,166,8),
(1292,178,989,6.99,166,16),
(1293,127,632,4.99,166,13),
(1294,327,75,4.99,166,16),
(1295,449,637,4.99,166,14),
(1296,200,382,1.99,166,10),
(1297,4,239,4.99,166,2),
(1298,334,905,4.99,166,5),
(1299,91,347,4.99,166,16),
(1300,186,554,2.99,166,4),
(1301,33,324,10.99,166,5),
(1302,285,72,3.99,166,6),
(1303,365,436,1.99,166,13),
(1304,242,288,4.99,166,16),
(1305,8,42,2.99,166,15),
(1306,524,461,1.99,166,2),
(1307,507,81,4.99,166,14),
(1308,236,49,5.99,166,14),
(1309,200,512,4.99,166,4),
(1310,27,444,4.99,166,5),
(1311,326,683,4.99,166,7),
(1312,313,789,2.99,166,9),
(1313,448,361,5.99,166,15),
(1314,538,300,5.99,166,2),
(1315,405,842,4.99,166,10),
(1316,138,850,0.99,166,1),
(1317,316,809,4.99,166,15),
(1318,341,606,2.99,166,15),
(1319,190,936,2.99,166,12),
(1320,84,979,4.99,166,7),
(1321,204,770,2.99,166,9),
(1322,217,450,2.99,166,3),
(1323,187,721,6.99,166,12),
(1324,394,167,4.99,166,16),
(1325,193,10,4.99,166,15),
(1326,548,11,1.99,166,9),
(1327,539,89,0.99,166,2),
(1328,295,800,2.99,166,11),
(1329,359,255,4.99,166,12),
(1330,587,270,2.99,166,13),
(1331,277,679,2.99,166,8),
(1332,116,309,0.99,166,8),
(1333,310,99,2.99,166,5),
(1334,269,274,3.99,166,6),
(1335,64,374,0.99,166,14),
(1336,290,369,8.99,166,14),
(1337,465,873,2.99,166,3),
(1338,25,268,4.99,166,2),
(1339,162,93,4.99,166,13),
(1340,100,56,3.99,166,1),
(1341,344,738,3.99,166,9),
(1342,427,968,5.99,166,1),
(1343,416,522,4.99,166,5),
(1344,585,355,0.99,166,2),
(1345,270,232,4.99,166,10),
(1346,585,991,7.99,166,1),
(1347,190,83,2.99,166,8),
(1348,196,450,2.99,166,3),
(1349,267,251,4.99,166,13),
(1350,316,927,4.99,166,1),
(1351,484,514,3.99,166,7),
(1352,276,948,0.99,166,13),
(1353,480,595,0.99,166,9),
(1354,83,285,5.99,166,14),
(1355,499,914,2.99,166,16),
(1356,212,291,0.99,166,15),
(1357,205,494,4.99,166,11),
(1358,442,440,0.99,166,9),
(1359,353,690,2.99,166,2),
(1360,14,893,4.99,166,14),
(1361,115,945,0.99,166,6),
(1362,98,987,3.99,166,12),
(1363,197,168,0.99,166,3),
(1364,400,23,0.99,166,2),
(1365,25,835,2.99,166,10),
(1366,576,921,4.99,166,12),
(1367,94,329,4.99,166,1),
(1368,222,439,8.99,166,7),
(1369,221,149,0.99,166,3),
(1370,396,140,1.99,166,14),
(1371,491,166,4.99,166,4),
(1372,108,818,4.99,166,7),
(1373,51,64,1.99,166,7),
(1374,120,736,3.99,166,8),
(1375,500,777,5.99,166,15),
(1376,215,929,4.99,166,9),
(1377,245,747,2.99,166,10),
(1378,253,953,1.99,166,2),
(1379,212,176,0.99,166,15),
(1380,158,741,0.99,166,12),
(1381,300,718,0.99,166,12),
(1382,455,688,1.99,166,3),
(1383,379,284,8.99,166,12),
(1384,242,922,4.99,166,11),
(1385,396,888,4.99,166,6),
(1386,322,286,2.99,166,16),
(1387,278,114,0.99,166,14),
(1388,500,869,5.99,166,1),
(1389,472,215,4.99,166,10),
(1390,254,982,0.99,166,1),
(1391,273,916,6.99,166,2),
(1392,460,79,0.99,166,7),
(1393,177,608,2.99,166,3),
(1394,268,615,2.99,166,2),
(1395,252,165,5.99,166,14),
(1396,103,226,4.99,166,13),
(1397,444,397,3.99,166,14),
(1398,527,962,2.99,166,4),
(1399,469,314,0.99,166,2),
(1400,571,51,3.99,166,12),
(1401,366,890,1.99,166,15),
(1402,381,425,3.99,166,4),
(1403,546,741,0.99,166,12),
(1404,375,609,2.99,166,16),
(1405,243,698,5.99,166,6),
(1406,199,685,4.99,166,13),
(1407,89,284,7.99,166,12),
(1408,396,582,6.99,166,2),
(1409,297,306,3.99,166,10),
(1410,356,176,0.99,166,15),
(1411,520,492,0.99,166,13),
(1412,166,921,2.99,166,12),
(1413,96,791,7.99,166,6),
(1414,304,872,6.99,166,16),
(1415,331,410,2.99,166,5),
(1416,167,835,3.99,166,10),
(1417,570,294,4.99,166,16),
(1418,591,651,0.99,166,2),
(1419,312,269,0.99,166,8),
(1420,255,901,6.99,166,2),
(1421,533,532,5.99,166,15),
(1422,1,228,0.99,166,4),
(1423,592,305,5.99,166,13),
(1424,224,197,7.99,166,15),
(1425,108,288,2.99,166,16),
(1426,363,964,4.99,166,1),
(1427,100,3,2.99,166,6),
(1428,583,807,3.99,166,10),
(1429,362,895,2.99,166,4),
(1430,194,748,0.99,166,1),
(1431,438,702,4.99,166,11),
(1432,339,115,3.99,166,1),
(1433,88,502,2.99,166,5),
(1434,544,919,10.99,166,10),
(1435,510,608,5.99,166,3),
(1436,584,205,3.99,166,1),
(1437,96,718,0.99,166,12),
(1438,82,395,0.99,166,1),
(1439,589,693,4.99,166,2),
(1440,26,641,5.99,166,9),
(1441,444,454,1.99,166,12),
(1442,122,854,7.99,166,11),
(1443,435,545,0.99,166,9),
(1444,539,287,4.99,166,1),
(1445,537,700,2.99,166,8),
(1446,506,433,6.99,166,2),
(1447,471,219,4.99,166,6),
(1448,246,610,1.99,166,8),
(1449,471,333,2.99,166,12),
(1450,268,897,4.99,166,7),
(1451,18,778,5.99,166,8),
(1452,243,948,0.99,166,13),
(1453,457,721,4.99,166,12),
(1454,298,21,4.99,166,1),
(1455,358,474,2.99,166,15),
(1456,590,137,7.99,166,14),
(1457,345,159,4.99,166,5),
(1458,178,775,6.99,166,7),
(1459,218,406,2.99,166,10),
(1460,565,307,4.99,166,16),
(1461,216,979,6.99,166,7),
(1462,187,141,4.99,166,10),
(1463,569,654,6.99,166,10),
(1464,387,894,0.99,166,16),
(1465,387,132,0.99,166,14),
(1466,288,235,5.99,166,14),
(1467,506,150,2.99,166,6),
(1468,230,51,3.99,166,12),
(1469,580,535,0.99,166,11),
(1470,11,880,6.99,166,2),
(1471,428,122,2.99,166,11),
(1472,373,920,6.99,166,13),
(1473,249,518,5.99,166,16),
(1474,202,35,2.99,166,11),
(1475,344,398,4.99,166,12),
(1476,1,308,9.99,166,5),
(1477,51,91,0.99,166,4),
(1478,336,96,2.99,166,13),
(1479,592,37,2.99,166,4),
(1480,27,571,4.99,166,6),
(1481,125,667,2.99,166,15),
(1482,60,867,4.99,166,8),
(1483,242,418,4.99,166,7),
(1484,320,349,3.99,166,2),
(1485,281,43,5.99,166,8),
(1486,62,186,0.99,166,7),
(1487,76,830,0.99,166,11),
(1488,355,241,0.99,166,2),
(1489,213,153,0.99,166,14),
(1490,123,770,4.99,166,9),
(1491,354,186,0.99,166,7),
(1492,360,901,0.99,166,2),
(1493,235,1000,4.99,166,5),
(1494,575,55,2.99,166,14),
(1495,175,401,0.99,166,7),
(1496,290,854,4.99,166,11),
(1497,44,649,3.99,166,2),
(1498,352,807,0.99,166,10),
(1499,375,35,5.99,166,11),
(1500,237,581,0.99,166,12),
(1501,148,387,1.99,166,10),
(1502,5,722,3.99,166,11),
(1503,197,166,2.99,166,4),
(1504,423,790,3.99,166,7),
(1505,561,649,2.99,166,2),
(1506,404,890,2.99,166,15),
(1507,172,552,0.99,166,6),
(1508,511,252,2.99,166,1),
(1509,167,142,5.99,166,6),
(1510,338,220,4.99,166,12),
(1511,330,251,5.99,166,13),
(1512,452,356,5.99,166,3),
(1513,368,260,9.99,166,15),
(1514,410,645,2.99,166,16),
(1515,115,714,2.99,166,14),
(1516,530,810,0.99,166,8),
(1517,148,815,6.99,166,4),
(1518,237,990,0.99,166,11),
(1519,155,341,1.99,166,4),
(1520,341,749,7.99,166,11),
(1521,149,937,2.99,166,13),
(1522,133,53,3.99,167,8),
(1523,349,149,0.99,167,3),
(1524,177,754,2.99,167,5),
(1525,304,321,4.99,167,13),
(1526,499,422,4.99,167,14),
(1527,188,67,2.99,167,1),
(1528,110,936,8.99,167,12),
(1529,362,368,2.99,167,7),
(1530,392,528,6.99,167,8),
(1531,515,304,5.99,167,3),
(1532,290,830,0.99,167,11),
(1533,116,535,0.99,167,11),
(1534,42,687,0.99,167,6),
(1535,202,244,4.99,167,12),
(1536,339,715,4.99,167,8),
(1537,594,1000,5.99,167,5),
(1538,430,154,2.99,167,2),
(1539,390,59,5.99,167,3),
(1540,586,595,0.99,167,9),
(1541,189,416,0.99,167,9),
(1542,182,374,3.99,167,14),
(1543,28,265,4.99,167,5),
(1544,43,60,4.99,167,4),
(1545,563,166,4.99,167,4),
(1546,3,854,8.99,167,11),
(1547,343,639,4.99,167,8),
(1548,374,454,1.99,167,12),
(1549,69,59,2.99,167,3),
(1550,345,436,0.99,167,13),
(1551,268,891,3.99,167,4),
(1552,518,179,5.99,167,7),
(1553,416,877,0.99,167,12),
(1554,155,156,7.99,167,6),
(1555,256,906,2.99,167,5),
(1556,54,117,4.99,167,10),
(1557,439,574,0.99,167,1),
(1558,20,948,0.99,167,13),
(1559,574,157,0.99,167,3),
(1560,239,748,4.99,167,1),
(1561,431,489,2.99,167,2),
(1562,395,130,0.99,167,1),
(1563,262,331,2.99,167,10),
(1564,343,30,6.99,167,11),
(1565,506,840,0.99,167,10),
(1566,174,706,7.99,167,7),
(1567,320,681,1.99,167,15),
(1568,178,138,2.99,167,14),
(1569,363,856,4.99,167,11),
(1570,82,812,0.99,167,6),
(1571,54,228,2.99,167,4),
(1572,560,910,1.99,167,7),
(1573,371,990,6.99,167,11),
(1574,305,35,4.99,167,11),
(1575,6,730,3.99,167,13),
(1576,442,227,8.99,167,10),
(1577,327,80,3.99,167,8),
(1578,365,745,6.99,167,15),
(1579,35,34,0.99,167,11),
(1580,87,543,4.99,167,16),
(1581,109,872,2.99,167,16),
(1582,536,35,4.99,167,11),
(1583,37,60,4.99,167,4),
(1584,434,775,5.99,167,7),
(1585,386,373,3.99,167,3),
(1586,140,167,4.99,167,16),
(1587,62,387,0.99,167,10),
(1588,322,977,8.99,167,16),
(1589,293,938,9.99,167,5),
(1590,98,806,5.99,167,13),
(1591,83,360,5.99,167,1),
(1592,187,832,0.99,167,8),
(1593,111,167,6.99,167,16),
(1594,470,844,7.99,167,15),
(1595,244,324,5.99,167,5),
(1596,416,559,2.99,167,14),
(1597,432,162,2.99,167,1),
(1598,314,907,3.99,167,7),
(1599,215,323,4.99,167,15),
(1600,196,489,0.99,167,2),
(1601,428,684,3.99,167,10),
(1602,441,385,4.99,167,5),
(1603,395,728,0.99,167,7),
(1604,272,708,4.99,167,6),
(1605,197,129,8.99,167,6),
(1606,253,934,6.99,167,10),
(1607,513,724,2.99,167,8),
(1608,386,566,2.99,167,9),
(1609,174,493,0.99,167,9),
(1610,534,776,4.99,167,6),
(1611,393,378,6.99,167,12),
(1612,355,664,2.99,167,1),
(1613,573,975,4.99,167,8),
(1614,489,5,3.99,167,8),
(1615,362,850,2.99,167,1),
(1616,204,500,7.99,167,9),
(1617,83,303,3.99,167,1),
(1618,134,818,9.99,167,7),
(1619,232,925,0.99,167,6),
(1620,561,86,4.99,167,12),
(1621,177,804,4.99,167,11),
(1622,311,385,4.99,167,5),
(1623,378,980,4.99,167,12),
(1624,314,237,2.99,167,15),
(1625,39,738,5.99,167,9),
(1626,260,152,3.99,167,3),
(1627,468,898,8.99,167,15),
(1628,427,191,3.99,167,3),
(1629,339,956,4.99,167,10),
(1630,130,526,2.99,167,16),
(1631,5,539,2.99,167,7),
(1632,319,331,2.99,167,10),
(1633,4,63,0.99,167,8),
(1634,121,869,2.99,167,1),
(1635,566,264,5.99,167,10),
(1636,574,445,5.99,167,4),
(1637,212,201,2.99,167,9),
(1638,181,415,2.99,167,11),
(1639,450,39,4.99,167,14),
(1640,86,98,4.99,167,7),
(1641,259,643,7.99,167,7),
(1642,287,847,2.99,167,13),
(1643,484,298,3.99,167,14),
(1644,596,164,1.99,167,6),
(1645,234,970,0.99,167,4),
(1646,131,879,9.99,167,12),
(1647,454,421,4.99,167,9),
(1648,427,101,5.99,167,6),
(1649,352,86,4.99,167,12),
(1650,299,897,8.99,167,7),
(1651,524,971,4.99,167,9),
(1652,533,748,0.99,167,1),
(1653,517,499,4.99,167,8),
(1654,348,232,2.99,167,10),
(1655,488,807,3.99,167,10),
(1656,31,487,4.99,167,4),
(1657,209,212,4.99,167,1),
(1658,568,61,4.99,167,7),
(1659,296,263,4.99,167,15),
(1660,238,518,4.99,167,16),
(1661,508,525,4.99,167,4),
(1662,378,776,5.99,167,6),
(1663,186,341,2.99,167,4),
(1664,216,538,0.99,167,13),
(1665,490,573,3.99,167,3),
(1666,557,875,0.99,167,15),
(1667,333,514,2.99,167,7),
(1668,569,544,5.99,167,6),
(1669,73,79,0.99,167,7),
(1670,328,448,2.99,167,13),
(1671,135,833,1.99,167,3),
(1672,216,914,3.99,167,16),
(1673,534,201,2.99,167,9),
(1674,234,788,2.99,167,6),
(1675,371,668,5.99,167,15),
(1676,171,206,0.99,167,6),
(1677,191,54,2.99,167,12),
(1678,352,403,4.99,167,7),
(1679,227,863,2.99,167,14),
(1680,469,971,9.99,167,9),
(1681,255,116,2.99,167,4),
(1682,476,468,3.99,167,3),
(1683,494,514,2.99,167,7),
(1684,485,175,2.99,167,8),
(1685,85,604,1.99,167,5),
(1686,529,849,0.99,167,2),
(1687,140,806,2.99,167,13),
(1688,49,85,0.99,167,6),
(1689,48,879,9.99,167,12),
(1690,286,244,8.99,167,12),
(1691,492,970,1.99,167,4),
(1692,514,775,4.99,167,7),
(1693,421,521,4.99,167,7),
(1694,532,31,4.99,167,8),
(1695,159,970,0.99,167,4),
(1696,502,857,7.99,167,5),
(1697,340,391,3.99,167,8),
(1698,407,322,2.99,167,15),
(1699,27,984,2.99,167,9),
(1700,456,924,0.99,167,14),
(1701,315,658,2.99,167,11),
(1702,242,396,4.99,167,7),
(1703,589,510,4.99,167,2),
(1704,488,967,5.99,167,14),
(1705,564,24,2.99,167,11),
(1706,26,645,4.99,167,16),
(1707,4,42,2.99,167,15),
(1708,478,488,0.99,167,15),
(1709,426,767,6.99,167,12),
(1710,77,30,4.99,167,11),
(1711,347,61,8.99,167,7),
(1712,535,300,4.99,167,2),
(1713,164,565,4.99,167,9),
(1714,477,117,6.99,167,10),
(1715,203,349,2.99,167,2),
(1716,24,4,2.99,167,11),
(1717,277,660,2.99,167,5),
(1718,516,65,10.99,167,11),
(1719,582,592,2.99,167,12),
(1720,543,767,4.99,167,12),
(1721,485,771,8.99,167,7),
(1722,364,463,2.99,167,15),
(1723,259,527,7.99,167,11),
(1724,146,12,1.99,167,12),
(1725,1,159,4.99,167,5),
(1726,3,23,6.99,167,2),
(1727,457,647,0.99,167,12),
(1728,59,301,3.99,167,11),
(1729,523,738,6.99,167,9),
(1730,390,302,2.99,167,10),
(1731,344,809,0.99,167,15),
(1732,129,496,0.99,167,16),
(1733,480,118,0.99,167,2),
(1734,94,247,3.99,167,5),
(1735,4,19,0.99,167,1),
(1736,139,825,2.99,167,1),
(1737,467,878,8.99,167,16),
(1738,177,717,0.99,167,1),
(1739,450,560,0.99,167,10),
(1740,324,494,0.99,167,11),
(1741,176,814,7.99,167,5),
(1742,576,609,2.99,167,16),
(1743,258,609,2.99,167,16),
(1744,230,676,4.99,167,15),
(1745,178,617,3.99,167,8),
(1746,385,930,2.99,167,14),
(1747,273,363,6.99,167,12),
(1748,473,531,0.99,167,9),
(1749,283,341,0.99,167,4),
(1750,321,245,5.99,167,2),
(1751,123,27,0.99,167,15),
(1752,12,772,5.99,167,7),
(1753,249,835,2.99,167,10),
(1754,25,893,6.99,167,14),
(1755,117,375,2.99,167,1),
(1756,571,307,4.99,167,16),
(1757,510,981,0.99,167,16),
(1758,474,582,8.99,167,2),
(1759,430,307,6.99,167,16),
(1760,261,857,2.99,167,5),
(1761,521,345,0.99,167,8),
(1762,116,670,4.99,167,6),
(1763,389,422,4.99,167,14),
(1764,392,154,2.99,167,2),
(1765,273,179,4.99,167,7),
(1766,118,444,4.99,167,5),
(1767,205,257,0.99,167,16),
(1768,131,461,4.99,167,2),
(1769,397,272,5.99,167,7),
(1770,359,367,1.99,167,14),
(1771,416,383,0.99,167,15),
(1772,525,281,2.99,167,10),
(1773,462,961,5.99,167,9),
(1774,442,672,2.99,167,5),
(1775,123,417,4.99,167,1),
(1776,472,307,6.99,167,16),
(1777,49,731,6.99,167,4),
(1778,341,552,1.99,167,6),
(1779,438,233,0.99,167,16),
(1780,352,31,4.99,167,8),
(1781,429,623,5.99,167,9),
(1782,498,395,2.99,167,1),
(1783,18,10,4.99,167,15),
(1784,134,830,0.99,167,11),
(1785,50,748,4.99,167,1),
(1786,323,58,2.99,167,6),
(1787,546,837,3.99,167,5),
(1788,357,831,1.99,167,14),
(1789,105,927,3.99,167,1),
(1790,158,239,4.99,167,2),
(1791,76,68,6.99,167,3),
(1792,351,832,5.99,167,8),
(1793,230,949,0.99,167,10),
(1794,452,111,3.99,167,1),
(1795,56,117,6.99,167,10),
(1796,283,709,2.99,167,7),
(1797,275,753,3.99,167,8),
(1798,429,361,2.99,167,15),
(1799,505,624,5.99,167,10),
(1800,149,447,2.99,167,10),
(1801,10,227,4.99,167,10),
(1802,455,907,1.99,167,7),
(1803,127,828,2.99,167,4),
(1804,570,254,2.99,167,15),
(1805,208,863,0.99,167,14),
(1806,45,446,4.99,167,15),
(1807,338,260,5.99,167,15),
(1808,466,529,7.99,167,5),
(1809,517,239,8.99,167,2),
(1810,7,516,0.99,167,12),
(1811,235,810,0.99,167,8),
(1812,37,164,1.99,167,6),
(1813,259,273,2.99,167,8),
(1814,144,8,5.99,167,11),
(1815,84,341,0.99,167,4),
(1816,594,627,4.99,167,6),
(1817,574,299,0.99,167,16),
(1818,63,270,0.99,167,13),
(1819,386,368,5.99,167,7),
(1820,120,804,4.99,167,11),
(1821,468,705,2.99,167,9),
(1822,86,147,0.99,167,8),
(1823,448,846,7.99,167,13),
(1824,575,490,2.99,167,13),
(1825,55,638,2.99,167,5),
(1826,578,92,6.99,167,11),
(1827,423,833,0.99,167,3),
(1828,68,71,5.99,167,8),
(1829,293,134,5.99,167,2),
(1830,499,873,4.99,167,3),
(1831,383,572,7.99,167,14),
(1832,220,111,0.99,167,1),
(1833,121,295,1.99,167,6),
(1834,189,875,0.99,167,15),
(1835,112,324,4.99,167,5),
(1836,176,603,6.99,167,8),
(1837,309,279,4.99,167,15),
(1838,31,114,1.99,167,14),
(1839,223,603,5.99,167,8),
(1840,404,75,4.99,167,16),
(1841,6,514,2.99,167,7),
(1842,426,322,7.99,167,15),
(1843,132,595,0.99,167,9),
(1844,454,501,7.99,167,1),
(1845,215,745,4.99,167,15),
(1846,422,376,0.99,168,9),
(1847,363,265,4.99,168,5),
(1848,526,832,0.99,168,8),
(1849,341,551,7.99,168,13),
(1850,517,166,4.99,168,4),
(1851,451,249,0.99,168,4),
(1852,271,896,2.99,168,3),
(1853,301,647,0.99,168,12),
(1854,37,23,3.99,168,2),
(1855,492,973,4.99,168,6),
(1856,161,665,2.99,168,11),
(1857,427,925,1.99,168,6),
(1858,99,703,4.99,168,2),
(1859,533,746,0.99,168,10),
(1860,293,403,4.99,168,7),
(1861,454,27,1.99,168,15),
(1862,553,726,3.99,168,9),
(1863,550,976,3.99,168,10),
(1864,130,394,2.99,168,14),
(1865,526,583,7.99,168,2),
(1866,575,565,4.99,168,9),
(1867,415,773,4.99,168,15),
(1868,380,526,3.99,168,16),
(1869,351,191,0.99,168,3),
(1870,191,199,2.99,168,6),
(1871,204,106,4.99,168,10),
(1872,206,786,0.99,168,3),
(1873,71,644,2.99,168,2),
(1874,30,849,1.99,168,2),
(1875,528,361,2.99,168,15),
(1876,459,85,0.99,168,6),
(1877,261,746,5.99,168,10),
(1878,381,730,1.99,168,13),
(1879,343,868,0.99,168,16),
(1880,289,251,4.99,168,13),
(1881,134,34,0.99,168,11),
(1882,47,307,4.99,168,16),
(1883,550,767,4.99,168,12),
(1884,305,998,0.99,168,11),
(1885,588,162,2.99,168,1),
(1886,505,515,4.99,168,3),
(1887,32,785,6.99,168,16),
(1888,405,629,0.99,168,6),
(1889,572,853,10.99,168,3),
(1890,447,382,2.99,168,10),
(1891,109,782,3.99,168,15),
(1892,319,28,4.99,168,5),
(1893,390,735,2.99,168,3),
(1894,204,811,7.99,168,16),
(1895,30,149,2.99,168,3),
(1896,270,450,6.99,168,3),
(1897,422,900,4.99,168,9),
(1898,143,630,1.99,168,7),
(1899,200,189,6.99,168,10),
(1900,34,312,4.99,168,14),
(1901,292,540,3.99,168,12),
(1902,479,638,2.99,168,5),
(1903,588,421,6.99,168,9),
(1904,87,542,2.99,168,1),
(1905,39,233,4.99,168,16),
(1906,455,234,2.99,168,14),
(1907,66,220,2.99,168,12),
(1908,358,89,0.99,168,2),
(1909,269,571,2.99,168,6),
(1910,199,852,2.99,168,3),
(1911,3,202,6.99,168,5),
(1912,538,898,4.99,168,15),
(1913,116,396,4.99,168,7),
(1914,450,747,2.99,168,10),
(1915,393,574,1.99,168,1),
(1916,429,968,7.99,168,1),
(1917,400,586,3.99,168,1),
(1918,310,820,3.99,168,2),
(1919,197,844,4.99,168,15),
(1920,75,476,4.99,168,8),
(1921,417,953,3.99,168,2),
(1922,343,545,0.99,168,9),
(1923,400,151,6.99,168,14),
(1924,86,564,2.99,168,2),
(1925,510,870,0.99,168,11),
(1926,462,768,9.99,168,3),
(1927,188,727,0.99,168,8),
(1928,353,757,7.99,168,6),
(1929,327,124,6.99,168,3),
(1930,112,16,2.99,168,9),
(1931,391,309,0.99,168,8),
(1932,120,698,2.99,168,6),
(1933,13,218,2.99,168,7),
(1934,16,871,6.99,168,5),
(1935,295,428,2.99,168,8),
(1936,213,666,4.99,168,7),
(1937,385,281,0.99,168,10),
(1938,454,123,4.99,168,16),
(1939,11,131,7.99,168,4),
(1940,451,21,6.99,168,1),
(1941,519,236,2.99,168,10),
(1942,143,58,4.99,168,6),
(1943,144,942,0.99,168,7),
(1944,16,71,7.99,168,8),
(1945,207,738,3.99,168,9),
(1946,389,507,4.99,168,10),
(1947,479,735,3.99,168,3),
(1948,89,10,4.99,168,15),
(1949,208,323,5.99,168,15),
(1950,594,158,2.99,168,12),
(1951,123,213,0.99,168,8),
(1952,338,396,4.99,168,7),
(1953,405,776,5.99,168,6),
(1954,533,704,2.99,168,5),
(1955,311,176,0.99,168,15),
(1956,492,307,4.99,168,16),
(1957,68,548,8.99,168,4),
(1958,581,402,3.99,168,2),
(1959,554,320,4.99,168,13),
(1960,27,476,3.99,168,8),
(1961,384,625,0.99,168,14),
(1962,536,958,2.99,168,7),
(1963,154,423,0.99,168,3),
(1964,53,744,0.99,168,4),
(1965,256,105,0.99,168,1),
(1966,6,452,0.99,168,9),
(1967,558,708,4.99,168,6),
(1968,246,252,2.99,168,1),
(1969,337,972,4.99,168,14),
(1970,303,300,4.99,168,2),
(1971,357,629,1.99,168,6),
(1972,526,605,2.99,168,9),
(1973,256,803,4.99,168,7),
(1974,111,432,2.99,168,4),
(1975,468,554,2.99,168,4),
(1976,184,792,2.99,168,9),
(1977,459,540,2.99,168,12),
(1978,278,349,2.99,168,2),
(1979,45,760,2.99,168,13),
(1980,328,654,6.99,168,10),
(1981,526,698,2.99,168,6),
(1982,566,243,4.99,168,2),
(1983,365,426,4.99,168,12),
(1984,380,748,2.99,168,1),
(1985,411,18,0.99,168,2),
(1986,541,636,2.99,168,12),
(1987,479,22,2.99,168,13),
(1988,261,670,8.99,168,6),
(1989,35,138,2.99,168,14),
(1990,571,322,4.99,168,15),
(1991,105,864,3.99,168,3),
(1992,233,138,2.99,168,14),
(1993,234,37,5.99,168,4),
(1994,346,476,5.99,168,8),
(1995,10,407,4.99,168,6),
(1996,149,676,6.99,168,15),
(1997,411,185,2.99,168,9),
(1998,562,951,3.99,168,4),
(1999,111,810,1.99,168,8),
(2000,163,72,2.99,168,6),
(2001,260,449,2.99,168,14),
(2002,514,525,3.99,168,4),
(2003,515,347,4.99,168,16),
(2004,171,295,4.99,168,6),
(2005,234,908,4.99,168,9),
(2006,215,220,2.99,168,12),
(2007,572,249,0.99,168,4),
(2008,570,451,5.99,168,16),
(2009,119,414,2.99,168,9),
(2010,329,624,5.99,168,10),
(2011,350,160,3.99,168,2),
(2012,84,785,5.99,168,16),
(2013,165,716,3.99,168,11),
(2014,337,650,5.99,168,6),
(2015,484,827,4.99,168,7),
(2016,282,928,2.99,168,3),
(2017,516,314,0.99,168,2),
(2018,380,283,3.99,168,13),
(2019,528,502,4.99,168,5),
(2020,384,416,0.99,168,9),
(2021,319,625,3.99,168,14),
(2022,547,670,8.99,168,6),
(2023,169,172,4.99,168,7),
(2024,329,562,0.99,168,12),
(2025,447,267,4.99,168,13),
(2026,491,805,4.99,168,2),
(2027,265,938,7.99,168,5),
(2028,155,973,7.99,168,6),
(2029,512,203,4.99,168,14),
(2030,457,877,0.99,168,12),
(2031,570,930,6.99,168,14),
(2032,316,93,4.99,168,13),
(2033,90,11,0.99,168,9),
(2034,587,330,4.99,168,2),
(2035,158,953,6.99,168,2),
(2036,486,20,4.99,168,12),
(2037,308,566,0.99,168,9),
(2038,138,920,0.99,168,13),
(2039,304,331,3.99,168,10),
(2040,260,51,2.99,168,12),
(2041,348,170,8.99,168,9),
(2042,84,681,0.99,168,15),
(2043,4,547,0.99,168,3),
(2044,484,527,5.99,168,11),
(2045,391,122,2.99,168,11),
(2046,374,191,1.99,168,3),
(2047,201,517,1.99,168,15),
(2048,454,446,5.99,168,15),
(2049,182,234,2.99,168,14),
(2050,549,428,2.99,168,8),
(2051,191,515,4.99,168,3),
(2052,172,367,0.99,168,14),
(2053,521,931,0.99,168,16),
(2054,295,348,2.99,168,8),
(2055,593,306,5.99,168,10),
(2056,42,51,2.99,168,12),
(2057,190,615,4.99,168,2),
(2058,57,292,5.99,168,1),
(2059,114,162,2.99,168,1),
(2060,64,333,2.99,168,12),
(2061,108,1000,8.99,168,5),
(2062,55,380,2.99,168,9),
(2063,5,941,4.99,168,10),
(2064,67,429,3.99,168,15),
(2065,266,184,4.99,168,4),
(2066,248,561,3.99,168,13),
(2067,297,373,2.99,168,3),
(2068,387,924,0.99,168,14),
(2069,551,602,4.99,168,14),
(2070,24,572,2.99,168,14),
(2071,479,628,3.99,168,15),
(2072,261,17,3.99,168,12),
(2073,410,772,2.99,168,7),
(2074,495,15,2.99,168,9),
(2075,459,527,4.99,168,11),
(2076,217,484,6.99,168,4),
(2077,113,979,4.99,168,7),
(2078,278,439,4.99,168,7),
(2079,465,843,4.99,168,4),
(2080,476,273,0.99,168,8),
(2081,253,204,5.99,168,7),
(2082,254,96,2.99,168,13),
(2083,97,529,2.99,168,5),
(2084,92,95,4.99,168,13),
(2085,214,491,2.99,168,3),
(2086,326,200,0.99,168,10),
(2087,398,103,6.99,168,16),
(2088,310,112,6.99,168,9),
(2089,156,878,9.99,168,16),
(2090,197,4,2.99,168,11),
(2091,260,879,10.99,168,12),
(2092,556,968,6.99,168,1),
(2093,26,177,9.99,168,14),
(2094,308,477,0.99,168,12),
(2095,8,415,5.99,168,11),
(2096,431,239,4.99,168,2),
(2097,439,123,4.99,168,16),
(2098,274,862,0.99,168,4),
(2099,146,800,2.99,168,11),
(2100,387,489,0.99,168,2),
(2101,581,462,2.99,168,12),
(2102,486,503,5.99,168,15),
(2103,456,321,5.99,168,13),
(2104,136,678,2.99,168,15),
(2105,57,891,0.99,168,4),
(2106,66,139,4.99,168,8),
(2107,104,281,0.99,168,10),
(2108,503,305,4.99,168,13),
(2109,493,498,3.99,168,8),
(2110,163,785,7.99,168,16),
(2111,76,457,0.99,168,6),
(2112,18,356,5.99,168,3),
(2113,406,330,4.99,168,2),
(2114,358,774,5.99,168,5),
(2115,270,756,3.99,168,5),
(2116,24,518,4.99,168,16),
(2117,170,1,0.99,168,6),
(2118,103,280,0.99,168,3),
(2119,561,456,4.99,168,2),
(2120,182,328,5.99,168,3),
(2121,467,28,4.99,168,5),
(2122,245,644,2.99,168,2),
(2123,545,548,2.99,168,4),
(2124,178,282,1.99,168,7),
(2125,473,937,2.99,168,13),
(2126,263,930,8.99,168,14),
(2127,187,822,0.99,168,8),
(2128,2,78,2.99,168,2),
(2129,249,418,1.99,168,7),
(2130,413,301,5.99,168,11),
(2131,85,967,5.99,168,14),
(2132,186,578,4.99,168,4),
(2133,268,206,0.99,168,6),
(2134,378,370,7.99,168,3),
(2135,39,891,0.99,168,4),
(2136,20,581,3.99,168,12),
(2137,581,255,4.99,168,12),
(2138,254,114,2.99,168,14),
(2139,236,175,8.99,168,8),
(2140,56,523,0.99,168,4),
(2141,86,470,4.99,168,2),
(2142,253,388,4.99,168,5),
(2143,507,278,4.99,168,12),
(2144,46,727,0.99,168,8),
(2145,388,54,0.99,168,12),
(2146,456,73,6.99,168,14),
(2147,279,603,4.99,168,8),
(2148,338,70,6.99,168,2),
(2149,333,738,6.99,168,9),
(2150,406,415,3.99,168,11),
(2151,329,90,0.99,168,13),
(2152,307,585,2.99,168,7),
(2153,357,532,6.99,168,15),
(2154,30,361,4.99,168,15),
(2155,227,795,1.99,168,8),
(2156,237,135,4.99,168,15),
(2157,201,353,3.99,168,9),
(2158,530,55,2.99,168,14),
(2159,465,680,8.99,168,5),
(2160,32,358,0.99,168,4),
(2161,75,691,7.99,168,15),
(2162,277,389,3.99,168,15),
(2163,130,571,2.99,168,6),
(2164,227,755,6.99,168,3),
(2165,471,522,2.99,168,5),
(2166,305,946,11.99,168,8),
(2167,307,831,0.99,168,14),
(2168,308,174,4.99,168,12),
(2169,120,172,4.99,168,7),
(2170,42,869,3.99,168,1),
(2171,147,383,0.99,169,15),
(2172,457,640,7.99,169,9),
(2173,65,222,7.99,169,11),
(2174,520,723,6.99,169,14),
(2175,17,879,5.99,169,12),
(2176,282,914,2.99,169,16),
(2177,340,109,5.99,169,13),
(2178,260,647,0.99,169,12),
(2179,338,945,0.99,169,6),
(2180,497,778,8.99,169,8),
(2181,176,763,8.99,169,15),
(2182,454,765,5.99,169,5),
(2183,340,385,4.99,169,5),
(2184,537,760,2.99,169,13),
(2185,198,942,0.99,169,7),
(2186,204,445,2.99,169,4),
(2187,477,304,2.99,169,3),
(2188,183,155,1.99,169,13),
(2189,500,56,3.99,169,1),
(2190,342,961,5.99,169,9),
(2191,58,739,4.99,169,7),
(2192,456,411,4.99,169,12),
(2193,112,227,4.99,169,10),
(2194,149,397,4.99,169,14),
(2195,286,486,4.99,169,9),
(2196,240,418,3.99,169,7),
(2197,103,736,0.99,169,8),
(2198,109,432,6.99,169,4),
(2199,171,20,5.99,169,12),
(2200,229,242,4.99,169,5),
(2201,489,406,0.99,169,10),
(2202,297,177,8.99,169,14),
(2203,46,297,2.99,169,4),
(2204,426,252,2.99,169,1),
(2205,593,275,4.99,169,11),
(2206,438,797,0.99,169,12),
(2207,78,40,2.99,169,6),
(2208,132,510,4.99,169,2),
(2209,13,532,4.99,169,15),
(2210,108,49,2.99,169,14),
(2211,166,895,3.99,169,4),
(2212,336,536,2.99,169,4),
(2213,98,211,4.99,169,10),
(2214,366,531,0.99,169,9),
(2215,239,447,2.99,169,10),
(2216,320,313,4.99,169,11),
(2217,118,489,0.99,169,2),
(2218,176,782,2.99,169,15),
(2219,393,410,2.99,169,5),
(2220,587,72,2.99,169,6),
(2221,156,852,0.99,169,3),
(2222,10,840,3.99,169,10),
(2223,303,887,8.99,169,2),
(2224,153,295,0.99,169,6),
(2225,503,621,2.99,169,8),
(2226,225,764,7.99,169,15),
(2227,200,791,4.99,169,6),
(2228,383,109,2.99,169,13),
(2229,35,623,4.99,169,9),
(2230,256,182,4.99,169,5),
(2231,35,493,0.99,169,9),
(2232,52,538,0.99,169,13),
(2233,31,673,0.99,169,12),
(2234,182,52,0.99,169,9),
(2235,21,759,7.99,169,13),
(2236,375,871,4.99,169,5),
(2237,205,395,5.99,169,1),
(2238,251,626,6.99,169,3),
(2239,437,966,5.99,169,6),
(2240,122,308,3.99,169,5),
(2241,406,204,2.99,169,7),
(2242,146,434,3.99,169,16),
(2243,328,277,5.99,169,11),
(2244,233,792,2.99,169,9),
(2245,194,327,7.99,169,1),
(2246,414,933,4.99,169,13),
(2248,446,435,4.99,169,9),
(2249,285,23,5.99,169,2),
(2250,7,880,2.99,169,2),
(2251,143,319,3.99,169,14),
(2252,383,433,2.99,169,2),
(2253,122,813,0.99,169,15),
(2254,281,242,5.99,169,5),
(2255,410,5,4.99,169,8),
(2256,93,406,4.99,169,10),
(2257,34,624,5.99,169,10),
(2258,292,999,3.99,169,3),
(2259,491,893,4.99,169,14),
(2260,297,609,2.99,169,16),
(2261,570,382,3.99,169,10),
(2262,218,907,0.99,169,7),
(2263,452,717,0.99,169,1),
(2264,240,31,4.99,169,8),
(2265,267,675,2.99,169,13),
(2266,452,570,4.99,169,15),
(2267,218,452,0.99,169,9),
(2268,21,957,4.99,169,9),
(2269,431,679,3.99,169,8),
(2270,588,755,7.99,169,3),
(2271,145,527,4.99,169,11),
(2272,599,301,1.99,169,11),
(2273,327,973,4.99,169,6),
(2274,347,663,0.99,169,4),
(2275,354,616,4.99,169,6),
(2276,594,253,6.99,169,1),
(2277,224,825,2.99,169,1),
(2278,450,258,0.99,169,11),
(2279,554,426,6.99,169,12),
(2280,548,998,2.99,169,11),
(2281,431,915,4.99,169,1),
(2282,113,958,2.99,169,7),
(2283,507,446,4.99,169,15),
(2284,228,589,3.99,169,6),
(2285,447,165,4.99,169,14),
(2286,287,134,9.99,169,2),
(2287,317,322,6.99,169,15),
(2288,247,193,5.99,169,2),
(2289,392,442,2.99,169,8),
(2290,513,44,7.99,169,14),
(2291,436,861,9.99,169,10),
(2292,130,37,2.99,169,4),
(2293,178,705,4.99,169,9),
(2294,72,455,4.99,169,9),
(2295,106,715,4.99,169,8),
(2296,481,995,4.99,169,11),
(2297,111,489,4.99,169,2),
(2298,497,272,5.99,169,7),
(2299,28,945,3.99,169,6),
(2300,291,353,2.99,169,9),
(2301,273,191,1.99,169,3),
(2302,42,403,4.99,169,7),
(2303,329,333,2.99,169,12),
(2304,327,775,5.99,169,7),
(2305,149,135,5.99,169,15),
(2306,477,46,10.99,169,10),
(2307,47,1000,6.99,169,5),
(2308,1,44,4.99,169,14),
(2309,576,132,0.99,169,14),
(2310,409,568,8.99,169,5),
(2311,236,984,6.99,169,9),
(2312,184,89,0.99,169,2),
(2313,379,689,5.99,169,9),
(2314,160,466,4.99,169,6),
(2315,372,608,2.99,169,3),
(2316,289,82,0.99,169,8),
(2317,326,350,4.99,169,14),
(2318,383,505,2.99,169,3),
(2319,393,331,4.99,169,10),
(2320,552,130,0.99,169,1),
(2321,565,256,5.99,169,15),
(2322,213,412,5.99,169,6),
(2323,54,46,6.99,169,10),
(2324,268,655,4.99,169,14),
(2325,406,164,0.99,169,6),
(2326,174,838,5.99,169,1),
(2327,571,298,2.99,169,14),
(2328,441,501,4.99,169,1),
(2329,587,902,4.99,169,15),
(2330,390,933,7.99,169,13),
(2331,221,339,2.99,169,16),
(2332,140,465,6.99,169,13),
(2333,283,504,2.99,169,7),
(2334,223,676,4.99,169,15),
(2335,446,864,3.99,169,3),
(2336,124,849,1.99,169,2),
(2337,582,987,7.99,169,12),
(2338,316,695,4.99,169,8),
(2339,297,70,4.99,169,2),
(2340,157,416,0.99,169,9),
(2341,31,139,6.99,169,8),
(2342,146,468,2.99,169,3),
(2343,20,994,4.99,169,13),
(2344,498,438,2.99,169,10),
(2345,6,395,0.99,169,1),
(2346,308,563,7.99,169,10),
(2347,194,986,2.99,169,2),
(2348,449,790,0.99,169,7),
(2349,495,336,4.99,169,6),
(2350,471,263,4.99,169,15),
(2351,216,646,0.99,169,10),
(2352,590,463,2.99,169,15),
(2353,361,708,4.99,169,6),
(2354,77,613,3.99,169,5),
(2355,125,789,3.99,169,9),
(2356,455,477,0.99,169,12),
(2357,561,292,5.99,169,1),
(2358,478,376,4.99,169,9),
(2359,201,678,6.99,169,15),
(2360,57,8,4.99,169,11),
(2361,546,775,5.99,169,7),
(2362,514,618,0.99,169,7),
(2363,1,766,0.99,169,7),
(2364,512,625,2.99,169,14),
(2365,493,683,4.99,169,7),
(2366,162,309,0.99,169,8),
(2367,566,890,0.99,169,15),
(2368,99,235,2.99,169,14),
(2369,44,331,2.99,169,10),
(2370,489,583,7.99,169,2),
(2371,248,39,0.99,169,14),
(2372,96,344,0.99,169,3),
(2373,544,610,0.99,169,8),
(2374,71,578,4.99,169,4),
(2375,259,469,5.99,169,4),
(2376,479,800,2.99,169,11),
(2377,193,780,6.99,169,8),
(2378,384,614,7.99,169,10),
(2379,597,595,0.99,169,9),
(2380,256,964,6.99,169,1),
(2381,167,327,5.99,169,1),
(2382,568,203,4.99,169,14),
(2383,149,537,7.99,169,4),
(2384,132,741,0.99,169,12),
(2385,298,358,3.99,169,4),
(2386,293,300,4.99,169,2),
(2387,289,151,6.99,169,14),
(2388,53,643,2.99,169,7),
(2389,382,160,0.99,169,2),
(2390,239,603,4.99,169,8),
(2391,491,625,4.99,169,14),
(2392,261,479,0.99,169,8),
(2393,21,690,2.99,169,2),
(2394,60,586,4.99,169,1),
(2395,544,200,2.99,169,10),
(2396,31,433,7.99,169,2),
(2397,76,636,1.99,169,12),
(2398,526,658,4.99,169,11),
(2399,577,546,3.99,169,10),
(2400,410,702,5.99,169,11),
(2401,359,17,0.99,169,12),
(2402,360,621,6.99,169,8),
(2403,536,592,2.99,169,12),
(2404,456,899,0.99,169,4),
(2405,356,788,2.99,169,6),
(2406,497,292,2.99,169,1),
(2407,421,559,2.99,169,14),
(2408,87,57,2.99,169,16),
(2409,84,142,0.99,169,6),
(2410,381,59,2.99,169,3),
(2411,558,727,1.99,169,8),
(2412,127,424,3.99,169,3),
(2413,170,403,8.99,169,7),
(2414,275,982,0.99,169,1),
(2415,434,682,7.99,169,8),
(2416,26,628,3.99,169,15),
(2417,219,427,3.99,169,6),
(2418,381,604,4.99,169,5),
(2419,102,277,8.99,169,11),
(2420,502,54,0.99,169,12),
(2421,26,771,6.99,169,7),
(2422,527,696,0.99,169,2),
(2423,231,379,0.99,169,7),
(2424,233,410,2.99,169,5),
(2425,579,577,5.99,169,15),
(2426,543,104,2.99,169,9),
(2427,176,931,2.99,169,16),
(2428,241,850,0.99,169,1),
(2429,583,710,9.99,169,8),
(2430,434,433,3.99,169,2),
(2431,295,303,1.99,169,1),
(2432,250,966,4.99,169,6),
(2433,356,207,4.99,169,9),
(2434,12,818,5.99,169,7),
(2435,173,776,4.99,169,6),
(2436,534,732,0.99,169,1),
(2437,454,391,2.99,169,8),
(2438,31,40,0.99,169,6),
(2439,39,202,4.99,169,5),
(2440,380,628,2.99,169,15),
(2441,593,691,4.99,169,15),
(2442,364,880,2.99,169,2),
(2443,233,354,4.99,169,3),
(2444,576,483,8.99,169,10),
(2445,98,634,0.99,169,8),
(2446,466,284,8.99,169,12),
(2447,523,512,8.99,169,4),
(2448,308,358,4.99,169,4),
(2449,498,792,4.99,169,9),
(2450,230,190,8.99,169,4),
(2451,24,183,5.99,169,8),
(2452,77,941,8.99,169,10),
(2453,588,561,2.99,169,13),
(2454,253,70,4.99,169,2),
(2455,241,191,0.99,169,3),
(2456,147,120,6.99,169,15),
(2457,91,282,3.99,169,7),
(2458,572,130,0.99,169,1),
(2459,185,229,4.99,169,1),
(2460,553,857,8.99,169,5),
(2461,343,16,6.99,169,9),
(2462,468,465,4.99,169,13),
(2463,194,264,3.99,169,10),
(2464,380,102,4.99,169,15),
(2465,160,828,2.99,169,4),
(2466,427,299,0.99,169,16),
(2467,177,958,2.99,169,7),
(2468,382,398,4.99,169,12),
(2469,137,434,6.99,169,16),
(2470,40,941,7.99,169,10),
(2471,183,745,5.99,169,15),
(2472,70,994,4.99,169,13),
(2473,221,847,2.99,169,13),
(2474,151,756,2.99,169,5),
(2475,336,199,2.99,169,6),
(2476,334,870,0.99,169,11),
(2477,206,551,5.99,169,13),
(2478,241,614,5.99,169,10),
(2479,408,354,4.99,169,3),
(2480,310,889,5.99,169,3),
(2481,322,174,4.99,169,12),
(2482,122,100,4.99,169,9),
(2483,88,918,7.99,169,3),
(2484,515,330,4.99,169,2),
(2485,56,342,4.99,169,16),
(2486,15,59,2.99,169,3),
(2487,374,805,4.99,169,2),
(2488,403,295,3.99,169,6),
(2489,382,873,1.99,169,3),
(2490,402,420,4.99,169,15),
(2491,316,387,1.99,169,10),
(2492,237,626,2.99,169,3),
(2493,269,896,6.99,169,3),
(2494,434,290,3.99,169,9),
(2495,338,838,4.99,169,1),
(2496,527,140,0.99,169,14),
(2497,171,505,4.99,169,3),
(2498,74,496,1.99,169,16),
(2499,348,697,0.99,169,1),
(2500,12,922,5.99,169,11),
(2501,450,263,4.99,169,15),
(2502,325,575,4.99,169,6),
(2503,176,545,1.99,169,9),
(2504,452,367,0.99,169,14),
(2505,519,365,8.99,169,5),
(2506,82,501,8.99,169,1),
(2507,325,686,4.99,169,13),
(2508,476,941,4.99,169,10),
(2509,213,976,0.99,169,10),
(2510,384,838,5.99,169,1),
(2511,234,396,5.99,169,7),
(2512,27,986,2.99,169,2),
(2513,515,741,0.99,169,12),
(2514,382,561,2.99,169,13),
(2515,188,706,4.99,169,7),
(2516,87,588,4.99,170,3),
(2517,74,11,0.99,170,9),
(2518,86,767,4.99,170,12),
(2519,128,260,7.99,170,15),
(2520,446,911,6.99,170,1),
(2521,92,26,0.99,170,14),
(2522,579,119,3.99,170,5),
(2523,89,101,0.99,170,6),
(2524,465,97,0.99,170,1),
(2525,365,288,2.99,170,16),
(2526,500,728,6.99,170,7),
(2527,463,86,4.99,170,12),
(2528,331,398,6.99,170,12),
(2529,478,501,6.99,170,1),
(2530,31,906,0.99,170,5),
(2531,368,167,4.99,170,16),
(2532,26,408,4.99,170,10),
(2533,187,996,0.99,170,6),
(2534,517,557,2.99,170,8),
(2535,130,200,2.99,170,10),
(2536,163,920,5.99,170,13),
(2537,388,767,5.99,170,12),
(2538,472,284,5.99,170,12),
(2539,527,977,2.99,170,16),
(2540,363,938,4.99,170,5),
(2541,360,25,3.99,170,13),
(2542,67,317,3.99,170,5),
(2543,58,377,0.99,170,8),
(2544,558,320,4.99,170,13),
(2545,413,710,4.99,170,8),
(2546,272,216,5.99,170,13),
(2547,162,995,4.99,170,11),
(2548,561,935,0.99,170,13),
(2549,495,843,7.99,170,4),
(2550,38,301,1.99,170,11),
(2551,444,437,4.99,170,8),
(2552,389,143,3.99,170,7),
(2553,473,205,4.99,170,1),
(2554,322,855,0.99,170,6),
(2555,191,58,2.99,170,6),
(2556,377,25,3.99,170,13),
(2557,257,992,0.99,170,6),
(2558,361,641,1.99,170,9),
(2559,414,969,9.99,170,7),
(2560,309,734,9.99,170,6),
(2561,256,897,4.99,170,7),
(2562,265,10,4.99,170,15),
(2563,41,420,4.99,170,15),
(2564,408,873,2.99,170,3),
(2565,128,511,0.99,170,1),
(2566,486,110,2.99,170,3),
(2567,496,49,2.99,170,14),
(2568,190,665,3.99,170,11),
(2569,213,6,6.99,170,9),
(2570,5,245,2.99,170,2),
(2571,66,391,2.99,170,8),
(2572,159,534,0.99,170,8),
(2573,563,737,0.99,170,11),
(2574,143,730,0.99,170,13),
(2575,336,78,2.99,170,2),
(2576,559,644,4.99,170,2),
(2577,66,99,4.99,170,5),
(2578,267,369,7.99,170,14),
(2579,493,840,0.99,170,10),
(2580,219,555,0.99,170,5),
(2581,456,83,2.99,170,8),
(2582,267,45,6.99,170,13),
(2583,523,871,7.99,170,5),
(2584,90,816,6.99,170,2),
(2585,406,18,0.99,170,2),
(2586,537,893,8.99,170,14),
(2587,331,473,2.99,170,7),
(2588,143,791,4.99,170,6),
(2589,164,50,2.99,170,8),
(2590,324,782,2.99,170,15),
(2591,438,979,4.99,170,7),
(2592,208,63,0.99,170,8),
(2593,556,442,5.99,170,8),
(2594,123,181,2.99,170,16),
(2595,122,702,4.99,170,11),
(2596,80,482,2.99,170,4),
(2597,407,493,0.99,170,9),
(2598,265,450,2.99,170,3),
(2599,171,101,5.99,170,6),
(2600,423,103,6.99,170,16),
(2601,98,637,4.99,170,14),
(2602,173,896,2.99,170,3),
(2603,222,127,6.99,170,5),
(2604,28,634,0.99,170,8),
(2605,38,509,1.99,170,3),
(2606,364,898,4.99,170,15),
(2607,340,856,5.99,170,11),
(2608,132,353,2.99,170,9),
(2609,383,487,7.99,170,4),
(2610,542,842,4.99,170,10),
(2611,301,805,4.99,170,2),
(2612,287,369,6.99,170,14),
(2613,179,838,4.99,170,1),
(2614,145,901,0.99,170,2),
(2615,578,834,4.99,170,6),
(2616,478,127,8.99,170,5),
(2617,313,45,7.99,170,13),
(2618,310,539,2.99,170,7),
(2619,350,402,0.99,170,2),
(2620,94,698,4.99,170,6),
(2621,439,379,2.99,170,7),
(2622,573,305,5.99,170,13),
(2623,12,978,4.99,170,5),
(2624,32,676,5.99,170,15),
(2625,25,861,8.99,170,10),
(2626,450,618,2.99,170,7),
(2627,592,610,0.99,170,8),
(2628,3,855,2.99,170,6),
(2629,458,393,5.99,170,6),
(2630,236,852,2.99,170,3),
(2631,39,760,4.99,170,13),
(2632,574,491,0.99,170,3),
(2633,68,759,2.99,170,13),
(2634,318,806,2.99,170,13),
(2635,105,733,3.99,170,15),
(2636,253,456,4.99,170,2),
(2637,327,600,3.99,170,11),
(2638,295,646,1.99,170,10),
(2639,116,865,4.99,170,2),
(2640,540,158,2.99,170,12),
(2641,374,51,2.99,170,12),
(2642,4,448,5.99,170,13),
(2643,318,418,2.99,170,7),
(2644,309,418,3.99,170,7),
(2645,181,494,5.99,170,11),
(2646,275,768,4.99,170,3),
(2647,54,426,4.99,170,12),
(2648,31,354,4.99,170,3),
(2649,153,19,0.99,170,1),
(2650,209,915,4.99,170,1),
(2651,576,471,3.99,170,4),
(2652,589,683,8.99,170,7),
(2653,340,772,5.99,170,7),
(2654,405,809,3.99,170,15),
(2655,29,360,0.99,170,1),
(2656,280,121,3.99,170,2),
(2657,19,786,2.99,170,3),
(2658,156,723,4.99,170,14),
(2659,139,12,0.99,170,12),
(2660,221,946,10.99,170,8),
(2661,452,797,0.99,170,12),
(2662,68,858,4.99,170,5),
(2663,583,227,4.99,170,10),
(2664,299,766,4.99,170,7),
(2665,133,989,7.99,170,16),
(2666,454,408,9.99,170,10),
(2667,200,230,3.99,170,7),
(2668,568,687,0.99,170,6),
(2669,523,600,0.99,170,11),
(2670,457,771,4.99,170,7),
(2671,451,467,1.99,170,9),
(2672,420,257,3.99,170,16),
(2673,29,545,0.99,170,9),
(2674,585,819,0.99,170,12),
(2675,230,677,0.99,170,13),
(2676,477,858,4.99,170,5),
(2677,428,958,2.99,170,7),
(2678,258,920,0.99,170,13),
(2679,109,434,5.99,170,16),
(2680,114,190,7.99,170,4),
(2681,196,594,0.99,170,1),
(2682,538,789,4.99,170,9),
(2683,241,626,2.99,170,3),
(2684,17,271,8.99,170,1),
(2685,283,259,2.99,170,2),
(2686,68,590,2.99,170,13),
(2687,254,692,3.99,170,2),
(2688,309,932,6.99,170,5),
(2689,567,543,4.99,170,16),
(2690,391,303,2.99,170,1),
(2691,242,760,4.99,170,13),
(2692,388,694,4.99,170,4),
(2693,107,563,6.99,170,10),
(2694,368,84,4.99,170,16),
(2695,208,43,2.99,170,8),
(2696,597,457,4.99,170,6),
(2697,448,491,0.99,170,3),
(2698,420,851,0.99,170,15),
(2699,267,15,2.99,170,9),
(2700,180,206,2.99,170,6),
(2701,29,354,7.99,170,3),
(2702,329,378,2.99,170,12),
(2703,319,890,4.99,170,15),
(2704,246,440,1.99,170,9),
(2705,562,265,4.99,170,5),
(2706,559,82,0.99,170,8),
(2707,589,980,8.99,170,12),
(2708,541,583,6.99,170,2),
(2709,7,631,0.99,170,15),
(2710,446,650,0.99,170,6),
(2711,313,859,4.99,170,2),
(2712,411,688,0.99,170,3),
(2713,378,867,4.99,170,8),
(2714,81,625,1.99,170,14),
(2715,404,451,4.99,170,16),
(2716,252,209,4.99,170,7),
(2717,200,28,4.99,170,5),
(2718,139,971,7.99,170,9),
(2719,336,267,4.99,170,13),
(2720,504,786,1.99,170,3),
(2721,358,829,2.99,170,8),
(2722,45,212,4.99,170,1),
(2723,277,941,4.99,170,10),
(2724,103,848,0.99,170,16),
(2725,246,12,0.99,170,12),
(2726,420,651,0.99,170,2),
(2727,129,717,3.99,170,1),
(2728,408,169,2.99,170,16),
(2729,510,972,8.99,170,14),
(2730,30,280,2.99,170,3),
(2731,138,917,7.99,170,15),
(2732,386,132,0.99,170,14),
(2733,188,336,4.99,170,6),
(2734,204,173,4.99,170,7),
(2735,29,993,2.99,170,3),
(2736,359,985,4.99,170,14),
(2737,513,688,1.99,170,3),
(2738,75,77,4.99,170,13),
(2739,212,48,9.99,170,3),
(2740,92,336,8.99,170,6),
(2741,36,363,0.99,170,12),
(2742,187,902,5.99,170,15),
(2743,35,572,2.99,170,14),
(2744,368,985,4.99,170,14),
(2745,26,277,4.99,170,11),
(2746,562,206,3.99,170,6),
(2747,422,302,2.99,170,10),
(2748,473,113,4.99,170,15),
(2749,358,337,2.99,170,9),
(2750,197,827,4.99,170,7),
(2751,148,285,3.99,170,14),
(2752,149,85,0.99,170,6),
(2753,23,525,1.99,170,4),
(2754,267,382,4.99,170,10),
(2755,506,210,9.99,170,1),
(2756,144,719,4.99,170,15),
(2757,243,835,5.99,170,10),
(2758,423,777,6.99,170,15),
(2759,351,150,2.99,170,6),
(2760,192,571,3.99,170,6),
(2761,431,462,2.99,170,12),
(2762,457,753,3.99,170,8),
(2763,276,680,4.99,170,5),
(2764,479,374,6.99,170,14),
(2765,478,228,4.99,170,4),
(2766,345,749,4.99,170,11),
(2767,596,882,1.99,170,7),
(2768,129,663,0.99,170,4),
(2769,354,271,6.99,170,1),
(2770,533,667,6.99,170,15),
(2771,262,8,6.99,170,11),
(2772,520,271,4.99,170,1),
(2773,505,902,7.99,170,15),
(2774,299,616,2.99,170,6),
(2775,590,147,2.99,170,8),
(2776,551,376,3.99,170,9),
(2777,230,891,0.99,170,4),
(2778,422,737,5.99,170,11),
(2779,376,228,0.99,170,4),
(2780,360,330,6.99,170,2),
(2781,197,273,2.99,170,8),
(2782,156,796,0.99,170,15),
(2783,113,609,2.99,170,16),
(2784,289,501,10.99,170,1),
(2785,137,181,2.99,170,16),
(2786,594,488,0.99,170,15),
(2787,307,739,4.99,170,7),
(2788,171,319,2.99,170,14),
(2789,514,524,0.99,170,5),
(2790,97,45,4.99,170,13),
(2791,299,469,4.99,170,4),
(2792,437,672,2.99,170,5),
(2793,419,160,2.99,170,2),
(2794,85,427,0.99,170,6),
(2795,129,808,4.99,170,4),
(2796,209,508,4.99,170,10),
(2797,486,707,2.99,170,1),
(2798,180,296,2.99,170,14),
(2799,576,1000,4.99,170,5),
(2800,146,40,0.99,170,6),
(2801,29,999,2.99,170,3),
(2802,489,887,4.99,170,2),
(2803,120,21,9.99,170,1),
(2804,426,18,0.99,170,2),
(2805,80,465,8.99,170,13),
(2806,510,458,0.99,170,8),
(2807,194,620,3.99,170,14),
(2808,325,12,2.99,170,12),
(2809,44,388,3.99,170,5),
(2810,67,560,0.99,170,10),
(2811,457,850,0.99,170,1),
(2812,211,662,8.99,170,7),
(2813,284,749,6.99,170,11),
(2814,10,387,0.99,170,10),
(2815,27,668,4.99,170,15),
(2816,94,471,2.99,170,4),
(2817,510,762,0.99,170,10),
(2818,497,518,4.99,170,16),
(2819,82,892,8.99,170,2),
(2820,316,187,4.99,170,15),
(2821,532,559,3.99,170,14),
(2822,48,786,0.99,170,3),
(2823,260,779,7.99,170,15),
(2824,506,631,6.99,170,15),
(2825,418,571,2.99,170,6),
(2826,125,653,7.99,170,11),
(2827,23,602,0.99,170,14),
(2828,526,709,2.99,170,7),
(2829,341,445,2.99,170,4),
(2830,21,451,4.99,170,16),
(2831,468,891,0.99,170,4),
(2832,593,181,4.99,170,16),
(2833,232,431,8.99,170,9),
(2834,122,631,1.99,170,15),
(2835,89,964,7.99,170,1),
(2836,306,319,6.99,170,14),
(2837,371,91,0.99,170,4),
(2838,292,29,3.99,170,1),
(2839,256,844,4.99,170,15),
(2840,236,245,3.99,170,2),
(2841,193,133,6.99,170,12),
(2842,217,911,4.99,170,1),
(2843,148,331,3.99,170,10),
(2844,178,973,6.99,170,6),
(2845,583,861,5.99,170,10),
(2846,193,141,4.99,170,10),
(2847,148,275,5.99,170,11),
(2848,19,756,2.99,170,5),
(2849,283,791,7.99,170,6),
(2850,262,45,8.99,170,13),
(2851,361,468,2.99,170,3),
(2852,453,591,5.99,170,10),
(2853,453,564,7.99,170,2),
(2854,81,973,5.99,170,6),
(2855,483,765,4.99,170,5),
(2856,210,406,0.99,170,10),
(2857,364,633,4.99,170,4),
(2858,268,576,2.99,170,6),
(2859,147,25,2.99,170,13),
(2860,107,668,4.99,170,15),
(2861,116,326,3.99,170,2),
(2862,52,926,2.99,170,6),
(2863,228,526,2.99,170,16),
(2864,493,235,2.99,171,14),
(2865,10,344,0.99,171,3),
(2866,44,596,4.99,171,10),
(2867,483,19,0.99,171,1),
(2868,214,269,2.99,171,8),
(2869,155,294,4.99,171,16),
(2870,467,48,9.99,171,3),
(2871,443,377,2.99,171,8),
(2872,240,827,5.99,171,7),
(2873,160,730,2.99,171,13),
(2874,166,73,5.99,171,14),
(2875,186,661,4.99,171,9),
(2876,39,685,4.99,171,13),
(2877,267,109,1.99,171,13),
(2878,88,895,2.99,171,4),
(2879,583,417,3.99,171,1),
(2880,193,370,2.99,171,3),
(2881,307,305,2.99,171,13),
(2882,152,45,4.99,171,13),
(2883,320,127,7.99,171,5),
(2884,319,743,0.99,171,2),
(2885,330,593,0.99,171,11),
(2886,154,381,4.99,171,10),
(2887,453,239,4.99,171,2),
(2888,7,103,4.99,171,16),
(2889,213,31,4.99,171,8),
(2890,392,753,4.99,171,8),
(2891,32,76,1.99,171,12),
(2892,430,656,0.99,171,16),
(2893,153,88,4.99,171,16),
(2894,76,940,0.99,171,15),
(2895,141,972,7.99,171,14),
(2896,40,242,2.99,171,5),
(2897,107,759,3.99,171,13),
(2898,178,682,9.99,171,8),
(2899,459,417,0.99,171,1),
(2900,294,747,2.99,171,10),
(2901,25,145,4.99,171,8),
(2902,304,611,4.99,171,4),
(2903,53,783,2.99,171,16),
(2904,55,474,2.99,171,15),
(2905,189,851,1.99,171,15),
(2906,58,242,0.99,171,5),
(2907,208,553,0.99,171,3),
(2908,91,114,0.99,171,14),
(2909,451,370,3.99,171,3),
(2910,57,137,7.99,171,14),
(2911,502,796,0.99,171,15),
(2912,196,239,4.99,171,2),
(2913,402,758,2.99,171,7),
(2914,342,527,5.99,171,11),
(2915,262,285,1.99,171,14),
(2916,590,678,6.99,171,15),
(2917,451,140,0.99,171,14),
(2918,215,433,2.99,171,2),
(2919,509,621,4.99,171,8),
(2920,588,109,3.99,171,13),
(2921,59,388,3.99,171,5),
(2922,176,365,4.99,171,5),
(2923,29,22,2.99,171,13),
(2924,132,127,4.99,171,5),
(2925,301,175,2.99,171,8),
(2926,379,235,2.99,171,14),
(2927,403,86,4.99,171,12),
(2928,104,280,0.99,171,3),
(2929,333,744,1.99,171,4),
(2930,585,789,3.99,171,9),
(2931,258,686,8.99,171,13),
(2932,526,966,6.99,171,6),
(2933,323,979,4.99,171,7),
(2934,228,152,2.99,171,3),
(2935,384,600,3.99,171,11),
(2936,330,587,4.99,171,6),
(2937,15,435,5.99,171,9),
(2938,504,390,6.99,171,14),
(2939,203,579,7.99,171,1),
(2940,73,550,4.99,171,8),
(2941,135,793,2.99,171,1),
(2942,242,223,4.99,171,2),
(2943,418,569,2.99,171,2),
(2944,474,340,7.99,171,13),
(2945,153,912,5.99,171,14),
(2946,213,817,4.99,171,14),
(2947,151,937,2.99,171,13),
(2948,289,925,6.99,171,6),
(2949,78,83,6.99,171,8),
(2950,561,314,4.99,171,2),
(2951,404,638,2.99,171,5),
(2952,13,823,2.99,171,1),
(2953,540,397,3.99,171,14),
(2954,336,83,2.99,171,8),
(2955,244,502,3.99,171,5),
(2956,533,589,0.99,171,6),
(2957,542,879,10.99,171,12),
(2958,260,303,3.99,171,1),
(2959,372,911,4.99,171,1),
(2960,16,865,7.99,171,2),
(2961,399,991,2.99,171,1),
(2962,364,652,3.99,171,4),
(2963,24,316,7.99,171,10),
(2964,590,267,9.99,171,13),
(2965,46,6,8.99,171,9),
(2966,511,763,10.99,171,15),
(2967,311,922,6.99,171,11),
(2968,252,965,0.99,171,11),
(2969,418,380,2.99,171,9),
(2970,449,258,2.99,171,11),
(2971,410,348,0.99,171,8),
(2972,531,483,2.99,171,10),
(2973,96,575,5.99,171,6),
(2974,472,504,0.99,171,7),
(2975,46,989,4.99,171,16),
(2976,55,915,4.99,171,1),
(2977,571,580,10.99,171,13),
(2978,548,951,0.99,171,4),
(2979,589,863,2.99,171,14),
(2980,343,69,8.99,171,14),
(2981,387,115,5.99,171,1),
(2982,130,563,6.99,171,10),
(2983,322,298,7.99,171,14),
(2984,435,395,0.99,171,1),
(2985,154,24,2.99,171,11),
(2986,556,105,0.99,171,1),
(2987,349,334,6.99,171,11),
(2988,557,694,6.99,171,4),
(2989,56,348,0.99,171,8),
(2990,18,995,8.99,171,11),
(2991,472,938,4.99,171,5),
(2992,439,735,2.99,171,3),
(2993,40,334,4.99,171,11),
(2994,163,285,6.99,171,14),
(2995,573,992,1.99,171,6),
(2996,500,886,2.99,171,2),
(2997,519,317,5.99,171,5),
(2998,380,285,1.99,171,14),
(2999,295,160,2.99,171,2),
(3000,50,119,0.99,171,5),
(3001,393,646,2.99,171,10),
(3002,266,603,4.99,171,8),
(3003,38,134,4.99,171,2),
(3004,113,622,0.99,171,6),
(3005,598,64,2.99,171,7),
(3006,133,366,0.99,171,7),
(3007,7,424,0.99,171,3),
(3008,202,743,0.99,171,2),
(3009,280,597,4.99,171,10),
(3010,567,286,2.99,171,16),
(3011,147,956,5.99,171,10),
(3012,206,305,4.99,171,13),
(3013,290,901,3.99,171,2),
(3014,434,471,2.99,171,4),
(3015,23,289,5.99,171,13),
(3016,558,769,4.99,171,9),
(3017,151,552,3.99,171,6),
(3018,112,901,2.99,171,2),
(3019,144,109,4.99,171,13),
(3020,74,951,1.99,171,4),
(3021,62,24,4.99,171,11),
(3022,466,819,3.99,171,12),
(3023,106,938,4.99,171,5),
(3024,328,429,4.99,171,15),
(3025,293,288,2.99,171,16),
(3026,347,878,4.99,171,16),
(3027,397,877,1.99,171,12),
(3028,264,196,0.99,171,4),
(3029,317,73,2.99,171,14),
(3030,395,338,4.99,171,14),
(3031,491,263,4.99,171,15),
(3032,172,816,1.99,171,2),
(3033,107,967,3.99,171,14),
(3034,296,604,0.99,171,5),
(3035,62,271,5.99,171,1),
(3036,399,975,5.99,171,8),
(3037,434,443,2.99,171,5),
(3038,27,641,1.99,171,9),
(3039,186,892,4.99,171,2),
(3040,162,562,0.99,171,12),
(3041,459,587,4.99,171,6),
(3042,291,681,2.99,171,15),
(3043,599,138,6.99,171,14),
(3044,424,706,4.99,171,7),
(3045,459,673,0.99,171,12),
(3046,559,103,4.99,171,16),
(3047,13,135,8.99,171,15),
(3048,482,958,2.99,171,7),
(3049,403,114,6.99,171,14),
(3050,557,524,3.99,171,5),
(3051,65,308,4.99,171,5),
(3052,329,513,5.99,171,16),
(3053,329,178,0.99,171,5),
(3054,322,619,5.99,171,15),
(3055,23,330,4.99,171,2),
(3056,95,437,2.99,171,8),
(3057,307,244,5.99,171,12),
(3058,137,208,3.99,171,2),
(3059,266,639,4.99,171,8),
(3060,446,450,2.99,171,3),
(3061,330,914,2.99,171,16),
(3062,75,129,6.99,171,6),
(3063,515,862,3.99,171,4),
(3064,276,575,6.99,171,6),
(3065,227,367,0.99,171,14),
(3066,268,247,3.99,171,5),
(3067,349,680,8.99,171,5),
(3068,516,427,0.99,171,6),
(3069,237,425,2.99,171,4),
(3070,543,845,4.99,171,9),
(3071,582,266,0.99,171,4),
(3072,423,897,8.99,171,7),
(3073,471,694,4.99,171,4),
(3074,299,315,0.99,171,8),
(3075,161,947,3.99,171,9),
(3076,109,296,5.99,171,14),
(3077,303,366,3.99,171,7),
(3078,367,795,0.99,171,8),
(3079,350,462,2.99,171,12),
(3080,377,23,1.99,171,2),
(3081,342,449,2.99,171,14),
(3082,164,969,8.99,171,7),
(3083,257,637,4.99,171,14),
(3084,514,783,2.99,171,16),
(3085,166,932,0.99,171,5),
(3086,377,970,0.99,171,4),
(3087,111,288,2.99,171,16),
(3088,384,670,9.99,171,6),
(3089,151,118,0.99,171,2),
(3090,267,727,0.99,171,8),
(3091,383,188,2.99,171,5),
(3092,347,946,8.99,171,8),
(3093,556,556,4.99,171,10),
(3094,114,445,2.99,171,4),
(3095,298,858,4.99,171,5),
(3096,79,843,4.99,171,4),
(3097,280,945,0.99,171,6),
(3098,498,747,0.99,171,10),
(3099,380,821,1.99,171,9),
(3100,487,530,3.99,171,1),
(3101,384,378,4.99,171,12),
(3102,522,253,8.99,171,1),
(3103,553,409,6.99,171,3),
(3104,196,326,4.99,171,2),
(3105,385,26,0.99,171,14),
(3106,201,578,4.99,171,4),
(3107,303,988,2.99,171,16),
(3108,189,480,6.99,171,4),
(3109,93,218,0.99,171,7),
(3110,333,437,2.99,171,8),
(3111,579,981,2.99,171,16),
(3112,35,814,4.99,171,5),
(3113,517,790,0.99,171,7),
(3114,8,521,4.99,171,7),
(3115,457,474,2.99,171,15),
(3116,108,61,4.99,171,7),
(3117,31,471,2.99,171,4),
(3118,125,279,4.99,171,15),
(3119,296,149,0.99,171,3),
(3120,107,555,0.99,171,5),
(3121,132,174,4.99,171,12),
(3122,87,596,9.99,171,10),
(3123,289,361,6.99,171,15),
(3124,113,734,8.99,171,6),
(3125,382,725,4.99,171,4),
(3126,5,263,4.99,171,15),
(3127,461,285,5.99,171,14),
(3128,543,43,2.99,171,8),
(3129,495,388,3.99,171,5),
(3130,341,563,7.99,171,10),
(3131,146,804,4.99,171,11),
(3132,90,155,0.99,171,13),
(3133,120,988,2.99,171,16),
(3134,537,304,8.99,171,3),
(3135,12,249,2.99,171,4),
(3136,377,735,2.99,171,3),
(3137,505,172,5.99,171,7),
(3138,570,489,2.99,171,2),
(3139,354,761,2.99,171,3),
(3140,53,645,2.99,171,16),
(3141,398,392,9.99,171,3),
(3142,9,856,7.99,171,11),
(3143,215,299,2.99,171,16),
(3144,114,287,5.99,171,1),
(3145,144,478,2.99,171,5),
(3146,339,486,6.99,171,9),
(3147,390,133,5.99,171,12),
(3148,202,981,0.99,171,16),
(3149,55,725,4.99,171,4),
(3150,34,19,0.99,171,1),
(3151,77,652,2.99,171,4),
(3152,246,228,4.99,171,4),
(3153,430,143,0.99,171,7),
(3154,550,702,2.99,171,11),
(3155,450,101,4.99,171,6),
(3156,365,479,0.99,171,8),
(3157,245,414,2.99,171,9),
(3158,592,759,7.99,171,13),
(3159,388,7,7.99,171,5),
(3160,561,945,4.99,171,6),
(3161,373,293,2.99,171,15),
(3162,113,707,6.99,171,1),
(3163,391,577,2.99,171,15),
(3164,270,32,5.99,171,13),
(3165,85,174,4.99,171,12),
(3166,424,403,6.99,171,7),
(3167,464,78,2.99,171,2),
(3168,446,525,0.99,171,4),
(3169,50,531,2.99,171,9),
(3170,421,288,4.99,171,16),
(3171,140,623,0.99,171,9),
(3172,31,382,1.99,171,10),
(3173,33,938,8.99,171,5),
(3174,107,733,0.99,171,15),
(3175,249,891,7.99,171,4),
(3176,371,432,3.99,171,4),
(3177,300,559,2.99,171,14),
(3178,79,770,2.99,171,9),
(3179,163,479,0.99,171,8),
(3180,162,870,0.99,171,11),
(3181,238,761,2.99,171,3),
(3182,15,875,0.99,171,15),
(3183,129,961,4.99,171,9),
(3184,457,697,2.99,171,1),
(3185,234,131,6.99,171,4),
(3186,406,702,7.99,171,11),
(3187,150,949,1.99,171,10),
(3188,522,541,2.99,171,2),
(3189,538,329,2.99,171,1),
(3190,200,78,3.99,171,2),
(3191,522,949,0.99,171,10),
(3192,11,812,0.99,171,6),
(3193,260,697,0.99,171,1),
(3194,432,398,4.99,171,12),
(3195,165,520,2.99,172,14),
(3196,52,346,4.99,172,4),
(3197,362,393,2.99,172,6),
(3198,295,355,1.99,172,2),
(3199,234,837,4.99,172,5),
(3200,221,895,5.99,172,4),
(3201,597,1,1.99,172,6),
(3202,273,598,0.99,172,15),
(3203,158,98,8.99,172,7),
(3204,336,624,4.99,172,10),
(3205,31,650,0.99,172,6),
(3206,350,475,0.99,172,11),
(3207,86,875,0.99,172,15),
(3208,229,696,0.99,172,2),
(3209,307,65,4.99,172,11),
(3210,75,103,4.99,172,16),
(3211,415,254,2.99,172,15),
(3212,21,908,10.99,172,9),
(3213,534,839,1.99,172,14),
(3214,142,169,2.99,172,16),
(3215,279,899,0.99,172,4),
(3216,534,158,4.99,172,12),
(3217,463,230,2.99,172,7),
(3218,117,397,2.99,172,14),
(3219,129,664,3.99,172,1),
(3220,574,409,6.99,172,3),
(3221,454,55,2.99,172,14),
(3222,501,876,5.99,172,11),
(3223,299,231,2.99,172,8),
(3224,173,730,0.99,172,13),
(3225,448,225,3.99,172,7),
(3226,576,889,6.99,172,3),
(3227,568,255,4.99,172,12),
(3228,535,545,4.99,172,9),
(3229,81,500,4.99,172,9),
(3230,83,48,4.99,172,3),
(3231,28,54,0.99,172,12),
(3232,555,430,1.99,172,2),
(3233,353,774,6.99,172,5),
(3234,459,715,9.99,172,8),
(3235,49,48,4.99,172,3),
(3236,550,327,9.99,172,1),
(3237,466,961,4.99,172,9),
(3238,77,599,0.99,172,15),
(3239,328,746,0.99,172,10),
(3240,405,645,4.99,172,16),
(3241,499,315,1.99,172,8),
(3242,562,311,4.99,172,9),
(3243,426,560,0.99,172,10),
(3244,53,66,0.99,172,3),
(3245,358,447,2.99,172,10),
(3246,41,969,7.99,172,7),
(3247,277,308,5.99,172,5),
(3248,78,798,7.99,172,14),
(3249,410,154,4.99,172,2),
(3250,467,161,6.99,172,12),
(3251,317,309,0.99,172,8),
(3252,213,437,2.99,172,8),
(3253,405,415,5.99,172,11),
(3254,472,850,0.99,172,1),
(3255,482,562,0.99,172,12),
(3256,319,273,3.99,172,8),
(3257,263,866,1.99,172,8),
(3258,241,966,0.99,172,6),
(3259,478,603,4.99,172,8),
(3260,380,791,4.99,172,6),
(3261,169,442,2.99,172,8),
(3262,9,826,4.99,172,16),
(3263,118,764,4.99,172,15),
(3264,340,363,0.99,172,12),
(3265,437,794,2.99,172,1),
(3266,175,556,4.99,172,10),
(3267,134,247,5.99,172,5),
(3268,329,952,4.99,172,6),
(3269,17,838,5.99,172,1),
(3270,86,346,4.99,172,4),
(3271,196,912,5.99,172,14),
(3272,550,243,10.99,172,2),
(3273,104,773,2.99,172,15),
(3274,277,466,4.99,172,6),
(3275,368,504,4.99,172,7),
(3276,425,412,6.99,172,6),
(3277,229,294,7.99,172,16),
(3278,554,621,2.99,172,8),
(3279,462,365,4.99,172,5),
(3280,229,143,0.99,172,7),
(3281,363,872,2.99,172,16),
(3282,224,366,4.99,172,7),
(3283,372,869,3.99,172,1),
(3284,1,997,3.99,172,12),
(3285,481,211,4.99,172,10),
(3286,577,162,2.99,172,1),
(3287,62,963,0.99,172,2),
(3288,299,428,5.99,172,8),
(3289,115,486,6.99,172,9),
(3290,293,598,1.99,172,15),
(3291,274,846,9.99,172,13),
(3292,412,724,2.99,172,8),
(3293,481,963,0.99,172,2),
(3294,439,521,6.99,172,7),
(3295,573,371,7.99,172,1),
(3296,284,535,0.99,172,11),
(3297,193,865,8.99,172,2),
(3298,492,98,9.99,172,7),
(3299,199,751,0.99,172,13),
(3300,565,551,5.99,172,13),
(3301,444,112,7.99,172,9),
(3302,594,122,1.99,172,11),
(3303,361,344,2.99,172,3),
(3304,431,465,6.99,172,13),
(3305,578,617,2.99,172,8),
(3306,406,364,4.99,172,13),
(3307,85,101,1.99,172,6),
(3308,96,687,0.99,172,6),
(3309,463,56,4.99,172,1),
(3310,395,374,0.99,172,14),
(3311,518,753,0.99,172,8),
(3312,554,226,6.99,172,13),
(3313,213,928,2.99,172,3),
(3314,185,944,4.99,172,7),
(3315,438,893,4.99,172,14),
(3316,451,720,6.99,172,13),
(3317,584,892,6.99,172,2),
(3318,414,246,5.99,172,9),
(3319,461,544,4.99,172,6),
(3320,47,189,5.99,172,10),
(3321,144,380,2.99,172,9),
(3322,458,942,0.99,172,7),
(3323,272,487,5.99,172,4),
(3324,29,621,2.99,172,8),
(3325,185,375,4.99,172,1),
(3326,347,229,7.99,172,1),
(3327,62,677,3.99,172,13),
(3328,292,538,2.99,172,13),
(3329,335,767,4.99,172,12),
(3330,294,67,2.99,172,1),
(3331,352,640,4.99,172,9),
(3332,82,430,0.99,172,2),
(3333,111,806,2.99,172,13),
(3334,66,546,3.99,172,10),
(3335,339,665,4.99,172,11),
(3336,173,460,4.99,172,9),
(3337,318,261,0.99,172,6),
(3338,171,455,6.99,172,9),
(3339,526,70,6.99,172,2),
(3340,540,649,3.99,172,2),
(3341,591,473,2.99,172,7),
(3342,196,633,4.99,172,4),
(3343,466,443,2.99,172,5),
(3344,277,962,2.99,172,4),
(3345,71,971,5.99,172,9),
(3346,189,960,2.99,172,6),
(3347,448,944,5.99,172,7),
(3348,16,646,0.99,172,10),
(3349,336,849,0.99,172,2),
(3350,20,707,4.99,172,1),
(3351,386,349,2.99,172,2),
(3352,510,126,8.99,172,1),
(3353,236,869,4.99,172,1),
(3354,529,241,0.99,172,2),
(3355,275,428,2.99,172,8),
(3356,403,989,5.99,172,16),
(3357,57,555,0.99,172,5),
(3358,69,384,4.99,172,12),
(3359,67,838,4.99,172,1),
(3360,498,613,0.99,172,5),
(3361,268,586,1.99,172,1),
(3362,454,284,4.99,172,12),
(3363,261,118,0.99,172,2),
(3364,201,506,7.99,172,11),
(3365,133,142,0.99,172,6),
(3366,511,567,4.99,172,9),
(3367,80,533,3.99,172,9),
(3368,438,119,0.99,172,5),
(3369,431,68,8.99,172,3),
(3370,559,345,1.99,172,8),
(3371,595,555,4.99,172,5),
(3372,346,906,2.99,172,5),
(3373,316,480,8.99,172,4),
(3374,279,238,2.99,172,3),
(3375,279,203,4.99,172,14),
(3376,318,670,7.99,172,6),
(3377,428,402,0.99,172,2),
(3378,387,7,4.99,172,5),
(3379,566,439,4.99,172,7),
(3380,483,706,8.99,172,7),
(3381,183,302,5.99,172,10),
(3382,341,26,5.99,172,14),
(3383,239,650,5.99,172,6),
(3384,91,90,2.99,172,13),
(3385,514,617,0.99,172,8),
(3386,190,271,4.99,172,1),
(3387,305,595,0.99,172,9),
(3388,119,121,5.99,172,2),
(3389,395,159,6.99,172,5),
(3390,151,443,2.99,172,5),
(3391,45,6,3.99,172,9),
(3392,38,735,3.99,172,3),
(3393,362,356,2.99,172,3),
(3394,295,745,8.99,172,15),
(3395,66,823,6.99,172,1),
(3396,371,602,0.99,172,14),
(3397,552,131,4.99,172,4),
(3398,599,49,4.99,172,14),
(3399,98,135,4.99,172,15),
(3400,298,369,4.99,172,14),
(3401,577,750,6.99,172,13),
(3402,187,130,2.99,172,1),
(3403,264,378,3.99,172,12),
(3404,424,436,0.99,172,13),
(3405,155,510,4.99,172,2),
(3406,203,445,2.99,172,4),
(3407,343,855,0.99,172,6),
(3408,282,757,4.99,172,6),
(3409,429,740,2.99,172,11),
(3410,321,266,0.99,172,4),
(3411,12,924,0.99,172,14),
(3412,501,666,7.99,172,7),
(3413,322,145,8.99,172,8),
(3414,226,644,2.99,172,2),
(3415,444,774,5.99,172,5),
(3416,76,270,0.99,172,13),
(3417,282,193,2.99,172,2),
(3418,85,895,3.99,172,4),
(3419,22,876,2.99,172,11),
(3420,27,554,3.99,172,4),
(3421,346,857,2.99,172,5),
(3422,251,597,7.99,172,10),
(3423,19,789,2.99,172,9),
(3424,583,283,0.99,172,13),
(3425,381,993,2.99,172,3),
(3426,95,663,0.99,172,4),
(3427,561,122,0.99,172,11),
(3428,40,427,0.99,172,6),
(3429,599,100,6.99,172,9),
(3430,503,352,0.99,172,10),
(3431,516,26,2.99,172,14),
(3432,216,394,2.99,172,14),
(3433,228,240,3.99,172,14),
(3434,141,499,4.99,172,8),
(3435,591,100,4.99,172,9),
(3436,137,601,5.99,172,16),
(3437,211,391,6.99,172,8),
(3438,556,382,6.99,172,10),
(3439,46,334,4.99,172,11),
(3440,491,187,3.99,172,15),
(3441,326,627,4.99,172,6),
(3442,255,413,2.99,172,5),
(3443,377,358,4.99,172,4),
(3444,45,110,0.99,172,3),
(3445,74,519,7.99,172,15),
(3446,174,395,1.99,172,1),
(3447,25,253,4.99,172,1),
(3448,476,129,2.99,172,6),
(3449,181,47,5.99,172,9),
(3450,126,490,2.99,172,13),
(3451,558,764,10.99,172,15),
(3452,293,580,4.99,172,13),
(3453,278,184,2.99,172,4),
(3454,524,660,2.99,172,5),
(3455,340,962,2.99,172,4),
(3456,150,248,5.99,172,6),
(3457,312,194,3.99,172,1),
(3458,338,462,5.99,172,12),
(3459,97,677,0.99,172,13),
(3460,236,383,2.99,172,15),
(3461,23,374,2.99,172,14),
(3462,568,119,1.99,172,5),
(3463,96,753,0.99,172,8),
(3464,251,592,2.99,172,12),
(3465,510,326,5.99,172,2),
(3466,226,81,4.99,172,14),
(3467,543,159,5.99,172,5),
(3468,100,637,6.99,172,14),
(3469,181,891,4.99,172,4),
(3470,565,194,0.99,186,1),
(3471,242,376,4.99,186,9),
(3472,37,184,7.99,186,4),
(3473,60,600,2.99,186,11),
(3474,594,19,0.99,186,1),
(3475,8,473,5.99,186,7),
(3476,490,661,4.99,186,9),
(3477,476,934,7.99,186,10),
(3478,322,555,0.99,186,5),
(3479,298,492,0.99,186,13),
(3480,382,326,3.99,186,2),
(3481,138,782,2.99,186,15),
(3482,520,285,4.99,186,14),
(3483,536,16,4.99,186,9),
(3484,114,420,4.99,186,15),
(3485,111,23,1.99,186,2),
(3486,296,887,7.99,186,2),
(3487,586,346,6.99,186,4),
(3488,349,200,3.99,186,10),
(3489,397,645,5.99,186,16),
(3490,369,667,6.99,186,15),
(3491,421,398,7.99,186,12),
(3492,142,218,2.99,186,7),
(3493,169,104,8.99,186,9),
(3494,348,691,4.99,186,15),
(3495,553,501,6.99,186,1),
(3496,295,531,1.99,186,9),
(3497,299,429,0.99,187,15),
(3498,444,408,4.99,187,10),
(3499,520,403,7.99,187,7),
(3500,32,534,2.99,187,8),
(3501,270,480,3.99,187,4),
(3502,126,229,5.99,187,1),
(3503,449,646,0.99,187,10),
(3504,209,59,2.99,187,3),
(3505,331,577,4.99,187,15),
(3506,459,4,2.99,187,11),
(3507,480,35,7.99,187,11),
(3508,34,519,3.99,187,15),
(3509,182,960,2.99,187,6),
(3510,443,486,5.99,187,9),
(3511,494,461,0.99,187,2),
(3512,291,81,4.99,187,14),
(3513,223,918,5.99,187,3),
(3514,536,992,0.99,187,6),
(3515,131,707,2.99,187,1),
(3516,338,85,0.99,187,6),
(3517,314,606,0.99,187,15),
(3518,167,550,4.99,187,8),
(3519,320,940,0.99,187,15),
(3520,102,629,1.99,187,6),
(3521,262,315,1.99,187,8),
(3522,469,987,4.99,187,12),
(3523,549,468,2.99,187,3),
(3524,88,355,0.99,187,2),
(3525,51,46,9.99,187,10),
(3526,469,846,10.99,187,13),
(3527,389,990,0.99,187,11),
(3528,201,426,4.99,187,12),
(3529,350,940,0.99,187,15),
(3530,168,991,2.99,187,1),
(3531,165,412,4.99,187,6),
(3532,274,578,5.99,187,4),
(3533,206,441,5.99,187,6),
(3534,283,446,4.99,187,15),
(3535,65,916,4.99,187,2),
(3536,339,505,2.99,187,3),
(3537,479,917,6.99,187,15),
(3538,228,951,0.99,187,4),
(3539,444,890,0.99,187,15),
(3540,97,286,2.99,187,16),
(3541,501,267,6.99,187,13),
(3542,593,959,2.99,187,3),
(3543,394,870,0.99,187,11),
(3544,115,681,0.99,187,15),
(3545,442,856,4.99,187,11),
(3546,594,214,4.99,187,3),
(3547,239,599,0.99,187,15),
(3548,16,982,0.99,187,1),
(3549,19,856,4.99,187,11),
(3550,15,527,7.99,187,11),
(3551,111,787,3.99,187,16),
(3552,239,244,5.99,187,12),
(3553,422,985,4.99,187,14),
(3554,538,173,4.99,187,7),
(3555,537,191,0.99,187,3),
(3556,273,690,2.99,187,2),
(3557,292,839,0.99,187,14),
(3558,575,378,6.99,187,12),
(3559,483,478,4.99,187,5),
(3560,592,197,2.99,187,15),
(3561,231,48,9.99,187,3),
(3562,587,362,2.99,187,10),
(3563,210,927,4.99,187,1),
(3564,402,244,6.99,187,12),
(3565,97,130,0.99,187,1),
(3566,392,609,2.99,187,16),
(3567,355,6,5.99,187,9),
(3568,283,451,6.99,187,16),
(3569,496,418,3.99,187,7),
(3570,450,287,3.99,187,1),
(3571,580,906,1.99,187,5),
(3572,284,416,0.99,187,9),
(3573,66,31,4.99,187,8),
(3574,225,614,4.99,187,10),
(3575,49,710,4.99,187,8),
(3576,227,72,5.99,187,6),
(3577,152,959,2.99,187,3),
(3578,263,648,4.99,187,16),
(3579,485,728,0.99,187,7),
(3580,200,841,4.99,187,15),
(3581,235,986,2.99,187,2),
(3582,297,407,0.99,187,6),
(3583,574,45,7.99,187,13),
(3584,207,80,2.99,187,8),
(3585,266,598,0.99,187,15),
(3586,493,134,4.99,187,2),
(3587,110,101,4.99,187,6),
(3588,289,693,2.99,187,2),
(3589,137,818,4.99,187,7),
(3590,283,330,4.99,187,2),
(3591,53,274,2.99,187,6),
(3592,286,282,4.99,187,7),
(3593,78,135,4.99,187,15),
(3594,522,997,0.99,187,12),
(3595,92,313,8.99,187,11),
(3596,419,130,0.99,187,1),
(3597,35,890,2.99,187,15),
(3598,68,291,0.99,187,15),
(3599,577,718,0.99,187,12),
(3600,511,603,4.99,187,8),
(3601,205,616,7.99,187,6),
(3602,100,474,5.99,187,15),
(3603,330,533,4.99,187,9),
(3604,242,303,0.99,187,1),
(3605,347,85,0.99,187,6),
(3606,166,378,2.99,187,12),
(3607,335,118,0.99,187,2),
(3608,368,680,4.99,187,5),
(3609,373,236,2.99,187,10),
(3610,348,330,4.99,187,2),
(3611,86,982,0.99,187,1),
(3612,402,539,3.99,187,7),
(3613,331,827,4.99,187,7),
(3614,502,187,2.99,187,15),
(3615,49,155,0.99,187,13),
(3616,571,121,2.99,187,2),
(3617,125,295,4.99,187,6),
(3618,264,73,6.99,187,14),
(3619,526,736,1.99,187,8),
(3620,88,363,0.99,187,12),
(3621,171,688,0.99,187,3),
(3622,454,764,7.99,187,15),
(3623,80,95,4.99,187,13),
(3624,115,387,0.99,187,10),
(3625,175,251,4.99,187,13),
(3626,337,350,5.99,187,14),
(3627,322,242,1.99,187,5),
(3628,588,768,4.99,187,3),
(3629,441,875,0.99,187,15),
(3630,102,534,1.99,187,8),
(3631,47,887,4.99,187,2),
(3632,366,567,4.99,187,9),
(3633,95,652,1.99,187,4),
(3634,245,806,2.99,187,13),
(3635,250,92,4.99,187,11),
(3636,591,741,0.99,187,12),
(3637,380,837,2.99,187,5),
(3638,452,43,3.99,187,8),
(3639,7,617,5.99,187,8),
(3640,271,753,1.99,187,8),
(3641,79,840,0.99,187,10),
(3642,166,914,2.99,187,16),
(3643,176,185,4.99,187,9),
(3644,403,938,6.99,187,5),
(3645,236,744,0.99,187,4),
(3646,322,785,4.99,187,16),
(3647,145,823,5.99,187,1),
(3648,598,617,0.99,187,8),
(3649,24,778,7.99,187,8),
(3650,482,788,2.99,187,6),
(3651,170,731,4.99,187,4),
(3652,518,273,0.99,187,8),
(3653,148,552,0.99,187,6),
(3654,528,354,4.99,187,3),
(3655,493,337,5.99,187,9),
(3656,314,992,2.99,187,6),
(3657,113,898,5.99,187,15),
(3658,253,757,7.99,187,6),
(3659,330,491,2.99,187,3),
(3660,507,250,4.99,187,1),
(3661,442,571,2.99,187,6),
(3662,334,838,4.99,187,1),
(3663,566,580,4.99,187,13),
(3664,528,738,0.99,187,9),
(3665,102,205,4.99,187,1),
(3666,347,915,4.99,187,1),
(3667,373,99,4.99,187,5),
(3668,514,60,5.99,187,4),
(3669,530,286,2.99,187,16),
(3670,268,929,4.99,187,9),
(3671,179,619,6.99,187,15),
(3672,283,849,0.99,187,2),
(3673,88,399,5.99,187,9),
(3674,559,806,5.99,187,13),
(3675,282,800,2.99,187,11),
(3676,137,429,5.99,187,15),
(3677,5,131,4.99,187,4),
(3678,364,845,4.99,187,9),
(3679,547,472,4.99,187,16),
(3680,82,530,2.99,187,1),
(3681,294,731,4.99,187,4),
(3682,98,570,7.99,187,15),
(3683,43,663,1.99,187,4),
(3684,395,717,0.99,187,1),
(3685,58,438,4.99,187,10),
(3686,548,83,2.99,187,8),
(3687,207,444,9.99,187,5),
(3688,380,245,4.99,187,2),
(3689,129,696,0.99,187,2),
(3690,435,963,0.99,187,2),
(3691,478,421,4.99,187,9),
(3692,286,274,3.99,187,6),
(3693,545,655,8.99,187,14),
(3694,419,843,4.99,187,4),
(3695,441,620,2.99,187,14),
(3696,497,714,2.99,187,14),
(3697,182,271,6.99,187,1),
(3698,461,280,0.99,187,3),
(3699,262,91,3.99,187,4),
(3700,72,76,0.99,187,12),
(3701,31,805,4.99,187,2),
(3702,428,476,2.99,187,8),
(3703,421,930,5.99,187,14),
(3704,323,590,6.99,187,13),
(3705,223,12,0.99,187,12),
(3706,132,149,0.99,187,3),
(3707,14,241,2.99,187,2),
(3708,201,456,6.99,187,2),
(3709,187,879,10.99,187,12),
(3710,228,570,8.99,187,15),
(3711,75,416,0.99,187,9),
(3712,504,818,9.99,187,7),
(3713,504,396,6.99,187,7),
(3714,276,433,2.99,187,2),
(3715,228,973,6.99,187,6),
(3716,92,720,7.99,187,13),
(3717,173,366,0.99,187,7),
(3718,56,575,7.99,187,6),
(3719,376,782,2.99,187,15),
(3720,96,649,2.99,187,2),
(3721,226,582,4.99,187,2),
(3722,83,131,6.99,187,4),
(3723,501,994,6.99,187,13),
(3724,468,790,2.99,187,7),
(3725,126,611,4.99,187,4),
(3726,363,162,3.99,187,1),
(3727,57,633,4.99,187,4),
(3728,298,391,2.99,187,8),
(3729,90,693,3.99,187,2),
(3730,355,363,6.99,187,12),
(3731,558,898,9.99,187,15),
(3732,318,21,4.99,187,1),
(3733,586,711,4.99,187,14),
(3734,37,999,5.99,187,3),
(3735,534,489,2.99,187,2),
(3736,23,331,3.99,187,10),
(3737,403,24,3.99,187,11),
(3738,546,126,4.99,187,1),
(3739,157,945,0.99,187,6),
(3740,277,397,5.99,187,14),
(3741,584,317,2.99,187,5),
(3742,96,630,2.99,187,7),
(3743,456,227,7.99,187,10),
(3744,510,735,2.99,187,3),
(3745,171,331,2.99,187,10),
(3746,424,743,0.99,187,2),
(3747,437,243,4.99,187,2),
(3748,79,641,2.99,187,9),
(3749,170,334,4.99,187,11),
(3750,103,528,6.99,187,8),
(3751,128,797,0.99,187,12),
(3752,235,995,6.99,187,11),
(3753,358,169,2.99,187,16),
(3754,83,880,2.99,187,2),
(3755,402,691,5.99,187,15),
(3756,320,6,4.99,187,9),
(3757,66,618,2.99,187,7),
(3758,48,549,4.99,187,1),
(3759,378,905,4.99,187,5),
(3760,330,288,2.99,187,16),
(3761,464,938,4.99,187,5),
(3762,413,422,4.99,187,14),
(3763,189,345,0.99,187,8),
(3764,470,684,5.99,187,10),
(3765,547,392,4.99,187,3),
(3766,312,983,2.99,187,12),
(3767,582,205,0.99,187,1),
(3768,573,870,0.99,187,11),
(3769,567,103,5.99,187,16),
(3770,198,840,2.99,187,10),
(3771,56,302,2.99,187,10),
(3772,338,96,2.99,187,13),
(3773,263,443,2.99,187,5),
(3774,439,880,5.99,187,2),
(3775,300,809,0.99,187,15),
(3776,278,958,2.99,187,7),
(3777,548,541,2.99,187,2),
(3778,122,471,2.99,187,4),
(3779,583,138,2.99,187,14),
(3780,99,269,6.99,187,8),
(3781,23,850,2.99,187,1),
(3782,515,738,0.99,187,9),
(3783,386,510,6.99,187,2),
(3784,165,496,5.99,187,16),
(3785,577,723,7.99,187,14),
(3786,152,985,7.99,187,14),
(3787,474,65,4.99,187,11),
(3788,379,300,4.99,187,2),
(3789,595,778,9.99,187,8),
(3790,10,373,3.99,187,3),
(3791,452,751,2.99,187,13),
(3792,312,581,1.99,187,12),
(3793,553,995,4.99,187,11),
(3794,499,127,4.99,187,5),
(3795,153,54,0.99,187,12),
(3796,228,360,0.99,187,1),
(3797,374,233,1.99,187,16),
(3798,479,423,0.99,187,3),
(3799,251,989,4.99,187,16),
(3800,100,872,8.99,187,16),
(3801,68,915,4.99,187,1),
(3802,91,228,0.99,187,4),
(3803,494,447,2.99,187,10),
(3804,126,117,7.99,187,10),
(3805,418,374,0.99,187,14),
(3806,154,777,7.99,187,15),
(3807,425,8,4.99,187,11),
(3808,314,945,0.99,187,6),
(3809,358,644,2.99,187,2),
(3810,296,76,2.99,187,12),
(3811,208,152,2.99,187,3),
(3812,381,981,0.99,187,16),
(3813,189,892,4.99,187,2),
(3814,306,838,6.99,187,1),
(3815,472,879,6.99,187,12),
(3816,489,646,2.99,187,10),
(3817,267,644,2.99,187,2),
(3818,97,141,4.99,187,10),
(3819,74,394,3.99,187,14),
(3820,460,912,4.99,187,14),
(3821,354,958,2.99,187,7),
(3822,241,290,0.99,187,9),
(3823,265,25,2.99,187,13),
(3824,107,683,6.99,187,7),
(3825,132,137,2.99,187,14),
(3826,451,15,4.99,187,9),
(3827,41,449,2.99,187,14),
(3828,498,981,0.99,187,16),
(3829,356,897,6.99,187,7),
(3830,310,120,10.99,187,15),
(3831,206,295,0.99,187,6),
(3832,233,982,2.99,187,1),
(3833,416,709,3.99,187,7),
(3834,366,658,2.99,187,11),
(3835,486,207,4.99,187,9),
(3836,351,254,2.99,187,15),
(3837,309,695,4.99,187,8),
(3838,565,746,2.99,187,10),
(3839,231,709,2.99,187,7),
(3840,468,958,5.99,187,7),
(3841,470,919,4.99,187,10),
(3842,583,686,4.99,187,13),
(3843,62,842,2.99,187,10),
(3844,179,618,0.99,187,7),
(3845,28,981,0.99,187,16),
(3846,88,621,5.99,187,8),
(3847,206,170,4.99,187,9),
(3848,188,638,3.99,187,5),
(3849,60,800,2.99,187,11),
(3850,103,370,4.99,187,3),
(3851,436,110,1.99,187,3),
(3852,511,732,0.99,187,1),
(3853,537,309,0.99,187,8),
(3854,243,446,5.99,187,15),
(3855,46,644,2.99,187,2),
(3856,498,677,2.99,187,13),
(3857,236,251,4.99,187,13),
(3858,377,181,2.99,187,16),
(3859,553,559,2.99,187,14),
(3860,514,30,2.99,187,11),
(3861,202,984,8.99,187,9),
(3862,181,103,6.99,187,16),
(3863,481,79,0.99,187,7),
(3864,68,617,0.99,187,8),
(3865,357,783,3.99,187,16),
(3866,409,43,5.99,187,8),
(3867,580,790,1.99,187,7),
(3868,416,351,2.99,187,11),
(3869,183,557,2.99,187,8),
(3870,12,737,3.99,187,11),
(3871,331,683,8.99,187,7),
(3872,513,388,0.99,187,5),
(3873,394,901,6.99,187,2),
(3874,137,408,6.99,187,10),
(3875,108,155,0.99,187,13),
(3876,295,879,9.99,187,12),
(3877,576,614,4.99,187,10),
(3878,385,876,8.99,187,11),
(3879,81,302,2.99,187,10),
(3880,507,9,2.99,187,11),
(3881,456,29,2.99,187,1),
(3882,254,172,4.99,187,7),
(3883,69,710,8.99,187,8),
(3884,210,392,4.99,187,3),
(3885,282,395,2.99,187,1),
(3886,326,516,0.99,187,12),
(3887,530,369,4.99,187,14),
(3888,412,423,0.99,187,3),
(3889,576,436,0.99,187,13),
(3890,553,563,4.99,187,10),
(3891,553,706,4.99,187,7),
(3892,549,170,4.99,187,9),
(3893,350,284,5.99,187,12),
(3894,149,452,2.99,187,9),
(3895,584,30,7.99,187,11),
(3896,309,381,7.99,187,10),
(3897,277,3,2.99,187,6),
(3898,53,844,4.99,187,15),
(3899,485,875,1.99,187,15),
(3900,129,328,4.99,187,3),
(3901,321,738,5.99,187,9),
(3902,192,628,2.99,187,15),
(3903,369,789,2.99,187,9),
(3904,485,786,0.99,187,3),
(3905,526,835,5.99,187,10),
(3906,293,303,3.99,187,1),
(3907,452,551,6.99,187,13),
(3908,116,867,6.99,187,8),
(3909,396,750,6.99,187,13),
(3910,248,452,0.99,187,9),
(3911,34,993,2.99,187,3),
(3912,154,534,0.99,187,8),
(3913,494,164,0.99,187,6),
(3914,159,891,5.99,187,4),
(3915,163,25,3.99,187,13),
(3916,46,702,4.99,187,11),
(3917,471,602,0.99,187,14),
(3918,435,246,8.99,187,9),
(3919,147,591,7.99,187,10),
(3920,321,341,4.99,187,4),
(3921,531,211,5.99,187,10),
(3922,470,631,4.99,187,15),
(3923,63,444,8.99,187,5),
(3924,114,42,2.99,187,15),
(3925,428,581,5.99,187,12),
(3926,500,922,4.99,187,11),
(3927,404,474,2.99,187,15),
(3928,411,428,2.99,187,8),
(3929,453,273,0.99,187,8),
(3930,573,35,2.99,187,11),
(3931,176,40,6.99,187,6),
(3932,490,961,4.99,187,9),
(3933,229,267,4.99,187,13),
(3934,576,699,4.99,187,10),
(3935,503,746,6.99,187,10),
(3936,129,925,0.99,187,6),
(3937,211,453,8.99,187,15),
(3938,341,434,4.99,187,16),
(3939,149,791,6.99,187,6),
(3940,116,329,2.99,187,1),
(3941,560,84,4.99,187,16),
(3942,553,147,4.99,187,8),
(3943,566,395,0.99,187,1),
(3944,436,916,2.99,187,2),
(3945,86,165,4.99,187,14),
(3946,13,67,2.99,187,1),
(3947,324,911,4.99,187,1),
(3948,161,487,4.99,187,4),
(3949,153,383,0.99,187,15),
(3950,598,902,6.99,187,15),
(3951,250,496,3.99,187,16),
(3952,417,374,4.99,187,14),
(3953,385,848,0.99,187,16),
(3954,558,924,0.99,187,14),
(3955,247,554,2.99,187,4),
(3956,147,3,2.99,187,6),
(3957,414,98,10.99,187,7),
(3958,288,895,3.99,187,4),
(3959,448,8,5.99,187,11),
(3960,594,453,2.99,187,15),
(3961,364,941,4.99,187,10),
(3962,307,84,6.99,187,16),
(3963,111,854,9.99,187,11),
(3964,30,403,4.99,187,7),
(3965,243,627,4.99,187,6),
(3966,495,121,2.99,187,2),
(3967,31,551,4.99,187,13),
(3968,235,121,4.99,187,2),
(3969,587,85,0.99,187,6),
(3970,381,153,2.99,187,14),
(3971,473,965,0.99,187,11),
(3972,598,412,4.99,187,6),
(3973,592,575,11.99,187,6),
(3974,318,932,2.99,187,5),
(3975,545,946,5.99,187,8),
(3976,329,529,2.99,187,5),
(3977,449,284,8.99,187,12),
(3978,343,946,5.99,187,8),
(3979,550,173,4.99,187,7),
(3980,475,402,5.99,187,2),
(3981,375,184,6.99,187,4),
(3982,64,942,0.99,187,7),
(3983,6,280,0.99,187,3),
(3984,570,477,0.99,187,12),
(3985,307,455,4.99,187,9),
(3986,122,817,4.99,187,14),
(3987,270,682,9.99,187,8),
(3988,421,653,8.99,187,11),
(3989,213,515,4.99,187,3),
(3990,558,437,3.99,187,8),
(3991,583,127,9.99,187,5),
(3992,448,707,6.99,187,1),
(3993,525,236,6.99,187,10),
(3994,487,200,1.99,187,10),
(3995,128,869,5.99,187,1),
(3996,551,626,5.99,187,3),
(3997,52,850,1.99,187,1),
(3998,566,275,3.99,187,11),
(3999,390,154,2.99,187,2),
(4000,95,460,4.99,187,9),
(4001,120,190,5.99,188,4),
(4002,308,612,3.99,188,15),
(4003,8,882,0.99,188,7),
(4004,574,145,4.99,188,8),
(4005,190,804,5.99,188,11),
(4006,473,88,4.99,188,16),
(4007,285,449,6.99,188,14),
(4008,505,245,5.99,188,2),
(4009,394,788,2.99,188,6),
(4010,476,985,5.99,188,14),
(4011,20,445,3.99,188,4),
(4012,104,307,4.99,188,16),
(4013,475,510,6.99,188,2),
(4014,510,127,4.99,188,5),
(4015,233,665,5.99,188,11),
(4016,335,730,0.99,188,13),
(4017,595,685,4.99,188,13),
(4018,207,201,2.99,188,9),
(4019,294,703,4.99,188,2),
(4020,471,823,2.99,188,1),
(4021,315,366,2.99,188,7),
(4022,390,854,4.99,188,11),
(4023,573,61,4.99,188,7),
(4024,448,866,0.99,188,8),
(4025,114,852,0.99,188,3),
(4026,251,900,3.99,188,9),
(4027,116,11,0.99,188,9),
(4028,344,361,5.99,188,15),
(4029,518,888,7.99,188,6),
(4030,300,377,0.99,188,8),
(4031,143,680,7.99,188,5),
(4032,335,576,2.99,188,6),
(4033,453,45,8.99,188,13),
(4034,354,363,0.99,188,12),
(4035,539,789,2.99,188,9),
(4036,397,111,0.99,188,1),
(4037,594,852,5.99,188,3),
(4038,27,280,0.99,188,3),
(4039,290,881,4.99,188,11),
(4040,103,668,6.99,188,15),
(4041,445,479,0.99,188,8),
(4042,10,10,4.99,188,15),
(4043,204,751,0.99,188,13),
(4044,94,718,0.99,188,12),
(4045,529,311,0.99,188,9),
(4046,491,771,8.99,188,7),
(4047,364,762,0.99,188,10),
(4048,474,143,1.99,188,7),
(4049,79,907,4.99,188,7),
(4050,528,21,9.99,188,1),
(4051,331,596,4.99,188,10),
(4052,442,45,5.99,188,13),
(4053,377,634,0.99,188,8),
(4054,260,849,0.99,188,2),
(4055,513,561,2.99,188,13),
(4056,360,915,4.99,188,1),
(4057,141,623,1.99,188,9),
(4058,442,847,2.99,188,13),
(4059,401,66,0.99,188,3),
(4060,211,592,2.99,188,12),
(4061,70,12,0.99,188,12),
(4062,410,292,0.99,188,1),
(4063,331,319,5.99,188,14),
(4064,47,307,5.99,188,16),
(4065,26,295,2.99,188,6),
(4066,368,430,0.99,188,2),
(4067,469,646,3.99,188,10),
(4068,206,902,4.99,188,15),
(4069,570,738,0.99,188,9),
(4070,496,643,2.99,188,7),
(4071,209,632,5.99,188,13),
(4072,310,688,0.99,188,3),
(4073,290,140,0.99,188,14),
(4074,412,511,0.99,188,1),
(4075,593,433,2.99,188,2),
(4076,329,691,4.99,188,15),
(4077,377,534,0.99,188,8),
(4078,522,365,4.99,188,5),
(4079,84,476,6.99,188,8),
(4080,148,301,0.99,188,11),
(4081,284,252,2.99,188,1),
(4082,108,638,2.99,188,5),
(4083,490,757,2.99,188,6),
(4084,441,568,8.99,188,5),
(4085,573,367,0.99,188,14),
(4086,494,57,3.99,188,16),
(4087,433,674,6.99,188,9),
(4088,66,52,2.99,188,9),
(4089,102,753,6.99,188,8),
(4090,67,680,4.99,188,5),
(4091,337,857,6.99,188,5),
(4092,246,375,7.99,188,1),
(4093,337,336,4.99,188,6),
(4094,517,526,2.99,188,16),
(4095,33,637,5.99,188,14),
(4096,403,853,4.99,188,3),
(4097,56,536,3.99,188,4),
(4098,35,628,4.99,188,15),
(4099,76,418,4.99,188,7),
(4100,332,510,6.99,188,2),
(4101,588,635,0.99,188,13),
(4102,135,870,0.99,188,11),
(4103,91,793,2.99,188,1),
(4104,338,237,5.99,188,15),
(4105,423,97,0.99,188,1),
(4106,563,890,1.99,188,15),
(4107,206,920,4.99,188,13),
(4108,66,989,4.99,188,16),
(4109,517,117,4.99,188,10),
(4110,486,50,4.99,188,8),
(4111,515,226,6.99,188,13),
(4112,533,723,8.99,188,14),
(4113,170,203,4.99,188,14),
(4114,426,894,2.99,188,16),
(4115,371,21,8.99,188,1),
(4116,352,145,4.99,188,8),
(4117,158,170,8.99,188,9),
(4118,224,78,2.99,188,2),
(4119,319,450,3.99,188,3),
(4120,559,220,4.99,188,12),
(4121,176,530,3.99,188,1),
(4122,31,61,6.99,188,7),
(4123,469,595,0.99,188,9),
(4124,330,625,1.99,188,14),
(4125,269,897,9.99,188,7),
(4126,163,663,1.99,188,4),
(4127,15,385,5.99,188,5),
(4128,492,778,8.99,188,8),
(4129,592,309,1.99,188,8),
(4130,256,906,0.99,188,5),
(4131,58,575,4.99,188,6),
(4132,154,222,4.99,188,11),
(4133,488,804,6.99,188,11),
(4134,183,641,0.99,188,9),
(4135,36,743,0.99,188,2),
(4136,203,759,2.99,188,13),
(4137,485,448,3.99,188,13),
(4138,317,348,0.99,188,8),
(4139,509,454,1.99,188,12),
(4140,190,413,2.99,188,5),
(4141,456,414,3.99,188,9),
(4142,492,880,2.99,188,2),
(4143,238,130,0.99,188,1),
(4144,431,119,3.99,188,5),
(4145,592,670,9.99,188,6),
(4146,411,39,0.99,188,14),
(4147,274,609,2.99,188,16),
(4148,59,58,2.99,188,6),
(4149,50,665,2.99,188,11),
(4150,188,967,2.99,188,14),
(4151,428,996,0.99,188,6),
(4152,89,382,4.99,188,10),
(4153,299,472,5.99,188,16),
(4154,594,43,3.99,188,8),
(4155,548,48,7.99,188,3),
(4156,585,279,4.99,188,15),
(4157,183,69,2.99,188,14),
(4158,433,66,0.99,188,3),
(4159,62,791,4.99,188,6),
(4160,326,415,7.99,188,11),
(4161,216,875,2.99,188,15),
(4162,571,163,4.99,188,13),
(4163,376,697,0.99,188,1),
(4164,295,688,1.99,188,3),
(4165,66,842,6.99,188,10),
(4166,376,720,8.99,188,13),
(4167,175,825,5.99,188,1),
(4168,132,408,4.99,188,10),
(4169,580,738,1.99,188,9),
(4170,99,585,2.99,188,7),
(4171,476,913,4.99,188,13),
(4172,309,255,4.99,188,12),
(4173,320,930,2.99,188,14),
(4174,182,835,2.99,188,10),
(4175,8,432,2.99,188,4),
(4176,420,602,4.99,188,14),
(4177,317,893,8.99,188,14),
(4178,513,637,4.99,188,14),
(4179,75,121,2.99,188,2),
(4180,3,371,4.99,188,1),
(4181,598,814,4.99,188,5),
(4182,256,677,0.99,188,13),
(4183,479,734,8.99,188,6),
(4184,468,228,3.99,188,4),
(4185,395,529,5.99,188,5),
(4186,185,853,9.99,188,3),
(4187,161,1,0.99,188,6),
(4188,391,714,5.99,188,14),
(4189,386,327,8.99,188,1),
(4190,349,181,2.99,188,16),
(4191,390,542,3.99,188,1),
(4192,558,135,5.99,188,15),
(4193,445,830,0.99,188,11),
(4194,153,381,5.99,188,10),
(4195,455,99,2.99,188,5),
(4196,564,747,2.99,188,10),
(4197,324,553,0.99,188,3),
(4198,247,73,6.99,188,14),
(4199,259,460,5.99,188,9),
(4200,292,244,4.99,188,12),
(4201,145,805,8.99,188,2),
(4202,38,491,5.99,188,3),
(4203,189,602,0.99,188,14),
(4204,569,330,5.99,188,2),
(4205,486,856,4.99,188,11),
(4206,448,341,2.99,188,4),
(4207,588,248,5.99,188,6),
(4208,441,790,0.99,188,7),
(4209,100,437,2.99,188,8),
(4210,581,430,2.99,188,2),
(4211,214,436,0.99,188,13),
(4212,574,396,4.99,188,7),
(4213,103,154,2.99,188,2),
(4214,484,556,4.99,188,10),
(4215,22,274,2.99,188,6),
(4216,467,270,0.99,188,13),
(4217,228,698,3.99,188,6),
(4218,497,31,7.99,188,8),
(4219,16,615,2.99,188,2),
(4220,513,179,4.99,188,7),
(4221,143,998,0.99,188,11),
(4222,467,446,4.99,188,15),
(4223,405,525,0.99,188,4),
(4224,419,799,0.99,188,11),
(4225,377,383,0.99,188,15),
(4226,57,369,4.99,188,14),
(4227,78,911,5.99,188,1),
(4228,38,228,1.99,188,4),
(4229,106,212,4.99,188,1),
(4230,205,78,3.99,188,2),
(4231,194,771,7.99,188,7),
(4232,347,841,5.99,188,15),
(4233,488,403,5.99,188,7),
(4234,195,263,6.99,188,15),
(4235,86,772,2.99,188,7),
(4236,213,139,4.99,188,8),
(4237,477,826,5.99,188,16),
(4238,7,664,2.99,188,1),
(4239,122,846,7.99,188,13),
(4240,65,229,4.99,188,1),
(4241,595,902,4.99,188,15),
(4242,286,791,6.99,188,6),
(4243,339,995,4.99,188,11),
(4244,581,129,2.99,188,6),
(4245,91,818,4.99,188,7),
(4246,411,252,2.99,188,1),
(4247,539,176,0.99,188,15),
(4248,161,169,6.99,188,16),
(4249,111,911,4.99,188,1),
(4250,423,560,0.99,188,10),
(4251,367,774,8.99,188,5),
(4252,154,104,2.99,188,9),
(4253,157,737,5.99,188,11),
(4254,529,863,0.99,188,14),
(4255,10,164,1.99,188,6),
(4256,129,304,2.99,188,3),
(4257,553,856,4.99,188,11),
(4258,492,342,6.99,188,16),
(4259,467,956,4.99,188,10),
(4260,305,1000,4.99,188,5),
(4261,496,307,4.99,188,16),
(4262,29,686,6.99,188,13),
(4263,16,651,3.99,188,2),
(4264,406,767,4.99,188,12),
(4265,69,367,0.99,188,14),
(4266,509,346,4.99,188,4),
(4267,410,27,0.99,188,15),
(4268,80,95,8.99,188,13),
(4269,496,91,0.99,188,4),
(4270,210,40,0.99,188,6),
(4271,150,117,6.99,188,10),
(4272,120,109,3.99,188,13),
(4273,159,905,4.99,188,5),
(4274,26,172,4.99,188,7),
(4275,393,258,2.99,188,11),
(4276,366,49,2.99,188,14),
(4277,106,432,2.99,188,4),
(4278,6,807,2.99,188,10),
(4279,335,127,4.99,188,5),
(4280,593,247,3.99,188,5),
(4281,321,263,4.99,188,15),
(4282,25,689,2.99,188,9),
(4283,477,616,2.99,188,6),
(4284,521,290,0.99,188,9),
(4285,308,113,8.99,188,15),
(4286,111,982,0.99,188,1),
(4287,94,777,8.99,188,15),
(4288,64,330,4.99,188,2),
(4289,231,697,0.99,188,1),
(4290,277,907,4.99,188,7),
(4291,298,450,2.99,188,3),
(4292,401,678,7.99,188,15),
(4293,221,219,4.99,188,6),
(4294,41,624,9.99,188,10),
(4295,319,546,2.99,188,10),
(4296,407,218,0.99,188,7),
(4297,141,194,0.99,188,1),
(4298,560,235,2.99,188,14),
(4299,80,191,3.99,188,3),
(4300,38,265,4.99,188,5),
(4301,440,356,2.99,188,3),
(4302,332,803,6.99,188,7),
(4303,108,178,1.99,188,5),
(4304,165,743,0.99,188,2),
(4305,240,856,4.99,188,11),
(4306,210,270,2.99,188,13),
(4307,394,620,6.99,188,14),
(4308,168,324,5.99,188,5),
(4309,209,776,5.99,188,6),
(4310,390,841,2.99,188,15),
(4311,498,654,4.99,188,10),
(4312,97,846,4.99,188,13),
(4313,29,18,0.99,188,2),
(4314,184,118,0.99,188,2),
(4315,195,322,2.99,188,15),
(4316,301,114,4.99,188,14),
(4317,110,483,2.99,188,10),
(4318,321,351,5.99,188,11),
(4319,25,744,0.99,188,4),
(4320,376,753,3.99,188,8),
(4321,91,133,4.99,188,12),
(4322,568,333,2.99,188,12),
(4323,336,284,5.99,188,12),
(4324,226,212,4.99,188,1),
(4325,373,815,7.99,188,4),
(4326,331,879,10.99,188,12),
(4327,73,189,2.99,188,10),
(4328,264,469,4.99,188,4),
(4329,504,139,5.99,188,8),
(4330,408,525,3.99,188,4),
(4331,535,92,4.99,188,11),
(4332,137,374,6.99,188,14),
(4333,113,15,2.99,188,9),
(4334,210,663,0.99,188,4),
(4335,375,294,4.99,188,16),
(4336,532,106,2.99,188,10),
(4337,464,502,5.99,188,5),
(4338,581,692,4.99,188,2),
(4339,130,706,4.99,188,7),
(4340,227,855,2.99,188,6),
(4341,124,987,7.99,188,12),
(4342,120,299,0.99,188,16),
(4343,293,418,0.99,188,7),
(4344,99,263,4.99,188,15),
(4345,225,483,7.99,188,10),
(4346,520,415,2.99,188,11),
(4347,344,428,3.99,188,8),
(4348,452,424,0.99,188,3),
(4349,182,752,0.99,188,12),
(4350,299,481,2.99,188,13),
(4351,382,780,4.99,188,8),
(4352,249,578,9.99,188,4),
(4353,452,81,4.99,188,14),
(4354,208,967,5.99,188,14),
(4355,438,995,4.99,188,11),
(4356,318,415,8.99,188,11),
(4357,103,748,1.99,188,1),
(4358,446,689,4.99,188,9),
(4359,282,707,2.99,188,1),
(4360,92,393,2.99,188,6),
(4361,425,23,2.99,188,2),
(4362,425,823,5.99,188,1),
(4363,168,704,5.99,188,5),
(4364,145,2,4.99,188,11),
(4365,442,705,2.99,188,9),
(4366,524,649,5.99,188,2),
(4367,48,988,2.99,188,16),
(4368,324,161,4.99,188,12),
(4369,517,776,4.99,188,6),
(4370,559,349,7.99,188,2),
(4371,90,556,4.99,188,10),
(4372,252,477,0.99,188,12),
(4373,470,785,4.99,188,16),
(4374,517,956,4.99,188,10),
(4375,560,666,9.99,188,7),
(4376,151,296,2.99,188,14),
(4377,205,725,7.99,188,4),
(4378,24,275,2.99,188,11),
(4379,316,609,2.99,188,16),
(4380,353,694,5.99,188,4),
(4381,486,815,2.99,188,4),
(4382,26,142,4.99,188,6),
(4383,591,580,11.99,188,13),
(4384,59,262,4.99,188,8),
(4385,564,186,0.99,188,7),
(4386,314,111,0.99,188,1),
(4387,335,129,8.99,188,6),
(4388,210,691,7.99,188,15),
(4389,166,365,6.99,188,5),
(4390,44,1,0.99,188,6),
(4391,42,462,2.99,188,12),
(4392,491,921,2.99,188,12),
(4393,395,879,4.99,188,12),
(4394,156,122,2.99,188,11),
(4395,544,79,0.99,188,7),
(4396,275,164,0.99,188,6),
(4397,494,678,5.99,188,15),
(4398,426,791,4.99,188,6),
(4399,402,986,2.99,188,2),
(4400,370,10,7.99,188,15),
(4401,405,598,0.99,188,15),
(4402,26,266,0.99,188,4),
(4403,447,865,4.99,188,2),
(4404,25,209,2.99,188,7),
(4405,145,456,6.99,188,2),
(4406,448,97,1.99,188,1),
(4407,20,59,2.99,188,3),
(4408,258,544,2.99,188,6),
(4409,8,692,3.99,188,2),
(4410,584,604,0.99,188,5),
(4411,224,72,3.99,188,6),
(4412,282,263,4.99,188,15),
(4413,565,236,2.99,188,10),
(4414,434,220,2.99,188,12),
(4415,329,307,4.99,188,16),
(4416,290,275,0.99,188,11),
(4417,452,162,2.99,188,1),
(4418,417,952,2.99,188,6),
(4419,39,172,5.99,188,7),
(4420,346,968,4.99,188,1),
(4421,417,893,9.99,188,14),
(4422,345,378,2.99,188,12),
(4423,526,597,6.99,188,10),
(4424,384,143,0.99,188,7),
(4425,345,193,2.99,188,2),
(4426,242,80,4.99,188,8),
(4427,69,228,0.99,188,4),
(4428,181,563,4.99,188,10),
(4429,187,647,4.99,188,12),
(4430,278,753,4.99,188,8),
(4431,26,207,6.99,188,9),
(4432,295,610,1.99,188,8),
(4433,449,18,3.99,188,2),
(4434,32,391,2.99,188,8),
(4435,157,835,3.99,188,10),
(4436,563,942,0.99,188,7),
(4437,414,783,3.99,188,16),
(4438,104,953,6.99,188,2),
(4439,521,522,2.99,188,5),
(4440,507,273,0.99,188,8),
(4441,211,805,5.99,188,2),
(4442,123,101,3.99,188,6),
(4443,389,15,6.99,188,9),
(4444,529,167,5.99,188,16),
(4445,327,732,4.99,188,1),
(4446,438,576,2.99,188,6),
(4447,549,89,0.99,188,2),
(4448,536,608,2.99,188,3),
(4449,354,618,5.99,188,7),
(4450,345,276,4.99,188,5),
(4451,85,39,0.99,188,14),
(4452,460,527,7.99,188,11),
(4453,560,18,0.99,188,2),
(4454,9,305,2.99,188,13),
(4455,507,305,2.99,188,13),
(4456,421,745,5.99,188,15),
(4457,567,90,0.99,188,13),
(4458,229,288,2.99,188,16),
(4459,227,869,4.99,188,1),
(4460,592,896,0.99,188,3),
(4461,286,798,9.99,188,14),
(4462,257,895,6.99,189,4),
(4463,422,949,2.99,189,10),
(4464,583,979,4.99,189,7),
(4465,329,631,1.99,189,15),
(4466,304,730,6.99,189,13),
(4467,339,976,0.99,189,10),
(4468,170,727,0.99,189,8),
(4469,192,469,4.99,189,4),
(4470,145,788,2.99,189,6),
(4471,30,58,2.99,189,6),
(4472,343,453,7.99,189,15),
(4473,481,304,2.99,189,3),
(4474,137,977,3.99,189,16),
(4475,340,760,2.99,189,13),
(4476,279,88,4.99,189,16),
(4477,552,350,6.99,189,14),
(4478,357,382,0.99,189,10),
(4479,211,770,2.99,189,9),
(4480,296,973,4.99,189,6),
(4481,474,364,2.99,189,13),
(4482,511,767,4.99,189,12),
(4483,425,271,8.99,189,1),
(4484,306,628,5.99,189,15),
(4485,130,573,4.99,189,3),
(4486,197,183,8.99,189,8),
(4487,360,480,7.99,189,4),
(4488,89,457,0.99,189,6),
(4489,259,938,4.99,189,5),
(4490,161,590,2.99,189,13),
(4491,413,258,0.99,189,11),
(4492,247,254,2.99,189,15),
(4493,167,301,0.99,189,11),
(4494,349,361,5.99,189,15),
(4495,404,770,2.99,189,9),
(4496,578,31,4.99,189,8),
(4497,142,434,4.99,189,16),
(4498,43,937,2.99,189,13),
(4499,199,187,2.99,189,15),
(4500,462,88,4.99,189,16),
(4501,262,309,0.99,189,8),
(4502,470,50,6.99,189,8),
(4503,8,329,3.99,189,1),
(4504,422,79,0.99,189,7),
(4505,481,406,1.99,189,10),
(4506,133,324,6.99,189,5),
(4507,505,179,6.99,189,7),
(4508,97,870,4.99,189,11),
(4509,230,382,3.99,189,10),
(4510,27,242,5.99,189,5),
(4511,75,970,0.99,189,4),
(4512,424,344,0.99,189,3),
(4513,182,810,1.99,189,8),
(4514,576,421,4.99,189,9),
(4515,229,435,4.99,189,9),
(4516,497,502,4.99,189,5),
(4517,16,100,4.99,189,9),
(4518,592,152,2.99,189,3),
(4519,459,967,2.99,189,14),
(4520,104,767,4.99,189,12),
(4521,327,581,0.99,189,12),
(4522,307,895,2.99,189,4),
(4523,347,611,6.99,189,4),
(4524,185,480,2.99,189,4),
(4525,458,792,2.99,189,9),
(4526,1,316,5.99,189,10),
(4527,468,489,3.99,189,2),
(4528,439,705,2.99,189,9),
(4529,104,300,7.99,189,2),
(4530,79,827,4.99,189,7),
(4531,142,683,4.99,189,7),
(4532,481,873,0.99,189,3),
(4533,474,245,0.99,189,2),
(4534,132,554,4.99,189,4),
(4535,29,122,0.99,189,11),
(4536,26,49,3.99,189,14),
(4537,448,288,2.99,189,16),
(4538,451,794,2.99,189,1),
(4539,264,535,0.99,189,11),
(4540,309,903,4.99,189,16),
(4541,248,431,4.99,189,9),
(4542,293,906,4.99,189,5),
(4543,41,203,4.99,189,14),
(4544,351,976,0.99,189,10),
(4545,271,799,2.99,189,11),
(4546,393,984,8.99,189,9),
(4547,255,743,0.99,189,2),
(4548,164,167,4.99,189,16),
(4549,98,614,4.99,189,10),
(4550,409,133,4.99,189,12),
(4551,494,256,7.99,189,15),
(4552,313,559,2.99,189,14),
(4553,529,458,0.99,189,8),
(4554,376,848,5.99,189,16),
(4555,68,382,6.99,189,10),
(4556,348,892,9.99,189,2),
(4557,132,265,5.99,189,5),
(4558,448,181,2.99,189,16),
(4559,424,416,0.99,189,9),
(4560,36,68,4.99,189,3),
(4561,500,358,0.99,189,4),
(4562,454,215,4.99,189,10),
(4563,522,65,9.99,189,11),
(4564,519,547,0.99,189,3),
(4565,563,821,3.99,189,9),
(4566,133,937,2.99,189,13),
(4567,202,888,4.99,189,6),
(4568,122,575,4.99,189,6),
(4569,366,643,5.99,189,7),
(4570,503,573,2.99,189,3),
(4571,86,527,9.99,189,11),
(4572,323,292,1.99,189,1),
(4573,400,543,6.99,189,16),
(4574,257,117,4.99,189,10),
(4575,41,51,2.99,189,12),
(4576,567,417,0.99,189,1),
(4577,442,368,3.99,189,7),
(4578,497,335,0.99,189,5),
(4579,585,934,4.99,189,10),
(4580,199,768,8.99,189,3),
(4581,591,197,6.99,189,15),
(4582,274,150,2.99,189,6),
(4583,365,901,1.99,189,2),
(4584,368,504,0.99,189,7),
(4585,143,354,7.99,189,3),
(4586,461,302,2.99,189,10),
(4587,63,767,4.99,189,12),
(4588,198,792,2.99,189,9),
(4589,99,266,0.99,189,4),
(4590,580,920,3.99,189,13),
(4591,182,492,3.99,189,13),
(4592,235,463,2.99,189,15),
(4593,528,637,5.99,189,14),
(4594,506,6,7.99,189,9),
(4595,336,166,2.99,189,4),
(4596,306,493,1.99,189,9),
(4597,545,824,5.99,189,8),
(4598,82,57,6.99,189,16),
(4599,356,455,4.99,189,9),
(4600,457,334,5.99,189,11),
(4601,572,698,2.99,189,6),
(4602,129,790,0.99,189,7),
(4603,334,165,6.99,189,14),
(4604,402,920,3.99,189,13),
(4605,523,252,4.99,189,1),
(4606,502,424,2.99,189,3),
(4607,281,266,0.99,189,4),
(4608,11,166,2.99,189,4),
(4609,573,812,0.99,189,6),
(4610,265,283,0.99,189,13),
(4611,1,764,5.99,189,15),
(4612,371,17,1.99,189,12),
(4613,581,105,0.99,189,1),
(4614,71,565,4.99,189,9),
(4615,404,267,8.99,189,13),
(4616,280,565,4.99,189,9),
(4617,475,828,4.99,189,4),
(4618,179,807,2.99,189,10),
(4619,579,460,9.99,189,9),
(4620,210,760,5.99,189,13),
(4621,297,349,2.99,189,2),
(4622,289,595,0.99,189,9),
(4623,593,907,0.99,189,7),
(4624,341,339,2.99,189,16),
(4625,473,71,4.99,189,8),
(4626,268,8,4.99,189,11),
(4627,78,520,2.99,189,14),
(4628,540,412,4.99,189,6),
(4629,563,51,6.99,189,12),
(4630,319,755,4.99,189,3),
(4631,59,103,4.99,189,16),
(4632,393,944,5.99,189,7),
(4633,348,697,0.99,189,1),
(4634,275,176,0.99,189,15),
(4635,65,531,3.99,189,9),
(4636,228,405,4.99,189,16),
(4637,263,417,0.99,189,1),
(4638,305,484,2.99,189,4),
(4639,75,537,5.99,189,4),
(4640,506,253,6.99,189,1),
(4641,26,531,6.99,189,9),
(4642,30,428,2.99,189,8),
(4643,436,54,0.99,189,12),
(4644,38,711,4.99,189,14),
(4645,400,150,2.99,189,6),
(4646,362,134,8.99,189,2),
(4647,312,147,3.99,189,8),
(4648,444,764,6.99,189,15),
(4649,221,247,4.99,189,5),
(4650,108,625,4.99,189,14),
(4651,557,886,0.99,189,2),
(4652,127,913,5.99,189,13),
(4653,404,552,4.99,189,6),
(4654,434,915,6.99,189,1),
(4655,213,889,8.99,189,3),
(4656,141,183,5.99,189,8),
(4657,54,224,4.99,189,16),
(4658,166,688,0.99,189,3),
(4659,425,958,2.99,189,7),
(4660,139,269,0.99,189,8),
(4661,518,579,4.99,189,1),
(4662,553,301,0.99,189,11),
(4663,139,649,2.99,189,2),
(4664,546,291,0.99,189,15),
(4665,106,125,3.99,189,16),
(4666,120,1000,9.99,189,5),
(4667,485,735,2.99,189,3),
(4668,481,865,10.99,189,2),
(4669,581,765,5.99,189,5),
(4670,153,730,5.99,189,13),
(4671,55,463,4.99,189,15),
(4672,18,417,3.99,189,1),
(4673,91,613,4.99,189,5),
(4674,329,353,2.99,189,9),
(4675,380,288,2.99,189,16),
(4676,302,568,4.99,189,5),
(4677,258,272,5.99,189,7),
(4678,219,54,0.99,189,12),
(4679,423,789,2.99,189,9),
(4680,227,880,2.99,189,2),
(4681,133,229,6.99,189,1),
(4682,263,193,2.99,189,2),
(4683,283,759,2.99,189,13),
(4684,585,112,9.99,189,9),
(4685,590,131,4.99,189,4),
(4686,234,306,0.99,189,10),
(4687,169,255,4.99,189,12),
(4688,80,782,5.99,189,15),
(4689,364,554,4.99,189,4),
(4690,64,727,1.99,189,8),
(4691,126,130,0.99,189,1),
(4692,288,326,2.99,189,2),
(4693,221,369,6.99,189,14),
(4694,229,794,0.99,189,1),
(4695,39,175,8.99,189,8),
(4696,424,300,5.99,189,2),
(4697,224,900,2.99,189,9),
(4698,570,864,0.99,189,3),
(4699,348,538,0.99,189,13),
(4700,317,850,0.99,189,1),
(4701,522,661,4.99,189,9),
(4702,56,570,4.99,189,15),
(4703,544,626,2.99,189,3),
(4704,28,496,0.99,189,16),
(4705,85,811,2.99,189,16),
(4706,380,552,4.99,189,6),
(4707,286,10,4.99,189,15),
(4708,212,715,10.99,189,8),
(4709,124,864,2.99,189,3),
(4710,590,56,2.99,189,1),
(4711,563,505,2.99,189,3),
(4712,39,517,6.99,189,15),
(4713,207,306,5.99,189,10),
(4714,385,420,6.99,189,15),
(4715,276,873,0.99,189,3),
(4716,391,418,0.99,189,7),
(4717,453,327,4.99,189,1),
(4718,535,361,6.99,189,15),
(4719,556,291,2.99,189,15),
(4720,452,586,0.99,189,1),
(4721,234,682,7.99,189,8),
(4722,590,817,4.99,189,14),
(4723,44,215,9.99,189,10),
(4724,18,740,3.99,189,11),
(4725,3,447,4.99,189,10),
(4726,144,953,6.99,189,2),
(4727,39,276,7.99,189,5),
(4728,462,806,3.99,189,13),
(4729,205,313,4.99,189,11),
(4730,126,353,2.99,189,9),
(4731,241,896,0.99,189,3),
(4732,562,69,5.99,189,14),
(4733,93,482,2.99,189,4),
(4734,546,418,0.99,189,7),
(4735,381,942,0.99,189,7),
(4736,79,660,4.99,189,5),
(4737,116,933,4.99,189,13),
(4738,31,439,9.99,189,7),
(4739,197,28,4.99,189,5),
(4740,379,561,2.99,189,13),
(4741,260,114,6.99,189,14),
(4742,340,663,0.99,189,4),
(4743,535,16,2.99,189,9),
(4744,507,647,0.99,189,12),
(4745,354,298,2.99,189,14),
(4746,148,37,2.99,189,4),
(4747,383,859,5.99,189,2),
(4748,9,931,0.99,189,16),
(4749,236,265,4.99,189,5),
(4750,198,743,0.99,189,2),
(4751,436,760,2.99,189,13),
(4752,512,715,5.99,189,8),
(4753,391,358,0.99,189,4),
(4754,108,697,0.99,189,1),
(4755,378,143,0.99,189,7),
(4756,351,674,1.99,189,9),
(4757,504,283,0.99,189,13),
(4758,288,809,0.99,189,15),
(4759,284,871,7.99,189,5),
(4760,177,813,0.99,189,15),
(4761,351,777,5.99,189,15),
(4762,36,86,4.99,189,12),
(4763,465,200,0.99,189,10),
(4764,89,265,8.99,189,5),
(4765,437,103,4.99,189,16),
(4766,149,235,3.99,189,14),
(4767,350,819,2.99,189,12),
(4768,482,611,4.99,189,4),
(4769,501,759,2.99,189,13),
(4770,573,525,2.99,189,4),
(4771,32,235,2.99,189,14),
(4772,486,466,7.99,189,6),
(4773,519,664,2.99,189,1),
(4774,489,147,3.99,189,8),
(4775,595,930,2.99,189,14),
(4776,563,571,5.99,189,6),
(4777,102,99,3.99,189,5),
(4778,78,132,0.99,189,14),
(4779,338,292,4.99,189,1),
(4780,115,601,1.99,189,16),
(4781,593,395,4.99,189,1),
(4782,436,99,4.99,189,5),
(4783,214,862,3.99,189,4),
(4784,182,119,0.99,189,5),
(4785,474,11,0.99,189,9),
(4786,294,597,7.99,189,10),
(4787,7,857,5.99,189,5),
(4788,533,151,4.99,189,14),
(4789,73,4,4.99,189,11),
(4790,500,20,4.99,189,12),
(4791,393,551,7.99,189,13),
(4792,147,461,0.99,189,2),
(4793,427,679,3.99,189,8),
(4794,451,548,8.99,189,4),
(4795,497,747,0.99,189,10),
(4796,9,545,1.99,189,9),
(4797,265,304,2.99,189,3),
(4798,212,847,3.99,189,13),
(4799,512,894,0.99,189,16),
(4800,99,422,4.99,189,14),
(4801,431,166,2.99,189,4),
(4802,562,4,4.99,189,11),
(4803,174,388,1.99,189,5),
(4804,269,821,0.99,189,9),
(4805,453,83,2.99,189,8),
(4806,506,48,8.99,189,3),
(4807,348,985,8.99,189,14),
(4808,563,558,3.99,189,13),
(4809,474,924,2.99,189,14),
(4810,209,883,4.99,189,3),
(4811,127,878,5.99,189,16),
(4812,304,723,8.99,189,14),
(4813,439,603,4.99,189,8),
(4814,244,766,4.99,189,7),
(4815,581,184,8.99,189,4),
(4816,207,593,0.99,189,11),
(4817,145,351,2.99,189,11),
(4818,144,23,3.99,189,2),
(4819,64,295,5.99,189,6),
(4820,172,586,5.99,189,1),
(4821,172,369,4.99,189,14),
(4822,185,865,7.99,189,2),
(4823,206,32,4.99,189,13),
(4824,225,403,7.99,189,7),
(4825,563,527,4.99,189,11),
(4826,180,202,7.99,189,5),
(4827,110,973,4.99,189,6),
(4828,92,244,4.99,189,12),
(4829,133,584,2.99,189,9),
(4830,359,254,7.99,189,15),
(4831,243,601,0.99,189,16),
(4832,509,399,2.99,189,9),
(4833,581,641,1.99,189,9),
(4834,301,285,3.99,189,14),
(4835,95,549,5.99,189,1),
(4836,311,604,3.99,189,5),
(4837,149,423,0.99,189,3),
(4838,84,816,6.99,189,2),
(4839,556,393,3.99,189,6),
(4840,119,365,8.99,189,5),
(4841,248,114,0.99,189,14),
(4842,160,314,0.99,189,2),
(4843,45,795,0.99,189,8),
(4844,237,883,4.99,189,3),
(4845,553,508,4.99,189,10),
(4846,556,91,0.99,189,4),
(4847,544,745,6.99,189,15),
(4848,251,649,2.99,189,2),
(4849,146,941,6.99,189,10),
(4850,154,666,5.99,189,7),
(4851,557,26,1.99,189,14),
(4852,418,775,7.99,189,7),
(4853,23,319,2.99,189,14),
(4854,487,796,2.99,189,15),
(4855,337,253,4.99,189,1),
(4856,7,532,4.99,189,15),
(4857,211,449,2.99,189,14),
(4858,447,750,6.99,189,13),
(4859,369,421,4.99,189,9),
(4860,123,95,8.99,189,13),
(4861,455,654,8.99,189,10),
(4862,291,66,3.99,189,3),
(4863,431,1,0.99,189,6),
(4864,281,651,6.99,189,2),
(4865,418,353,2.99,189,9),
(4866,278,879,8.99,189,12),
(4867,593,891,0.99,189,4),
(4868,307,255,4.99,189,12),
(4869,376,626,4.99,189,3),
(4870,260,679,2.99,189,8),
(4871,210,551,6.99,189,13),
(4872,103,398,4.99,189,12),
(4873,473,982,0.99,189,1),
(4874,223,521,4.99,189,7),
(4875,555,184,2.99,189,4),
(4876,283,427,1.99,189,6),
(4877,287,402,4.99,189,2),
(4878,172,873,6.99,189,3),
(4879,196,308,2.99,189,5),
(4880,269,908,6.99,189,9),
(4881,349,947,0.99,189,9),
(4882,184,991,6.99,189,1),
(4883,563,301,0.99,189,11),
(4884,425,775,7.99,189,7),
(4885,233,98,4.99,189,7),
(4886,474,745,4.99,189,15),
(4887,543,789,2.99,189,9),
(4888,527,270,0.99,189,13),
(4889,5,975,2.99,189,8),
(4890,574,782,2.99,189,15),
(4891,59,388,3.99,189,5),
(4892,193,779,6.99,189,15),
(4893,210,447,4.99,189,10),
(4894,286,230,2.99,189,7),
(4895,242,574,1.99,189,1),
(4896,129,660,2.99,189,5),
(4897,258,647,0.99,189,12),
(4898,218,706,6.99,189,7),
(4899,32,91,0.99,189,4),
(4900,426,764,4.99,189,15),
(4901,507,473,2.99,189,7),
(4902,554,484,4.99,189,4),
(4903,132,383,0.99,189,15),
(4904,173,445,7.99,189,4),
(4905,246,893,4.99,189,14),
(4906,490,334,5.99,189,11),
(4907,209,268,4.99,189,2),
(4908,160,428,5.99,189,8),
(4909,228,317,0.99,189,5),
(4910,219,804,7.99,189,11),
(4911,66,979,5.99,189,7),
(4912,275,438,9.99,189,10),
(4913,368,219,8.99,189,6),
(4914,535,67,6.99,189,1),
(4915,178,609,2.99,189,16),
(4916,212,588,6.99,189,3),
(4917,104,709,2.99,189,7),
(4918,220,836,2.99,189,15),
(4919,157,457,0.99,189,6),
(4920,239,933,7.99,189,13),
(4921,109,93,4.99,189,13),
(4922,577,644,2.99,189,2),
(4923,18,206,3.99,189,6),
(4924,180,946,9.99,189,8),
(4925,68,468,3.99,189,3),
(4926,415,902,8.99,189,15),
(4927,136,562,0.99,189,12),
(4928,77,951,0.99,189,4),
(4929,297,160,5.99,189,2),
(4930,451,447,4.99,189,10),
(4931,284,603,7.99,189,8),
(4932,558,921,2.99,189,12),
(4933,579,72,2.99,189,6),
(4934,517,379,0.99,189,7),
(4935,230,595,0.99,189,9),
(4936,298,443,3.99,189,5),
(4937,273,7,5.99,189,5),
(4938,418,467,0.99,189,9),
(4939,425,703,7.99,189,2),
(4940,215,216,8.99,189,13),
(4941,553,835,3.99,189,10),
(4942,120,976,1.99,189,10),
(4943,11,599,4.99,189,15),
(4944,293,796,6.99,189,15),
(4945,165,450,2.99,189,3),
(4946,440,61,7.99,189,7),
(4947,388,852,5.99,189,3),
(4948,518,651,6.99,189,2),
(4949,567,263,4.99,189,15),
(4950,148,724,2.99,189,8),
(4951,28,608,4.99,189,3),
(4952,14,101,0.99,189,6),
(4953,168,537,2.99,189,4),
(4954,99,136,2.99,189,13),
(4955,225,245,2.99,189,2),
(4956,477,330,7.99,189,2),
(4957,399,890,0.99,189,15),
(4958,346,512,8.99,189,4),
(4959,236,851,0.99,189,15),
(4960,434,470,10.99,189,2),
(4961,96,803,4.99,189,7),
(4962,532,961,4.99,189,9),
(4963,404,161,4.99,189,12),
(4964,455,231,2.99,189,8),
(4965,432,117,5.99,189,10),
(4966,118,951,0.99,189,4),
(4967,339,22,3.99,189,13),
(4968,390,704,5.99,189,5),
(4969,231,996,0.99,189,6),
(4970,100,654,8.99,189,10),
(4971,64,101,5.99,189,6),
(4972,498,535,2.99,189,11),
(4973,432,86,4.99,189,12),
(4974,152,239,4.99,190,2),
(4975,101,816,2.99,190,2),
(4976,199,134,4.99,190,2),
(4977,584,728,0.99,190,7),
(4978,279,564,7.99,190,2),
(4979,204,755,4.99,190,3),
(4980,100,579,6.99,190,1),
(4981,399,738,4.99,190,9),
(4982,162,56,2.99,190,1),
(4983,81,321,9.99,190,13),
(4984,214,287,3.99,190,1),
(4985,208,464,4.99,190,2),
(4986,589,770,2.99,190,9),
(4987,277,222,5.99,190,11),
(4988,433,596,7.99,190,10),
(4989,210,732,3.99,190,1),
(4990,35,727,0.99,190,8),
(4991,540,403,4.99,190,7),
(4992,315,451,4.99,190,16),
(4993,517,378,2.99,190,12),
(4994,246,559,2.99,190,14),
(4995,247,447,2.99,190,10),
(4996,129,970,0.99,190,4),
(4997,102,42,6.99,190,15),
(4998,534,45,4.99,190,13),
(4999,196,391,4.99,190,8),
(5000,146,145,4.99,190,8),
(5001,40,440,1.99,190,9),
(5002,430,521,4.99,190,7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
