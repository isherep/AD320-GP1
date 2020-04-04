DROP DATABASE IF EXISTS liteweight_fitness_tracker;
CREATE DATABASE liteweight_fitness_tracker;
USE liteweight_fitness_tracker;
USE liteweight_fitness_tracker;

DROP TABLE IF EXISTS CUSTOMER_METRICS;
CREATE TABLE CUSTOMER_METRICS (
 
	entry				INTEGER	 NOT NULL			PRIMARY KEY AUTO_INCREMENT,
	-- customer_id	       	INTEGER 	      	NOT NULL,
	weight		  	    INTEGER(3),
	calorie_intake		INTEGER(5)     		,
    calories_burned		INTEGER(5)			,
    workout_type		VARCHAR(30)			,
    -- activity_level		ENUM('Light (HR 90 - 120 bpm)', 'Moderate (HR 121 - 140 bpm)', 'Intense (HR 141 - 160 bpm)')	NOT NULL,
    length_workout		INTEGER(5)			,
    hours_slept			INTEGER(2)			
	-- CONSTRAINT 		    METRIC_ID_PK		PRIMARY KEY (metric_id)
	);
    
    


drop table IF EXISTS CONTACT_INFO;
CREATE TABLE CONTACT_INFO (
	email	    		VARCHAR(320)		NOT NULL,
	reason_contacting	ENUM('Option 1', 'Option 2', 'Option 3')	NOT NULL,
    message				VARCHAR(320)				NULL,
	CONSTRAINT 		    EMAIL_PK 	 	PRIMARY KEY (email)
	);
    
