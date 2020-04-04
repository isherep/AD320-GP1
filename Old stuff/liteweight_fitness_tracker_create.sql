DROP DATABASE liteweight_fitness_tracker;
CREATE DATABASE liteweight_fitness_tracker;
USE liteweight_fitness_tracker;
USE liteweight_fitness_tracker;

drop table CUSTOMER_METRICS;
CREATE TABLE CUSTOMER_METRICS (
	metric_id	       	INTEGER 	      	NOT NULL AUTO_INCREMENT,
	/*customer_id	       	INTEGER 	      	NOT NULL,*/
	/*entry_date			DATE		 	    NOT NULL,*/
	weight		  	    INTEGER(3)      	,
	calorie_intake		INTEGER(5)     		NOT NULL,
    calories_burned		INTEGER(5)			NOT NULL,
    workout_type		VARCHAR(30)			NOT NULL,
    /**activity_level		ENUM('Light (HR 90 - 120 bpm)', 'Moderate (HR 121 - 140 bpm)', 'Intense (HR 141 - 160 bpm)')	NOT NULL,*/
    length_workout		INTEGER(5)			NOT NULL,
    hours_slept			INTEGER(2)			NOT NULL,
	CONSTRAINT 		    METRIC_ID_PK		PRIMARY KEY (metric_id)
	);

CREATE TABLE CUSTOMER_INFO (
	customer_id	       	INTEGER 	      	NOT NULL,
	first_name			VARCHAR(25)	    	NOT NULL,
	last_name			VARCHAR(25)		    NOT NULL,
	email	    		VARCHAR(320)		NOT NULL,
	phone   			BIGINT(10)		    NOT NULL,
    address				VARCHAR(25)			NOT NULL,
    city				VARCHAR(20)			NOT NULL,
    state				CHAR(2)				NOT NULL,
    zip_code			INTEGER(5)			NOT NULL,    
	CONSTRAINT 		    CUSTOMER_ID_PK		PRIMARY KEY (customer_id)
	);
drop table CONTACT_INFO;
CREATE TABLE CONTACT_INFO (
	email	    		VARCHAR(320)		NOT NULL,
	reason_contacting	ENUM('Option 1', 'Option 2', 'Option 3')	NOT NULL,
    message				VARCHAR(320)				NULL,
	CONSTRAINT 		    EMAIL_PK 	 	PRIMARY KEY (email)
	);
    
    
   
    SELECT ROUND(AVG(weight), 0) AS everage_weight,

		ROUND(AVG(calorie_intake), 0) AS everage_cal_int,
        ROUND(AVG(calories_burned), 0) AS everage_cal_burned,
		ROUND(AVG(length_workout), 0) AS everage_length,
        ROUND(AVG(hours_slept), 0) AS everage_sleep
       
  FROM CUSTOMER_METRICS
  GROUP BY customer_id;
