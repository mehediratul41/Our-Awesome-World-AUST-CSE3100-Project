-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 06:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `title` varchar(55) NOT NULL,
  `picture` varchar(55) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`title`, `picture`, `description`) VALUES
('WELCOME HOME FELLOW TRAVELER!', 'about.jpg', 'It takes a village to keep this website going. From tech and coding to design to fixing bugs to getting readers their books when downloads fail to scheduling social media or running the forums, I have a lot of help. I simply couldn’t run the website, write, travel, eat, sleep, or anything in between if I didn’t have the support and help of an amazing group of people.\r\n\r\nIt’s not just me writing and posting about my travels. I have a big group of full-time staff helping juggle everything.\r\n\r\nI’ve realized a lot of you don’t know that so, today, I want to introduce the team to you.\r\n\r\nSo, without further ado, here they are:');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Cities'),
(2, 'Adventure '),
(3, 'Trecking'),
(4, 'Cruises'),
(5, 'Festivals'),
(6, 'Festivals 2'),
(7, 'Festivals 3');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `gmail`, `message`) VALUES
(1, 'ratul', 'ratul@gmail.com', 'abcdefghijklmnop'),
(7, 'mehedi', 'ratul44@gmail.com', 'afg'),
(8, 'mehedi', 'ratuldd@gmail.com', 'fshj'),
(9, 'mehedi', 'ratuldd@gmail.com', 'a;gjhgspjs;gjsd;'),
(10, 'ratul', 'ratul44@gmail.com', 'adslj'),
(11, 'mehedi', 'ratul44@gmail.com', 'asdbc'),
(12, 'mehedi', 'mehedihasan@gmail.com', 'nothing'),
(13, 'rahat', 'rahat@gmail.com', 'assgdj;g;sahaasj'),
(14, 'saymon', 'msaymonislamiftikar@gmail.com', 'Cool'),
(15, 'sana', 'sana@gmail.com', 'asdfghj'),
(16, 'mehedihasan', 'mehedihasan@gmail.com', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `gmail`, `password`) VALUES
(1, 'Ratul', 'ratul@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'mehediratul', 'mehediratul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'mehedi ratul', 'mehedihasan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'mh ratul', 'mehediratul41@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'saymon', 'saymon@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `department` varchar(55) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `social` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `department`, `institution`, `social`) VALUES
(1, 'Mehedi Hasan Ratul', 'Computer Science and Engineering', 'Ahsanullah University of Science and Technology', 'linkedin.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `pictures` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`, `pictures`) VALUES
(1, 'SLOVENIA WAS A STUNNING SURPRISE', 'I left my hotel in Ljubljana in search of a wine bar. Google Maps brought up two close by, but the one that said “happy hour” got my attention. After crossing the Triple Bridge, I turned left toward the central market and stumbled across a beer-and-burger festival. Stalls for burger joints and breweries from all over Slovenia lined the plaza. Crowds meandered the rows, ordering food and drinks. A DJ played music, and the nearby steps were filled with people sitting and socializing.\r\n\r\nIt was a wonderful surprise that caused me to abandon my original plans.\r\n\r\nAnd that sums up my time in Slovenia: it was a wonderful surprise.\r\n\r\nSlovenia has been on my list of places to visit for many years, but I just never managed to get there. I was not going to make that mistake on this trip. I was already in next-door Croatia so it would be an easy train ride away.\r\n\r\nHome to just two million people, Slovenia is an oft-overlooked Central European country with a tumultuous past. While tourist hordes flock to Czechia, only a fraction of them visit Slovenia.\r\nHumans have lived here for 250,000 years. The Romans built up the area, especially the capital of Ljubljana, which was a popular trading center. The region was eventually annexed by the Austrian Empire. After World War II, present-day Slovenia was part of Yugoslavia until 1992, when it became independent for the first time in its existence!\r\n\r\nWhen I asked my friends about their visits there, they mentioned how small it was: I could spend a couple of days in Ljubljana, do day trips from there, and visit Piran on the coast; if I really wanted, I could spend a night in Bled. Based on what they said, I felt like a week would be more than enough time to see everything I wanted to.\r\n\r\nAs the train crossed the border from Croatia and glided toward the capital, I was awestruck by the impressive mountains, verdant farmland, and snaking rivers we were passing. The small villages reminded me of Austria (which lies just to the north). I was immediately impressed.', '2021-09-30 23:10:04', 1, 'getstarted1.jpg'),
(2, 'ALBANIA: A CASE FOR SUSTAINABLE TOURISM\r\n', 'Albania is just barely on the tourist map. While its coastal cities have their share of luxury resorts, and while plenty of holidaymakers party in cities like Sarande, Albania’s tourism sector is nothing compared to its neighbors.\r\n\r\nIt only sees around 6.4 million visitors per year, compared to Greece and Croatia, which get 34 million and 19 million respectively.\r\n\r\nNonetheless, prior to the pandemic, tourism in Albania jumped 8% from 2018 to 2019. From 2014 to 2019, it saw a 67% increase in tourism numbers, from 3.6 to 6.4 million.\r\n\r\nThat’s a huge increase in a short period of time.\r\n\r\nMy travels through the country showed me that the writing is clearly on the wall: Albania is going to be the next Croatia. In the same way tourism defines Croatia, so too will it define Albania.\r\n\r\nFirst, the backpacker scene is firmly established in Albania. There are lots of hostels, and backpackers talk about it frequently as a must-visit destination because it’s beautiful and cheap. (Backpackers love cheap destinations.)\r\n\r\nAnd mass tourism always follows the backpackers.\r\n\r\nWhile Albania is still a “weird” place to visit for most non-Europeans, COVID has changed that slightly, especially for Americans. Albania was one of the few countries that only had a short lockdown, and so, with yearlong visas, many Americans flocked there to work remotely during the pandemic.\r\n\r\nBut around the country, signs are pointing to a tourism future marred by unsustainability. While talking to tour operators, hostel owners, journalists, and random folks, there was a constant worry that the Albanian government doesn’t have the foresight and transparency to handle what they all recognized was coming: an explosion of tourists.\r\n\r\nA lot of this ties into Albania’s history. It’s a young democracy, still shaking off the communist and post-communist years. The ’90s and early 2000s were turbulent times, and corruption is still rife. There are huge development projects happening in Tirana that are clearly fronts for money laundering — a lot of buildings are going up and few of them have people in them.', '2021-10-01 16:14:31', 2, 'albaniatourism1.jpg'),
(3, 'THE BEST NEIGHBORHOODS IN BARCELONA: WHERE TO STAY DURING YOUR VISIT', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2021-10-01 15:53:39', 1, 'barcelonaneighborhood1.jpg'),
(4, 'TNN: EVERYTHING YOU WANT & NEED TO KNOW ABOUT TRAVEL INSURANCE', 'Planning a trip can be a lot of fun: researching amazing bucket-list activities, daydreaming about picture-perfect beaches and epic hikes, booking the cheap flights that will take you to the world’s most amazing destinations. Planning gives you ownership of your trip and lets you imagine all the wonderful adventures you’ll have.\r\nThis article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n\r\nAs a member of Nomadic Matt Plus, you not only get tons of perks to make your travels cheaper but you help us keep creating the in-depth travel content you love!\r\n\r\nBest of all, subscribing costs less than the cost of lunch!\r\n\r\nIf you want access to this article (as well as 100+ other member-only articles) and all those other amazing perks, join Nomadic Matt Plus and start getting more out of your travels today!', '2021-10-01 15:53:39', 3, 'treak.jpg'),
(5, 'NM+ WEEKLY UPDATE 7/10/21: CRETE EDITION!', 'Hello from Crete! I’ve been loving this island. It’s fantastic. Since my last update, I spent a week in Santorini and have now been in Crete for the past week. I have another 3 days here before it’s back to Athens.This article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n\r\nAs a member of Nomadic Matt Plus, you not only get tons of perks to make your travels cheaper but you help us keep creating the in-depth travel content you love!\r\n\r\nBest of all, subscribing costs less than the cost of lunch!\r\n\r\nIf you want access to this article (as well as 100+ other member-only articles) and all those other amazing perks, join Nomadic Matt Plus and start getting more out of your travels today!', '2021-09-30 21:27:29', 4, 'greecematt37.jpeg'),
(6, 'THE ULTIMATE GUIDE TO TRAVELING WHEN YOU HAVE NO MONEY\r\n', 'Whenever I ask readers what the number one thing holding them back from traveling is I almost always get the same answer: Money.\r\n\r\nThis is something I hear from everyone I talk to: “Matt, I simply don’t have enough money to travel.”\r\n\r\nThis problem — and how to overcome it — is my most asked question. Over the past 12 years, I have answered this question in a plethora of posts, emails, tweets, and Facebook posts. Long-term readers might even be getting sick of me discussing this subject because it is one I talk about so much. \r\n\r\nBut I know no matter how often I address this question, it will come up again.\r\n\r\nSince this question comes up so often, I like to constantly remind people of this fact: You do not need to be rich to travel.\r\n\r\nLet’s repeat that: You do not need to be rich to travel.\r\n\r\nThere are plenty of ways to travel on a budget (and for free) — you just need to be willing to get creative.\r\n\r\nTraveling the world with no money sounds like an impossible dream. But it is possible, and you can do it responsibly without breaking the bank. It should be said that there are some expenses you shouldn’t compromise on (like travel insurance) but there are tons of ways you can travel the world on a budget — including plenty of ways you can actually travel for free.\r\n\r\nIn this post, I’m going to show you two things:\r\n\r\nHow to travel cheap\r\nHow to travel for free\r\nTraveling cheap is all about taking advantage of helpful apps and websites that save you money, finding ways to lower your expenses, and even making money as you travel. It’s about finding value and lowering your expenses while still being able to afford to do what you wa\r\nA sense of unity lingers in the air, and that’s one of the aspects really adds that little bit extra to the festival for me, ensuring that I will be returning for a third time, in the future.”', '2021-09-30 21:31:01', 5, 'travelnomoney000.jpg'),
(7, 'HOW TO (LEGALLY) STAY IN EUROPE FOR MORE THAN 90 DAYS\r\n', 'When I planned my move to Sweden a few years ago, I tried to figure out how to get past the 90-day limit placed on tourist visas in the Schengen Area. This is a problem encountered by thousands of travelers every year and a question that regularly (especially this time of year) pops up in my inbox.\r\n\r\n“How can I stay in Europe for more than 90 days?”\r\n\r\nIt’s a simple question with a very complicated answer.\r\n\r\nI always knew it was complicated, but until I started researching how to stay there longer, I never knew just how complicated.\r\n\r\nFortunately, in the process of this research, I came to learn there are a few ways to stay in Europe longer than 90 days; they just aren’t well known.\r\n\r\nThis post will teach you the options for staying in Europe over 90 days as well as give you tips on how to move to Europe. But first a few things:', '2021-10-01 15:54:59', 1, 'stayineurope005.jpg'),
(8, 'NOTES FROM MY Carribien Cruise', 'It’s been two weeks since I plopped myself down in my bed in Austin. I’ve enjoyed using the time to catch up on all sorts of life stuff, reading, and sleeping. \r\n\r\nYou’d think that after nearly three months driving around the US, I’d have lots of travel stories to share. \r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by Englis', '2021-10-01 15:54:59', 4, 'royalcaribbeanshipsnassau-1.jpg'),
(9, 'How Much I Spent During Five Weeks in Greece', 'I was actually surprised I spent so much. I went a little over budget. But, to be fair, that is because I also spend like a travel writer. Since I work on the road, it’s very important to me to have a room with a desk and a workspace and those rooms tend to be more expensive.\r\n\r\nSecond, I tend to take way more tours than the average tourist, since I try everything to write about it. And I often hire private guides on my trips. I doubt many of you are going to drop hundreds of euros on multiple private tours.\r\n\r\nBetween private tours, some upscale accommodations, a lot of island-hopping, dropping a few hundred euros on drinks for a group of backpackers (I always pay it forward, since, when I began my travels, people did so for me), I probably spent about 600-700 EUR more than your average traveler. That would have dropped my daily expenses closer to 100 EUR which I think is more realistic for your “average tourist” budget.\r\n\r\nSo, with that said, let’s talk average prices, suggested budgets, and how much YOU really need!', '2021-10-01 15:55:37', 4, 'greececosts1.jpg'),
(10, 'THE SATURDAY CITY: OVERRATED KRAKOW', 'This post was originally written in 2012. It\'s no longer on my blog but I thought I\'d share it here as an important reminder of just how subjective travel is.\r\n\r\nI’m just going to say it: Krakow, Poland, is an overrated destination.\r\n\r\nWhenever I travel through Europe, people always ask me if I’m going to visit Krakow.\r\n\r\n“No,” I usually respond.\r\nThis article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n\r\nAs a member of Nomadic Matt Plus, you not only get tons of perks to make your travels cheaper but you help us keep creating the in-depth travel content you love!\r\n\r\nBest of all, subscribing costs less than the cost of lunch!\r\n\r\nIf you want access to this article (as well as 100+ other member-only articles) and all those other amazing perks, join Nomadic Matt Plus and start getting more out of your travels today!', '2021-09-01 15:55:37', 1, 'krakowpoland.jpeg'),
(11, 'START PLANNING YOUR NEXT ADVENTURE HERE\r\n', 'It can be hard to know where to start when planning your dream trip.\r\n\r\nWhat’s the first step? What’s the second? Third? Fourth?\r\n\r\nTravel can seem like a daunting subject with so much information available and, the longer you go away, the more things you seem to have to think about.\r\n\r\nI want to make planning your next gap year, family vacation, around the world, or backpacking trip simple and easy.\r\n\r\nOn this page, you’ll find a curated list of the best articles on this site related to planning a trip – whether it’s a two week vacation to Italy, or a year-long trip around the world. The tips are broken down into categories so you can find the information you need fast and effectively.', '2021-09-01 15:56:33', 2, 'getstarted1.jpg'),
(12, '12 THINGS I’D TELL ANY NEW TRAVELER\r\n', 'Hope. Fear. Excitement. Traveling for the first time produced a wave of emotions.\r\n\r\nWhen I left to travel the world on my first round-the-world trip, I didn’t know what to expect.\r\n\r\nNow, with fifteen years of travel experience under my belt, I know better. Traveling is second nature to me now. I land in an airport and I just go on autopilot.\r\n\r\nBut, back then, I was as green as they come.\r\n\r\nTo compensate for my lack of experience, I followed my guidebooks and wet my feet by going on organized tours. I was young and inexperienced and I made a lot of rookie travel mistakes.\r\n\r\nI know what it’s like to just be starting out and have a mind filled with questions, anxieties, and concerns.\r\n\r\nSo, if you’re new to travel and looking for advice to help you prepare, here are 12 tips that I’d tell a new traveler to help them avoid some of my early mistakes:', '2021-09-30 21:37:52', 3, 'newtraveler3.jpg'),
(13, 'THE 13 BEST THINGS TO SEE & DO ON THE OREGON COAST', 'Foggy, seeming perpetually damp, vibrantly green, and filled with tiny fishing villages, Oregon’s coast reminds me a lot of my home region of New England. Not so much weather-wise – New England isn’t as damp – but they both have a similar spirit. Here, like there, seafood is king, the towns are tiny and tight-knit, and the people are hardy and welcoming.\r\n\r\nHaving driven this part of the Pacific coast twice now and I can confidently say that this stretch of road is one of the most scenic in the country. While the distance from Astoria in the north to Brookings in the south looks vast on a map, it’s not: you can actually drive along the region’s spine, Route 101, from end to end in a day.\r\n', '2021-09-30 21:35:26', 2, 'oregoncoa.jpg'),
(14, 'NM+ WEEKLY UPDATE: GREECE EDITION (6/26/21)', 'Greeting from Greece! I’m currently in Ios. Now, first, let me say, I know way back in May I said this would be weekly. But these updates have been anything but weekly. Last week, I was traveling. The week before, it was my birthday. So, let me say that these updates will happen as frequently as possible but I can’t promise them every week! I just want to set realistic expectations.This article is exclusively for members of Nomadic Matt Plus! NM+ is our member\'s only program that gives readers like yourself access to bonus blog posts. Members also get free books, guidebooks, blogging courses, access to our events, event replays, monthly giveaways, t-shirts, exclusive money-saving travel discounts, and more!\r\n', '2021-09-30 21:33:01', 1, 'greececosts1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
