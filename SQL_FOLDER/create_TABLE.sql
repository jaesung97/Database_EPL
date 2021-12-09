-- PLAYER TABLE FOR TESTING
CREATE TABLE PLAYER(
	player_id INT UNSIGNED PRIMARY KEY,
	player_name VARCHAR(50) NOT NULL,
    club_id TINYINT UNSIGNED UNIQUE,
    uniform_num INT,
    date_of_birth INT,
    position CHAR(10)
);

-- MATCH_DETIAL TABLE FOR TESTING
CREATE TABLE MATCH_DETAIL(
	match_id INT UNSIGNED PRIMARY KEY,
    home_score CHAR(10) NOT NULL,
    away_score CHAR(10) NOT NULL,
    king_of_the_match CHAR(100) NOT NULL
);

-- CREATE TABLES CODE --
CREATE TABLE GOAL_OF(
	match_id INT UNSIGNED NOT NULL, -- USING UNSIGNED INT, SET FOREIGN KEY
    club_id INT UNSIGNED NOT NULL, -- USING UNSIGNED TINYINT, SET FOREIGN KEY
    player_id INT UNSIGNED NOT NULL, -- USING UNSIGNED INT
    goal_id INT UNSIGNED PRIMARY KEY, -- USING UNSIGNED INT, SET PK
    goal_time CHAR(10), -- USING UNSIGNED INT
    FOREIGN KEY(match_id) REFERENCES MATCH_DETAIL(match_id) -- USING MATCH_DETAIL.match_id FOR FOREIGN KEY
    -- FOREIGN KEY(player_id) REFERENCES PLAYER(player_id), -- USING PLAYER.player_id FOR FOREIGN KEY
    -- FOREIGN KEY(club_id) REFERENCES PLAYER(club_id) -- USING MATCH_DETAIL.club_id FOR FOREIGN KEY
);

CREATE TABLE FOUL_OF(
	match_id INT UNSIGNED NOT NULL, -- USING UNSIGNED INT, SET FOREIGN KEY
    club_id INT UNSIGNED NOT NULL, -- USING UNSIGNED TINYINT, SET FOREIGN KEY
    player_id INT UNSIGNED NOT NULL, -- USING UNSIGNED INT
    foul_time CHAR(10) NOT NULL, -- USING UNSIGNED TINYINT
    sent_off BOOLEAN NOT NULL, -- USING BOOLEAN
    FOREIGN KEY(match_id) REFERENCES MATCH_DETAIL(match_id) -- USING MATCH_DETAIL.match_id FOR FOREIGN KEY
    -- FOREIGN KEY(player_id) REFERENCES PLAYER(player_id), -- USING PLAYER.player_id FOR FOREIGN KEY
    -- FOREIGN KEY(club_id) REFERENCES PLAYER(club_id) -- USING MATCH_DETAIL.club_id FOR FOREIGN KEY
);
-- END OF CODE --