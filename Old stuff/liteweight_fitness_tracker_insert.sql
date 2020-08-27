USE liteweight_fitness_tracker;


SELECT * FROM CUSTOMER_METRICS;

/***   CUSTOMER_METRICS data   **********************************************************/

INSERT INTO CUSTOMER_METRICS(
	weight,
	calorie_intake	,
    calories_burned,
    workout_type,
  --   activity_level,
    length_workout,
    hours_slept	) VALUES (
	120, 1000, 150, 'running', 15, 12);
     
INSERT INTO CUSTOMER_METRICS VALUES (
default, 150, 2050, 150, 'running', 15, 8);
INSERT INTO CUSTOMER_METRICS VALUES (
default, 99, 1700, 150, 'cycling', 15, 7);
INSERT INTO CUSTOMER_METRICS VALUES (
default, 99, 1500, 150, 'walking', 15, 12);

     
INSERT INTO CUSTOMER_METRICS (
	weight,
	calorie_intake	,
    calories_burned,
    workout_type,
 --    activity_level,
    length_workout,
    hours_slept	) VALUES (
	 212, 1001, 150, 'walking', 20, 11);
    
    
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	3, 3, '2018-12-30', 183, 1002, 150, 'swimming', 'Light (HR 90 - 120 bpm)', 15, 11);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	4, 4, '2018-12-30', 160, 1502, 201, 'running', 'Light (HR 90 - 120 bpm)', 30, 9);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	5, 1, '2019-1-6', 118, 1003, 901, 'biking', 'Intense (HR 141 - 160 bpm)', 90, 10);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	6, 2, '2019-1-6', 205, 1500, 900, 'hiking', 'Intense (HR 141 - 160 bpm)', 90, 10);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	7, 3, '2019-1-6', 180, 1501, 200, 'weight lifting', 'Light (HR 90 - 120 bpm)', 30, 9);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	8, 4, '2019-1-6', 163, 1502, 201, 'running', 'Light (HR 90 - 120 bpm)', 30, 9);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	9, 1, '2019-1-13', 115, 2001, 400, 'biking', 'Moderate (HR 121 - 140 bpm)', 45, 8);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	10, 2, '2019-1-13', 202, 2002, 401, 'hiking', 'Moderate (HR 121 - 140 bpm)', 45, 8);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	11, 3, '2019-1-13', 178, 2003, 500, 'weight lifting', 'Moderate (HR 121 - 140 bpm)', 60, 8);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	12, 4, '2019-1-13', 166, 2500, 501, 'running', 'Moderate (HR 121 - 140 bpm)', 60, 7);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	13, 1, '2019-1-20', 114, 2501, 600, 'walking', 'Moderate (HR 121 - 140 bpm)', 75, 7);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	14, 2, '2019-1-20', 198, 2502, 601, 'running', 'Intense (HR 141 - 160 bpm)', 75, 6);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	15, 3, '2019-1-20', 175, 2503, 700, 'walking', 'Intense (HR 141 - 160 bpm)', 75, 5);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	16, 4, '2019-1-20', 169, 2504, 701, 'swimming', 'Intense (HR 141 - 160 bpm)', 75, 4);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	17, 1, '2019-1-27', 112, 3000, 800, 'biking', 'Intense (HR 141 - 160 bpm)', 90, 3);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	18, 2, '2019-1-27', 195, 3001, 801, 'hiking', 'Intense (HR 141 - 160 bpm)', 90, 2);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	19, 3, '2019-1-27', 171, 3002, 1000, 'weight lifting', 'Intense (HR 141 - 160 bpm)', 90, 1);
-- INSERT INTO CUSTOMER_METRICS VALUES (
-- 	20, 4, '2019-1-27', 173, 2504, 701, 'swimming', 'Intense (HR 141 - 160 bpm)', 75, 4);

-- /***   CUSTOMER_INFO data   ********************************************************/

-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	1, 'Donn', 'Dunphy', 'ddunphy0@census.gov', '2166669159', '1 Independence Center', 'Santa Catalina', 'CA', 12345);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	2, 'Ram', 'Skedge', 'rskedge1@cloudflare.com', '3961723096', '8 Northview Place',	'Pira', 'CA', 12365);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	3, 'Cristiano', 'Gatesman', 'cgatesman2@deviantart.com', '1516537157', '57 Hoard Drive', 'Cuilco', 'CA', 13004);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	4, 'Dulsea', 'Walewicz', 'dwalewicz3@walmart.com', '8107548301', '5009 Springs Place', 'Marseille', 'CA', 13253);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	5, 'Barny', 'Houtby', 'bhoutby4@bandcamp.com', '4106215286', '64829 Merry Way', 'Saldanhacontact_info', 'WA', 17395);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	6, 'Cherida', 'Menel', 'cmenel5@columbia.edu', '4772669747', '77 High Crossing Trail', 'Gouxaria', 'WA', 23015);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	7, 'Dulci', 'Gipp', 'dgipp6@guardian.co.uk', '9945792306', '48264 Autumn Leaf Street', 'Kuantan', 'WA', 25200);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	8, 'Hallie', 'Laxtonne', 'hlaxtonne7@eventbrite.com', '5323659223', '7377 Columbus Road', 'Kame', 'WA', 32658);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	9, 'Sheryl', 'Burnie', 'sburnie8@icq.com', '5363238449', '50 Mariners Cove Park', 'San Rafael', 'OR', 36521);
-- INSERT INTO CUSTOMER_INFO VALUES (
-- 	10, 'Rayshell', 'Codrington', 'rcodrington9@uiuc.edu', '1092863876', '8367 Basil Road', 'La Esperanza', 'OR', 37900);

-- /***   CONTACT_INFO data   *********************************************************/

-- INSERT INTO CONTACT_INFO VALUES (
-- 	'ddunphy0@census.gov', 'Option 3', '1Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'rskedge1@cloudflare.com', 'Option 1', '2Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'cgatesman2@deviantart.com', 'Option 3', '3Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'dwalewicz3@walmart.com', 'Option 2', '4Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'bhoutby4@bandcamp.com', 'Option 2', '5Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'cmenel5@columbia.edu', 'Option 1', '6Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'crambadt6@github.io', 'Option 2', '17Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'enock0@nps.gov', 'Option 3', '11Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'nstoeck1@canalblog.com', 'Option 3', '12Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');
-- INSERT INTO CONTACT_INFO VALUES (
-- 	'rfaunch5@huffingtonpost.com', 'Option 3', '16Lorem ipsum dolor amet deep v kinfolk chillwave qui ad man braid umami nisi street art art party locavore hella truffaut keytar nostrud.');


