-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 02, 2019 at 12:04 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses_tbl`
--

DROP TABLE IF EXISTS `courses_tbl`;
CREATE TABLE IF NOT EXISTS `courses_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `title` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_tbl`
--

INSERT INTO `courses_tbl` (`id`, `code`, `title`, `created_at`) VALUES
(1, 'BSCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE 2018', '2019-01-28 14:59:44'),
(3, 'BSMATH', 'BACHELOR OF SCIENCE IN MATHEMATICS', '2019-01-31 16:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info_tbl`
--

DROP TABLE IF EXISTS `personal_info_tbl`;
CREATE TABLE IF NOT EXISTS `personal_info_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(60) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info_tbl`
--

INSERT INTO `personal_info_tbl` (`id`, `fullname`, `birthdate`, `gender`, `address`, `mobile`, `created_at`) VALUES
(1, 'Jerome Fabricante', '2019-01-31', 'Male', 'Block 4 Lot 24 Buklod Bahayan Tartaria Silang Cavite', '(0927) 2612690', '2018-07-24 01:28:18'),
(5, 'JUAN DELA CRUZ', '2018-07-25', 'Male', 'TARTARIA SILANG CAVITE', '(0932) 132-1321', '2018-07-28 15:29:58'),
(6, 'TEST', '1990-07-11', 'Male', 'TEST', '(1321) 321-3211', '2018-07-28 15:31:46'),
(7, 'TSET1', '2018-08-05', 'Male', 'TEST1', '(6546) 546-5465', '2018-08-05 08:48:28'),
(8, 'TEST TRY', '2019-01-15', 'Male', 'TRY', '(2132) 132-1321', '2019-01-23 13:07:03'),
(9, 'ADMINISTRATOR', '2019-01-26', 'Male', 'SILANG CAVITE', '(6546) 549-8798', '2019-01-26 12:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles_tbl`
--

DROP TABLE IF EXISTS `roles_tbl`;
CREATE TABLE IF NOT EXISTS `roles_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_tbl`
--

INSERT INTO `roles_tbl` (`id`, `name`, `created_at`) VALUES
(1, 'Administrator', '2018-07-24 00:49:55'),
(2, 'Student', '2018-07-24 00:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_tbl`
--

DROP TABLE IF EXISTS `subjects_tbl`;
CREATE TABLE IF NOT EXISTS `subjects_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `units` int(11) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `sem` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects_tbl`
--

INSERT INTO `subjects_tbl` (`id`, `code`, `title`, `units`, `year`, `sem`, `course_id`, `description`, `created_at`) VALUES
(1, 'GE1', 'Understanding The Self', 3, 1, 1, 1, 'Who am I? Why am I this way? Why do I make certain choices? Can I change? This beginners\' course presents the main theories and explains how psychologists measure personality and intelligence. Psychological and neuroscientific theories will be explored. Topics covered include basic definitions of personalities and its measurement, trait theory, psychoanalytic theories, neurobiological research from brain scanning studies and theories of emotion and motivation. The course explains how psychologists measure personality and intelligence and describes the key tools used in their assessment. It also considers abnormal personality and the definition, diagnosis and treatment of personality disorders.', '2019-01-28 14:59:45'),
(2, 'GE2', 'Mathematics in The Modern World', 3, 1, 1, 1, 'In a modern world, math such as applied mathematics is not only relevant, it\'s crucial. Applied mathematics is the branches of mathematics that are involved in the study of the physical, biological, or sociological world. The idea of applied mathis to create a group of methods that solve problems in science. Topics include linear and exponential growth; statistics; personal finance; andgeometry, including scale and symmetry. Emphasizes techniques of problem-solving and application of modern mathematics to understanding quantitative information in the everyday world.', '2019-01-28 14:59:45'),
(3, 'GE3', 'Science Technology and Society', 3, 1, 1, 1, 'Science, Technology and Society(STS) is a field interested in the nature of science and it’s place in society. STS applies the methods of history, philosophy and sociology of science to answer these and other questions. At the University of Puget Sound, STS majors are also required to do substantial work in the sciences themselves, as a necessary complement to their reflection on science as a human activity. STS has its roots in the history of science, philosophy of science, and sociology of science. “Science and Technology Studies” is a term that is sometimes used for a closely related field. Around the United States, there are several dozen universities that have programs in these areas, including more than a dozen with undergraduate programs. There are undergraduate STS programs at universities in the United Kingdom, Canada, and Australia as well. At the University of Puget Sound, STS majors take a common sequence of four mainstream courses, distributed over their undergraduate years. The remainder of the degree requirements are decided in concert with the student’s advising committee. The goal is to provide each student with an individually tailored program that achieves a balance between breadth and concentration in the student’s special area of interest.', '2019-01-28 14:59:45'),
(4, 'GE4', 'Purposive Communication', 3, 1, 1, 1, 'Purposive Communication is writing, speaking and presenting to different audiences and for various purposes. Purposive Communication for 21st Century Learners. ... Communication 1 focused on improving the grammar of the students while Communication 2 was a training in writing academic papers such as report, concept, position, and research paper. Writing, speaking and presenting to different audiences and for varied purposes. The five skills of communication (listening,speaking, reading, writing, viewing) are studied and simulated in advanced academic settings, such as conversing intelligently on a subject of import,reporting on group work and/or assignments, writing and delivering a formal speech, writing minutes of meetings and similar documents, preparing a research or technical paper, and making an audio-visual or web-based presentation.', '2019-01-28 14:59:45'),
(5, 'CC1', 'Introduction to Computing', 3, 1, 1, 1, 'A computer is a multipurpose electronic device that can receive, process and store data. They are used as tools in every part of society together with the Internet. Computers nowadays are complex; there are a lot of different components inside them, and they all serve different purposes. Computer input is called data and the output obtained after processing it, based on user’s instructions is called information. Raw facts and figures which can be processed using arithmetic and logical operations to obtain information are called data. A computer is a device that accepts information (in the form of digitalized data) and manipulates it for some result based on a program or sequence of instructions on how the data is to be processed. ... Today\'s computers have both kinds of programming.', '2019-01-28 14:59:45'),
(6, 'CC2', 'Fundamentals of Programming (C/C++)', 3, 1, 1, 1, 'Programming is an increasingly important skill, whether you aspire to a career in software development, or in other fields. This course is the first in the specialization Introduction to Programming in C, but its lessons extend to any language you might want to learn. This is because programming is fundamentally about figuring out how to solve a class of problems and writing the algorithm, a clear set of steps to solve any problem in its class. This course will introduce you to a powerful problem-solving process—the Seven Steps—which you can use to solve any programming problem. In this course, you will learn how to develop an algorithm, then progress to reading code and understanding how programming concepts relate to algorithms. C is a procedural programming language. It was initially developed by Dennis Ritchie between 1969 and 1973. It was mainly developed as a system programming language to write operating system. The main features of C language include low-level access to memory, simple set of keywords, and clean style, these features make C language suitable for system programming like operating system or compiler development. Many later languages have borrowed syntax/features directly or indirectly from C language. Like syntax of Java, PHP, JavaScript and many other languages is mainly based on C language. C++ is nearly a superset of C language (There are few programs that may compile in C, but not in C++). C++ is a general-purpose object-oriented programming (OOP) language, developed by Bjarne Stroustrup, and is an extension of the C language. It is therefore possible to code C++ in a \"C style\" or \"object-oriented style.\" In certain scenarios, it can be coded in either way and is thus an effective example of a hybrid language. C++ is considered to be an intermediate-level language, as it encapsulates both high- and low-level language features. Initially, the language was called \"C with classes\" as it had all the properties of the C language with an additional concept of \"classes.\" However, it was renamed C++ in 1983. It is pronounced \"see-plus-plus.\" C++ is one of the most popular languages primarily utilized with system/application software, drivers, client-server applications and embedded firmware. The main highlight of C++ is a collection of predefined classes, which are data types that can be instantiated multiple times. The language also facilitates declaration of user-defined classes. Classes can further accommodate member functions to implement specific functionality. Multiple objects of a particular class can be defined to implement the functions within the class. Objects can be defined as instances created at run time. These classes can also be inherited by other new classes which take in the public and protected functionalities by default. C++ includes several operators such as comparison, arithmetic, bit manipulation and logical operators. One of the most attractive features of C++ is that it enables the overloading of certain operators such as addition. A few of the essential concepts within the C++ programming language include polymorphism, virtual and friend functions, templates, namespaces and pointers.', '2019-01-28 14:59:45'),
(7, 'NSTP1', 'Civic Welfare Training Service', 3, 1, 1, 1, 'refers to the Program component or activities contributory to the general welfare and the betterment of life for the members of the community or the enhancement of its facilities, especially those devoted to improving health, education, environment, entrepreneurship, safety, recreation and moral of the citizenry and other social welfare services. Importance of CWTS. Civic Welfare Training Service (CWTS) helps students to be aware of their importance to the society. Along with Military Science and Literacy Education, CWTS was instituted by the Republic Act 9163. These programs promote patriotism and nationalism to our youth.', '2019-01-28 14:59:45'),
(8, 'PE1', 'Physical Fitness', 2, 1, 1, 1, 'Physical fitness is your ability to carry out tasks without undue fatigue. Learn about the components of physical fitness: cardiorespiratory endurance, muscle strength, muscle endurance, flexibility and body composition and why they are important. Regular exercise and physical activity promotes strong muscles and bones. It improves respiratory, cardiovascular health, and overall health. Staying active can also help you maintain a healthy weight, reduce your risk for type 2 diabetes, heart disease, and reduce your risk for some cancers.', '2019-01-28 14:59:45'),
(9, 'CC3', 'Intermediate Programming (Java PPL)', 3, 1, 2, 1, 'This tutorial introduces you to capabilities of the Java language that are more sophisticated than those covered in the \"Introduction to Java programming\" tutorial (see Related topics for a link to this and other material referenced in this tutorial). In order to get to the most out of this tutorial, you should have completed that introductory tutorial, or be familiar with the concepts covered in it.', '2019-01-28 14:59:45'),
(10, 'CC4', 'Data Structures and Algorithm', 3, 1, 2, 1, 'Algorithm is a step-by-step procedure, which defines a set of instructions to be executed in a certain order to get the desired output. Algorithms are generally created independent of underlying languages, i.e. an algorithm can be implemented in more than one programming language.', '2019-01-28 14:59:45'),
(11, 'CC5', 'Information Management (RDBMS/MySQL)', 3, 1, 2, 1, 'Students acquire the basic knowledge and skills needed to effectively utilize information systems and technology in support of organizational strategy. Topics include an introduction to information systems in organizations; strategy and information systems leadership; databases and data management; information networks; the Internet and social media; enterprise resource planning and business applications; e-business; wireless and mobile technology; knowledge management; developing and implementing information systems; security and information systems auditing; information ethics and privacy; and practical skills using operating systems, word processing and spreadsheet software.', '2019-01-28 14:59:45'),
(12, 'PRC1', 'Discrete Structures 1', 3, 1, 2, 1, 'A set is an unordered collection of distinct objects. The objects in a set are called the elements, or members, of the set. A set is said to contain its elements.', '2019-01-28 14:59:45'),
(13, 'GE5', 'Arts Appreciation (HUM 1)', 3, 1, 2, 1, 'This course covers the study of Visual Arts, Performing Arts, Cinema, and Literature. • It will expose students to Classical and contemporary artists, their works, and the environment in which they lived, which inspired them to create. • The lectures will be supplemented by visits to galleries, museums, studios, and the cinema and other areas relevant to the subject.', '2019-01-28 14:59:45'),
(14, 'GE6', 'Readings in The Philippine History', 3, 1, 2, 1, 'MARINDUQUE STATE COLLEGE SCHOOL OF COMMUNITY AND HEALTH CARE MIDWIFERY PROGRAM (Member, APSOM) NURSING PROGRAM (Re-Accredited Level 2-AACCUP) P. Manguera Sr. Road, Tanza, Boac, Marinduque Learning Task No. 2 Name: Claire Alcober Date: Course/Section: BSN-1A Rating: TOPIC MAIN ARGUMENT BIAS IMPORTANCE IN UNDERSTANDING PHILIPPINE HISTORY First Voyage Around the World by Magellan  Magellan travelled the around the world because of the spices but the truth is he was funded by the King of Spain because of the gold that can be found in Butuan, Philippines.  Magellan was the one who introduced Christianity in the Philippines.  The written document is based on the perspective of Antonio Pigafetta. It proved that the world is not flat. It explained that the cultures and traditions of countries vary from one another.', '2019-01-28 14:59:45'),
(15, 'NSTP2', 'Literacy Training Service', 3, 1, 2, 1, 'This session provides a framework for motivating students to read, engage in reading, and improve their reading skills within the context of an afterschool program. Participants receive a package of information on available resources to help build an afterschool reading program and advance the reading achievement of all students.', '2019-01-28 14:59:45'),
(16, 'PE2', 'Rhythmic Activities', 2, 1, 2, 1, 'Every individual has rhythm. It is found in all of nature and is natural to every individual. Rhythm is most clearly seen through dance- the art of movement', '2019-01-28 14:59:45'),
(17, 'APC1', 'Web Development 1 (PHP/MYSQL)', 3, 2, 1, 1, 'Typically it refers to the coding and programming side of web site production as opposed to the web design side. ... Common web development programming languages and software include Hypertext Mark up Language (HTML), Cascading Style Sheets (CSS), JavaScript, PHP, Drupal and MySQL. PHP is a fast and feature-rich open source scripting language used to develop Web Applications or Internet / Intranet Applications. MySQL is a powerful open source database server built based on a relational database management system (RDBMS) and is capable of handling a large concurrent database connection. When combined together, talented PHP and MySQL developers can build very powerful and scalable Web / Internet / Intranet Applications. PHP and MySQL are referred to as development tools. PHP and MySQL are Open Source, meaning that they are free development tools, and there is a large community of dedicated volunteer programmers who contribute to make improvements and are continuously adding features to it. The development tools and database servers that require licensing costs have limited programming resources compared to open source development tools, which have an enormous and fast growing dedicated and knowledgeable community that extends around the world. There has been disagreement about which tool is better. Naturally, the developer who is more familiar with one tool over the other will stand behind the tool that he or she has experience with. With our experience, we have found that, PHP and MySQL are the best development tools. When developed correctly, applications can be built with clean and simple usability, complex functionality, speed, power and scalability.', '2019-01-28 14:59:45'),
(18, 'PRC2', 'Design and Analysis of Algorithms', 3, 2, 1, 1, 'An Algorithm is a sequence of steps to solve a problem. Design and Analysis of Algorithm is very important for designing algorithm to solve different types of problems in the branch of computer science and information technology. This tutorial introduces the fundamental concepts of Designing Strategies, Complexity analysis of Algorithms, followed by problems on Graph Theory and Sorting methods. This tutorial also includes the basic concepts on Complexity theory. The readers should have basic knowledge of programming and mathematics. The readers should know data structure very well. Moreover, it is preferred if the readers have basic understanding of Formal Language and Automata Theory.', '2019-01-28 14:59:45'),
(19, 'APC2', 'Taxation', 3, 2, 1, 1, 'Tax law in the Philippines covers national and local taxes. National taxes refer to national internal revenue taxes imposed and collected by the national government through the Bureau of Internal Revenue (BIR) and local taxes refer to those imposed and collected by the local government. General tax refers to a general levy by a government that offers no special benefit to the taxpayer, but only a support to governmental programs that benefit all. It is a source of public revenue. The lien for general taxes is paramount to all other claims and liens. Certain groups of people who meet specific criteria don\'t have to pay income taxes. For example, if you\'re single, under the age of 65, and your yearly income is less than $9,350, or married, under 65, with income less than $18,700, you\'re exempt from paying taxes. A means by which governments finance their expenditure by imposing charges on citizens and corporate entities. Governments use taxation to encourage or discourage certain economic decisions. For example, reduction in taxable personal (or household) income by the amount paid as interest on home mortgage loans results in greater construction activity, and generates more jobs.', '2019-01-28 14:59:45'),
(20, 'AMSTAT', 'Probability and Statistics', 3, 2, 1, 1, 'Statistics is about data (observations). In statistics we organize and analyze data. We come up with statements that somehow summarize what the data looks like all together, like \"the average score on the test was 81.\" That statement doesn\'t reveal anything about anyone\'s individual test scores, but it still tells something about how the class did as a whole. The kid who got a 47 can run home to mom and dad and brag that his class averaged an 81, and they might be so proud they take him out for ice cream. His parents are apparently not statistics experts. Statistics is where we find the words \"average,\'\' \"mean,\" \"median,\" and \"mode.\'\' They can also be found in a dictionary, but they\'re slightly trickier to track down. Someone really should arrange all those words into alphabetical order. Probability is about planning experiments and comparing the number of possible outcomes to the number of outcomes you want. If we roll a die and want to roll either a 1 or a 6, there are 6 possible outcomes (any of the 6 faces of the die could land facing up), but only 2 that we actually want to happen (either the 1 or the 6 facing up). Of course, if you have money on it your odds decrease substantially, as you\'ll then have some anti-gambling karma working against you.', '2019-01-28 14:59:45'),
(21, 'PRC3', 'Operating Systems', 3, 2, 1, 1, 'An operating system is the most important software that runs on a computer. It manages the computer\'s memory and processes, as well as all of its software and hardware. It also allows you to communicate with the computer without knowing how to speak the computer\'s language. Windows 7 is the most popular operating system for desktop and laptop computers.Android is the most popular smartphone operating system. iOS is the most popular tablet operating system. Variants of Linux are most widely used in the Internet of things and smart devices.', '2019-01-28 14:59:45'),
(22, 'FIL1', 'Komunikasyon sa Akademikong Pilipino', 3, 2, 1, 1, 'Layunin ng aklat na malunasan ang mga suliranin na nararanasan sa pang-araw-araw na pamumuhay kaugnay ng maling pakikipagkomunikasyon. Ang kawalan ng kakayahan sa wastong pakikipagtalastasan ay nagbubunga ng kaguluhan sa lahat ng sitwasyon na kanilang kinasasangkutan mula sa pinakamaliit hanggang sa pinakamalaking institusyon ng lipunan – ang tahanan, pamayanan, paaralan, simbahan at maging sa pamahalaan. Apat na makrong kasanayan ang pagtutuunan sa Filipino I: Pakikinig, Pagsasalita, Pagbasa, Pagsulat. Hindi nilagyan ng at bago ang huling kasanayan para ipahiwatig na alinman sa apat na ito ay pwedeng unahin o ihuli, kung kaya maaaring hindi ganito ang pagkakasunud-sunod. Ang mga kaalaman at kasanayan ay maaaring maipaunawa mula sa binigkis na kaalaman at kasanayan ng mga disiplinang linggwistik, sosyo-psycholinggwistik, communication theory at iba pa. Kailangan dito ang aktibong pakikilahok at pakikibahagi ng mga partisipant ng klase na magsisilbing interlokutor sa komunikasyong nagaganap sa klasrum kaya ang buong klase ay interaktiv, isa lang sa mga partisipant/interlokutor ay ang guro. Hindi dapat siyang hari/reyna sa klase na magpapaikot, magmamanipula at magmomonopolisa sa diskusyon/komunikasyon kanyang lektyur.', '2019-01-28 14:59:45'),
(23, 'PRC4', 'Discrete Structures 2', 3, 2, 1, 1, 'Mathematics & Statistics (Sci) : Review of mathematical writing, proof techniques, graph theory and counting. Mathematical logic. Graph connectivity, planar graphs and colouring. Probability and graphs. Introductory group theory, isomorphisms and automorphisms of graphs. Enumeration and listing.', '2019-01-28 14:59:45'),
(24, 'PE3', 'Individuals Sports', 2, 2, 1, 1, 'There are certain sports, such as golf, bowling, and tennis that, for the most part, are considered individual sports, which are sports played alone without teammates. Yes, there are exceptions, such as the Ryder Cup in golf, in which two teams from either side of the Atlantic Ocean compete, but often the competition is for an individual trophy.', '2019-01-28 14:59:45'),
(25, 'PRC5', 'Computer Organization and Architecture', 3, 2, 2, 1, 'Computer organization and architecture mainly focuses on various parts of the computer in order to reduce the execution time of the program, improve the performance of each part. Generally, we tend to think computer organization and computer architecture as same but there is slight difference.', '2019-01-28 14:59:45'),
(26, 'PRC6', 'Programming Languages (Design and Implementation)', 3, 2, 2, 1, 'The research interests of the faculty in the Programming Language Principles, Design, and Implementation group cover a wide spectrum of topics related to the semantic and logic foundations of programming languages, language design, type theory, compilers, program analysis and optimization, program specification and construction, and emerging models of computation.', '2019-01-28 14:59:45'),
(27, 'GE7', 'Ethics', 3, 2, 2, 1, 'At its simplest, ethics is a system of moral principles. They affect how people make decisions and lead their lives. Ethics is concerned with what is good for individuals and society and is also described as moral philosophy. The term is derived from the Greek word ethos which can mean custom, habit, character or disposition.', '2019-01-28 14:59:45'),
(28, 'APC3', 'Web Development 2 (Codeigniter/Phalcon/NodeJS)', 3, 2, 2, 1, 'The World Wide Web (or simply Web) is the most popular service on the Internet. The development of the web was partly responsible for the rapid increase in the number of people who used the Internet in the late 1990s. The World Wide Web consists of millions of different sites, each of which contains information. Each site is identified by a unique address called a Uniform Resource Locator or URL. The information at a site is stored in the form of pages which can contain text, pictures, sound and video. Because web pages can contain so many different types of information they can be designed to be attractive, informative and interesting.', '2019-01-28 14:59:45'),
(29, 'APC4', 'Technoprenuership', 3, 2, 2, 1, 'Technopreneurship is not a product but a process of synthesis in engineering the future of a person, an organization, a nation and the world. In a digital, knowledge-based society, strategic directions or decision-making processes will be demanding and complex. This requires tertiary level and professional development programs and training to produce strategic thinkers who will have the skills to succeed in a dynamically changing global environment. Traditional educational programs, however, lack the methodology to transform today’s students into creative, innovative, visionary global leaders who understand the importance of technopreneurship.', '2019-01-28 14:59:45'),
(30, 'PRE1', 'Fundamentals of Accounting', 3, 2, 2, 1, 'This is primarily for individuals in the \"doing business as (DBA)\" category. The benefits of a sole proprietorship include relative freedom from regulation, though you are not exempt from investigation and prosecution of criminal or unlawful activity. You have full control of the entire company, and all profits go right to the owner or individual. The drawback is that the owner/individual has unlimited personal liability, meaning in layman\'s terms that if you get sued, the party bringing suit can go after all of your personal assets, including your house, car, and pets.', '2019-01-28 14:59:45'),
(31, 'FIL2', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, 2, 2, 1, 'Ang kursong ito ay naglalayong mapalawak ang kaalaman at kasanayan ng mga mag- aaral sa kritikal na pagbasa at lohikal n pagsulat tungo sa pagsasagawa ng sariling pananaliksik.', '2019-01-28 14:59:45'),
(32, 'PE4', 'Team Sports', 2, 2, 2, 1, 'The purpose of this course is to provide learning experiences that will lead to the development of basic skills in team sports. In addition to skill acquisition, the course will focus on how to plan and implement the four stages of skill development in games through the use of extending, refining, and application tasks. An emphasis will be placed on the use of the game stages and movement framework as a guide for designing a variety of sport game experiences for students in grades 5-12.', '2019-01-28 14:59:45'),
(33, 'PRC7', 'Automata and Language Theory', 3, 3, 1, 1, 'Automata Theory is a branch of computer science that deals with designing abstract self propelled computing devices that follow a predetermined sequence of operations automatically. An automaton with a finite number of states is called a Finite Automaton. This is a brief and concise tutorial that introduces the fundamental concepts of Finite Automata, Regular Languages, and Pushdown Automata before moving onto Turing machines and Decidability. This tutorial has a good balance between theory and mathematical rigor. The readers are expected to have a basic understanding of discrete mathematical structures.', '2019-01-28 14:59:45'),
(34, 'PRC8', 'Software Engineering 1', 3, 3, 1, 1, 'Software engineering is the process of analyzing user needs and designing, constructing, and testing end user applications that will satisfy these needs through the use of software programming languages. It is the application of engineering principles to software development. And in this subject will do the chapter 1 2 3(documentation). And here are the list you will do..', '2019-01-28 14:59:45'),
(35, 'PRC9', 'Object Oriented Programming (Adv. Java)', 3, 3, 1, 1, 'is a programming language model organized around objects rather than \"actions\" and data rather than logic. Historically, a program has been viewed as a logical procedure that takes input data, processes it, and produces output data. Object Oriented programming is a programming style that is associated with the concept of Class, Objects and various other concepts revolving around these two, like Inheritance, Polymorphism, Abstraction, Encapsulation etc.', '2019-01-28 14:59:45'),
(36, 'APC5', 'Methods of Research', 3, 3, 1, 1, 'Research methodology is a term that basically means the science of how research is done scientifically. It is a way to systematically and logically solve a problem, help us understand the process not just the product of research, and analyses methods in addition to the information obtained by them.', '2019-01-28 14:59:45'),
(37, 'PRC10', 'Networks and Communications', 3, 3, 1, 1, 'Data communications refers to the transmission of this digital data between two or more computers and a computer network or data network is a telecommunications network that allows computers to exchange data. ... The devices that transmit or receive this data, such as a phone or a computer, are referred to as nodes. A communication network refers to the method that employees pass on information to other employees in an organization. Let\'s take a look at four different types: the wheel network, chain network, circle network, and all-channel network.', '2019-01-28 14:59:45'),
(38, 'CC7', 'App Dev. and Emerging Tech (Mobile Base)', 3, 3, 1, 1, 'It is a dynamic world and the world of mobile app development is particularly evolving at a really fast pace! This is primarily because the needs of the users are changing all the time and new technologies are always on the brink. Emerging technologies are technologies that are perceived as capable of changing the status quo. ... Emerging technologies include a variety of technologies such as educational technology, information technology, nanotechnology, biotechnology, cognitive science, psycho technology, robotics, and artificial intelligence.', '2019-01-28 14:59:45'),
(39, 'FIL3', 'Masining na Pagpapahayag', 3, 3, 1, 1, 'ay tumutukoy sa sining ng maayos, malinaw, mabisa at kaakit-akitna pagpapahayag upangmaunawaan at makahikayat sa mga nakikinig at bumabasa.Dalawang kawastuan ang kinakailangan sapagpapahayag : ang kawastuang pambalarilaat ang kawastuang panretorika.', '2019-01-28 14:59:45'),
(40, 'PRC11', 'Software Engineering 2', 3, 3, 2, 1, 'You should find a balance between no documentation and excessive documentation. Poor documentation causes many errors and reduces efficiency in every phase of a software product development. At the same time, there is no need to provide an abundance of documentation and to repeat information in several papers. Only the most necessary and relevant information should be documented. Finding the right balance also entails analyzing the project’s complexity before development starts.', '2019-01-28 14:59:45'),
(41, 'APC6', 'Social Issues and Professional Practice', 3, 3, 2, 1, '1Social Issues and Professional Practice (SP)\r\n2 While technical issues are central to the computing curriculum, they do not constitute a complete\r\n3 educational program in the field. Students must also be exposed to the larger societal context of\r\n4 computing to develop an understanding of the relevant social, ethical, legal and professional\r\n5 issues. This need to incorporate the study of these non-technical issues into the ACM curriculum\r\n6 was formally recognized in 1991, as can be seen from the following excerpt [Tucker91]:\r\n7 Undergraduates also need to understand the basic cultural, social, legal, and ethical\r\n8 issues inherent in the discipline of computing. They should understand where the\r\n9 discipline has been, where it is, and where it is heading. They should also understand\r\n10 their individual roles in this process, as well as appreciate the philosophical questions,\r\n11 technical problems, and aesthetic values that play an important part in the development\r\n12 of the discipline.\r\n13 Students also need to develop the ability to ask serious questions about the social\r\n14 impact of computing and to evaluate proposed answers to those questions. Future\r\n15 practitioners must be able to anticipate the impact of introducing a given product into a', '2019-01-28 14:59:45'),
(42, 'PRC12', 'Thesis Writing 1', 3, 3, 2, 1, 'The thesis is one of the most important concepts in college expository writing. A thesis sentence focuses your ideas for the paper; it\'s your argument or insight or viewpoint crystallized into a sentence or two that gives the reader your main idea.', '2019-01-28 14:59:45'),
(43, 'PRE2', 'Intelligent System (AI) with Python', 3, 3, 2, 1, 'The ability of a system to calculate, reason, perceive relationships and analogies, learn from experience, store and retrieve information from memory, solve problems, comprehend complex ideas, use natural language fluently, classify, generalize, and adapt new situations.', '2019-01-28 14:59:45'),
(44, 'PRC13', 'Fundamentals of Human Computer Interaction', 3, 3, 2, 1, 'aims to sensitize the systems designer to the problems faced by the user of an interactive system. ... Part Three deals with user interfaces. The chapters in this section cover topics such as work station design, user interface design, and speech communication.', '2019-01-28 14:59:45'),
(45, 'PRC14', 'Thesis Writing 2', 3, 4, 1, 1, 'The purpose of this chapter is to summarize the collected data and the statistical treatment, and/or mechanics, of analysis. The first paragraph should briefly restate the problem, taken from Chapter 1. Explain the object of each experiment, question, or objective, point out salient results, and present those results by table, figure, or other form of summarized data. Select tables and figures carefully. Some studies are easier to defend if all the raw data is in this chapter; some are better if the bulk of the raw data is in an appendix. And this is the continuous of Thesis Writing 1. Includes here the Chapter 4 and 5.', '2019-01-28 14:59:45'),
(46, 'PRE3', 'Graphics and Visual Computing (HCI)', 3, 4, 1, 1, 'Graphics, Vision, and Human-Computer Interaction (HCI) spans the research areas of geometric modelling; computer graphics rendering and animation; information and scientific visualization; computer audio and music; and human-computer interfaces. Visual computing and HCI are wide-ranging fields, encompassing such topics as computer graphics, image processing, display and user interface design, computer vision, and scene understanding. This research can help machines to perceive and understand their environment, on the one hand, and to present information to and interact with users on the other.', '2019-01-28 14:59:45'),
(47, 'PRE4', 'Computational Science (Modeling Simulation)', 3, 4, 1, 1, 'A computer simulation or a computer model is a computer program that attempts to simulate an abstract model of a particular system. ... Computer simulations build on, and are a useful adjunct to purely mathematical models in science, technology and entertainment. Modelling is the act of building a model. A simulation is the process of using a model to study the behaviour and performance of an actual or theoretical system. In a simulation, models can be used to study existing or proposed characteristics of a system.', '2019-01-28 14:59:45'),
(48, 'GE8', 'Life and Works of Rizal', 3, 4, 1, 1, 'JOSE RIZAL, the national hero of the Philippines and pride of the Malayan race, was born on June 19, 1861, in the town of Calamba, Laguna. He was the seventh child in a family of 11 children (2 boys and 9 girls). Both his parents were educated and belonged to distinguished families. His father, Francisco Mercado Rizal, an industrious farmer whom Rizal called \"a model of fathers,\" came from Biñan, Laguna; while his mother, Teodora Alonzo y Quintos, a highly cultured and accomplished woman whom Rizal called \"loving and prudent mother,\" was born in Meisic, Sta. Cruz, Manila. At the age of 3, he learned the alphabet from his mother; at 5, while learning to read and write, he already showed inclinations to be an artist. He astounded his family and relatives by his pencil drawings and sketches and by his moldings of clay.', '2019-01-28 14:59:45'),
(49, 'GE9', 'The Contemporary World', 3, 4, 1, 1, 'The circumstances and ideas of the present age. Globalization refers to the growing economic interdependencies of countries worldwide through the increasing volume and variety of cross-border transactions in goods and services and of international capital flows, as well as through the rapid and widespread diffusion of technology and information.', '2019-01-28 14:59:45'),
(50, 'PRC15', 'Internship/OJT/Practicum(Outside 200hrs/In School 50hrs)', 3, 4, 2, 1, 'On the job training is cost effective for companies because it often requires fewer resources than having to recruit new employees. Staff members lacking proper training are likelier to leave the company either by their own choice, or through termination by the business for poor performance. Training employees while they are working, as opposed to sending them to an offsite location, increases the chance that learned information will be fully assimilated. Additionally, employees often find onsite training more enjoyable than having to go to a classroom away from the job.', '2019-01-28 14:59:45'),
(51, 'PRC16', 'Information Assurance and Security', 3, 4, 2, 1, 'Information assurance and security is a rapidly growing field, but what’s it all about? How can you start working in information security? Do you have the right skills and education? If you’re looking to grow your career in a new direction and turn your love of computer science into a lucrative paycheck, you’ve come to the right place. Keep reading to learn more about this exciting field and whether it’s a good fit for you.', '2019-01-28 14:59:45'),
(52, 'APC7', 'Foreign Language (Nihongo) CMO23 52010', 3, 4, 2, 1, 'Japanese, known to native speakers as Nihongo, is spoken by 127 million people, most of whom reside in Japan, though significant Japanese-speaking emigrant populations live in the US and Brazil and other countries. It is the 9th most commonly spoken language on the planet.', '2019-01-28 14:59:45'),
(53, 'APC8', 'Seminar and Tours', 3, 4, 2, 1, 'The College Seminar Tour gives secondary school counselors the opportunity to learn more about colleges and universities around the state of Wisconsin. While you’re gaining valuable insight into the uniqueness of the schools in which your students show interest, you can also earn three graduate credits toward the renewal of your state license. The graduate credits, offered through Marian University of Fond du Lac, are approved by the Department of Public Instruction and endorsed by the Wisconsin Association for College Admission Counseling and the Wisconsin Association of Independent Colleges and Universities.', '2019-01-28 14:59:45'),
(82, 'ENCA 122', 'Communication Arts II ', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(81, 'MATH 125', 'Fundamentals of Computing I ', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(80, 'MATH 122', 'Analytic Geometry', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(79, 'MATH 120', 'Funda. Concepts of Mathematics', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(78, 'CWTS111', 'NSTP I ', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(77, 'PHED 111', 'Physical Education I', 2, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(76, 'RELB 111', 'The Gospel ', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(75, 'HIST 111 ', 'Philippine History', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(74, 'FILI 111', 'Kom. sa Akademikong Filipino', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(73, 'ENCA 111', 'Communication Arts I', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(72, 'MATH 121 ', 'Statistics', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(71, 'MATH 112 ', 'College Trigonometry', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(70, 'MATH 111', 'College Algebra', 3, 1, 1, 3, NULL, '2019-01-31 16:29:28'),
(83, 'FILI 122', 'Pagbasa at Pagsulat tungo sa Pananaliksik', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(84, 'RELB 122', 'The Destiny of Man', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(85, 'PHED 122', 'Physical Education II', 2, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(86, 'CWTS 122', 'NSTP II', 3, 1, 2, 3, NULL, '2019-01-31 16:29:28'),
(87, 'MATH 211', 'Plane and Solid Geometry', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(88, 'MATH 213', 'Calculus I', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(89, 'PHYS 211', 'General Physics I Lecture', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(90, 'PHYS 211L', 'General Physics I Lab.', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(91, 'PSYC 111', 'General Psychology', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(92, 'RELB 213', 'Daniel and Revelation', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(93, 'PHED 213', 'Physical Education III ', 2, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(94, 'VOED 111', 'Home Skills', 3, 2, 1, 3, NULL, '2019-01-31 16:29:28'),
(95, 'MATH 220', 'Linear Algebra', 3, 2, 2, 3, NULL, '2019-01-31 16:29:28'),
(96, 'MATH 224', 'Calculus II ', 3, 2, 2, 3, NULL, '2019-01-31 16:29:28'),
(97, 'MATH', 'Applied Math Elective I', 3, 2, 2, 3, NULL, '2019-01-31 16:29:28'),
(98, 'FILI 213', 'Masining na Pagpapahayag', 3, 2, 2, 3, NULL, '2019-01-31 16:29:28'),
(99, 'RELB 224', 'Adventist Heritage', 3, 2, 2, 3, NULL, '2019-01-31 16:29:28'),
(100, 'PHED 224', 'Physical Education IV', 2, 2, 2, 3, NULL, '2019-01-31 16:29:28'),
(101, 'MATH 310', 'Probability', 3, 3, 1, 3, NULL, '2019-01-31 16:29:28'),
(102, 'MATH 311', 'Differential Equations I', 3, 3, 1, 3, NULL, '2019-01-31 16:29:28'),
(103, 'MATH 313', 'Calculus III', 3, 3, 1, 3, NULL, '2019-01-31 16:29:28'),
(104, 'ENPL 211', 'Philippine Literature', 3, 3, 1, 3, NULL, '2019-01-31 16:29:28'),
(105, 'SOSC 113', 'Pol. & Gov. w/ Phil. Constitution', 3, 3, 1, 3, NULL, '2019-01-31 16:29:28'),
(106, 'VOED', 'Vocational Elective', 2, 3, 1, 3, NULL, '2019-01-31 16:29:28'),
(107, 'MATH 320', 'Modern Geometry', 3, 3, 2, 3, NULL, '2019-01-31 16:29:28'),
(108, 'MATH 321', 'Abstract Algebra I ', 3, 3, 2, 3, NULL, '2019-01-31 16:29:28'),
(109, 'MATH', 'Applied Math Elective II', 3, 3, 2, 3, NULL, '2019-01-31 16:29:28'),
(110, 'MATH', 'Applied Math Elective III', 3, 3, 2, 3, NULL, '2019-01-31 16:29:28'),
(111, 'SOSC 124', 'Basic Economics w/ TAR', 3, 3, 2, 3, NULL, '2019-01-31 16:29:28'),
(112, 'MATH 400', 'Thesis/Special Problem', 3, 4, 1, 3, NULL, '2019-01-31 16:29:28'),
(113, 'MATH 415', 'Advanced Calculus I', 3, 4, 1, 3, NULL, '2019-01-31 16:29:28'),
(114, 'BIOL 111', 'Biological Science', 3, 4, 1, 3, NULL, '2019-01-31 16:29:28'),
(115, 'SOSC 212', 'Life and Works of Rizal', 3, 4, 1, 3, NULL, '2019-01-31 16:29:28'),
(116, 'FAHU 221', 'Introduction to Humanities', 3, 4, 1, 3, NULL, '2019-01-31 16:29:28'),
(117, 'MATH 426', 'Advanced Calculus II', 3, 4, 2, 3, NULL, '2019-01-31 16:29:28'),
(118, 'MATH 421', 'Complex Analysis', 3, 4, 2, 3, NULL, '2019-01-31 16:29:28'),
(119, 'PHIL 121', 'General Philosophy', 3, 4, 2, 3, NULL, '2019-01-31 16:29:28'),
(120, 'SOSC 215', 'Society and Culture w/ Family Planning', 3, 4, 2, 3, NULL, '2019-01-31 16:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

DROP TABLE IF EXISTS `users_tbl`;
CREATE TABLE IF NOT EXISTS `users_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `username`, `password`, `email`, `p_id`, `b_id`, `created_at`) VALUES
(1, 'yo', 'yo', 'fabricantejerome@gmail.com', 1, 1, '2018-07-24 01:29:00'),
(2, 'juan', 'juan', 'juan@gmail.com', 5, 1, '2018-07-28 15:29:58'),
(3, 'test', 'test', 'test@gmail.com', 6, 1, '2018-07-28 15:31:46'),
(4, 'test1', 'test1', 'test1@gmail.com', 7, 1, '2018-08-05 08:48:28'),
(5, 'ya', 'ya', 'ya@gmail.com', 8, 0, '2019-01-23 13:07:03'),
(6, 'admin', 'admin', 'admin@gmail.com', 9, 0, '2019-01-26 12:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_tbl`
--

DROP TABLE IF EXISTS `user_role_tbl`;
CREATE TABLE IF NOT EXISTS `user_role_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role_tbl`
--

INSERT INTO `user_role_tbl` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 1, 2, '2018-07-24 01:47:13'),
(2, 2, 1, '2018-07-28 15:29:58'),
(3, 3, 2, '2018-07-28 15:31:46'),
(4, 4, 2, '2018-08-05 08:48:28'),
(5, 5, 2, '2019-01-23 13:07:03'),
(6, 6, 1, '2019-01-26 12:53:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
