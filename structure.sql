-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: rbx2.serverproject.pl:3306
-- Czas generowania: 03 Kwi 2018, 17:12
-- Wersja serwera: 5.5.54-0+deb8u1-log
-- Wersja PHP: 7.1.12-2+0~20171207160618.12+stretch~1.gbp5c91f3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db_29603`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dv_characters`
--

CREATE TABLE `dv_characters` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int(11) NOT NULL DEFAULT '100',
  `armor` int(11) NOT NULL DEFAULT '0',
  `hungry` int(11) NOT NULL DEFAULT '100',
  `description` text NOT NULL,
  `skin` int(11) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '100',
  `bankmoney` int(11) NOT NULL DEFAULT '1000',
  `license` varchar(255) NOT NULL DEFAULT '[[0,0]]' COMMENT '1: Car | 2: Weapon',
  `owning_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dv_users`
--

CREATE TABLE `dv_users` (
  `id` int(11) NOT NULL,
  `login` varchar(24) CHARACTER SET utf8 NOT NULL DEFAULT 'u_000000',
  `password` varchar(64) NOT NULL DEFAULT 'ukwn-passwd',
  `rank` int(1) NOT NULL DEFAULT '0',
  `is_online` tinyint(1) DEFAULT '0',
  `ts_registered` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ts_last` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `serial` varchar(64) DEFAULT NULL,
  `ip_registered` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `ip_last` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `skin` smallint(6) DEFAULT '0',
  `gamepoints` int(11) DEFAULT '0',
  `shop_points` int(11) NOT NULL DEFAULT '0',
  `money` bigint(10) UNSIGNED NOT NULL DEFAULT '300',
  `time_played` int(11) DEFAULT '0',
  `lastpos` varchar(64) DEFAULT '[[ 1696.83,-1924.53,13.56, 318.70 ]]',
  `interior` int(11) DEFAULT '0',
  `dimension` int(11) DEFAULT '0',
  `health` float DEFAULT '100',
  `armour` float DEFAULT '0',
  `email` varchar(48) NOT NULL DEFAULT 'unkown@domain.com',
  `driverlicense_theory` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `dv_users`
--

INSERT INTO `dv_users` (`id`, `login`, `password`, `rank`, `is_online`, `ts_registered`, `ts_last`, `serial`, `ip_registered`, `ip_last`, `skin`, `gamepoints`, `shop_points`, `money`, `time_played`, `lastpos`, `interior`, `dimension`, `health`, `armour`, `email`, `driverlicense_theory`) VALUES
(50, '12345', 'D9B66AF47FB4E5EF685631045E65CA965D097C3E7C1F5B18F3391E8802CE0817', 0, 0, '0000-00-00 00:00:00', '2018-03-28 22:56:38', '68F429972243BA540F78C94F826C4943', '0.0.0.0', '0.0.0.0', 0, 0, 0, 300, 0, '[[ 1696.83,-1924.53,13.56, 318.70 ]]', 0, 0, 100, 0, 'email@wp.pl', 0),
(51, 'Podhal', '27ABADEA59A4BD6765FF16B5D0FB73E2CDF7E09291172B0B69FCFC17A6A978E8', 0, 0, '0000-00-00 00:00:00', '2018-03-30 00:09:26', '68F429972243BA540F78C94F826C4943', '0.0.0.0', '0.0.0.0', 0, 0, 0, 300, 0, '[[ 1696.83,-1924.53,13.56, 318.70 ]]', 0, 0, 100, 0, 'Email..', 0),
(52, 'eloeloelo', '8EEAE9F0FD12C052AAA1F9EDFBC76AD173520EB889F0D3B7A0DC84BC2BCC2DDD', 0, 0, '0000-00-00 00:00:00', '2018-03-30 00:09:42', 'AB46D5DE619BF0C84AF32D4F1F3A4CA1', '0.0.0.0', '0.0.0.0', 0, 0, 0, 300, 0, '[[ 1696.83,-1924.53,13.56, 318.70 ]]', 0, 0, 100, 0, 'maxer', 0),
(53, 'eloeloeloelo', '3ECA145D69830F9DFA93EC141F02233A2CBB91EE8B72C2538F3105D1D1EE5311', 0, 0, '0000-00-00 00:00:00', '2018-03-30 00:10:07', 'AB46D5DE619BF0C84AF32D4F1F3A4CA1', '0.0.0.0', '0.0.0.0', 0, 0, 0, 300, 0, '[[ 1696.83,-1924.53,13.56, 318.70 ]]', 0, 0, 100, 0, 'maxer', 0),
(54, 'Podhaldsdasd', '2C707E9EE2CA98AB6ECB23844315CF64999C7F7E37EE9FC05012857B331E2420', 0, 0, '0000-00-00 00:00:00', '2018-03-30 00:11:05', '68F429972243BA540F78C94F826C4943', '0.0.0.0', '0.0.0.0', 0, 0, 0, 300, 0, '[[ 1696.83,-1924.53,13.56, 318.70 ]]', 0, 0, 100, 0, 'Email..', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dv_vehicles`
--

CREATE TABLE `dv_vehicles` (
  `id` int(11) NOT NULL,
  `wlasciciel` int(11) NOT NULL DEFAULT '-1',
  `model` smallint(6) NOT NULL DEFAULT '400',
  `x,y,z` varchar(128) DEFAULT '[[ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]]',
  `rx,ry,rz` varchar(256) DEFAULT '[[ 0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]]',
  `r,g,b` varchar(64) DEFAULT '[[ 0,0, 0,0, 0,0 ]]',
  `license_plate` varchar(16) NOT NULL DEFAULT '000-000',
  `paliwo` float NOT NULL DEFAULT '100'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ms_anim`
--

CREATE TABLE `ms_anim` (
  `anim_uid` smallint(5) UNSIGNED NOT NULL,
  `anim_command` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `anim_lib` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anim_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `anim_speed` float NOT NULL,
  `anim_opt1` tinyint(1) NOT NULL,
  `anim_opt2` tinyint(1) NOT NULL,
  `anim_opt3` tinyint(1) NOT NULL,
  `anim_opt4` tinyint(1) NOT NULL,
  `anim_opt5` tinyint(1) NOT NULL,
  `anim_action` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ms_anim`
--

INSERT INTO `ms_anim` (`anim_uid`, `anim_command`, `anim_lib`, `anim_name`, `anim_speed`, `anim_opt1`, `anim_opt2`, `anim_opt3`, `anim_opt4`, `anim_opt5`, `anim_action`) VALUES
(169, 'idz1', 'PED', 'WALK_gang1', 4.1, 1, 1, 1, 1, 1, 0),
(170, 'idz2', 'PED', 'WALK_gang2', 4.1, 1, 1, 1, 1, 1, 0),
(171, 'idz3', 'PED', 'WOMAN_walksexy', 4, 1, 1, 1, 1, 1, 0),
(172, 'idz4', 'PED', 'WOMAN_walkfatold', 4, 1, 1, 1, 1, 1, 0),
(297, 'plac', 'DEALER', 'shop_pay', 4, 0, 0, 0, 0, 0, 0),
(175, 'idz6', 'PED', 'WALK_player', 6, 1, 1, 1, 1, 1, 0),
(174, 'idz5', 'PED', 'Walk_Wuzi', 4, 1, 1, 1, 1, 1, 0),
(176, 'pa', 'KISSING', 'gfwave2', 6, 0, 0, 0, 0, 0, 0),
(177, 'zmeczony', 'PED', 'IDLE_tired', 4, 1, 0, 0, 0, 0, 0),
(178, 'umyjrece', 'INT_HOUSE', 'wash_up', 4, 0, 0, 0, 0, 0, 0),
(179, 'medyk', 'MEDIC', 'CPR', 4, 0, 0, 0, 0, 0, 0),
(180, 'ranny', 'SWEET', 'Sweet_injuredloop', 4, 1, 0, 0, 1, 1, 0),
(181, 'salutuj', 'ON_LOOKERS', 'lkup_in', 4, 0, 1, 1, 1, 0, 0),
(182, 'wtf', 'RIOT', 'RIOT_ANGRY', 4, 0, 1, 1, 1, 1, 0),
(183, 'spoko', 'GANGS', 'prtial_gngtlkD', 4, 0, 0, 0, 0, 0, 0),
(184, 'napad', 'SHOP', 'ROB_Loop_Threat', 4, 1, 0, 0, 1, 1, 0),
(185, 'krzeslo', 'ped', 'SEAT_idle', 5, 1, 0, 0, 1, 1, 0),
(186, 'szukaj', 'COP_AMBIENT', 'Copbrowse_loop', 4, 1, 0, 0, 0, 0, 0),
(187, 'lornetka', 'ON_LOOKERS', 'shout_loop', 4, 1, 0, 0, 0, 0, 0),
(188, 'oh', 'MISC', 'plyr_shkhead', 4, 0, 0, 0, 0, 0, 0),
(189, 'oh2', 'OTB', 'wtchrace_lose', 4, 0, 1, 1, 0, 0, 0),
(190, 'wyciagnij', 'FOOD', 'SHP_Tray_Lift', 4, 0, 0, 0, 0, 0, 0),
(191, 'zdziwiony', 'PED', 'facsurp', 4, 0, 1, 1, 1, 1, 0),
(192, 'recemaska', 'POLICE', 'crm_drgbst_01', 6, 1, 0, 0, 1, 0, 0),
(193, 'krzeslojem', 'FOOD', 'FF_Sit_Eat1', 4, 1, 0, 0, 0, 0, 0),
(194, 'gogo', 'RIOT', 'RIOT_CHANT', 4, 1, 1, 1, 1, 0, 0),
(195, 'czekam', 'GRAVEYARD', 'prst_loopa', 4, 1, 0, 0, 1, 1, 0),
(196, 'garda', 'FIGHT_D', 'FightD_IDLE', 4, 1, 1, 1, 1, 0, 0),
(199, 'napraw', 'CAR', 'Fixn_Car_Loop', 4, 1, 0, 0, 1, 1, 0),
(198, 'fotel', 'INT_HOUSE', 'LOU_Loop', 4, 1, 0, 0, 1, 1, 0),
(197, 'barman2', 'BAR', 'BARman_idle', 4, 0, 0, 0, 0, 0, 0),
(200, 'barman', 'BAR', 'Barserve_loop', 4, 1, 0, 0, 0, 0, 0),
(201, 'opieraj', 'GANGS', 'leanIDLE', 4, 1, 0, 0, 1, 1, 0),
(202, 'bar.nalej', 'BAR', 'Barserve_glass', 4, 0, 0, 0, 0, 0, 0),
(203, 'ramiona', 'COP_AMBIENT', 'Coplook_loop', 3, 1, 0, 0, 0, 0, 0),
(204, 'bar.wez', 'BAR', 'Barserve_bottle', 4, 0, 0, 0, 0, 0, 0),
(205, 'chowaj', 'ped', 'cower', 3, 1, 0, 0, 0, 0, 0),
(206, 'wez', 'BAR', 'Barserve_give', 4, 0, 0, 0, 0, 0, 0),
(207, 'fuck', 'ped', 'fucku', 4, 0, 0, 0, 0, 0, 0),
(208, 'klepnij', 'SWEET', 'sweet_ass_slap', 6, 0, 0, 0, 0, 0, 0),
(210, 'daj', 'DEALER', 'DEALER_DEAL', 8, 0, 0, 0, 0, 0, 0),
(211, 'pij', 'VENDING', 'VEND_Drink2_P', 4, 1, 1, 1, 1, 0, 0),
(212, 'start', 'CAR', 'flag_drop', 4, 0, 0, 0, 0, 0, 0),
(213, 'karta', 'HEIST9', 'Use_SwipeCard', 4, 0, 0, 0, 0, 0, 0),
(214, 'spray', 'GRAFFITI', 'spraycan_fire', 4, 1, 0, 0, 0, 1, 0),
(215, 'odejdz', 'POLICE', 'CopTraf_Left', 4, 0, 0, 0, 0, 0, 0),
(216, 'fotelk', 'JST_BUISNESS', 'girl_02', 4, 1, 0, 0, 1, 1, 0),
(217, 'chodz', 'POLICE', 'CopTraf_Come', 4, 0, 0, 0, 0, 0, 0),
(218, 'stoj', 'POLICE', 'CopTraf_Stop', 4, 0, 0, 0, 0, 0, 0),
(219, 'drapjaja', 'MISC', 'Scratchballs_01', 4, 1, 0, 0, 0, 0, 0),
(220, 'opieraj2', 'MISC', 'Plyrlean_loop', 4, 1, 0, 0, 0, 0, 0),
(221, 'walekonia', 'PAULNMAC', 'wank_loop', 4, 1, 0, 0, 0, 0, 0),
(222, 'popchnij', 'GANGS', 'shake_cara', 4, 0, 0, 0, 0, 0, 0),
(223, 'rzuc', 'GRENADE', 'WEAPON_throwu', 3, 0, 0, 0, 0, 0, 0),
(224, 'rap', 'RAPPING', 'RAP_A_Loop', 4, 1, 0, 0, 0, 0, 0),
(225, 'rap2', 'RAPPING', 'RAP_C_Loop', 4, 1, 0, 0, 0, 0, 0),
(226, 'rap3', 'RAPPING', 'RAP_B_Loop', 4, 1, 0, 0, 0, 0, 0),
(227, 'rap4', 'RAPPING', 'RAP_B_Loop', 4, 1, 0, 0, 0, 0, 0),
(228, 'glowka', 'WAYFARER', 'WF_Fwd', 4, 0, 0, 0, 0, 0, 0),
(229, 'skop', 'FIGHT_D', 'FightD_G', 4, 0, 0, 0, 0, 0, 0),
(230, 'siad', 'BEACH', 'ParkSit_M_loop', 4, 1, 0, 0, 0, 0, 0),
(231, 'krzeslo2', 'FOOD', 'FF_Sit_Loop', 4, 1, 0, 0, 0, 0, 0),
(232, 'krzeslo3', 'INT_OFFICE', 'OFF_Sit_Idle_Loop', 4, 1, 0, 0, 0, 0, 0),
(233, 'krzeslo4', 'INT_OFFICE', 'OFF_Sit_Bored_Loop', 4, 1, 0, 0, 0, 0, 0),
(234, 'krzeslo5', 'INT_OFFICE', 'OFF_Sit_Type_Loop', 4, 1, 0, 0, 0, 0, 0),
(235, 'padnij', 'PED', 'KO_shot_front', 4, 0, 1, 1, 1, 0, 0),
(236, 'padaczka', 'PED', 'FLOOR_hit_f', 4, 1, 0, 0, 0, 0, 0),
(238, 'crack', 'CRACK', 'crckdeth2', 4, 1, 0, 0, 0, 0, 0),
(252, 'lez3', 'BEACH', 'ParkSit_W_loop', 4, 1, 0, 0, 0, 0, 0),
(247, 'pijak', 'PED', 'WALK_DRUNK', 4, 1, 1, 1, 1, 1, 0),
(237, 'unik', 'PED', 'EV_dive', 4, 0, 1, 1, 1, 0, 0),
(239, 'bomb', 'BOMBER', 'BOM_Plant', 4, 0, 0, 0, 0, 0, 0),
(240, 'kominiarka', 'SHOP', 'ROB_Shifty', 4, 0, 0, 0, 0, 0, 0),
(241, 'rece', 'ROB_BANK', 'SHP_HandsUp_Scr', 4, 0, 1, 1, 1, 1, 0),
(242, 'tancz1', 'STRIP', 'STR_Loop_A', 0, 1, 0, 0, 0, 0, 5),
(243, 'tancz2', 'STRIP', 'STR_Loop_A', 0, 1, 0, 0, 0, 0, 6),
(244, 'tancz3', 'STRIP', 'STR_Loop_A', 0, 1, 0, 0, 0, 0, 7),
(245, 'tancz4', 'STRIP', 'STR_Loop_A', 0, 1, 0, 0, 0, 0, 8),
(246, 'tancz5', 'STRIP', 'STR_Loop_A', 2, 1, 0, 0, 0, 0, 0),
(248, 'nie', 'GANGS', 'Invite_No', 4, 0, 0, 0, 0, 0, 0),
(249, 'lokiec', 'CAR', 'Sit_relaxed', 4, 1, 1, 1, 1, 0, 0),
(250, 'go', 'RIOT', 'RIOT_PUNCHES', 4, 0, 0, 0, 0, 0, 0),
(251, 'stack1', 'GHANDS', 'gsign2LH', 4, 0, 0, 0, 0, 0, 0),
(253, 'lez1', 'BEACH', 'bather', 4, 1, 0, 0, 0, 0, 0),
(254, 'lez2', 'BEACH', 'Lay_Bac_Loop', 4, 1, 0, 0, 0, 0, 0),
(255, 'padnij2', 'PED', 'KO_skid_front', 4, 0, 1, 1, 1, 0, 0),
(256, 'bat', 'CRACK', 'Bbalbat_Idle_01', 4, 1, 1, 1, 1, 1, 0),
(257, 'bat2', 'CRACK', 'Bbalbat_Idle_02', 4, 0, 1, 1, 1, 1, 0),
(258, 'stack2', 'GHANDS', 'gsign2', 4, 0, 1, 1, 1, 1, 0),
(259, 'stack3', 'GHANDS', 'gsign4', 4, 0, 1, 1, 1, 1, 0),
(260, 'taichi', 'PARK', 'Tai_Chi_Loop', 4, 1, 0, 0, 0, 0, 0),
(266, 'papieros', 'SMOKING', 'M_smklean_loop', 4, 1, 0, 0, 0, 0, 0),
(267, 'wymiotuj', 'FOOD', 'EAT_Vomit_P', 3, 0, 0, 0, 0, 0, 0),
(268, 'fuck2', 'RIOT', 'RIOT_FUKU', 4, 0, 0, 0, 0, 0, 0),
(209, 'cmon', 'RYDER', 'RYD_Beckon_01', 4, 0, 1, 1, 0, 0, 0),
(269, 'koks', 'PED', 'IDLE_HBHB', 4, 1, 0, 0, 1, 0, 0),
(270, 'idz7', 'PED', 'WOMAN_walkshop', 4, 1, 1, 1, 1, 1, 0),
(271, 'cry', 'GRAVEYARD', 'mrnF_loop', 4, 1, 0, 0, 1, 0, 0),
(272, 'rozciagaj', 'PLAYIDLES', 'stretch', 4, 0, 0, 0, 0, 0, 0),
(275, 'bagaznik', 'POOL', 'POOL_Place_White', 4, 0, 0, 0, 1, 0, 0),
(276, 'wywaz', 'GANGS', 'shake_carK', 4, 0, 0, 0, 0, 0, 0),
(277, 'skradajsie', 'PED', 'Player_Sneak', 6, 1, 1, 1, 1, 1, 0),
(278, 'przycisk', 'CRIB', 'CRIB_use_switch', 4, 0, 0, 0, 0, 0, 0),
(279, 'tancz6', 'DANCING', 'DAN_down_A', 4, 1, 0, 0, 0, 0, 0),
(280, 'tancz7', 'DANCING', 'DAN_left_A', 4, 1, 0, 0, 0, 0, 0),
(281, 'idz8', 'PED', 'walk_shuffle', 4, 1, 1, 1, 1, 1, 0),
(282, 'stack4', 'LOWRIDER', 'prtial_gngtlkB', 4, 0, 0, 0, 0, 0, 0),
(283, 'stack5', 'LOWRIDER', 'prtial_gngtlkC', 4, 0, 1, 1, 1, 1, 0),
(284, 'stack6', 'lowrider', 'prtial_gngtlkD', 4, 0, 0, 0, 0, 0, 0),
(285, 'stack7', 'lowrider', 'prtial_gngtlkE', 4, 0, 0, 0, 0, 0, 0),
(286, 'stack8', 'lowrider', 'prtial_gngtlkF', 4, 0, 0, 0, 0, 0, 0),
(287, 'stack9', 'lowrider', 'prtial_gngtlkG', 4, 0, 0, 0, 0, 0, 0),
(288, 'stack10', 'lowrider', 'prtial_gngtlkH', 4, 0, 1, 1, 1, 1, 0),
(289, 'tancz8', 'DANCING', 'dnce_m_d', 4, 1, 0, 0, 0, 0, 0),
(290, 'kasjer', 'INT_SHOP', 'shop_cashier', 4, 0, 0, 0, 0, 0, 0),
(291, 'idz9', 'wuzi', 'wuzi_walk', 4, 1, 1, 1, 1, 1, 0),
(292, 'taxi', 'misc', 'hiker_pose', 4, 0, 0, 0, 1, 0, 0),
(293, 'wskaz', 'on_lookers', 'pointup_loop', 4, 0, 0, 0, 1, 0, 0),
(294, 'wskaz2', 'on_lookers', 'point_loop', 4, 0, 0, 0, 1, 0, 0),
(295, 'podpisz', 'otb', 'betslp_loop', 4, 0, 0, 0, 0, 0, 0),
(380, 'celuj', 'SWORD', 'sword_block', 4, 0, 1, 1, 1, 1, 0),
(298, 'deal', 'DEALER', 'DEALER_DEAL', 4, 0, 1, 1, 1, 1, 0),
(299, 'pal5', 'SMOKING', 'M_smk_in', 4, 0, 0, 0, 0, 0, 0),
(300, 'pal2', 'SMOKING', 'M_smklean_loop', 4, 1, 0, 0, 0, 0, 0),
(301, 'pal3', 'SMOKING', 'M_smkstnd_loop', 4, 1, 0, 0, 0, 0, 0),
(302, 'pal4', 'SMOKING', 'M_smk_drag', 4, 0, 1, 1, 1, 1, 0),
(303, 'fotel2', 'INT_HOUSE', 'LOU_Out', 3, 0, 0, 0, 0, 0, 0),
(304, 'ranny2', 'CRACK', 'crckidle1', 4, 0, 1, 1, 1, 1, 0),
(305, 'ranny3', 'KNIFE', 'KILL_Knife_Ped_Die', 3, 0, 1, 1, 1, 1, 0),
(306, 'ranny4', 'WUZI', 'CS_Dead_Guy', 4, 0, 1, 1, 1, 1, 0),
(307, 'cartel', 'CAR_CHAT', 'carfone_in', 3, 0, 1, 1, 1, 1, 0),
(308, 'cartel2', 'CAR_CHAT', 'carfone_out', 3, 0, 0, 0, 0, 0, 0),
(309, 'przeladujd', 'COLT45', 'colt45_reload', 4, 0, 1, 1, 1, 1, 0),
(310, 'przeladujm', 'BUDDY', 'buddy_crouchreload', 4, 0, 1, 1, 1, 1, 0),
(311, 'bron', 'PED', 'IDLE_armed', 4, 0, 1, 1, 1, 1, 0),
(312, 'spray', 'SPRAYCAN', 'spraycan_full', 4, 1, 1, 1, 1, 1, 0),
(313, 'gtalk', 'GANGS', 'prtial_gngtlkB', 4, 1, 1, 1, 1, 1, 0),
(314, 'gtalk2', 'GANGS', 'prtial_gngtlkD', 4, 1, 1, 1, 1, 1, 0),
(315, 'gtalk3', 'GANGS', 'prtial_gngtlkH', 4, 1, 1, 1, 1, 1, 0),
(316, 'kibel', 'MISC', 'SEAT_LR', 4, 0, 1, 1, 1, 1, 0),
(317, 'bronidz', 'PED', 'WALK_armed', 4, 1, 1, 1, 1, 1, 0),
(323, 'zebraj', 'POOR', 'WINWASH_Start', 4, 0, 1, 1, 1, 1, 0),
(324, 'mysl', 'COP_AMBIENT', 'Coplook_think', 4, 0, 1, 1, 1, 1, 0),
(325, 'dajprezent', 'KISSING', 'gift_give', 4, 0, 0, 0, 0, 0, 0),
(326, 'machaj', 'ON_LOOKERS', 'wave_loop', 4, 1, 1, 1, 1, 1, 0),
(327, 'wezprezent', 'KISSING', 'gift_get', 3, 0, 0, 0, 0, 0, 0),
(328, 'skuj', 'BOMBER', 'BOM_Plant', 4, 0, 0, 0, 0, 0, 0),
(329, 'podnies', 'CARRY', 'liftup', 4, 0, 0, 0, 0, 0, 0),
(330, 'poloz', 'CARRY', 'putdwn', 4, 0, 0, 0, 0, 0, 0),
(331, 'neo', 'MISC', 'KAT_Throw_K', 4, 0, 1, 1, 1, 1, 0),
(332, 'aparat', 'CAMERA', 'camcrch_cmon', 4, 0, 1, 1, 1, 1, 0),
(333, 'aparat2', 'CAMERA', 'camcrch_idleloop', 4, 0, 1, 1, 1, 1, 0),
(334, 'aparat3', 'CAMERA', 'piccrch_in', 4, 0, 1, 1, 1, 1, 0),
(335, 'aparat4', 'CAMERA', 'piccrch_take', 4, 0, 1, 1, 1, 1, 0),
(336, 'cellin', '0', '0', 4, 0, 1, 1, 1, 1, 1),
(364, 'rece2', 'SHOP', 'SHP_Rob_React', 4.1, 0, 1, 1, 1, 1, 0),
(370, 'cartalk', 'car_chat', 'car_talkm_loop', 2, 0, 1, 1, 1, 1, 0),
(339, 'pal', 'GANGS', 'smkcig_prtl', 4, 1, 0, 0, 0, 0, 0),
(340, 'ruszaj', 'POLICE', 'CopTraf_Left', 4, 1, 1, 1, 1, 1, 0),
(341, 'idz', 'PED', 'WALK_civi', 4, 1, 1, 1, 1, 1, 0),
(352, 'car', 'GHETTO_DB', 'GDB_Car2_SMO', 3, 0, 0, 0, 0, 0, 0),
(367, 'telefon', 'PED', 'phone_in', 4, 0, 1, 1, 1, 1, 0),
(366, 'lez4', 'BEACH', 'SitnWait_loop_W', 4, 1, 0, 0, 0, 0, 0),
(357, 'bitchslap2', 'SNM', 'SPANKINGP', 4.1, 0, 1, 1, 1, 1, 0),
(359, 'zmeczony2', 'SNM', 'SPANKEDP', 4.1, 0, 1, 1, 1, 1, 0),
(360, 'padnij3', 'SNM', 'SPANKING_ENDW', 4.1, 0, 1, 1, 1, 1, 0),
(361, 'bitchslap3', 'SNM', 'SPANKING_ENDP', 4.1, 0, 1, 1, 1, 1, 0),
(363, 'jack', 'CRIB', 'CRIB_Use_Switch', 4.1, 0, 1, 1, 1, 1, 0),
(368, 'tak', 'GANGS', 'Invite_Yes', 4, 0, 0, 0, 0, 0, 0),
(371, 'krzeslo6', 'misc', 'Seat_talk_02', 2, 1, 0, 0, 0, 0, 0),
(372, 'nozwbij', 'knife', 'Knife_4', 6, 1, 0, 0, 0, 0, 0),
(373, 'ramiona2', 'cop_ambient', 'Coplook_shake', 3, 0, 1, 1, 1, 1, 0),
(374, 'plac2', 'casino', 'Slot_in', 4, 0, 0, 0, 0, 0, 0),
(375, 'zlap', 'casino', 'dealone', 2, 0, 1, 1, 1, 1, 0),
(376, 'czekam2', 'casino', 'cards_loop', 4, 0, 1, 1, 1, 1, 0),
(377, 'skrzynia', 'box', 'catch_box', 1, 0, 0, 0, 0, 0, 0),
(378, 'szok', 'on_lookers', 'panic_loop', 4, 0, 1, 1, 1, 1, 0),
(379, 'sikaj', 'paulnmac', 'Piss_loop', 3, 0, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ms_groups`
--

CREATE TABLE `ms_groups` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `type` text CHARACTER SET utf8 NOT NULL,
  `leaders` text CHARACTER SET utf8 NOT NULL,
  `members` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `prefix` text CHARACTER SET utf8 NOT NULL,
  `color` text CHARACTER SET utf8 NOT NULL,
  `skins` text CHARACTER SET utf8 NOT NULL,
  `money` int(11) NOT NULL,
  `ranks` text CHARACTER SET utf8 NOT NULL,
  `logo` text CHARACTER SET utf8 NOT NULL,
  `items` text CHARACTER SET utf8 NOT NULL,
  `regenerated` int(1) NOT NULL DEFAULT '0',
  `pickup_pos` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ms_groups`
--

INSERT INTO `ms_groups` (`id`, `name`, `type`, `leaders`, `members`, `description`, `prefix`, `color`, `skins`, `money`, `ranks`, `logo`, `items`, `regenerated`, `pickup_pos`) VALUES
(1, 'Los Santos Police Department', 'police', '[ [ 2 ] ]', '[ [ 2, 8, 13, 1, 11, 4, 12, 3, 7, 12 ] ]', 'Brak opisu frakcji', 'LSPD', '#ffffff', '[ [ 265, 266, 267, 280, 281, 282, 283, 284, 285, 286, 288 ] ]', 18573, '[ [ [ \"Nadinspektor\", 1400, 286 ], [ \"Inspektor\", 1300, 266 ], [ \"Podinspektor\", 1200, 267 ], [ \"Nadkomisarz\", 1100, 282 ], [ \"Komisarz\", 1100, 281 ], [ \"Podkomisarz\", 1100, 283 ], [ \"Aspirant Sztabowy\", 900, 282 ], [ \"Starszy Aspirant\", 900, 281 ], [ \"Aspirant\", 900, 281 ], [ \"Młodszy Aspirant\", 900, 281 ], [ \"Sierżant Sztabowy\", 800, 284 ], [ \"Starszy Sierżant\", 800, 284 ], [ \"Sierżant\", 800, 284 ], [ \"Posterunkowy\", 600, 280 ], [ \"Administracja\", 0, 280 ], [ \"Generalny Inspektor LSPD\", 1500, 286 ] ] ]', 'http://i.imgur.com/WOLlcx0.png', ' [ [ [ \"Desert Eagle\", 40 ], [ \"Taśma policyjna\", 1 ], [ \"Kolczatka\", 1 ], [\"Pałka policyjna\", 1], [\"Paralizator\", 20] ] ]', 0, '[[3301.23,-1110.14,29.25,0,0]]'),
(2, 'Los Santos Roadside Assistance', 'roadside', '[ [ 2, 12, 906 ] ]', '[ [ ] ]', 'Brak opisu', 'LSRA', '#ffffff', '[ [ 305, 268 ] ]', 11707, '[ [ [ \"Generalny dowódca\", 1200, 305 ], [ \"Administracja\", 0, 305 ], [ \"Zastępca dowódcy\", 1000, 305 ], [ \"Starszy holowniczy\", 800, 305 ], [ \"Holowniczy\", 750, 305 ], [ \"Nadzorca parkingu\", 700, 305 ], [ \"Parkingowy\", 600, 305 ], [ \"Akademia\", 400, 305 ] ] ]', 'http://i.imgur.com/NFBvxW7.png', '[[ ]]', 0, '[[-3574.17,-841.43,25.45,0,0]]'),
(3, 'Los Santos News', 'news', '[ [ 2, 55, 129 ] ]', '[ [ 2 ] ]', 'Brak opisu frakcji', 'LSN', '#ffffff', '[ [ 91, 147, 150, 185, 186, 187, 223, 233, 240 ] ]', 29048, '[ [ ] ]', 'http://www.croughtonfc.co.uk/wp-content/uploads/2015/09/0108416-news-icon.png', '[ [ ] ]', 0, '[[3755.39,2182.78,69.71,0,0]]'),
(4, 'Los Santos Medical Center', 'medical', '[ [ 879, 2 ] ]', '[ [ 2, 868, 125, 789, 53, 879, 2050 ] ]', 'Los Santos Medical Center - frakcja zajmująca się ratowaniem cudzego życia, zdrowia. Jej zadaniami jest wykrycie u człowieka choroby i zwalczenie jej.', 'LSMD', '#ffffff', '[ [ 274, 275, 276 ] ]', 27756, '[ [ [ \"Administrator\", 0, 274 ], [ \"Dyrektor szpitala\", 1200, 275 ], [ \"Zastępca dyrektora\", 1000, 275 ], [ \"Ordynator\", 900, 275 ], [ \"Lekarz rezydent\", 800, 275 ], [ \"Lekarz specjalista\", 800, 275 ], [ \"Lekarz ogólny\", 700, 275 ], [ \"Lekarz rodzinny\", 700, 275 ], [ \"Ratownik medyczny\", 700, 275 ], [ \"Pielęgniarz\", 500, 274 ] ] ]', 'http://www.ipharmd.net/images/white_caduceus_red_box.png', '[ [ ] ]', 0, '[[3227.40,-1182.52,23.25,0,0]]'),
(5, 'Los Santos Taxi Corporation', 'taxi', '[ [ 2, 875 ] ]', '[ [ 2 ] ]', 'Tutaj opis frakcji.', 'LSTC', '#ffffff', '[ [ 61, 261 ] ]', 17561, '[ [ [ \"Prezes\", 1200, 61 ], [ \"Zastępca Prezesa\", 1000, 61 ], [ \"Szofer\", 900, 61 ], [ \"Doświadczony Kierowca\", 800, 61 ], [ \"Kierowca\", 700, 61 ], [ \"Młodszy Kierowca\", 600, 61 ], [ \"Praktykant\\/Adept\", 500, 61 ], [ \"adm\", 0, 61 ] ] ]', 'http://i.imgur.com/eV5lsWF.jpg', '[ [ ] ]', 0, '[[-3314.55,251.60,24.55,0,0]]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ms_groups_perms`
--

CREATE TABLE `ms_groups_perms` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `allow_commands` int(1) NOT NULL,
  `allow_vehicles` int(1) NOT NULL,
  `allow_interior` int(1) NOT NULL,
  `rank` text CHARACTER SET utf8 NOT NULL,
  `earnedMoney` int(11) NOT NULL DEFAULT '0',
  `dutyTime` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ms_groups_perms`
--

INSERT INTO `ms_groups_perms` (`id`, `player_id`, `group_id`, `allow_commands`, `allow_vehicles`, `allow_interior`, `rank`, `earnedMoney`, `dutyTime`) VALUES
(67, 2, 3, 1, 1, 1, 'Administracja', 0, 157),
(68, 2, 2, 1, 1, 1, 'Administracja', 0, 52),
(76, 2, 4, 1, 1, 1, 'Administrator', 0, 1),
(78, 2, 5, 1, 1, 1, 'adm', 0, 76),
(94, 2, 1, 1, 1, 1, 'Administracja', 0, 117),
(112, 868, 4, 1, 1, 0, 'Pielęgniarz', 0, 0),
(118, 125, 4, 1, 1, 0, 'Pielęgniarz', 0, 0),
(156, 774, 1, 1, 1, 1, 'Generalny Inspektor LSPD', 0, 0),
(161, 427, 1, 1, 1, 1, 'Sierżant', 0, 0),
(180, 516, 1, 1, 1, 1, 'Sierżant', 5600, 0),
(193, 164, 1, 1, 1, 1, 'Posterunkowy', 0, 0),
(194, 581, 1, 1, 1, 1, 'Posterunkowy', 9600, 0),
(204, 789, 4, 1, 1, 0, 'Pielęgniarz', 3500, 0),
(205, 53, 4, 1, 1, 0, 'Pielęgniarz', 2000, 0),
(206, 879, 4, 1, 1, 1, 'Dyrektor szpitala', 2400, 0),
(210, 947, 1, 1, 1, 1, 'Posterunkowy', 0, 0),
(213, 2050, 4, 1, 1, 0, 'Pielęgniarz', 500, 0),
(214, 917, 1, 1, 1, 1, 'Sierżant', 0, 0),
(215, 8, 1, 1, 1, 1, 'Sierżant', 0, 15),
(216, 13, 1, 1, 1, 1, 'Sierżant', 0, 45),
(217, 1, 1, 1, 1, 1, 'Sierżant', 0, 64),
(218, 11, 1, 1, 1, 1, 'Sierżant', 0, 0),
(219, 4, 1, 1, 1, 1, 'Sierżant', 0, 36),
(223, 3, 1, 1, 1, 1, 'Administracja', 0, 0),
(224, 7, 1, 1, 1, 1, 'Administracja', 420, 159),
(225, 12, 1, 1, 1, 1, 'Administracja', 360, 83);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ms_skinshop`
--

CREATE TABLE `ms_skinshop` (
  `id` int(2) NOT NULL,
  `model` int(3) NOT NULL,
  `type` text NOT NULL,
  `price` int(11) NOT NULL,
  `premium` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ms_skinshop`
--

INSERT INTO `ms_skinshop` (`id`, `model`, `type`, `price`, `premium`) VALUES
(1, 9, 'woman', 361, 0),
(2, 10, 'woman', 219, 0),
(3, 11, 'woman', 201, 0),
(4, 12, 'woman', 209, 0),
(5, 13, 'woman', 399, 0),
(6, 31, 'woman', 354, 0),
(7, 38, 'woman', 310, 1),
(8, 39, 'woman', 221, 1),
(9, 40, 'woman', 232, 0),
(10, 41, 'woman', 366, 0),
(11, 53, 'woman', 258, 1),
(12, 54, 'woman', 283, 0),
(13, 55, 'woman', 223, 0),
(14, 56, 'woman', 257, 0),
(15, 63, 'woman', 392, 0),
(16, 64, 'woman', 384, 0),
(17, 69, 'woman', 240, 0),
(18, 75, 'woman', 392, 0),
(19, 76, 'woman', 251, 0),
(20, 77, 'woman', 234, 0),
(21, 85, 'woman', 396, 0),
(22, 87, 'woman', 217, 0),
(23, 88, 'woman', 379, 0),
(24, 89, 'woman', 241, 0),
(25, 90, 'woman', 393, 0),
(26, 91, 'woman', 365, 0),
(27, 92, 'woman', 250, 0),
(28, 93, 'woman', 284, 0),
(29, 129, 'woman', 376, 0),
(30, 130, 'woman', 234, 0),
(31, 131, 'woman', 349, 0),
(32, 138, 'woman', 336, 0),
(33, 139, 'woman', 253, 1),
(34, 140, 'woman', 351, 0),
(35, 141, 'woman', 346, 0),
(36, 145, 'woman', 252, 0),
(37, 148, 'woman', 304, 0),
(40, 152, 'woman', 337, 0),
(41, 157, 'woman', 221, 0),
(42, 169, 'woman', 332, 0),
(43, 172, 'woman', 219, 0),
(44, 178, 'woman', 244, 0),
(45, 190, 'woman', 389, 0),
(46, 191, 'woman', 210, 0),
(47, 192, 'woman', 227, 0),
(48, 193, 'woman', 228, 0),
(49, 194, 'woman', 202, 0),
(50, 195, 'woman', 278, 0),
(51, 196, 'woman', 263, 0),
(52, 197, 'woman', 399, 0),
(54, 199, 'woman', 241, 0),
(55, 201, 'woman', 240, 0),
(57, 207, 'woman', 206, 0),
(58, 211, 'woman', 290, 0),
(59, 214, 'woman', 373, 0),
(60, 215, 'woman', 382, 0),
(61, 216, 'woman', 325, 0),
(62, 218, 'woman', 322, 0),
(63, 219, 'woman', 318, 0),
(64, 224, 'woman', 378, 0),
(65, 225, 'woman', 272, 0),
(66, 226, 'woman', 263, 0),
(67, 231, 'woman', 229, 0),
(68, 232, 'woman', 377, 0),
(69, 233, 'woman', 318, 0),
(70, 237, 'woman', 303, 0),
(71, 238, 'woman', 314, 0),
(72, 243, 'woman', 339, 0),
(73, 244, 'woman', 234, 0),
(74, 245, 'woman', 333, 0),
(75, 246, 'woman', 384, 0),
(76, 251, 'woman', 222, 0),
(77, 256, 'woman', 344, 0),
(78, 257, 'woman', 211, 0),
(79, 263, 'woman', 251, 0),
(80, 298, 'woman', 347, 0),
(81, 304, 'woman', 290, 0),
(82, 0, 'man', 286, 0),
(83, 1, 'man', 232, 0),
(84, 2, 'man', 287, 0),
(85, 7, 'man', 201, 0),
(86, 14, 'man', 239, 0),
(87, 15, 'man', 386, 0),
(88, 16, 'man', 211, 0),
(89, 17, 'man', 367, 0),
(90, 18, 'man', 286, 0),
(91, 19, 'man', 247, 0),
(92, 20, 'man', 224, 0),
(93, 21, 'man', 388, 0),
(94, 22, 'man', 306, 0),
(95, 23, 'man', 383, 0),
(96, 24, 'man', 258, 0),
(97, 25, 'man', 391, 0),
(98, 26, 'man', 396, 0),
(99, 27, 'man', 284, 0),
(100, 28, 'man', 258, 0),
(101, 29, 'man', 277, 0),
(102, 30, 'man', 383, 0),
(103, 32, 'man', 368, 0),
(104, 33, 'man', 300, 0),
(105, 34, 'man', 364, 0),
(106, 35, 'man', 262, 0),
(107, 36, 'man', 260, 0),
(108, 37, 'man', 287, 0),
(109, 43, 'man', 246, 0),
(110, 44, 'man', 327, 0),
(111, 45, 'man', 208, 0),
(112, 46, 'man', 381, 0),
(113, 47, 'man', 213, 0),
(114, 48, 'man', 241, 0),
(115, 49, 'man', 268, 0),
(116, 50, 'man', 214, 0),
(117, 51, 'man', 280, 0),
(118, 52, 'man', 254, 0),
(119, 57, 'man', 225, 0),
(120, 58, 'man', 247, 0),
(121, 59, 'man', 340, 0),
(122, 60, 'man', 273, 0),
(124, 62, 'man', 328, 0),
(125, 66, 'man', 380, 0),
(126, 67, 'man', 254, 0),
(127, 68, 'man', 387, 0),
(130, 72, 'man', 270, 0),
(131, 73, 'man', 227, 0),
(132, 78, 'man', 327, 0),
(133, 79, 'man', 253, 0),
(134, 80, 'man', 396, 0),
(135, 81, 'man', 227, 0),
(136, 82, 'man', 217, 0),
(137, 83, 'man', 257, 0),
(138, 84, 'man', 288, 0),
(139, 94, 'man', 305, 0),
(140, 95, 'man', 303, 0),
(141, 96, 'man', 214, 0),
(142, 97, 'man', 314, 0),
(143, 98, 'man', 284, 0),
(144, 99, 'man', 228, 0),
(145, 100, 'man', 355, 0),
(146, 101, 'man', 353, 0),
(147, 102, 'man', 242, 0),
(148, 103, 'man', 235, 0),
(149, 104, 'man', 206, 0),
(150, 105, 'man', 268, 0),
(151, 106, 'man', 283, 0),
(152, 107, 'man', 347, 0),
(153, 108, 'man', 342, 0),
(154, 109, 'man', 355, 0),
(155, 110, 'man', 275, 0),
(156, 111, 'man', 321, 0),
(157, 112, 'man', 208, 0),
(158, 113, 'man', 261, 0),
(159, 114, 'man', 291, 0),
(160, 115, 'man', 258, 0),
(161, 116, 'man', 332, 0),
(162, 117, 'man', 319, 0),
(163, 118, 'man', 386, 0),
(164, 120, 'man', 385, 0),
(165, 121, 'man', 314, 0),
(166, 122, 'man', 213, 0),
(167, 123, 'man', 201, 0),
(168, 124, 'man', 372, 0),
(169, 125, 'man', 301, 0),
(170, 126, 'man', 307, 0),
(171, 127, 'man', 274, 0),
(172, 128, 'man', 316, 0),
(173, 132, 'man', 220, 0),
(174, 133, 'man', 359, 0),
(175, 134, 'man', 344, 0),
(176, 135, 'man', 376, 0),
(177, 136, 'man', 311, 0),
(178, 137, 'man', 387, 0),
(179, 142, 'man', 210, 0),
(180, 143, 'man', 318, 0),
(181, 144, 'man', 255, 0),
(182, 146, 'man', 293, 0),
(183, 147, 'man', 264, 0),
(184, 153, 'man', 397, 0),
(185, 154, 'man', 248, 0),
(186, 155, 'man', 340, 0),
(187, 156, 'man', 318, 0),
(188, 158, 'man', 257, 0),
(189, 159, 'man', 200, 0),
(190, 160, 'man', 208, 0),
(191, 161, 'man', 315, 0),
(192, 162, 'man', 332, 0),
(197, 167, 'man', 314, 0),
(198, 168, 'man', 318, 0),
(199, 170, 'man', 211, 0),
(200, 171, 'man', 214, 0),
(201, 173, 'man', 224, 0),
(202, 174, 'man', 286, 0),
(203, 175, 'man', 330, 0),
(204, 176, 'man', 245, 0),
(205, 177, 'man', 245, 0),
(206, 179, 'man', 274, 0),
(207, 180, 'man', 220, 0),
(208, 181, 'man', 357, 0),
(209, 182, 'man', 260, 1),
(210, 183, 'man', 230, 1),
(211, 184, 'man', 274, 0),
(212, 185, 'man', 315, 0),
(213, 186, 'man', 324, 0),
(214, 187, 'man', 339, 0),
(215, 188, 'man', 312, 0),
(216, 189, 'man', 372, 0),
(217, 200, 'man', 278, 0),
(218, 202, 'man', 229, 0),
(219, 203, 'man', 228, 0),
(220, 204, 'man', 279, 1),
(221, 206, 'man', 237, 0),
(223, 210, 'man', 211, 1),
(224, 212, 'man', 365, 0),
(225, 213, 'man', 245, 1),
(226, 217, 'man', 328, 0),
(227, 220, 'man', 204, 1),
(228, 221, 'man', 359, 1),
(229, 222, 'man', 245, 1),
(230, 223, 'man', 216, 0),
(231, 227, 'man', 374, 1),
(232, 228, 'man', 270, 1),
(233, 229, 'man', 303, 1),
(234, 230, 'man', 304, 0),
(235, 234, 'man', 316, 0),
(236, 235, 'man', 348, 1),
(237, 236, 'man', 378, 1),
(238, 239, 'man', 336, 0),
(239, 240, 'man', 305, 0),
(240, 241, 'man', 238, 0),
(241, 242, 'man', 367, 0),
(242, 247, 'man', 379, 0),
(243, 248, 'man', 354, 0),
(244, 249, 'man', 291, 0),
(245, 250, 'man', 318, 0),
(246, 252, 'man', 265, 1),
(247, 253, 'man', 263, 0),
(248, 254, 'man', 396, 0),
(249, 255, 'man', 294, 0),
(250, 258, 'man', 292, 0),
(251, 259, 'man', 275, 0),
(252, 260, 'man', 332, 0),
(253, 261, 'man', 235, 0),
(254, 262, 'man', 286, 0),
(255, 264, 'man', 296, 0),
(259, 268, 'man', 239, 0),
(260, 269, 'man', 259, 0),
(261, 270, 'man', 318, 0),
(262, 271, 'man', 213, 0),
(263, 272, 'man', 330, 0),
(279, 290, 'man', 366, 1),
(280, 291, 'man', 247, 0),
(281, 292, 'man', 394, 0),
(282, 293, 'man', 240, 0),
(283, 294, 'man', 379, 0),
(284, 295, 'man', 228, 0),
(285, 296, 'man', 326, 0),
(286, 297, 'man', 275, 0),
(287, 299, 'man', 309, 0),
(288, 300, 'man', 340, 0),
(289, 301, 'man', 376, 0),
(290, 302, 'man', 349, 0),
(291, 303, 'man', 399, 0),
(292, 305, 'man', 293, 0),
(293, 306, 'man', 362, 0),
(294, 307, 'man', 328, 0),
(295, 308, 'man', 314, 0),
(296, 309, 'man', 279, 0),
(297, 310, 'man', 373, 0),
(298, 311, 'man', 283, 0),
(299, 312, 'man', 375, 0),
(301, 150, 'woman', 255, 0),
(302, 151, 'woman', 273, 0),
(303, 198, 'woman', 296, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dv_characters`
--
ALTER TABLE `dv_characters`
  ADD PRIMARY KEY (`owning_uid`);

--
-- Indexes for table `dv_users`
--
ALTER TABLE `dv_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_registered` (`ip_registered`),
  ADD KEY `gamepoints` (`gamepoints`),
  ADD KEY `money` (`money`);

--
-- Indexes for table `dv_vehicles`
--
ALTER TABLE `dv_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_anim`
--
ALTER TABLE `ms_anim`
  ADD PRIMARY KEY (`anim_uid`);

--
-- Indexes for table `ms_groups`
--
ALTER TABLE `ms_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_groups_perms`
--
ALTER TABLE `ms_groups_perms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_skinshop`
--
ALTER TABLE `ms_skinshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dv_users`
--
ALTER TABLE `dv_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `dv_vehicles`
--
ALTER TABLE `dv_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `ms_groups`
--
ALTER TABLE `ms_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `ms_groups_perms`
--
ALTER TABLE `ms_groups_perms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT dla tabeli `ms_skinshop`
--
ALTER TABLE `ms_skinshop`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
