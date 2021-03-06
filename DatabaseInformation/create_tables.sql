
/* Create the users table */
CREATE TABLE users (
	uni VARCHAR(8) NOT NULL,
	NAME VARCHAR(20),
	email VARCHAR(50),
	password VARCHAR(20),
	PRIMARY KEY (uni)
	);

/* Create the messages table */
CREATE TABLE messages (
	m_id INT NOT NULL,
	m_datetime DATETIME,
	m_body TEXT,
	PRIMARY KEY (m_id)
	);

/* Create the user messages table */
CREATE TABLE u_msgs (
	uni VARCHAR(6) NOT NULL,
	m_id INT NOT NULL,
	PRIMARY KEY (uni, m_id),
	FOREIGN KEY (uni) REFERENCES users(uni),
	FOREIGN KEY (m_id) REFERENCES messages(m_id));

/* Create the campus locations table */
CREATE TABLE campus_loc (
	c_id INT NOT NULL,
	school VARCHAR(100),
	dorm VARCHAR(100),
	PRIMARY KEY (c_id)
	);

/* Create the user locations table */
CREATE TABLE u_loc (
	c_id INT NOT NULL,
	uni VARCHAR(6) NOT NULL,
	PRIMARY KEY (c_id, uni),
	FOREIGN KEY (uni) REFERENCES users (uni),
	FOREIGN KEY (c_id) REFERENCES campus_loc (c_id));

/* Create the airlines table */
CREATE TABLE airlines (
	line_id INT,
	line_name VARCHAR(50),
	line_desc TEXT,
	PRIMARY KEY (line_id)
	);


/* Create the airports table */
CREATE TABLE airports (
	airport_name VARCHAR(20),
	terminal VARCHAR(10),
	a_id INT NOT NULL,
	PRIMARY KEY (a_id)
	);

 Create the flights table 
CREATE TABLE flights (
	a_id INT NOT NULL,
	line_id INT NOT NULL,
	f_datetime DATETIME NOT NULL,
	FOREIGN KEY (a_id) REFERENCES airports(a_id),
	PRIMARY KEY (a_id,line_id)
	);



/* Create the taxis table */
CREATE TABLE taxis (
	t_name VARCHAR(20),
	t_id INT NOT NULL,
	t_desc VARCHAR(100),
	PRIMARY KEY (t_id)
	);

/* Create the reviews table */
CREATE TABLE reviews (
	r_id VARCHAR(10) NOT NULL,
	t_id INT NOT NULL,
	r_title VARCHAR(100),
	r_body TEXT,
	r_rating INT,
	FOREIGN KEY (t_id) REFERENCES taxis(t_id),
	PRIMARY KEY (r_id, t_id),
	CHECK (rating <= 10 AND rating >= 0)
	);

/* Create the prices table */
CREATE TABLE prices (
	price INT NOT NULL,
	t_id INT NOT NULL,
	c_id INT NOT NULL,
	p_datetime DATETIME NOT NULL unique,
	a_id INT NOT NULL,
	FOREIGN KEY (t_id) REFERENCES taxis(t_id),
	FOREIGN KEY (c_id) REFERENCES campus_loc(c_id),
	PRIMARY KEY (t_id, c_id, price, a_id, p_datetime),
	CHECK (price != 0)
	);

/* Create the rides table */
CREATE TABLE rides (
	uni VARCHAR(6) NOT NULL,
	c_id INT NOT NULL,
	a_id INT NOT NULL,
	line_id INT NOT NULL,
	t_id INT NOT NULL,
	p_datetime DATETIME NOT NULL unique,
	FOREIGN KEY (uni) REFERENCES users(uni),
	FOREIGN KEY (c_id) REFERENCES campus_loc(c_id),
	FOREIGN KEY (t_id) REFERENCES taxis(t_id),
	FOREIGN KEY (p_datetime) REFERENCES prices(p_datetime),
	FOREIGN KEY (line_id) REFERENCES airlines(line_id),
	PRIMARY KEY (uni, c_id, a_id, line_id, t_id, p_datetime)
	);
