-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 05:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `acc_id` int(50) NOT NULL,
  `acc_owner` varchar(75) NOT NULL,
  `acc_number` varchar(20) NOT NULL,
  `acc_routing_number` varchar(20) NOT NULL,
  `acc_type` varchar(11) NOT NULL DEFAULT 'savings',
  `acc_balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(50) NOT NULL,
  `company_symbol` varchar(50) NOT NULL,
  `company_name` varchar(1000) NOT NULL,
  `company_description` varchar(2500) NOT NULL,
  `company_employees` varchar(50) NOT NULL,
  `company_address` varchar(75) NOT NULL,
  `company_zip` varchar(10) NOT NULL,
  `company_country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_symbol`, `company_name`, `company_description`, `company_employees`, `company_address`, `company_zip`, `company_country`) VALUES
(1001, 'AGRO', '3 Round Stones, Inc.', '3 Round Stones produces a platform for publishing data on the Web. 3 Round Stones provides commercial support for the Callimachus Data Platform, used by the Fortune 2000 and US Government Agencies publishing and consuming data.  Headquartered in Arlington, Virginia, we\'re seasoned entrepreneurs who are passionate about solving real world problems through open data and open Web standards.', '8154', 'P.O. Box 542, 2264 Sed Rd.', '6722', 'Andorra'),
(1002, 'T', '48 Factoring Inc.', 'The company mission is to provide finance to small business. We also provide financing to small business with bad credit too on the basis of future credit.', '9892', '4266 Eget Ave', '108615', 'Guyana'),
(1003, 'BAF', '5PSolutions', 'At 5PSolutions, we wish to make all basic information of different categories easily available to via tablets or phones.', '655', '3286 Ipsum Rd.', '9609', 'Cape Verde'),
(1004, 'BAH', 'Abt Associates', 'Abt Associates is a mission-driven, international company conducting research and program implementation in the fields of health, social and environmental policy, and international development. The company has multiple offices in the U.S. and program offices in more than 40 countries.', '6875', 'Ap #186-2288 Sapien Rd.', '951335', 'Montserrat'),
(1005, 'CHK', 'Accela', 'Accela powers thousands of services and millions of transactions for more than 500 public agencies worldwide, enabling governments to connect with citizens and streamline processes related to land management, asset management, licensing, and public health & safety. Accela addresses a broad range of agency, business and citizen needs, and includes built-in payment, scheduling, compliance and information transparency. Together with our partners, Accela can custom-tailor solutions based on precise agency specifications, or deploy packaged solutions based on best practice templates and pre-defined services in a matter of a few weeks.', '297', 'Ap #550-6478 Nullam St.', '69991', 'Martinique'),
(1006, 'BBVA', 'Accenture', 'Accenture delivers its services and solutions through 19 focused industry groups in five operating groups. This industry focus provides Accentureâ€™s professionals with a thorough understanding of industry evolution, business issues and applicable technologies, enabling Accenture to deliver solutions tailored to each client\'s industry.', '5223', '297-8034 Aenean St.', '19234', 'Ghana'),
(1007, 'BCEI', 'AccuWeather', 'AccuWeather provides local forecasts for everywhere in the United States and over two million locations worldwide. AccuWeather also provides our products and services to more than 175,000 paying customers in media, business, government and institutions. Our headquarters in State College, PA, is home to the greatest number of forecast meteorologists in one location anywhere in the world.', '8983', '712-7665 Tempor Avenue', '236009', 'Kiribati'),
(1008, 'BCH', 'Acxiom', 'Acxiom is an enterprise data, analytics and software as a service company. For more than 40 years, Acxiom has harnessed the powerful potential of data to strengthen connections between people, businesses and their partners.', '2866', 'Ap #936-7218 Interdum Road', '992740', 'Belize'),
(1009, 'BCO', 'Adaptive', 'Adaptive offers standards-based solutions that help organizations better align their valuable information by supporting specific management challenges including Data Governance, Data Quality, Metadata Management, Enterprise Architecture Management and IT Portfolio Management.', '8955', 'P.O. Box 968, 3614 Vitae Av.', '195410', 'Mauritania'),
(1010, 'CPS', 'Code for America', 'Founded in 2009, Code for America (CfA) is a nonprofit that partners with local governments and citizens to foster civic innovation. By working to reinvigorate civic participation, accelerate the civic startup marketplace, facilitate collaboration between government leaders, and build new tools that enhance and strengthen communities, CfA is helping governments solve old problems in new ways. CfA is working towards a government by the people, for the people, that works in the 21st Century.', '1942', '3758 Morbi St.', '29074', 'Lesotho'),
(1011, 'CPT', 'Aidin', 'Aidin helps hospitals and their patients choose the highest quality post-acute care available to them. By streamlining hospital staff\'s search process for available post-acute care and tracking and sharing with patients how well providers have performed with similar patients in the past, Aidin helps hospitals reduce length of stay and prevent costly and dangerous readmissions from post-acute care.', '7706', '1905 Elit, Avenue', 'E3P 6C2', 'Rwanda'),
(1012, 'DXC', 'Alarm.com', 'Alarm.com is a technology provider of connected home services, powering well over one million residential and commercial installations. Through its connected home platform, millions of people use Alarm.com to help protect and manage the things that matter most â€“ their homes, families, and small businesses. Alarm.com connects a wide range of supported devices across the internet of things to provide an integrated connected home experience through an intelligent cloud-based services platform and easy to use mobile app. Alarm.com solutions are sold exclusively through a network of licensed and authorized Dealer Partners.', '8905', '785-6731 Feugiat Street', '83-122', 'Curaçao'),
(1013, 'DY', 'Allianz', 'Allianz Life Insurance Company is a provider of retirement solutions, including fixed and variable annuities and life insurance for individuals.', '754', 'P.O. Box 155, 3952 Non, St.', '8068', 'New Caledonia'),
(1014, 'EAB', 'Allied Van Lines', 'Allied Van Lines is a global relocation company, serving individuals and corporations all over the world for their transportation and storage needs.', '5668', 'Ap #510-5907 Mauris Road', '465365', 'Bhutan'),
(1015, 'EAE', 'Collective IP', 'Collective IP was founded in 2011 with a singular mission: Accelerate the commercialization of global R&D through a marketplace that uniquely surfaces ideas, technologies and inventors; and quickly catalyze the connection between buyers and sellers of these assets in a revolutionary way. To accomplish this goal we built a comprehensive and accurate organization of technologies emerging from universities, companies and inventors.', '3201', '8661 Quis Rd.', '4689', 'Liechtenstein'),
(1016, 'GE', 'Alltuition', 'Alltuition.com makes sure you donâ€™t miss out on financial aid. Based on the colleges where you\'re applying for aid, we instantly match you to your opportunities and help you maximize your chances for aid.', '6749', 'P.O. Box 753, 4429 Est. Avenue', '47-213', 'Cambodia'),
(1017, 'BAC', 'Altova', 'At Altova, our mission is to deliver standards-based, platform-independent software development tools that empower our customers to create, access, edit and transform information resources. Altova is the creator of XMLSpyÂ® and other award-winning XML, SQL, and UML tools.', '6642', 'P.O. Box 178, 6728 Erat. Avenue', '53632', 'Moldova'),
(1018, 'EXR', 'College Abacus, an ECMC initiative', 'An ECMC initiative, College Abacus is a free service that allows users to compare their projected financial aid packages across schools and to identify schools within their budgets. Using net price calculators (NPCs) built by US colleges as mandated by the Higher Education Opportunity Act of 2008, College Abacus has built a system that generates estimates for more than 3800 post-secondary institutions in the United States.', '2781', 'P.O. Box 333, 9620 Vitae Ave', '46869-325', 'Mongolia'),
(1019, 'SWN', 'American Red Ball Movers', 'American Red Ball Movers is a major long distance moving company in the US that serves families and businesses.', '8160', 'Ap #864-890 Amet St.', '4382', 'Monaco'),
(1020, 'TGT', 'Amida Technology Solutions', 'Amida develops patient-centered solutions based on the Blue Button personal health record (PHR). The Amida Personal Health Information Exchange solution allows enterprises to offer capabilities that place the patient at the center of their health data. It enables two-way communication between patients and primary care physicians, pharmacies, labs, and specialty care providers. This means that patients, for the first time, will have a coherent view of all their health information.', '4503', 'Ap #602-9131 Mi Rd.', '0647 AM', 'Barbados'),
(1021, 'GDO', 'College Board', 'The College Board is a mission-driven not-for-profit organization that connects students to college success and opportunity. Founded in 1900, the College Board was created to expand access to higher education. Today, the membership association is made up of more than 5,900 of the worldâ€™s leading educational institutions and is dedicated to promoting excellence and equity in education. Each year, the College Board helps students prepare for a successful transition to college through programs and services in college readiness and college success â€” including the SATÂ® and the Advanced Placement ProgramÂ®. The organization also serves the education community through research and advocacy on behalf of students, educators and schools.', '3837', 'P.O. Box 930, 5135 Eleifend. Rd.', 'J59 1AA', 'Puerto Rico'),
(1022, 'GDOT', 'Apextech LLC', 'Apextech LLC\'s mission is to provide clients with effective tools and methods to measure their performance. As your provider of choice, Apextech addresses, analyzes, and evaluates current business processes and systems in order to effectively modify or augment our clientâ€™s capabilities. Our solutions are forward-thinking, flexible and scalable.', '2186', '782-6644 Sed Road', '179301', 'Saint Pierre and Miquelon'),
(1023, 'GDV', 'Appallicious', 'Appallicious (http://www.appallicious.com) is an open data visualization company that creates open data products for government agencies using our proprietary platform. Current products include: Disaster Assessment and Assistance Dashboard (DAAD), Code Enforcement Dashboard (CEAD), Apartment Facts, SF Rec & Park App, Neighborhood Score. The civic start-up has also developed the SkippittTM platform, which enables governments and businesses to generate revenue by leveraging your existing customer base and extending it via mobile. Appallicious is based in San Francisco, CA and is a Silicon Valley Innovation Summit A0250 to Watch Winner.', '2676', '7948 Ornare Rd.', '4975', 'Andorra'),
(1024, 'GEN', 'Aquicore', 'Aquicore is an Energy Intelligence Solution, combining software and next-generation metering technology to cost-effectively monitor and analyze real-time energy data across commercial real estate properties. Aquicoreâ€™s platform centralizes critical energy data and provides intuitive and graphical interfaces to streamline management and team collaboration. It\'s hardware allows for cost-effective and rapid deployment across hundreds of properties in a matter of months regardless of building age, size, or BMS system. Aquicore\'s platform enables organizations to make timely decisions that improve staff productivity, reduce energy waste, increase tenant satisfaction and meet strategic energy goals.', '8917', 'P.O. Box 413, 1108 Sit St.', '7175', 'United States Minor Outlying Islands'),
(1025, 'GEO', 'Archimedes Inc.', 'Archimedes is a healthcare modelling and analytics organization. With the Archimedes Model at its core, the company enables people to combine real-world healthcare data and simulation data to create compelling and actionable evidence used in individual healthcare decision-making, as well as populations, with applications in health and economic outcomes research, policy creation, and clinical trial design and operations.', '7567', 'P.O. Box 207, 3244 Dapibus Rd.', 'G39 5YT', 'Timor-Leste'),
(1026, 'F', 'AreaVibes Inc.', 'AreaVibe works to provide you with everything you need to know about every city in the United States. The AreaVibe algorithm assigns a total score (â€œAreaVibeâ€ in our speak) based on the most important metrics for each city, including: cost of living, crime rates, education, employment, health & safety, housing, weather, transportation, local businesses and even user reviews. The higher the score, the better the city (in our opinion).', '6374', '332-1273 Morbi Rd.', '397281', 'British Indian Ocean Territory'),
(1027, 'GES', 'Arpin Van Lines', 'Arpin Van Lines is a privately owned moving services company, a subsidiary of Arpin Group,  that specializes in U.S. domestic and worldwide moving and storage services, global information storage management services and environmental stewardship through its various subsidiaries.', '2903', 'P.O. Box 877, 9018 Vivamus Av.', '25363', 'Austria'),
(1028, 'GHC', 'Compendia Bioscience Life Technologies', 'Compendia Bioscience aims to be the most relevant provider of high-value genomic data, helping our customers find cures for cancer using genomic data and suggesting available, high-potential therapies for individual patients based on their distinct genomic profiles.', '9497', 'Ap #928-929 Nunc, St.', '439648', 'Czech Republic'),
(1029, 'GHG', 'ASC Partners', 'ASC Partners offers business financial applications specific to small-to-medium size organizations in various industries. We provide extensive experience in technologies involving business process analyses, back office accounting systems, business applications, software integration, and analytical solutions. We design cost-effective plans for customers to achieve ongoing productivity.', '8176', '440-8221 Augue, Street', 'C4B 3GT', 'Oman'),
(1030, 'GHL', 'Asset4', 'ASSET4 AG provides investment research information on economic, environmental, social, and governance (ESG) aspects of corporate performance. The company provides a database containing ESG information of publicly listed companies, countries, local authorities, state-owned companies, and supranational entities in a Web based architecture. It also provides equity-focused solutions and fixed income solutions for professional investors and corporate executives; extra-financial information for fixed income investments; and carbon data and estimates.', '9906', 'P.O. Box 790, 1792 Ut Ave', '53079', 'Canada'),
(1031, 'GHM', 'Atlas Van Lines', 'Atlas Van Lines is a subsidiary of Atlas World Group, a family of companies headquartered in Evansville, Indiana. Atlas serves markets for global relocation, benefits, recruiting, logistics and travel, through a network of more than 500 Atlas Agents in the United States and Canada, and service partners operating in 140 countries around the world. A commitment to integrity, quality and solutions still guides the company, just as Atlas Agent-owners still set the policies that further service excellence.', '3316', '698-6041 Quisque Rd.', '30436', 'Curaçao'),
(1032, 'GHY', 'AtSite', 'AtSite\'s open-source technology and building performance solutions help organizations maximize the strategic value and long-term performance of real estate assets. Our experts enable executives and building management teams to reduce costs, mitigate risk and scale for greater efficiency.', '661', '3466 Et St.', '75781', 'Isle of Man'),
(1033, 'GIB', 'Aunt Bertha, Inc.', 'At Aunt Bertha, Inc., we collect all federal, state, county, city, neighborhood, and charity program information and put it in one place. If it\'s based on need, then we collect it. Using information we learn about programs, and what we learn from the user, we intelligently match people with services that are designed specifically for their situation.', '7365', '712-6231 Metus. Ave', '338381', 'Western Sahara'),
(1034, 'M', 'CoolClimate', 'The CoolClimate Network (CCN) is a division of UC Berkeley\'s Renewable and Appropriate Energy Laboratory (RAEL). CCN carries out research on carbon footprint mitigation, develops carbon management tools for public, business and government users and implements best practice programs grounded in behavior research to engage business and individuals in voluntary carbon reductions. All calculations and data are fully transparent, published on our website and in peer-reviewed research.', '6254', '103-4790 Natoque St.', '7601', 'Antarctica'),
(1035, 'GJO', 'AutoGrid Systems', 'AutoGrid Systems is organizing the world\'s energy data by bringing Internet scale cloud-computing to process and analyze the petabytes of energy data produced from an increasingly networked and automated grid. AutoGrid then employs big data analytics to generate real-time predictions that creates actionable data for electricity generators, providers, grid operators, and their customers to improve the utilization of the grid and manage the cost to serve.', '8673', 'Ap #485-8598 Ullamcorper. Av.', '50310', 'Italy'),
(1036, 'GJP', 'Avalara', 'Avalara has created a web-based platform that provides a complete package of automated end to end compliance services. Avalara works within your own financial, billing, ecommerce, or point of sale system to automate sales and use tax and compliance. Once configured, you never again worry about ever-changing, impenetrable rates, rules, boundaries, exemptions, tax holidays, reporting requirements, filing deadlines, etc. Avalara combines technology with available statutory content to deliver fully automated sales tax compliance solutions.', '2350', 'P.O. Box 751, 8719 Faucibus Av.', '58-992', 'Cameroon'),
(1037, 'ECA', 'Avvo', 'Avvo.com is a legal marketplace for consumers and attorneys. In Avvo\'s Q&A forum, consumers can get free legal advice 24/7 from more than 160,000 participating lawyers, and Avvo\'s directory provides comprehensive profiles, client reviews, peer endorsements and the industry-recognized Avvo Rating for more than 97 percent of all lawyers in the U.S. Avvo also helps lawyers grow their business with Avvo Ignite, a cloud-based marketing platform and website solution designed specifically for attorneys.', '1432', 'Ap #676-9613 Ac Avenue', '269738', 'Belize'),
(1038, 'GLOG', 'Ayasdi', 'Ayasdi is an enterprise software platform that changes the way the organizations discover, extract and operationalize insights from complex data. Our approach combines advanced machine-learning with Topological Data Analysis (TDA) to automate how data scientists, domain experts, and business people achieve value from their data without the need to write code, queries, or ask questions. Ayasdiâ€™s customers include General Electric, Citigroup, Merck, Anadarko, U.S. Food and Drug Administration (FDA), Centers for Disease Control and Prevention (CDC), the University of California San Francisco (UCSF), and Mount Sinai Hospital.', '7365', 'P.O. Box 241, 1240 Orci Road', '71114', 'Zimbabwe'),
(1039, 'RIG', 'Copyright Clearance Center', 'Copyright Clearance Center (CCC) is a global rights broker for the worldâ€™s most sought-after books, journals, blogs, movies and more. CCC provides smart solutions that simplify the access and licensing of content. These solutions let businesses and academic institutions quickly get permission to share copyright-protected materials, while compensating publishers and creators for the use of their works. CCC provides information solutions to companies of all sizes, as well as academic institutions, law firms, healthcare organizations and government agencies.', '402', '4193 Metus. Road', '12165', 'Saint Lucia'),
(1040, 'GLP', 'BaleFire Global', 'BaleFire Global provides training, civic engagement and client success to NGOs and governments around the world. As an Open Data Institute Node we provide open data thought leadership and strategy as well as implementation and custom design. Our goal is to build a citizen experience the leads to transparency and positive economic impact using your open government data.', '7313', 'Ap #537-2258 Ipsum Rd.', '13971', 'Gabon'),
(1041, 'CPE', 'Barchart', 'Barchart.com is a full-service provider of futures, equity and foreign exchange market data. Barchart provides a wide range of market data products and solutions. As an established organization in an industry that demands accuracy and innovation, Barchartâ€™s goal is to form partnerships that deliver comprehensive solutions for success, and has clients in the financial, agricultural, energy and media industries.', '575', '4352 Donec Ave', '71042', 'Fiji'),
(1042, 'MDR', 'Be Informed', 'Be Informed is an internationally operating, independent software vendor. The Be Informed business process platform transforms administrative processes. Thanks to Be Informedâ€™s unique semantic technology and solutions, business applications become completely model-driven, allowing organizations to instantly execute on new strategies and regulations.', '3956', '997-3312 Aenean Ave', '6830', 'Israel'),
(1043, 'LOW', 'Bekins', 'Bekins offers private and corporate domestic and international household goods relocation services as well as special commodities and logistic services.', '8779', 'P.O. Box 273, 512 Diam Avenue', '1953 KB', 'Jordan'),
(1044, 'GPC', 'Berkery Noyes MandASoft', 'MandAsoft.com, provided by Berkery Noves, is an information service that provides mergers and acquisitions data via a hosted and searchable database. It is based on the Berkery Noyes Information Industry Weekly report, a resource for mergers and acquisitions data for many top executives of companies that have been shaping the future of information. Although anyone interested in M&A would find MandAsoft.com to be useful, this service is geared towards a C-level executive who wants to quickly find and review information industry transactions and companies with an eye toward finding a match for their own products and services.', '7787', 'Ap #554-9156 Fusce St.', '90620-680', 'Finland'),
(1045, 'GPI', 'Berkshire Hathaway', 'Berkshire Hathaway Inc. is a holding company owning subsidiaries engaged in a number of diverse business activities. The Company is engaged in the insurance businesses conducted on both a primary basis and a reinsurance basis, a freight rail transportation business and a group of utility, and energy generation and distribution businesses. Berkshire also owns and operates a number of other businesses engaged in a variety of activities.', '9331', '657-5943 Est Ave', '61008', 'Montenegro'),
(1046, 'MO', 'BetterLesson', 'BetterLesson is focused on aggregating and scaling the content and practices from high-performing teachers across the country. BetterLesson was founded by a group of public schools teachers to connect educators and help them create, organize, and share their curricula.', '4686', '5177 Erat, Ave', '2605', 'Guadeloupe'),
(1047, 'HTGC', 'BillGuard', 'BillGuard\'s mission is to use data to save people money. American consumers lose over $14 billion a year to legal grey charges which result from misleading sales and billing practices. We developed advanced crowd-sourcing technology to collect and analyze billing dispute data from millions of consumers in order to extract patterns of fraud and \"Grey Charges\". We use these analytics to monitor our user\'s credit and debit card statements, alerting them to similar charges on their cards and helping them get their money back.', '6293', '252-504 At Av.', '385768', 'Jamaica'),
(1048, 'HTH', 'Bing', 'Bing is a decision (search) engine from Microsoft that combines technology from the Farecast and Powerset acquisitions, as well as new algorithms and a more colorful page design, to attempt to understand the context behind the search, which Microsoft claims gives users better results.', '7087', 'Ap #318-2083 Fermentum St.', '53548', 'Brazil'),
(1049, 'HTY', 'Biovia', 'Accelrys is a provider of scientific innovation lifecycle management software and services. By bridging the productivity gap between innovation and commercialization, scientific innovation lifecycle management (SILM) streamlines product development, speeds time-to-market and improves competitiveness for science-driven organizations in the pharmaceutical, biotechnology, chemical, energy, aerospace, consumer packaged goods and industrial products industries, as well as in government and academia.', '931', '2986 Urna Ave', '2451', 'Peru'),
(1050, 'HTZ', 'BizVizz', 'BizVizz gives ordinary people corporate citizenship metrics by allowing them to see shareable tax data, jobs data, and other financial information hidden in regulatory documents. We collect all the important data by sifting through hundreds of regulatory documents, financial statements, and advocacy reports. A free and open API allows developers to build apps with the data and researchers to easily access the data from one trusted source.', '6792', 'Ap #797-3742 Sed St.', 'R9L 0X8', 'Saint Martin'),
(1051, 'JBN', 'BlackRock', 'BlackRock offers mutual funds, closed-end funds, managed accounts and alternative investments to individuals, institutions and financial professionals. Our mission is to create a better financial future for our clients.', '8646', '8967 Vehicula St.', '26303', 'Morocco'),
(1052, 'KOP', 'Computer Packages Inc', 'Computer Packages Inc. provides intellectual property management systems and patent annuity payment services. Our exclusive patent audit service improves your ability to manage acquisitions and/or divestitures efficiently.', '2540', '343-1096 Feugiat St.', '469021', 'Trinidad and Tobago'),
(1053, 'KOS', 'CONNECT-DOT LLC.', 'CONNECT-DOT are providers of data driven strategies and services, which deliver long term commercial and social benefits, based upon our clients key business requirements. The strategies evolved should be economical, efficient, durable and flexible and empower the organizations and governments to respond rapidly to both market and customer needs.', '8008', '2939 Leo. Ave', '80709', 'Solomon Islands'),
(1054, 'KTB', 'Boston Consulting Group', 'BCG is a global management consulting firm that identifies opportunities and challenges for clients from the private, public, and nonprofit sectors. BCG\'s customized approach combines deep insight into the dynamics of companies and markets with close collaboration at all levels of the client organization.', '5766', 'P.O. Box 310, 8117 Ac, Avenue', '15-281', 'Rwanda'),
(1055, 'KTF', 'Boundless', 'Boundless supports customers with a variety of solutions including commercial open source maintenance, spatial IT infrastructure, and data management and analysis tools. Our mission is to develop and maintain the best open source software for geospatial applications. Our roots are in the open source community and our team members are actively involved core contributors and steering committee members across many open source geospatial projects. The foundation of our company is based on the knowledge that openness leads to better collaboration, better software and greater innovation.', '9650', 'Ap #935-4150 Nonummy Ave', '8251', 'Guinea-Bissau'),
(1056, 'KTH', 'Bridgewater', 'Bridgewater manages approximately $150 billion in global investments for a wide array of institutional clients, including foreign governments and central banks, corporate and public pension funds, university endowments and charitable foundations.', '86', 'P.O. Box 111, 8517 Posuere St.', '70131', 'Armenia'),
(1057, 'KTN', 'Brightscope', 'BrightScope is a financial information company that brings transparency to opaque markets. Delivered through web-based software, BrightScope data drives better decision-making for individual investors, corporate plan sponsors, asset managers, broker-dealers, and financial advisors. BrightScope primarily operates in two major segments: Retirement Plans and Wealth Management.', '2129', '308-7968 Est Ave', 'E7A 8T1', 'Uruguay'),
(1058, 'AB', 'BuildFax', 'BuildFax collects and organizes the data that helps companies solve critical property-related problems. The BuildFax U.S. Property History database is a proprietary property intelligence engine and data resource that contains building and permitting information from cities and counties throughout the country.', '6464', 'P.O. Box 151, 4036 Ac, Av.', '41-786', 'Bosnia and Herzegovina'),
(1059, 'WMB', 'Buildingeye', 'Buildingeye has designed a new web application that geolocates planning application data in cities, from Dublin to Seattle, so that people can see whatâ€™s being planned in their area.', '4307', '7491 Mauris St.', '42019', 'Pakistan'),
(1060, 'LPI', 'CoreLogic', 'CoreLogic is a leading global property information, analytics and data-enabled services provider. The company\'s combined data from public, contributory and proprietary sources includes over 3.3 billion records spanning more than 40 years, providing detailed coverage of property, mortgages and other encumbrances, consumer credit, tenancy, location, hazard risk and related performance information. The markets CoreLogic serves include real estate and mortgage finance, insurance, capital markets, and the public sector. CoreLogic delivers value to clients through unique data, analytics, workflow technology, advisory and managed services. Clients rely on CoreLogic to help identify and manage growth opportunities, improve performance and mitigate risk. Headquartered in Irvine, CA, CoreLogic operates in North America, Western Europe and Asia Pacific.', '9513', 'P.O. Box 375, 9421 Justo St.', '24095', 'Qatar'),
(1061, 'LPL', 'Business and Legal Resources', 'Business & Legal Resources helps U.S. businesses simplify compliance with state and federal legal requirements, and we help them become more successful. We do this by offering content and practical tools. Through our in-house editors and attorney network, we provide comprehensive, state-specific information in all 50 states. We offer our businesses of all sizes and industries information products, including training programs, events, web portals, reports and subscription services.', '342', 'P.O. Box 149, 5364 Volutpat. Street', '88476', 'Albania'),
(1062, 'LPT', 'Business Monitor International', 'Business Monitor provides trusted, independent analysis and forecasts on countries, industries and financial markets.', '2031', '529-3541 Ac Rd.', '37829', 'Malta'),
(1063, 'LPX', 'Calcbench, Inc.', 'Calcbench is a company that fully harnesses the power of the new, government mandated data standard called XBRL. This gives us a direct line into the SEC\'s corporate financial data repository. As a result, we are able to provide data with a whole new level of detail, faster, and at a much better value. Our expertise is that we process and store all XBRL filings in a uniquely structured, cloud based data universe. We use advanced computing techniques to identify and correct errors (close to half a million corrections made so far), and increase comparability between companies. We make data available to you within minutes after a filing leaves the CFOs hands.', '9223', '6785 Eleifend Rd.', '40-540', 'Uganda'),
(1064, 'PFE', 'Cambridge Information Group', 'Cambridge Information Group (CIG) is a family owned management and investment firm, primarily focused on education, research and information services companies. Our investments have largely focused on businesses in the information services and education industry broadly defined. Generally, our investments either support an existing business or launch a new platform. Our primary goal is to expand and grow existing operating companies through strategic acquisitions. CIG concentrates on businesses of any size, location, and technology structure that can leverage our existing platforms.', '5069', 'P.O. Box 532, 5485 Sagittis Rd.', '9514', 'Guinea-Bissau'),
(1065, 'NVO', 'Cambridge Semantics', 'Cambridge Semantics provides the Anzo software suite, an open platform for building interactive Unified Information Access solutions and using data from diverse sources. Anzo allows both IT and end users to deal with the increasing need to rapidly discover, understand, combine, and act on data from diverse sources both from within and across organizational boundaries, by rapidly creating solutions that leverage unified access to structured and unstructured data.', '9938', '145-165 Vel Street', '81354', 'Macao'),
(1066, 'NVR', 'DataMade', 'DataMade is a civic technology company. We work on projects that make open data, make open source software, and make people more powerful.', '3456', '854-9975 Auctor St.', '80199', 'Maldives'),
(1067, 'NXP', 'DataMarket', 'DataMarket helps people find and understand data. We bring complex and diverse data together in one place and one format so it can be searched, compared, visualized and shared across teams, organizations or on the web. DataMarket is licensed to enterprises and data publishers as a white-label SaaS solution and includes seamless access to our ever-expanding collection of facts and figures from leading global data providers. Our open data portal, datamarket.com, enables anyone to use our search and visualization technology to explore a vast amount of key public data from around the world, whenever they wish and free of charge.', '5201', '373-8710 Nullam St.', '70306', 'Rwanda'),
(1068, 'NXQ', 'Capital Cube', 'Capital Cube provides company analysis including on-demand fundamental research, portfolio evaluation, and screening tools on over 40000 global equities and ETFs. The web portal empowers your investment ideas through in-depth analysis on a companyâ€™s (a) performance relative to its peers, (b) accounting and earnings quality, (c) dividend strength, and (d) likely corporate actions such as dividend changes, share buybacks, and acquisitions. Our stock screener allows you to identify investment ideas using natural business terms and by investing themes e.g. companies likely to increase dividends or those with earnings quality issues. The ETF Analysis tool provides detailed fundamental analysis of ETFs by each risk component.', '354', '499-3026 Fermentum St.', 'V6H 7L7', 'Uruguay'),
(1069, 'NXR', 'Cappex', 'Cappex offers several solutions to colleges and universities that allow them to reach and connect with students in Cappex communities, and help them yield more enrollments by staying engaged with their applicants. We also help higher education institutions and foundations simplify their scholarship process so they can maximize the impact of the scholarships they award.', '6433', '353-2800 Lacus. Street', '5275', 'Jersey'),
(1070, 'SLB', 'Captricity', 'Captricity transforms static documents, including handwriting on paper, into actionable data. Our solution is fast, vastly scalable, highly secure and 99%+ accurate. Our mission is to unlock the data that drives the world forward.  For everyone.', '2329', '439-2028 In St.', '35817', 'Marshall Islands'),
(1071, 'ODC', 'CareSet Systems', 'CareSet is a growing group of idea people servicing ACOs, IPAs, and hospitals across the country.  As a sister company to The DocGraph Journal, CareSet responds to many needs across the healthcare spectrum, providing multi-level insights via an innovative data analytics platform, custom reporting, ETL processing, and data mapping.', '2987', '372-418 Nunc Street', 'FH77 3SC', 'Qatar'),
(1072, 'MRO', 'Credit Sesame', 'Credit Sesame was founded on a simple principle: Assets â€“ Liabilities = Wealth, and the recognition that most people overlook a significant contributor to this equation - the mortgages, loans and credit cards we pay each month. We help people manage their credit and loans to building wealth. With our deep expertise in developing bank-level credit and loan analytics, and the belief that transparency and access to financial information are fundamental consumer rights, we established Credit Sesame in 2010.', '9458', '166-6461 Placerat, St.', '33967-418', 'Swaziland'),
(1073, 'OFC', 'CARFAX', 'CARFAX was started to provide vehicle history information on used cars. CARFAX provides vehicle history information to millions of consumers each year. CARFAX Vehicle History Reports are available on all used cars and light trucks model year 1981 or later. Using the unique 17-character vehicle identification number (VIN), a CARFAX Report is instantly generated from our database of over six billion records.', '379', 'P.O. Box 933, 6255 Fringilla St.', '93315', 'Jamaica'),
(1074, 'OFG', 'Caspio', 'Caspioâ€™s on-demand cloud-based database platform replaces coding with intuitive point-and-click wizards, enabling users to rapidly produce web database components for capturing, publishing and managing data online.', '6187', '3874 Nec Street', '5717', 'Singapore'),
(1075, 'OKE', 'Castle Biosciences', 'Castle Biosciences, Inc. specializes in diagnostic tests for cancers. The company goal is to help advance the care for cancers through objective testing. Our team works with members of the oncology community throughout the discovery, development and utilization of these tests.', '3917', '7325 Quis Avenue', '67558', 'Seychelles'),
(1076, 'OLN', 'CB Insights', 'CB Insights takes immense amounts of data about private companies, their investors, their acquirers and the emerging industries they compete in to provide forward-looking intelligence on the health of companies, investors, industries and competitor strategy.', '3979', '604-3529 Id Avenue', '3722', 'Barbados'),
(1077, 'ORCL', 'Ceiba Solutions', 'Ceiba is a products and service company dedicated to unleashing the value of life science and healthcare data while reducing the cost to manage it.', '882', '121-9358 Vitae, Avenue', '29031', 'Sao Tome and Principe'),
(1078, 'ORI', 'Center for Responsive Politics', 'As a nonpartisan, independent and nonprofit organisation, the Center for Responsive Politics aims to create a more educated voter, an involved citizenry and a more responsive government.', '7859', 'P.O. Box 788, 5729 Ante St.', '10939', 'Nepal'),
(1079, 'ORN', 'Cerner', 'Cerner is a major U.S. supplier of health care information technology solutions that optimize clinical and financial outcomes. Cerner offers clients a dedicated focus on health care, an end-to-end solution and service portfolio, and proven market leadership.', '1541', 'P.O. Box 592, 2522 Elit. Rd.', '56711', 'Estonia'),
(1080, 'X', 'CostQuest', 'CostQuest Associates\' information systems and services deliver comprehensive solutions to complicated business challenges. These solutions reflect the highly specific needs of businesses, including the impact of financial, economic, and regulatory environments. CostQuest has also provided proprietary profitability, cost, telecom engineering, and metrics systems along with demographic data, data analysis, and GIS support to enhance decision-making in some of the worldâ€™s leading companies.', '7964', 'P.O. Box 711, 5240 Cras Street', '50109', 'Svalbard and Jan Mayen Islands'),
(1081, 'AUY', 'CGI', 'CGI provides end-to-end IT and business process services that facilitate the ongoing evolution of our clients\' businesses. The company provides business process outsourcing (BPO), systems integration and consulting. It has particular expertise in cloud computing, health information exchanges, cybersecurity, and biometrics. CGI\'s end-to-end services are targeted at several select verticals: financial services; telecommunications and utilities; manufacturing, retail, and distribution; health; and government, which is its largest client market.', '9339', '213-8026 Integer Avenue', '41-261', 'Trinidad and Tobago'),
(1082, 'OSK', 'Charles River Associates', 'Charles River Associates is a global consulting firm that offers economic, financial, and strategy expertise to major law firms, corporations, accounting firms, and governments around the world. We offer litigation and regulatory support, business strategy and planning, market and demand forecasting, policy analysis, and risk management consulting.', '9904', '5009 Tellus Street', '406387', 'Nepal'),
(1083, 'A', 'Charles Schwab Corp.', 'The Charles Schwab Corporation is a savings and loan holding company. The company, through its subsidiaries, is engaged in securities brokerage, banking, and related financial services. It provides financial services to individuals and institutional clients through two segments: Investor Services and Institutional Services.', '9953', 'P.O. Box 565, 4623 Nunc Ave', '26873', 'Ethiopia'),
(1084, 'XOM', 'DataWeave', 'DataWeave is an eCommerce Price Intelligence product that lets eCommerce portals monitor price changes to products across the Web in a easy manner. Managers can monitor changes to prices, stock availability, and daily reports to be abreast with the changes and take decisions accordingly.', '6955', 'P.O. Box 219, 3916 Nullam St.', '1443', 'Guinea'),
(1085, 'OXM', 'Child Care Desk', 'ChildCareDesk is a cloud-based Software Platform that aims to help parents find quality child care near them, and help child care centers build an online presence that in turn would help them grow their business and reach out to more parents. ChildCareDesk also helps government agencies, non-profit organizations and investors with data points they may use to invest in child care and make more options available for parents.', '1235', 'P.O. Box 363, 5604 Adipiscing St.', '29366', 'Liechtenstein'),
(1086, 'OXY', 'Chubb', 'The Chubb Corporation, through its subsidiaries, provides property and casualty insurance to businesses and individuals. The company distributes its products through independent insurance agents and insurance brokers in the United States, Canada, Europe, Australia, Latin America, and Asia.', '7245', '5950 Cursus Ave', '13247', 'Heard Island and Mcdonald Islands'),
(1087, 'PAA', 'Earthquake Alert!', 'Earthquake Alert! is a website provided by the United States Geological Surveyâ€™s (USGS) Earthquake Hazards Program as part of the effort to reduce earthquake hazard in the United States. We are part of the USGS Hazards Mission Area and are the USGS component of the congressionally established, multi-agency National Earthquake Hazards Reduction Program (NEHRP). The USGS participates in the NEHRP with the Federal Emergency Management Agency (FEMA), the National Institute of Standards and Technology (NIST), and the National Science Foundation (NSF). In the 2004 reauthorization of NEHRP by Congress, NIST has been given the lead role to plan and coordinate this national effort to mitigate earthquake losses by developing and applying earth science data and assessments essential for land-use planning, engineering design, and emergency preparedness decisions.', '8632', '4973 Magna. Road', '841657', 'Sao Tome and Principe'),
(1088, 'C', 'CityScan', 'CityScan, a Chicago venture-backed software company, is a leader in the field of intelligent data collection and integration for Smart Cities and Utilities. Our patented process integrates private and municipal data with the most advanced 3D visual data collection methods available, resulting in improved efficiency operations while reducing overall costs. Our technology provides clients a solution to manage their assets, ensure businesses are operating within local ordinances and provide a safe environment for their residents.', '74', '4035 Magna Road', '3140', 'Norway'),
(1089, 'PB', 'CitySourced', 'CitySourced is a major enterprise civic engagement platform, covering over 25 million residents worldwide. CitySourced empowers organizations by allowing residents to report back problems in their communities directly using our simple, free smartphone application. Our service leads municipalities to greater efficiencies, to be more responsive, and to accomplish more with fewer resources.', '6225', 'Ap #652-6632 Et Street', '19-395', 'Kyrgyzstan'),
(1090, 'PBA', 'DemystData', 'DemystData helps leading financial institutions tap into online, social, traditional and internal \"Big Data\" to make better credit decisions. The companyâ€™s products enable real-time analysis of both consumer and small business profiles.', '7131', '8736 Odio Rd.', '60083', 'Liberia'),
(1091, 'S', 'Civic Insight', 'Civic Insight turns buried property data critical to the development of cities into actionable information. While knowledge of city codes and permits is required for construction, development, and revitalization, too often the status of the work is opaque. This slows down projects and is costly for everyone involved. Civic Insight makes it easy to quickly access up-to-date information in ways that are easy to understand and use.', '3365', 'P.O. Box 205, 9418 Ante, Road', '7928', 'Chad'),
(1092, 'DIS', 'Civinomics', 'Civinomics\' mission is to improve civic decision-making through the collective creativity of communities. Our platform provides a one-stop-shop civic portal where people can engage in the issues they care about. They can also find the resources needed to make more educated decisions and find better solutions. Our platform provides a place for people to vote on ideas, discuss topics and ask questions, and share the relevant information needed to address an issue. It also closes the civic loop by allowing users to send these ideas directly to their leaders, and raise the necessary funds for implementation.', '2493', 'P.O. Box 436, 2693 Donec Street', '76183', 'Saint Martin'),
(1093, 'VOC', 'Civis Analytics', 'Civis Analytics is a Big Data analytics firm based in Chicago, IL and Washington, DC. We help companies, non-profits, and campaigns leverage their data to develop smarter strategy, make better decisions, and build stronger, data-driven organizations.', '4244', '1991 Est Ave', '13541', 'Guinea'),
(1094, 'WAIR', 'Clean Power Finance', 'Clean Power Finance is a financial technology company whose mission is to drive the mass adoption of residential solar. It connects institutional investors looking for attractive managed-risk assets with solar professionals who sell solar finance products that help US consumers afford clean solar energy.', '9222', 'P.O. Box 710, 1499 Primis Avenue', '99875', 'Syria'),
(1095, 'WAL', 'Ecodesk', 'Ecodesk is a global supply chain sustainability service provider. At its core is an open cloud-based sustainability platform enabling businesses and organisations to hold their key non-financial metrics in a central location and providing the tool set for detailed analytics of the environmental and social impacts of the supply chain. These analytics enable the benchmarking of suppliers both internal and external to the supply chain and which can greatly reduce inherent risk, identify opportunities and drive efficiency changes.', '5072', '167-5511 Non, Ave', '8157', 'Uruguay'),
(1096, 'WFC', 'ClearStory Data', 'ClearStory Data is making it easy for business users to find, combine and interactively explore big, diverse data across first-party and third-party sources for immediate insights. The ClearStory Data team has decades of combined experience at Aster Data, Cloudera, Google, Teradata, Oracle, Netscape and Opsware.', '9478', '9611 Semper Street', 'V5V 2K9', 'India'),
(1097, 'WHR', 'Climate Corporation', 'The Climate Corporation aims to help farmers around the world protect and improve their farming operations with powerful software and insurance products. The company\'s proprietary Climate Technology Platformâ€š combines hyper-local weather monitoring, agronomic data modeling, and high-resolution weather simulations to deliver Climate Basic and Climate Proâ€š mobile SaaS solutions that helps farmers improve profitability by making better informed operating and financing decisions, as well as Total Weather Insurance, an insurance offering that pays farmers automatically for bad weather that may impact their profits. The company is also an authorized provider of the U.S. Federal crop insurance program, enabling authorized independent crop insurance agents to provide farmers with a powerful full-stack risk management solution. In the face of increasingly volatile weather, the global $3 trillion agriculture industry depends on the company\'s unique technologies to help stabilize and improve profits and, ultimately, help feed the world.', '909', '191-5385 Ullamcorper, Avenue', '6503 UT', 'Thailand'),
(1098, 'WIT', 'Embark', 'Embark, Inc. develops mass transit mobile applications for iPhone and Android users. It serves mass transit riders worldwide. The company was formerly known as Pandav Inc. and changed its name to Embark, Inc. in 2012.', '5876', 'Ap #530-9917 Phasellus St.', '14264', 'Cocos (Keeling) Islands'),
(1099, 'WIW', 'Cloudmade', 'CloudMade provides OEMs and application developers with a range of innovative tools and APIs that let them create unique location based devices and applications across all major web and mobile platforms. These solutions are cloud connected which keeps the maps and data fresh, keeps the users data synchronized across screens and links the user to their personal social data.', '1597', 'P.O. Box 774, 1006 Donec Avenue', '731204', 'Bulgaria'),
(1100, 'JPM', 'Cloudspyre', 'Cloudspyre LLC is a boutique custom software development company, specializing in developing mobile, cloud, and web-based software solutions. We build iOS, Android, and BlackBerry Apps to help people learn about the world around them. Cloudspyre also partners with other companies to do the programming side of their creative projects. Cloudspyre has expertise developing websites on a large variety of application platforms. Our favorite is building Ruby on Rails websites with custom backends. All the websites for Cloudspyre\'s apps are built on Ruby on Rails.', '5198', '5210 Purus St.', '65776', 'Ireland');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `queue_no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_symbol` varchar(10) NOT NULL,
  `total_amount` float NOT NULL,
  `stock_price` float NOT NULL,
  `stocks_count` int(11) NOT NULL,
  `tr_account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_buy`
--

CREATE TABLE `recurring_buy` (
  `rec_id` int(50) NOT NULL,
  `rec_user_id` varchar(50) NOT NULL,
  `rec_symbol` varchar(50) NOT NULL,
  `rec_count` int(11) NOT NULL,
  `rec_interval` varchar(50) NOT NULL,
  `rec_start_timestamp` varchar(50) NOT NULL,
  `rec_schedule` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stock_id` int(50) NOT NULL,
  `stock_user` varchar(50) NOT NULL,
  `stock_symbol` varchar(50) NOT NULL,
  `stock_buy_price` double NOT NULL,
  `stock_buy_timestamp` varchar(50) DEFAULT NULL,
  `stock_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(50) NOT NULL,
  `transaction_user` varchar(50) NOT NULL,
  `transaction_timestamp` varchar(50) NOT NULL,
  `transaction_account` varchar(50) NOT NULL,
  `transaction_type` varchar(20) NOT NULL DEFAULT 'buy',
  `transaction_symbol` varchar(50) NOT NULL,
  `transaction_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_ssn` text NOT NULL,
  `user_address` varchar(75) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_phone` text NOT NULL,
  `user_token` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`acc_id`),
  ADD UNIQUE KEY `acc_number` (`acc_number`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`queue_no`);

--
-- Indexes for table `recurring_buy`
--
ALTER TABLE `recurring_buy`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_token` (`user_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `acc_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `queue_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `recurring_buy`
--
ALTER TABLE `recurring_buy`
  MODIFY `rec_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
