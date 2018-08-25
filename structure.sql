
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sa_characters`
--

CREATE TABLE `sa_characters` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int(11) NOT NULL DEFAULT '100',
  `armor` int(11) NOT NULL DEFAULT '0',
  `skin` int(11) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '10000',
  `owner_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sa_users`
--

CREATE TABLE `sa_users` (
  `aid` int(11) NOT NULL,
  `login` varchar(24) CHARACTER SET utf8 NOT NULL DEFAULT 'u_000000',
  `password` varchar(64) NOT NULL DEFAULT 'haslo',
  `rank` int(1) NOT NULL DEFAULT '0',
  `is_online` tinyint(1) DEFAULT '0',
  `serial` varchar(64) DEFAULT NULL,
  `all_dp` int(11) DEFAULT '0', -- podliczona liczba wszystkich pkt. driftu
  `time_played` int(11) DEFAULT '0',
  `email` varchar(48) NOT NULL DEFAULT 'unkown@domain.com',
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Struktura tabeli dla tabeli `sa_vehicles`
--

CREATE TABLE `sa_vehicles` (
  `id` int(11) NOT NULL,
  `wlasciciel` int(11) NOT NULL DEFAULT '-1',
  `model` smallint(6) NOT NULL DEFAULT '605',
  `x,y,z` varchar(128) DEFAULT '[[ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]]',
  `rx,ry,rz` varchar(256) DEFAULT '[[ 0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]]',
  `r,g,b` varchar(64) DEFAULT '[[ 0,0, 0,0, 0,0 ]]',
  `fuel` float NOT NULL DEFAULT '100'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `sa_characters`
--
ALTER TABLE `sa_characters`
  ADD PRIMARY KEY (`owner_uid`);

--
-- Indexes for table `sa_users`
--
ALTER TABLE `sa_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_dp` (`all_dp`),
  ADD KEY `money` (`money`),
  ADD KEY `drift_point` (`drift_point`);

--
-- Indexes for table `sa_vehicles`
--
ALTER TABLE `sa_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `sa_users`
--
ALTER TABLE `sa_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `sa_vehicles`
--
ALTER TABLE `sa_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

