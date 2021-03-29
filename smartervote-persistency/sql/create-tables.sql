-- please see 'create-database.sql' to see instructions how to setup the database

-- tables
DROP TABLE IF EXISTS PersonalQuestionUpvote;
DROP TABLE IF EXISTS PersonalQuestionAnswer;
DROP TABLE IF EXISTS PersonalQuestion;
DROP TABLE IF EXISTS MediaCoverage;
DROP TABLE IF EXISTS QuestionAnswer;
DROP TABLE IF EXISTS Politician;
DROP TABLE IF EXISTS Party;
DROP TABLE IF EXISTS Question;
DROP TABLE IF EXISTS QuestionSubject;
DROP TABLE IF EXISTS Election;

CREATE TYPE Gender AS ENUM (
	'Male',
	'Female',
	'Other'
);
CREATE TABLE Election (
    id UUID NOT NULL,
    name VARCHAR(256) NOT NULL,
    creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,

    CONSTRAINT pk_election PRIMARY KEY (id)
);
CREATE TABLE QuestionSubject (
    id UUID NOT NULL,
    election_id UUID NOT NULL,
    name VARCHAR(256) NOT NULL,
    creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,

    CONSTRAINT pk_question_subject PRIMARY KEY (id),
    CONSTRAINT qs_fk_election_id FOREIGN KEY (election_id) REFERENCES election (id)
);
CREATE TABLE Question (
	id UUID NOT NULL,
	question_subject_id UUID NOT NULL,
	title VARCHAR(256) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_question PRIMARY KEY (id),
	CONSTRAINT q_fk_question_subject_id FOREIGN KEY (question_subject_id) REFERENCES QuestionSubject (id)
);
CREATE TABLE Party (
	id UUID NOT NULL,
	name VARCHAR(256) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_party PRIMARY KEY (id)
);
CREATE TABLE Politician (
	id UUID NOT NULL,
	party_id UUID NOT NULL,
	name VARCHAR(256) NOT NULL,
	birthyear INT NOT NULL,
	gender Gender NOT NULL,
	profession VARCHAR(256) NOT NULL,
	picture VARCHAR(128),
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_politician PRIMARY KEY (id),
	CONSTRAINT p_fk_party_id FOREIGN KEY (party_id) REFERENCES Party (id)
);
CREATE TABLE QuestionAnswer (
	question_id UUID NOT NULL,
	politician_id UUID NOT NULL,
	answer int NOT NULL,
	
	CONSTRAINT qa_fk_question_id FOREIGN KEY (question_id) REFERENCES Question (id),
	CONSTRAINT qa_fk_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id)
);
CREATE TABLE MediaCoverage (
	id UUID NOT NULL,
	politician_id UUID NOT NULL,
	headline VARCHAR(256) NOT NULL,
	description VARCHAR(512),
	link VARCHAR(2048),
	event_date DATE NOT NULL,
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_media_coverage PRIMARY KEY (id),
	CONSTRAINT fk_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id)
);
CREATE TABLE PersonalQuestion (
	id UUID NOT NULL,
	politician_id UUID NOT NULL,
	title VARCHAR(256) NOT NULL,
	description VARCHAR(512),
	upvotes BIGINT,
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_personal_question PRIMARY KEY (id),
	CONSTRAINT pq_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id)
);
CREATE TABLE PersonalQuestionAnswer (
	id UUID NOT NULL,
	personal_question_id UUID NOT NULL,
	answer varchar(1024) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_personal_question_answer PRIMARY KEY (id),
	CONSTRAINT pqa_fk_personal_question_id FOREIGN KEY (personal_question_id) REFERENCES PersonalQuestion (id)
);
CREATE TABLE PersonalQuestionUpvote (
	id UUID NOT NULL,
	personal_question_id UUID NOT NULL,
	ip_address VARCHAR(16) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_personal_question_upvote PRIMARY KEY (id),
	CONSTRAINT pqu_fk_personal_question_id FOREIGN KEY (personal_question_id) REFERENCES PersonalQuestionUpvote (id)
);

-- grand permissions to table
-- https://www.postgresql.org/docs/current/sql-grant.html
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE Election TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE QuestionSubject TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE Question TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE Party TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE Politician TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE QuestionAnswer TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE MediaCoverage TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE PersonalQuestion TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE PersonalQuestionAnswer TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE PersonalQuestionUpvote TO smartervote_user;