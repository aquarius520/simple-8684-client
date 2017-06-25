CREATE TABLE `category` (id INT,name VARCHAR(100) DEFAULT '',rank INT DEFAULT 0, ismetro INT DEFAULT 0, `type` INT DEFAULT 0);

CREATE TABLE `company` (id INT,name VARCHAR(100) DEFAULT '');

CREATE TABLE `coordinate` (stationsid INT,longitude1 INT DEFAULT 0, latitude1 INT DEFAULT 0,longitude2 INT DEFAULT 0, latitude2 INT DEFAULT 0,longitude3 INT DEFAULT 0, latitude3 INT DEFAULT 0);

CREATE TABLE `info` (`lastdate` VARCHAR(100) DEFAULT '');

CREATE TABLE `lines` (id INT,name VARCHAR(500),categoryid INT DEFAULT 0,isshow INT DEFAULT 0, number INT DEFAULT 0, code VARCHAR(50), type INT DEFAULT 0, sudu INT DEFAULT 1 );

CREATE TABLE `linesothers` (lineid INT,time VARCHAR(500) DEFAULT '', lastupdate VARCHAR(100) DEFAULT '',start VARCHAR(100) DEFAULT '', end VARCHAR(100) DEFAULT '',companyid INT DEFAULT 0,note TEXT DEFAULT '', fare TEXT DEFAULT '');

CREATE TABLE `metro_exit` (stationid INT,rank INT DEFAULT 0, name VARCHAR(100) DEFAULT '', address TEXT DEFAULT '', latitude DOUBLE DEFAULT 0, longitude DOUBLE DEFAULT 0);

CREATE TABLE `metro_lines` (id INT,name VARCHAR(100) DEFAULT '', opentime TEXT DEFAULT '', note TEXT DEFAULT '', company VARCHAR(100) DEFAULT '', price VARCHAR(100) DEFAULT '', number INT DEFAULT 0, opened INT DEFAULT 0, code VARCHAR(100) DEFAULT '', rank INT DEFAULT 0);

CREATE TABLE `metro_price` (stationid INT DEFAULT 0,anotherid INT DEFAULT 0, price INT DEFAULT 0);

CREATE TABLE `metro_station` (id INT,name VARCHAR(100) DEFAULT '', pinyin VARCHAR(100) DEFAULT '', latitude DOUBLE DEFAULT 0, longitude DOUBLE DEFAULT 0, opened INT DEFAULT 0, code VARCHAR(100) DEFAULT '');

CREATE TABLE `metro_stations` (id INT,pm1 INT DEFAULT 0, pm2 INT DEFAULT 0, pm3 INT DEFAULT 0, lineid INT DEFAULT 0, stationid INT DEFAULT 0);

CREATE TABLE `station` (id INT,name VARCHAR(500) DEFAULT '', pinyin VARCHAR(500) DEFAULT '', code VARCHAR(50) DEFAULT '', type INT DEFAULT 0, `lng` INT DEFAULT 0, `lat` INT DEFAULT 0,`zid` INT DEFAULT 0, `zhan` VARCHAR(500) DEFAULT '' );

CREATE TABLE `stations` (id INT,pm1 INT DEFAULT 0, pm2 INT DEFAULT 0, pm3 INT DEFAULT 0,lineid INT DEFAULT 0, stationid INT DEFAULT 0);

CREATE TABLE `walk` (id INT,stationid INT DEFAULT 0, anotherid INT DEFAULT 0, juli INT DEFAULT 0);

CREATE INDEX index_coordinate ON coordinate(stationsid);

CREATE INDEX index_metro_stations ON metro_stations(lineid, stationid);

CREATE INDEX index_stations ON stations(lineid, stationid);

CREATE INDEX lines_ss_lineid ON lines(id);

CREATE INDEX metro_lines_mss_lineid ON metro_lines(id);

CREATE INDEX metro_station_ss_stationid ON metro_station(id);

CREATE INDEX station_ss_stationid ON station(id);

