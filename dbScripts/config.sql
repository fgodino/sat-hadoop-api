CREATE DATABASE IF NOT EXISTS testDB;

USE testDB;

CREATE TABLE IF NOT EXISTS user_jobs (
	userid varchar(30),
	jobid varchar(255) PRIMARY KEY,
	jobstatus varchar(100),
    inputurl varchar(200),
    outputurl varchar(200),
    nodes varchar(10),
    jobname varchar(100)
);

CREATE TABLE IF NOT EXISTS ec2_queue (
	ec2ip varchar(255),
    queuename varchar(255),
    type varchar(255)
);

CREATE TABLE IF NOT EXISTS hadoop_slaves (
	ec2ip varchar(255),
    status varchar(255)
);

CREATE TABLE IF NOT EXISTS queues (
	queuename varchar(255)
);
