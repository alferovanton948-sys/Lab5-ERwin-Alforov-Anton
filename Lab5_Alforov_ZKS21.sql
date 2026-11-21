
CREATE TABLE education
(
	education_id  INTEGER NOT NULL,
	education_level  VARCHAR(20) NOT NULL
)
;



ALTER TABLE education
	ADD  PRIMARY KEY (education_id)
;



CREATE TABLE education_requirements
(
	position_id  INTEGER NOT NULL,
	education_id  INTEGER NOT NULL
)
;



ALTER TABLE education_requirements
	ADD  PRIMARY KEY (position_id,education_id)
;



CREATE TABLE employees
(
	employee_id  INTEGER NOT NULL,
	last_name  VARCHAR(20) NOT NULL,
	first_name  VARCHAR(20) NOT NULL,
	patronymic  VARCHAR(20) NULL,
	birth_date  DATE NOT NULL,
	position_id  INTEGER NOT NULL,
	category_id  INTEGER NOT NULL,
	education_id  INTEGER NOT NULL
)
;



ALTER TABLE employees
	ADD  PRIMARY KEY (employee_id)
;



CREATE TABLE payroll
(
	payroll_id  INTEGER NOT NULL,
	month  INTEGER NOT NULL,
	year  INTEGER NOT NULL,
	hours_worked  INTEGER NOT NULL,
	salary_amount  INTEGER NOT NULL,
	employee_id  INTEGER NOT NULL
)
;



ALTER TABLE payroll
	ADD  PRIMARY KEY (payroll_id)
;



CREATE TABLE positions
(
	position_id  INTEGER NOT NULL,
	position_name  VARCHAR(20) NOT NULL
)
;



ALTER TABLE positions
	ADD  PRIMARY KEY (position_id)
;



CREATE TABLE tariff_categories
(
	category_id  INTEGER NOT NULL,
	category_name  VARCHAR(20) NOT NULL,
	tariff_rate  INTEGER NOT NULL
)
;



ALTER TABLE tariff_categories
	ADD  PRIMARY KEY (category_id)
;



ALTER TABLE education_requirements
	ADD FOREIGN KEY R_7 (position_id) REFERENCES positions(position_id)
;


ALTER TABLE education_requirements
	ADD FOREIGN KEY R_8 (education_id) REFERENCES education(education_id)
;



ALTER TABLE employees
	ADD FOREIGN KEY R_2 (position_id) REFERENCES positions(position_id)
;


ALTER TABLE employees
	ADD FOREIGN KEY R_3 (category_id) REFERENCES tariff_categories(category_id)
;


ALTER TABLE employees
	ADD FOREIGN KEY R_4 (education_id) REFERENCES education(education_id)
;



ALTER TABLE payroll
	ADD FOREIGN KEY R_5 (employee_id) REFERENCES employees(employee_id)
;


