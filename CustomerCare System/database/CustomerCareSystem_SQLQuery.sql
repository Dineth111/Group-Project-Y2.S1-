USE customercaresystem;

CREATE TABLE customer (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    password VARCHAR(255)
);

CREATE TABLE agent (
    aid INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    password VARCHAR(255)
);

CREATE TABLE ticket (
    tid INT PRIMARY KEY AUTO_INCREMENT,
    subject VARCHAR(100),
    description TEXT,
    date DATE,  
    cid INT,
    FOREIGN KEY (cid) REFERENCES customer(cid)
);

CREATE TABLE response (
    tid INT,
    rid INT PRIMARY KEY AUTO_INCREMENT,
    text TEXT,
    date DATE,  
    aid INT,
    FOREIGN KEY (tid) REFERENCES ticket(tid),
    FOREIGN KEY (aid) REFERENCES agent(aid)
);

CREATE TABLE faq (
    faqid INT PRIMARY KEY AUTO_INCREMENT,
    question TEXT,
    answer TEXT,
    date DATE,  
    aid INT,
    FOREIGN KEY (aid) REFERENCES agent(aid)
);

CREATE TABLE feedback (
    fid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    comment TEXT,
    cid INT,
    FOREIGN KEY (cid) REFERENCES customer(cid)
);

CREATE TABLE useradmin (
    adminid INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(255)
);

CREATE TABLE report (
    reportid INT PRIMARY KEY AUTO_INCREMENT,
    usercount INT,
    agentcount INT,
    cuscount INT,
    date DATE,  
    agentid INT,
    FOREIGN KEY (agentid) REFERENCES useradmin(adminid)
);