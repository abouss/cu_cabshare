
INSERT INTO u_msgs (uni, m_id) VALUES ("ooa2121", "1");
INSERT INTO u_msgs (uni, m_id) VALUES ("ab3750", "2");
INSERT INTO u_msgs (uni, m_id) VALUES ("mcs2225", "3");
INSERT INTO u_msgs (uni, m_id) VALUES ("meb2251", "4");
INSERT INTO u_msgs (uni, m_id) VALUES ("aa3266", "5");
INSERT INTO u_msgs (uni, m_id) VALUES ("kmm2269", "6");
INSERT INTO u_msgs (uni, m_id) VALUES ("lo2258", "7");
INSERT INTO u_msgs (uni, m_id) VALUES ("eae2125", "8");
INSERT INTO u_msgs (uni, m_id) VALUES ("sad2161", "9");
INSERT INTO u_msgs (uni, m_id) VALUES ("oah2111", "10");
INSERT INTO u_msgs (uni, m_id) VALUES ("pe2185", "11");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1000", "Columbia", "Carman");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1001", "Columbia", "Schapiro");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1002", "Columbia", "Woodbridge");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1003", "Columbia", "Wien");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1004", "Columbia", "EC");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1005", "Barnard", "600");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1006", "Barnard", "616");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1007", "Barnard", "620");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1008", "Columbia", "Watt");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1009", "Columbia", "McBain");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1010", "Columbia", "Wallach");
INSERT INTO campus_loc (c_id, school, dorm) VALUES ("1011", "Columbia", "Hartley");
INSERT INTO u_loc (uni, c_id) VALUES ("ooa2121", "1001");
INSERT INTO u_loc (uni, c_id) VALUES ("ab3750", "1002");
INSERT INTO u_loc (uni, c_id) VALUES ("mcs2225", "1003");
INSERT INTO u_loc (uni, c_id) VALUES ("meb2251", "1004");
INSERT INTO u_loc (uni, c_id) VALUES ("aa3266", "1005");
INSERT INTO u_loc (uni, c_id) VALUES ("kmm2269", "1006");
INSERT INTO u_loc (uni, c_id) VALUES ("lo2258", "1007");
INSERT INTO u_loc (uni, c_id) VALUES ("eae2125", "1008");
INSERT INTO u_loc (uni, c_id) VALUES ("sad2161", "1009");
INSERT INTO u_loc (uni, c_id) VALUES ("oah2111", "1010");
INSERT INTO u_loc (uni, c_id) VALUES ("pe2185", "1011");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2001", "Delta", "US");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2002", "Korean Air", "Asia");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2003", "Air Canada", "N. America");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2004", "Air France", "Europe");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2005", "Lufthansa", "Europe");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2006", "Jet Blue", "N. America");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2007", "British Airways", "Europe");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2008", "ANA", "Asia");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2009", "United", "US");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2010", "American Airlines", "US");
INSERT INTO airlines (line_id, line_name, line_desc) VALUES ("2011", "Jet Airways", "Asia");





INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3001", "2001", "15-06-02 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3002", "2002", "15-06-03 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3003", "2003", "15-06-04 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3004", "2004", "15-06-05 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3005", "2005", "15-06-06 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3006", "2006", "15-06-07 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3007", "2007", "15-06-08 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3008", "2008", "15-06-09 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3009", "2009", "15-06-10 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3010", "2010", "15-06-11 16:45");
INSERT INTO flights (a_id, line_id, f_datetime) VALUES ("3011", "2011", "15-06-12 16:45");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Yellow Cab", "4001", "Most popular");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Uber", "4002", "New and cool");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Quick Ride Corp", "4003", "Based in Manhattan");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Future Cab", "4004", "Financial district");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Metroline", "4005", "Brooklyn");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Harlem Car Service", "4006", "Harlem");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("Hoyt Limo", "4007", "Queens");
INSERT INTO taxis (t_name, t_id, t_desc) VALUES ("New Bell", "4008", "Brooklyn");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5001", "4001", "HORRIBLE", "Absolutely stay away at all costs - the guy took to me into an alleyway and mugged me!", "1");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5002", "4002", "Great car service!", "This service is awesome and I will definitely use it again.", "8");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5003", "4003", "Enormous ripoff.", "The guy didnt even run the meter and claimed it was broken.", "1");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5004", "4004", "Not a happy camper.", "The driver was extremely rude.", "2");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5005", "4005", "Elated with this service!", "The driver was really nice", "9");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5006", "4006", "Like usual", "It was average in every way.", "5");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5007", "4007", "A Great Experience", "The car was clean and smelled great. It even showed up early!", "8");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5008", "4008", "The Great Gatsby of Taxis", "No words to describe how wonderful my experience was.", "10");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5009", "4001", "Life-changing!", "I ended up marrying my taxi driver - he was awesome!", "10");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5010", "4002", "Will never use again", "Wasted my time completely", "1");
INSERT INTO reviews (r_id, t_id, r_title, r_body, r_rating) VALUES ("5011", "4003", "STAY AWAY", "Dont even think about it", "1");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("20", "4001", "1000", "15-02-02 9:30", "3001");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("30", "4002", "1001", "15-02-03 9:30", "3002");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("40", "4003", "1002", "15-02-04 9:30", "3003");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("30", "4004", "1003", "15-02-05 9:30", "3004");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("20", "4005", "1004", "15-02-06 9:30", "3005");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("50", "4006", "1005", "15-02-07 9:30", "3006");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("40", "4007", "1006", "15-02-08 9:30", "3007");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("30", "4008", "1007", "15-02-09 9:30", "3008");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("20", "4005", "1008", "15-02-10 9:30", "3009");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("60", "4006", "1009", "15-02-11 9:30", "3010");
INSERT INTO prices (price, t_id, c_id, p_datetime, a_id) VALUES ("40", "4007", "1010", "15-02-12 9:30", "3011");
INSERT INTO users (uni, name, email, password) VALUES ("ooa2121", "Omar", "ooa2121@columbia.edu", "piano");
INSERT INTO users (uni, name, email, password) VALUES ("ab3750", "Anfal", "ab3750@barnard.edu", "compsci");
INSERT INTO users (uni, name, email, password) VALUES ("mcs2225", "Nina", "mcs2225@barnard.edu", "korea");
INSERT INTO users (uni, name, email, password) VALUES ("meb2251", "Maria", "meb2251@barnard.edu", "suite1");
INSERT INTO users (uni, name, email, password) VALUES ("aa3266", "Alexa", "aa3266@barnard.edu", "suite2");
INSERT INTO users (uni, name, email, password) VALUES ("kmm2269", "Kathy", "lo2258@barnard.edu", "suite3");
INSERT INTO users (uni, name, email, password) VALUES ("lo2258", "Linda", "mcs2225@barnard.edu", "suite4");
INSERT INTO users (uni, name, email, password) VALUES ("eae2125", "Elsie", "eae2125@barnard.edu", "suite5");
INSERT INTO users (uni, name, email, password) VALUES ("sad2161", "Shezza", "sad2161@barnard.edu", "imsad");
INSERT INTO users (uni, name, email, password) VALUES ("oah2111", "Omar H", "oah2111@columbia.edu", "cooking");
INSERT INTO users (uni, name, email, password) VALUES ("pe2185", "Parsa", "pe2185@barnard.edu", "korea");

INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1000", "3001", "2001", "4001", "15-02-03 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1001", "3002", "2002", "4002", "15-02-02 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1002", "3003", "2003", "4003", "15-02-04 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1003", "3004", "2004", "4004", "15-02-05 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1004", "3005", "2005", "4005", "15-02-06 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1005", "3006", "2006", "4006", "15-02-07 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1006", "3007", "2007", "4007", "15-02-08 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1007", "3008", "2008", "4008", "15-02-09 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1008", "3009", "2009", "4001", "15-02-10 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1009", "3010", "2010", "4002", "15-02-11 9:30");
INSERT INTO rides (uni, c_id, a_id, line_id, t_id, p_datetime) VALUES ("aa3266", "1010", "3011", "2011", "4003", "15-02-07 9:30");




INSERT INTO airports (airport_name, terminal, a_id) VALUES ("LaGuardia", "A", "3001");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("LaGuardia", "B", "3002");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("LaGuardia", "C", "3003");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("LaGuardia", "D", "3004");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("JFK", "1", "3005");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("JFK", "2", "3006");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("JFK", "4", "3007");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("JFK", "5", "3008");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("JFK", "7", "3009");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("JFK", "8", "3010");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("Newark", "A", "3011");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("Newark", "B", "3012");
INSERT INTO airports (airport_name, terminal, a_id) VALUES ("Newark", "C", "3013");

INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("1", "15-07-07 9:45", "this was awesome");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("2", "15-07-08 9:45", "really, really bad.");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("3", "15-07-09 9:45", "embarassingly smelly");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("4", "15-07-10 9:45", "took way too long and driver couldnt find us");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("5", "15-07-11 9:45", "was late for my flight");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("6", "15-07-12 9:45", "loved the driver and car!");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("7", "15-07-13 9:45", "lifechanging in all the wrong ways");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("8", "15-07-14 9:45", "so happy I cant even explain it!");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("9", "15-07-15 9:45", "this cab ride was absolutely dreadful");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("10", "15-07-16 9:45", "It was an average experience.");
INSERT INTO messages (m_id, m_datetime, m_body) VALUES ("11", "15-07-17 9:45", "Whats so great about cabs anyways?");

