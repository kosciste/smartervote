-- please check 'create-database.sql' to see instructions how to setup the database

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
DROP TYPE IF EXISTS Gender;

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
	CONSTRAINT fk_qs_election_id FOREIGN KEY (election_id) REFERENCES Election (id)
);
CREATE TABLE Question (
	id UUID NOT NULL,
	question_subject_id UUID NOT NULL,
	text VARCHAR(256) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
	change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_question PRIMARY KEY (id),
	CONSTRAINT fk_q_question_subject_id FOREIGN KEY (question_subject_id) REFERENCES QuestionSubject (id)
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
	gender VARCHAR(20) NOT NULL,
	profession VARCHAR(256) NOT NULL,
	picture VARCHAR(128),
	creation_time TIMESTAMP NOT NULL,
	change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_politician PRIMARY KEY (id),
	CONSTRAINT fk_p_party_id FOREIGN KEY (party_id) REFERENCES Party (id)
);
CREATE TABLE QuestionAnswer (
	id UUID NOT NULL,
	question_id UUID NOT NULL,
	politician_id UUID NOT NULL,
	answer int NOT NULL,
	creation_time TIMESTAMP NOT NULL,
	change_time TIMESTAMP NOT NULL,

	CONSTRAINT pk_question_answer PRIMARY KEY (id),
	CONSTRAINT fk_qa_question_id FOREIGN KEY (question_id) REFERENCES Question (id),
	CONSTRAINT fk_qa_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id),
	CONSTRAINT u_question_answer UNIQUE (question_id, politician_id)
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
	CONSTRAINT fk_mc_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id)
);
CREATE TABLE PersonalQuestion (
	id UUID NOT NULL,
	politician_id UUID NOT NULL,
	text VARCHAR(256) NOT NULL,
	upvotes BIGINT,
	creation_time TIMESTAMP NOT NULL,
	change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_personal_question PRIMARY KEY (id),
	CONSTRAINT fk_pq_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id)
);
CREATE TABLE PersonalQuestionAnswer (
	id UUID NOT NULL,
	personal_question_id UUID NOT NULL,
	text VARCHAR(1024) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
	change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_personal_question_answer PRIMARY KEY (id),
	CONSTRAINT fk_pqa_personal_question_id FOREIGN KEY (personal_question_id) REFERENCES PersonalQuestion (id),
	CONSTRAINT u_personal_question_answer UNIQUE (personal_question_id)
);
CREATE TABLE PersonalQuestionUpvote (
	id UUID NOT NULL,
	personal_question_id UUID NOT NULL,
	ip_address VARCHAR(16) NOT NULL,
	creation_time TIMESTAMP NOT NULL,
	change_time TIMESTAMP NOT NULL,
	
	CONSTRAINT pk_personal_question_upvote PRIMARY KEY (id),
	CONSTRAINT fk_pqu_personal_question_id FOREIGN KEY (personal_question_id) REFERENCES PersonalQuestion (id)
);
CREATE TABLE ProposalResult (
    id UUID NOT NULL,
    creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,

    CONSTRAINT pk_personal_result PRIMARY KEY (id)
);
CREATE TABLE ProposalResultScore (
    id UUID NOT NULL,
    proposal_result_id UUID NOT NULL,
    politician_id UUID NOT NULL,
    matching_score INT NOT NULL,
    creation_time TIMESTAMP NOT NULL,
    change_time TIMESTAMP NOT NULL,

    CONSTRAINT pk_personal_result_score PRIMARY KEY (id),
    CONSTRAINT fk_prs_proposal_result_id FOREIGN KEY (proposal_result_id) REFERENCES ProposalResult (id),
    CONSTRAINT fk_prs_politician_id FOREIGN KEY (politician_id) REFERENCES Politician (id)
);

-- indexes
create index idx_qa_question_id on QuestionAnswer (question_id);
create index idx_qa_politician_id on QuestionAnswer (politician_id);

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
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE ProposalResult TO smartervote_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE ProposalResultScore TO smartervote_user;