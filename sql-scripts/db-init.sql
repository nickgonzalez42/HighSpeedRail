DROP SCHEMA IF EXISTS `trainapp`;

CREATE SCHEMA `trainapp`;
USE `trainapp` ;

CREATE TABLE IF NOT EXISTS `trainapp`.`stations` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(3) NOT NULL, 
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(7) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `tz` varchar(3) NOT NULL,
  UNIQUE (`id`, `code`, `address`),
  PRIMARY KEY (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

INSERT INTO `stations` (id, name, code, address, city, state, zip, latitude, longitude, tz)
VALUES 
(1, 'Vancouver', 'VNC', '1150 Station St', 'Vancouver', 'BC', 'V6A 4C7', 49.27, -123.09, 'PST'),
(2, 'Seattle', 'SEA', '303 S Jackson St', 'Seattle', 'WA', '98104', 47.59, -122.33, 'PST'),
(3, 'Portland', 'POR', '800 NW 6th Ave', 'Portland', 'OR', '97209', 45.52, -122.67, 'PST'),
(4, 'Eugene', 'EUG', '433 Willamette St', 'Eugene', 'OR', '97401', 44.05, -123.09, 'PST'),
(5, 'Sacramento', 'SCR', '401 I St', 'Sacramento', 'CA', '95814', 38.58, -121.50, 'PST'),
(6, 'San Francisco', 'SFR', '700 4th St', 'San Francisco', 'CA', '94107', 37.77, -122.39, 'PST'),
(7, 'Los Angeles', 'LAG', '800 N Alameda St', 'Los Angeles', 'CA', '90012', 34.05, -118.23, 'PST'),
(8, 'San Diego', 'SDG', '1050 Kettner Blvd', 'San Diego', 'CA', '92101', 32.71, -117.16, 'PST'),
(9, 'Boise', 'BOS', '2603 W Eastover Terrace', 'Boise', 'ID', '83706', 43.60, -116.21, 'MST'),
(10, 'Salt Lake City', 'SLC', '340 S 600 W', 'Salt Lake City', 'UT', '84101', 40.76, -111.90, 'MST'),
(11, 'Las Vegas', 'LAV', '2535 S Las Vegas Blvd', 'Las Vegas', 'NV', '89109', 36.14, -115.15, 'PST'),
(12, 'Phoenix', 'PHX', '401 W Harrison St', 'Phoenix', 'AZ', '85003', 33.44, -112.07, 'MST'),
(13, 'Tucson', 'TCS', '400 N Toole Ave', 'Tucson', 'AZ', '85701', 32.22, -110.96, 'MST'),
(14, 'Denver', 'DVR', '8200 Smith Rd', 'Denver', 'CO', 80207, 39.77, -104.89, 'MST'),
(15, 'Albuquerque', 'ALB', '320 1st St SW', 'Albuquerque', 'NM', '87102', 35.08, -106.64, 'MST'),
(16, 'Minneapolis', 'MNN', '2301 University Avenue', 'Minneapolis', 'MN', '55414', 44.97, -93.22, 'CST'),
(17, 'Des Moines', 'DMO', '2560 SE 43rd St', 'Des Moines', 'IA', '50327', 41.56, -93.52, 'CST'),
(18, 'Omaha', 'OMH', '1003 S 9th St', 'Omaha', 'NE', '68108', 41.24, -95.92, 'CST'),
(19, 'Kansas City', 'KSC', '30 W Pershing Rd', 'Kansas City', 'MO', '64108', 39.08, -94.58, 'CST'),
(20, 'Tulsa', 'TLS', '101 S Boston Ave', 'Tulsa', 'OK', '74103', 36.15, -95.99, 'CST'),
(21, 'Oklahoma City', 'OKC', '100 S E K Gaylord Blvd', 'Oklahoma City', 'OK', '73102', 35.46, -97.51, 'CST'),
(22, 'Dallas', 'DLL', '400 S Houston St', 'Dallas', 'TX', '75202', 32.77, -96.80, 'CST'),
(23, 'Austin', 'AUS', '250 N Lamar Blvd', 'Austin', 'TX', '78703', 30.26, -97.75, 'CST'),
(24, 'San Antonio', 'SAN', '350 Hoefgen Ave', 'San Antonio', 'TX', '78205', 29.41, -98.47, 'CST'),
(25, 'Milwaukee', 'MLW', '433 W St. Paul Avenue', 'Milwaukee', 'WI', '53203', 43.03, -87.91, 'CST'),
(26, 'Chicago', 'CHI', '225 S Canal St', 'Chicago', 'IL', '60606', 41.87, -87.64, 'CST'),
(27, 'St. Louis', 'STL', '430 S 15th St', 'St. Louis', 'MO', '63103', 38.62, -90.20, 'CST'),
(28, 'Memphis', 'MPH', '545 S Main St', 'Memphis', 'TN', 38103, 35.13, -90.05, 'CST'),
(29, 'Little Rock', 'LLR', '1400 W Markham St', 'Little Rock', 'AR', '72201', 34.75, -92.28, 'CST'),
(30, 'Houston', 'HOU', '902 Washington Ave', 'Houston', 'TX', '77002', 34.75, -92.25, 'CST'),
(31, 'Jackson', 'JXN', '300 W Capitol St', 'Jackson', 'MS', '39201', 32.30, -90.19, 'CST'),
(32, 'New Orleans', 'NEO', '1001 Loyola Ave', 'New Orleans', 'MS', '70113', 29.94, -90.07, 'CST'),
(33, 'Mobile', 'MBL', '72 Beauregard St', 'Mobile', 'AL', '36602', 30.70, -88.044, 'CST'),
(34, 'Detroit', 'DTR', '11 W Baltimore Ave', 'Detroit', 'MI', '48202', 42.36, -83.07, 'EST'),
(35, 'Toledo', 'TLD', '415 Emerald Ave', 'Toledo', 'OH', '43604', 41.63, -83.54, 'EST'),
(36, 'Cleveland', 'CLV', '200 Cleveland Memorial Shoreway', 'Cleveland', 'OH', '44114', 41.50, -81.69, 'EST'),
(37, 'Columbus', 'CLM', '4430 Indianola Ave', 'Columbus', 'OH', '43214', 40.05, -82.99, 'EST'),
(38, 'Cincinnati', 'CCN', '1301 Western Ave', 'Cincinnati', 'OH', '45203', 39.11, -84.53, 'EST'),
(39, 'Louisville', 'LSV', '1121 E Liberty St', 'Louisville', 'KY', '40204', 38.25, -85.72, 'EST'),
(40, 'Nashville', 'NSH', '819 11th Ave N', 'Nashville', 'TN', '37203', 36.16, -86.79, 'CST'),
(41, 'Birmingham', 'BRM', '1801 Morris Ave', 'Birmingham', 'AL', '35203', 33.51, -86.80, 'CST'),
(42, 'Tallahassee', 'TLH', '1240 Lipona Rd', 'Tallahassee', 'FL', '32304', 30.42, -84.31, 'EST'),
(43, 'Jacksonville', 'JXV', '3570 Clifford Ln', 'Jacksonville', 'FL', '32209', 30.36, -81.72, 'EST'),
(44, 'Orlando', 'ORL', '1400 Sligh Blvd', 'Orlando', 'FL', '32806', 28.52, -81.38, 'EST'),
(45, 'Tampa', 'TMP', '601 N Nebraska Ave', 'Tampa', 'FL', '33602', 27.95, -82.45, 'EST'),
(46, 'Miami', 'MIA', '600 NW 1st Ave', 'Miami', 'FL', '33136', 25.78, -80.19, 'EST'),
(47, 'Savannah', 'SVN', '2611 Seaboard Coastline Dr', 'Savannah', 'FL', '31401', 32.08, -81.14, 'EST'),
(48, 'Atlanta', "ATL", '1688 Peachtree Rd NW', 'Atlanta', 'GA', '30309', 33.79, -84.39, 'EST'),
(49, 'Charlotte', "CRL", '1914 N Tryon St', 'Charlotte', 'NC', '28206', 35.24, -80.82, 'EST'),
(50, 'Athens', 'AHN', '120 Foundry St', 'Athens', 'GA', '30601', 33.96, -83.37, 'EST'),
(51, 'Greenville', 'GRN', '1120 W Washington St', 'Greenville', 'GA', '29601', 34.85, -82.41, 'EST'),
(52, 'Columbia', 'CMB', '850 Pulaski St', 'Columbia', 'SC', '29201', 33.99, -81.04, 'EST'),
(53, 'Chattanooga', 'CTO', '4119 Cromwell Rd', 'Chattanooga', 'TN', '37421', 35.06, -85.20, 'EST'),
(54, 'Montreal', 'MTR', '7499 Ave Harley', 'Montreal', 'QC', 'H4B 1L7', 45.45, -73.64, 'EST'),
(55, 'Portland', 'PTL', '100 Thompsons Point Road', 'Portland', 'ME', '04102', 43.65, -70.29, 'EST'),
(56, 'Boston', 'BST', '135 Causeway St', 'Boston', 'MA', '02114', 42.36, -71.06, 'EST'),
(57, 'Providence', 'PRV', '100 Gaspee St', 'Providence', 'RI', '02903', 41.82, -71.41, 'EST'),
(58, 'Hartford', 'HRT', '1 Union Pl', 'Hartford', 'CT', '06103', 41.76, -72.68, 'EST'),
(59, 'New Haven', 'NWH', '50 Union Ave', 'New Haven', 'CT', '06519', 41.29, -72.92, 'EST'),
(60, 'New York City', 'NYC', '49 E 42nd St', 'New York City', 'NY', '10017', 40.75, -73.97, 'EST'),
(61, 'Philadelphia', 'PHI', '2955 Market St', 'Philadelphia', 'PA', '19104', 39.95, -75.18, 'EST'),
(62, 'Indianapolis', 'IND', '350 South Illinois Street', 'Indianapolis', 'IN', '46225', 39.76, -86.16, 'EST'),
(63, 'Richmond', 'RCH', '1500 E Main St', 'Richmond', 'VA', '23219', 37.53, -77.42, 'EST'),
(64, 'Raleigh', 'RLE', '510 W Martin St', 'Raleigh', 'NC', '27601', 35.77, -78.64, 'EST'),
(65, 'Greensboro', 'GRE', '236 E Washington St', 'Greensboro', 'NC', '27401', 36.06, -79.78, 'EST'),
(66, 'Pittsburgh', 'PTT', '1100 Liberty Ave', 'Pittsburgh', 'PA', '15222', 40.44, -79.99, 'EST'),
(67, 'Harrisburg', 'HRS', '415 Market St', 'Harrisburg', 'PA', '17101', 40.26, -76.87, 'EST'),
(68, 'Baltimore', 'BLT', '1500 N Charles St', 'Baltimore', 'MD', '21201', 39.30, -76.61, 'EST'),
(69, 'Washington DC', 'WDC', '50 Massachusetts Ave NE', 'Washington', 'DC', '20002', 38.89, -77.00, 'EST'),
(70, 'Buffalo', 'BFF', '75 Exchange St', 'Buffalo', 'NY', '14203', 42.87, -78.87, 'EST'),
(71, 'Toronto', 'TOR', '55 Front St W', 'Toronto', 'ON', 'M5J 1E6', 43.64, -79.38, 'EST'),
(72, 'Syracuse', 'SYR', '581 State Fair Blvd', 'Syracuse', 'NY', '13209', 43.07, -76.21, 'EST'),
(73, 'Rochester', 'RCH', '320 Central Ave', 'Rochester', 'NY', '14605', 43.16, -77.60, 'EST'),
(74, 'Albany', 'ABY', '575 Broadway', 'Rensselaer', 'NY', '12144', 42.64, -73.74, 'EST'),
(75, 'Augusta', 'AUG', '3904 Goshen Industrial Blvd', 'Augusta', 'GA', '30906', 33.35, -81.96, 'EST')
;


CREATE TABLE IF NOT EXISTS `trainapp`.`routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination_id` integer,
  `origin_id` integer,
  `distance` float,
  PRIMARY KEY (`id`),
  KEY `fk_destination` (`destination_id`),
  CONSTRAINT `fk_destination` FOREIGN KEY (`destination_id`) REFERENCES `stations` (`id`),
  KEY `fk_origin` (`origin_id`),
  CONSTRAINT `fk_origin` FOREIGN KEY (`origin_id`) REFERENCES `stations` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

INSERT INTO `routes` (origin_id, destination_id, distance)
VALUES 
(1, 2, 119.990),
(2, 1, 119.990), (2, 3, 144.610), (2, 9, 404.125),
(3, 2, 144.610),(3, 4, 72.298),
(4, 3, 72.298), (4, 5, 423.927),
(5, 4, 423.927), (5, 6, 74.703), (5, 7, 360.764), (5, 10, 531.926),
(6, 5, 74.703), (6, 7, 347.588),
(7, 6, 347.588), (7, 8, 111.377), (7, 11, 227.808),
(8, 7, 111.377), (8, 12, 298.859),
(9, 2, 404.125), (9, 10, 296.119),
(10, 9, 296.119), (10, 5, 531.926), (10, 14, 370.846),
(11, 7, 227.808), (11, 12, 254.649),
(12, 11, 254.649), (12, 8, 298.901), (12, 13, 107.781), (12, 15, 329.558),
(13, 12, 107.781),
(14, 10, 370.846), (14, 15, 334.324), (14, 19, 595.484),
(15, 14, 334.324), (15, 12, 329.558), (15, 22, 586.562),
(16, 17, 234.059), (16, 25, 297.623),
(17, 16, 234.059), (17, 18, 123.132),
(18, 17, 123.132), (18, 19, 298.100),
(19, 18, 298.100), (19, 14, 595.484), (19, 20, 104.579), (19, 27, 257.164),
(20, 19, 104.579), (20, 21, 93.814),
(21, 20, 93.814), (21, 22, 191.161),
(22, 21, 191.161), (22, 15, 586.562), (22, 23, 182.335), (22, 30, 225.028), (22, 31, 386.502), (22, 29, 292.176),
(23, 22, 182.335), (23, 24, 73.598),
(24, 23, 73.598), (24, 30, 189.511),
(25, 16, 297.623), (25, 26, 83.922),
(26, 25, 83.922), (26, 27, 253.178), (26, 62, 104.812), (26, 35, 221.043),
(27, 26, 253.178), (27, 19, 298.100), (27, 28, 242.289), (27, 40, 255.146), (27, 39, 242.734),
(28, 27, 242.289), (28, 29, 129.380), (28, 31, 196.646), (28, 40, 196.951),
(29, 28, 129.380), (29, 22, 292.176),
(30, 22, 225.028), (30, 24, 189.511), (30, 32, 317.393),
(31, 22, 386.502), (31, 28, 196.646), (31, 41, 212.792), (31, 32, 161.400),
(32, 31, 161.400), (32, 30, 317.393), (32, 33, 130.993),
(33, 32, 130.993), (33, 42, 224.506),
(34, 35, 52.939), (34, 71, 206.179), (34, 70, 215.383),
(35, 34, 52.939), (35, 26, 221.043), (35, 36, 96.991),
(36, 35, 96.991), (36, 37, 126.712), (36, 66, 114.811), (36, 70, 172.756),
(37, 36, 126.712), (37, 66, 161.620), (37, 38, 96.689),
(38, 37, 96.689), (38, 62, 153.212), (38, 39, 92.955),
(39, 38, 92.955), (39, 62, 168.300), (39, 40, 154.573),
(40, 39, 154.573), (40, 27, 255.146), (40, 28, 196.951), (40, 41, 183.023), (40, 53, 113.208),
(41, 40, 183.023), (41, 31, 212.792), (41, 48, 140.514),
(42, 33, 224.506), (42, 43, 156.623),
(43, 42, 156.623), (43, 47, 125.379), (43, 44, 124.156),
(44, 43, 124.156), (44, 45, 78.718), (44, 46, 205.108),
(45, 44, 78.718),
(46, 44, 205.108),
(47, 43, 125.379), (47, 75, 108.978), (47, 52, 132.508),
(48, 53, 103.479), (48, 41, 140.514), (48, 50, 59.444),
(49, 52, 85.710), (49, 51, 91.399), (49, 65, 83.050),
(50, 48, 59.444), (50, 75, 87.339), (50, 51, 83.313),
(51, 50, 83.313), (51, 52, 97.261), (51, 49, 91.399),
(52, 49, 103.479), (52, 47, 132.508), (52, 51, 97.261),
(53, 48, 103.479), (53, 40, 113.208),
(54, 74, 197.889), (54, 56, 250.756),
(55, 56, 98.527),
(56, 55, 98.527), (56, 54, 250.756), (56, 57, 41.197),
(57, 56, 41.197), (57, 58, 65.039),
(58, 57, 65.039), (58, 74, 82.499), (58, 59, 34.301),
(59, 58, 34.301), (59, 60, 69.614),
(60, 59, 69.614), (60, 74, 134.471), (60, 61, 80.554),
(61, 60, 80.554), (61, 67, 93.623), (61, 68, 89.601),
(62, 38, 153.212), (62, 39, 168.300), (62, 26, 104.812),
(63, 69, 96.009), (63, 64, 137.742),
(64, 63, 137.742), (64, 65, 163.674),
(65, 64, 163.674), (65, 49, 83.050),
(66, 36, 114.811), (66, 37, 161.620), (66, 67, 164.495), (66, 69, 190.776),
(67, 66, 164.495), (67, 61, 93.623),
(68, 69, 35.692), (68, 61, 89.601),
(69, 68, 35.692), (69, 66, 190.77), (69, 63, 96.009),
(70, 73, 66.201), (70, 71, 98.460), (70, 36, 172.756), (70, 34, 215.383),
(71, 70, 98.460), (71, 34, 206.179),
(72, 73, 74.597), (72, 74, 124.254),
(73, 72, 74.597), (73, 70, 66.201),
(74, 72, 124.254), (74, 54, 197.889), (74, 58, 82.499), (74, 60, 134.471),
(75, 50, 87.339), (75, 47, 108.978);

CREATE TABLE IF NOT EXISTS `trainapp`.`trains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `route_id` integer,
  `departure_time` datetime,
  `arrival_time` datetime,
  `current_capacity` integer,
  `max_capacity` integer,
  PRIMARY KEY (`id`),
  KEY `fk_route` (`route_id`),
  CONSTRAINT `fk_route` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

INSERT INTO `trains` (`route_id`, `departure_time`, `arrival_time`, `max_capacity`, `current_capacity`)
SELECT
	FLOOR(RAND() * (SELECT MAX(id) FROM `routes`)) + 1 AS `route_id`,
	DATE_ADD(NOW(), INTERVAL FLOOR(RAND() * 90) DAY) + INTERVAL FLOOR(RAND() * 24) HOUR + INTERVAL FLOOR(RAND() * 60) MINUTE AS `departure_time`,
	NULL AS `arrival_time`,
	FLOOR(RAND() * 1300 + 500) AS `max_capacity`,
	NULL AS `current_capacity`
FROM
	`routes` r
CROSS JOIN
	(SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS t1 -- Adjust the number of rows as needed
CROSS JOIN
	(SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS t2 -- Adjust the number of rows as needed
LIMIT 10000; -- Specify the number of items you want to generate (e.g., 10)

SET SQL_SAFE_UPDATES = 0;
UPDATE `trains`
SET `arrival_time` = DATE_ADD(`departure_time`, INTERVAL (SELECT `distance` FROM `routes` WHERE `id` = `trains`.`route_id`) / 130 + .5 HOUR)
WHERE `arrival_time` IS NULL;

UPDATE `trains`
SET `current_capacity` = FLOOR(RAND()*(`max_capacity`))
WHERE `current_capacity` IS NULL;

CREATE TABLE IF NOT EXISTS `trainapp`.`tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `train_id` integer,
  `passenger_name` varchar(50),
  PRIMARY KEY (`id`),
  KEY `fk_train` (`train_id`),
  CONSTRAINT `fk_train` FOREIGN KEY (`train_id`) REFERENCES `trains` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;