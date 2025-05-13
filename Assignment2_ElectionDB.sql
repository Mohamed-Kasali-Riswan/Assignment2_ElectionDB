use assignment;

Create table Parties (
	party_id INT PRIMARY KEY AUTO_INCREMENT,
    party_name VARCHAR(100) UNIQUE NOT NULL,
    leader_name VARCHAR(100) NOT NULL

);

Create table Regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    district VARCHAR(100) NOT NULL,
    thoguthi VARCHAR(100) NOT NULL,
    ward VARCHAR(100) NOT NULL
);

Create table Votes (
    vote_id int primary key auto_increment,
    region_id INT NOT NULL,
    party_id INT NOT NULL,
	vote_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (region_id) REFERENCES Region(region_id),
    FOREIGN KEY (party_id) REFERENCES Party(party_id)

);

Create table Result (
    result_id int PRIMARY KEY AUTO_INCREMENT,
    party_id int not null,
    region_id int not null,
    vote_count int,  -- AS OF NOW IT IS INT
    FOREIGN KEY (region_id) REFERENCES Region(region_id),
    FOREIGN KEY (party_id) REFERENCES Party(party_id)
);


-- Inserting Parties [ Procedure name is InsertParty]

Delimiter **

CREATE PROCEDURE InsertParty(
	IN partyName VARCHAR(100),
    IN leaderName VARCHAR(100)
)
Begin
	INSERT INTO Parties (party_name,leader_name) VALUES (partyName,leaderName);
End **

Delimiter ;

call InsertParty("DMK","M. K. Stalin");
call InsertParty("ADMK","Edappadi K. Palaniswami");
call InsertParty("BJP","K. Annamalai");
call InsertParty("TVK","Thalapathy Vijay");
call InsertParty("NTK","Seeman");
call InsertParty("INC","K. S. Alagiri");

SELECT * FROM Parties;


-- Inserting Regions [ Procedure name is InsertRegion]

Delimiter **

CREATE PROCEDURE InsertRegion(
	IN districtName VARCHAR(100),
    IN thoguthiName VARCHAR(100),
    IN wardName VARCHAR(100)
)
Begin
	INSERT INTO Regions (district,thoguthi,ward) VALUES (districtName,thoguthiName,wardName);
End **

Delimiter ;

	call InsertRegion('Chennai', 'Thousand Lights', 'Ward 1');
    call InsertRegion('Chennai', 'Thousand Lights', 'Ward 2');
    call InsertRegion('Chennai', 'Thousand Lights', 'Ward 3');
    call InsertRegion('Chennai', 'Thousand Lights', 'Ward 4');
    call InsertRegion('Chennai', 'Thousand Lights', 'Ward 5');

    call InsertRegion('Chennai', 'Chepauk-Thiruvallikeni', 'Ward 1');
    call InsertRegion('Chennai', 'Chepauk-Thiruvallikeni', 'Ward 2');
    call InsertRegion('Chennai', 'Chepauk-Thiruvallikeni', 'Ward 3');
    call InsertRegion('Chennai', 'Chepauk-Thiruvallikeni', 'Ward 4');
    call InsertRegion('Chennai', 'Chepauk-Thiruvallikeni', 'Ward 5');

    call InsertRegion('Chennai', 'Saidapet', 'Ward 1');
    call InsertRegion('Chennai', 'Saidapet', 'Ward 2');
    call InsertRegion('Chennai', 'Saidapet', 'Ward 3');
    call InsertRegion('Chennai', 'Saidapet', 'Ward 4');
    call InsertRegion('Chennai', 'Saidapet', 'Ward 5');

    call InsertRegion('Chennai', 'Mylapore', 'Ward 1');
    call InsertRegion('Chennai', 'Mylapore', 'Ward 2');
    call InsertRegion('Chennai', 'Mylapore', 'Ward 3');
    call InsertRegion('Chennai', 'Mylapore', 'Ward 4');
    call InsertRegion('Chennai', 'Mylapore', 'Ward 5');

    call InsertRegion('Chennai', 'T Nagar', 'Ward 1');
    call InsertRegion('Chennai', 'T Nagar', 'Ward 2');
    call InsertRegion('Chennai', 'T Nagar', 'Ward 3');
    call InsertRegion('Chennai', 'T Nagar', 'Ward 4');
    call InsertRegion('Chennai', 'T Nagar', 'Ward 5');
    
	call InsertRegion('Coimbatore', 'Coimbatore North', 'Ward 1');
    call InsertRegion('Coimbatore', 'Coimbatore North', 'Ward 2');
    call InsertRegion('Coimbatore', 'Coimbatore North', 'Ward 3');
    call InsertRegion('Coimbatore', 'Coimbatore North', 'Ward 4');
    call InsertRegion('Coimbatore', 'Coimbatore North', 'Ward 5');

    call InsertRegion('Coimbatore', 'Coimbatore South', 'Ward 1');
    call InsertRegion('Coimbatore', 'Coimbatore South', 'Ward 2');
    call InsertRegion('Coimbatore', 'Coimbatore South', 'Ward 3');
    call InsertRegion('Coimbatore', 'Coimbatore South', 'Ward 4');
    call InsertRegion('Coimbatore', 'Coimbatore South', 'Ward 5');

    call InsertRegion('Coimbatore', 'Peelamedu', 'Ward 1');
    call InsertRegion('Coimbatore', 'Peelamedu', 'Ward 2');
    call InsertRegion('Coimbatore', 'Peelamedu', 'Ward 3');
    call InsertRegion('Coimbatore', 'Peelamedu', 'Ward 4');
    call InsertRegion('Coimbatore', 'Peelamedu', 'Ward 5');

    call InsertRegion('Coimbatore', 'Kalapatti', 'Ward 1');
    call InsertRegion('Coimbatore', 'Kalapatti', 'Ward 2');
    call InsertRegion('Coimbatore', 'Kalapatti', 'Ward 3');
    call InsertRegion('Coimbatore', 'Kalapatti', 'Ward 4');
    call InsertRegion('Coimbatore', 'Kalapatti', 'Ward 5');
    
    call InsertRegion('Madurai', 'Madurai North', 'Ward 1');
    call InsertRegion('Madurai', 'Madurai North', 'Ward 2');
    call InsertRegion('Madurai', 'Madurai North', 'Ward 3');
    call InsertRegion('Madurai', 'Madurai North', 'Ward 4');
    call InsertRegion('Madurai', 'Madurai North', 'Ward 5');

    call InsertRegion('Madurai', 'Madurai South', 'Ward 1');
    call InsertRegion('Madurai', 'Madurai South', 'Ward 2');
    call InsertRegion('Madurai', 'Madurai South', 'Ward 3');
    call InsertRegion('Madurai', 'Madurai South', 'Ward 4');
    call InsertRegion('Madurai', 'Madurai South', 'Ward 5');

    call InsertRegion('Madurai', 'Madurai Central', 'Ward 1');
    call InsertRegion('Madurai', 'Madurai Central', 'Ward 2');
    call InsertRegion('Madurai', 'Madurai Central', 'Ward 3');
    call InsertRegion('Madurai', 'Madurai Central', 'Ward 4');
    call InsertRegion('Madurai', 'Madurai Central', 'Ward 5');

    call InsertRegion('Madurai', 'Melur', 'Ward 1');
    call InsertRegion('Madurai', 'Melur', 'Ward 2');
    call InsertRegion('Madurai', 'Melur', 'Ward 3');
    call InsertRegion('Madurai', 'Melur', 'Ward 4');
    call InsertRegion('Madurai', 'Melur', 'Ward 5');

    call InsertRegion('Tirunelveli', 'Tirunelveli', 'Ward 1');
    call InsertRegion('Tirunelveli', 'Tirunelveli', 'Ward 2');
    call InsertRegion('Tirunelveli', 'Tirunelveli', 'Ward 3');
    call InsertRegion('Tirunelveli', 'Tirunelveli', 'Ward 4');
    call InsertRegion('Tirunelveli', 'Tirunelveli', 'Ward 5');

    call InsertRegion('Tirunelveli', 'Palayamkottai', 'Ward 1');
    call InsertRegion('Tirunelveli', 'Palayamkottai', 'Ward 2');
    call InsertRegion('Tirunelveli', 'Palayamkottai', 'Ward 3');
    call InsertRegion('Tirunelveli', 'Palayamkottai', 'Ward 4');
    call InsertRegion('Tirunelveli', 'Palayamkottai', 'Ward 5');

    call InsertRegion('Tirunelveli', 'Ambasamudram', 'Ward 1');
    call InsertRegion('Tirunelveli', 'Ambasamudram', 'Ward 2');
    call InsertRegion('Tirunelveli', 'Ambasamudram', 'Ward 3');
    call InsertRegion('Tirunelveli', 'Ambasamudram', 'Ward 4');
    call InsertRegion('Tirunelveli', 'Ambasamudram', 'Ward 5');

    call InsertRegion('Tirunelveli', 'Nanguneri', 'Ward 1');
    call InsertRegion('Tirunelveli', 'Nanguneri', 'Ward 2');
    call InsertRegion('Tirunelveli', 'Nanguneri', 'Ward 3');
    call InsertRegion('Tirunelveli', 'Nanguneri', 'Ward 4');
    call InsertRegion('Tirunelveli', 'Nanguneri', 'Ward 5');

    call InsertRegion('Salem', 'Salem North', 'Ward 1');
    call InsertRegion('Salem', 'Salem North', 'Ward 2');
    call InsertRegion('Salem', 'Salem North', 'Ward 3');
    call InsertRegion('Salem', 'Salem North', 'Ward 4');
    call InsertRegion('Salem', 'Salem North', 'Ward 5');

    call InsertRegion('Salem', 'Salem South', 'Ward 1');
    call InsertRegion('Salem', 'Salem South', 'Ward 2');
    call InsertRegion('Salem', 'Salem South', 'Ward 3');
    call InsertRegion('Salem', 'Salem South', 'Ward 4');
    call InsertRegion('Salem', 'Salem South', 'Ward 5');

    call InsertRegion('Salem', 'Salem West', 'Ward 1');
    call InsertRegion('Salem', 'Salem West', 'Ward 2');
    call InsertRegion('Salem', 'Salem West', 'Ward 3');
    call InsertRegion('Salem', 'Salem West', 'Ward 4');
    call InsertRegion('Salem', 'Salem West', 'Ward 5');


select * from Parties;
select * from Regions;
select * from Votes;
select * from Result;

-- Trigger to count the votes on different regions

DELIMITER $$

create Trigger after_vote_insert
after insert on Votes
for each row
BEGIN
    update Result 
    set vote_count = vote_count + 1 
    where region_id = NEW.region_id AND party_id = NEW.party_id;

    -- If no rows updated in that time, inserting a new row
    IF row_count() = 0 THEN
        insert into Result (region_id, party_id, vote_count) 
        values (NEW.region_id, NEW.party_id, 1);
    END IF;
END $$

DELIMITER ;


-- Inserting random votes by loop and functions like floor(for roundOff) and rand(0 to 1)
DELIMITER $$

CREATE PROCEDURE InsertNumberOfVotes(IN numberOfVotes INT)
BEGIN
    DECLARE i INT DEFAULT 0;

    WHILE i<numberOfVotes DO
        INSERT INTO Votes(party_id, region_id)
        VALUES( FLOOR(1+RAND()*6), FLOOR(1+RAND()*100));
        set i=i+1;
    END while;
    
END $$

DELIMITER ;

CALL InsertNumberOfVotes(10000);

SELECT * FROM Votes;
SELECT count(*) AS total_records FROM Votes;

-- ---------------------------------------------------------------------------------------------------------------------

SELECT region_id,party_id FROM Result GROUP BY party_id,region_id ORDER BY party_id,region_id;

-- ---------------------------------------------------------------------------------------------------------------------

-- Party which has high Number of Votes

SELECT p.party_name,p.leader_name, SUM(r.vote_count) AS total_votes 
FROM Result r JOIN Parties p ON r.party_id = p.party_id 
GROUP BY p.party_id 
ORDER BY total_votes DESC
limit 1;

-- ---------------------------------------------------------------------------------------------------------------------

-- Party which has high Number of Votes in specific district and thoguthi

SELECT p.party_name,p.leader_name, SUM(r.vote_count) AS total_votes 
FROM Result r JOIN Parties p ON r.party_id = p.party_id 
where r.region_id IN (SELECT region_id FROM Regions WHERE district = "Chennai" AND thoguthi = "Saidapet")
GROUP BY p.party_id 
ORDER BY total_votes DESC
LIMIT 1;
-- ---------------------------------------------------------------------------------------------------------------------

-- Party which party losses in Tirunelveli District and Palayamkottai thoguthi

SELECT p.party_name, p.leader_name 
FROM Parties p JOIN Result r ON p.party_id = r.party_id
WHERE 
    r.region_id in (
        SELECT region_id 
        FROM Regions 
        WHERE district = 'Tirunelveli' 
          AND thoguthi = 'Palayamkottai'
    )
ORDER BY r.vote_count 
LIMIT 1;

-- ---------------------------------------------------------------------------------------------------------------------

-- Party which wins in Tirunelveli District and Palayamkottai thoguthi

SELECT p.party_name, p.leader_name 
FROM Parties p JOIN Result r ON p.party_id = r.party_id
WHERE r.region_id in (
        SELECT region_id 
        FROM Regions 
        WHERE district = 'Tirunelveli' AND thoguthi = 'Palayamkottai'
    )
ORDER BY r.vote_count DESC
LIMIT 1;

-- ---------------------------------------------------------------------------------------------------------------------

-- 2nd Party to win in Chennai District

SELECT p.party_name, p.leader_name 
FROM Parties p JOIN Result r ON p.party_id = r.party_id
WHERE 
    r.region_id in (
        SELECT region_id 
        FROM Regions 
        WHERE district = 'Chennai' 
    )
ORDER BY r.vote_count DESC
LIMIT 1;

-- ---------------------------------------------------------------------------------------------------------------------

SELECT party_id,sum(vote_count) AS total_votes FROM Result WHERE party_id=1 GROUP BY party_id; -- 1633
SELECT party_id,sum(vote_count) AS total_votes FROM Result WHERE party_id=5 AND region_id IN (SELECT region_id FROM Regions WHERE district="Chennai");

-- ---------------------------------------------------------------------------------------------------------------------

-- If I am INC (2nd Highest Votes in Tamil Nadu) can have partnership with which party to win in the next Election

SELECT 
    p.party_name, 
    SUM(r.vote_count) AS total_votes,
    (SELECT SUM(r2.vote_count) 
     FROM Result r2 
     JOIN Parties p2 ON r2.party_id = p2.party_id 
     JOIN Regions re2 ON r2.region_id = re2.region_id
     WHERE p2.party_name = 'INC') 
     + SUM(r.vote_count) AS combined_votes
FROM Result r
JOIN Parties p ON r.party_id = p.party_id
JOIN Regions re ON r.region_id = re.region_id
WHERE p.party_name NOT IN ('NTK', 'INC')
GROUP BY p.party_id
HAVING 
    combined_votes > (
        SELECT SUM(r3.vote_count) 
        FROM Result r3 
        JOIN Parties p3 ON r3.party_id = p3.party_id 
        JOIN Regions re3 ON r3.region_id = re3.region_id
        WHERE p3.party_name = 'NTK' AND re3.district = 'Chennai'
    )
ORDER BY combined_votes DESC;

-- ---------------------------------------------------------------------------------------------------------------------


-- If I am DMK and the winner is NTK in chennai, I can have partnership with either one of these parties to win in the next Election

SELECT 
    p.party_name, 
    SUM(r.vote_count) AS total_votes,
    (SELECT SUM(r2.vote_count) 
     FROM Result r2 
     JOIN Parties p2 ON r2.party_id = p2.party_id 
     JOIN Regions re2 ON r2.region_id = re2.region_id
     WHERE p2.party_name = 'DMK' AND re2.district = 'Chennai') 
     + SUM(r.vote_count) AS combined_votes
FROM Result r
JOIN Parties p ON r.party_id = p.party_id
JOIN Regions re ON r.region_id = re.region_id
WHERE re.district = 'Chennai' AND p.party_name NOT IN ('NTK', 'ADMK')
GROUP BY p.party_id
HAVING 
    combined_votes > (
        SELECT SUM(r3.vote_count) 
        FROM Result r3 
        JOIN Parties p3 ON r3.party_id = p3.party_id 
        JOIN Regions re3 ON r3.region_id = re3.region_id
        WHERE p3.party_name = 'NTK' AND re3.district = 'Chennai'
    )
ORDER BY combined_votes DESC;

-- ---------------------------------------------------------------------------------------------------------------------

-- Qs 1

-- Finding Winner and Loser in the specific city

DELIMITER //

create procedure GetWinnerAndLoserByRegionManually(
    IN input_district VARCHAR(100),
    IN input_thoguthi VARCHAR(100)
)
BEGIN
    -- Declare variables to store results
    DECLARE winner_party_name VARCHAR(100);
    DECLARE winner_leader_name VARCHAR(100);
    DECLARE winner_vote_count int;

    DECLARE loser_party_name VARCHAR(100);
    DECLARE loser_leader_name VARCHAR(100);
    DECLARE loser_vote_count INT;

    -- Get the winner
    SELECT p.party_name, p.leader_name, SUM(r.vote_count) AS total_votes
    INTO winner_party_name, winner_leader_name, winner_vote_count
    FROM Parties p
    JOIN Result r ON p.party_id = r.party_id
    WHERE r.region_id in (
        SELECT region_id 
        FROM Regions 
        WHERE district = input_district AND thoguthi = input_thoguthi
    )
    GROUP BY r.party_id
    ORDER BY total_votes DESC
    LIMIT 1;

    -- Get the loser
    SELECT p.party_name, p.leader_name, SUM(r.vote_count) as total_votes
    INTO loser_party_name, loser_leader_name, loser_vote_count
    FROM Parties p
    JOIN Result r ON p.party_id = r.party_id
    WHERE r.region_id IN (
        SELECT region_id 
        FROM Regions 
        WHERE district = input_district AND thoguthi = input_thoguthi
    )
    GROUP BY r.party_id
    ORDER BY total_votes 
    LIMIT 1;

    -- Display the results
    select 
        winner_party_name AS Winner_Party, 
        winner_leader_name AS Winner_Leader, 
        winner_vote_count AS Winner_Votes,
        loser_party_name AS Loser_Party, 
        loser_leader_name AS Loser_Leader, 
        loser_vote_count AS Loser_Votes;
END //

DELIMITER ;

CALL GetWinnerAndLoserByRegionManually("Tirunelveli","Palayamkottai");

-- ----------------------------------------------------------------------------------------------------------------------

-- Qs 2

-- Finding the regions that the party losed 

DELIMITER //

CREATE PROCEDURE GetLostInRegions(
    IN input_party_name VARCHAR(100)
)
BEGIN
    SELECT r.region_id, rg.district, rg.thoguthi, rg.ward, p.party_name, p.leader_name, r.vote_count
    FROM Result r JOIN Parties p ON p.party_id = r.party_id
    JOIN Regions rg ON rg.region_id = r.region_id
    WHERE p.party_name = input_party_name AND r.vote_count < (
										      SELECT MAX(r2.vote_count)
                                              FROM Result r2
											  WHERE r2.region_id = r.region_id
											)
    ORDER BY r.region_id;
END //

DELIMITER ;

call GetLostInRegions("TVK");


    
-- ----------------------------------------------------------------------------------------------------------------------

-- Qs 3

-- Finding the regions that the party has losed in the specific District
    
DELIMITER //

create procedure GetLostRegionsByPartyAndDistrict(
    IN input_party_name varchar(100),
    IN input_district varchar(100)
)
BEGIN
    SELECT 
        r.region_id, 
        rg.district, 
        rg.thoguthi, 
        rg.ward, 
        p.party_name, 
        p.leader_name, 
        r.vote_count
    FROM Result r 
    JOIN Parties p ON p.party_id = r.party_id
    JOIN Regions rg ON rg.region_id = r.region_id
    WHERE 
        p.party_name = input_party_name 
        AND r.region_id IN (   
            SELECT rg2.region_id 
            FROM Regions rg2
            WHERE rg2.district = input_district
        ) 
        AND r.vote_count < (
            SELECT MAX(r2.vote_count)
            FROM Result r2
            WHERE r2.region_id = r.region_id
        )
     ORDER BY r.region_id;
END //

DELIMITER ;

CALL GetLostRegionsByPartyAndDistrict("TVK","Tirunelveli");

--  -----------------------------------------------------------------------------------------------------

-- Qs 4

-- Finding the regions that the party has losed in the specific District and Thoguthi

DELIMITER //

create procedure GetLostRegionsByPartyAndDistrictAndThoguthi(
    IN input_party_name varchar(100),
    IN input_district varchar(100),
    IN input_thoguthi varchar(100)
)
BEGIN
    SELECT 
        r.region_id, 
        rg.district, 
        rg.thoguthi, 
        rg.ward, 
        p.party_name, 
        p.leader_name, 
        r.vote_count
    FROM Result r 
    JOIN Parties p ON p.party_id = r.party_id
    JOIN Regions rg ON rg.region_id = r.region_id
    where 
        p.party_name = input_party_name 
        AND r.region_id IN (   
            SELECT rg2.region_id 
            FROM Regions rg2
            WHERE rg2.district = input_district AND rg2.thoguthi = input_thoguthi
        ) 
        AND r.vote_count < (
            SELECT MAX(r2.vote_count)
            FROM Result r2
            WHERE r2.region_id = r.region_id
        )
     ORDER BY r.region_id;
END //

DELIMITER ;

CALL GetLostRegionsByPartyAndDistrictAndThoguthi("TVK","Chennai","T Nagar");


-- ------------------------------------------------------------------------------------------------------------

-- Qs 5


-- To Find the party that will give you the highest combined votes in specific district

DELIMITER //

CREATE PROCEDURE GetBestPartnerInDistrict(
    IN input_party_name VARCHAR(100),
    IN input_district VARCHAR(100)
)
BEGIN
    DECLARE highest_voted_party VARCHAR(100);
    DECLARE highest_vote_count INT;

    -- Step 1: Find the highest voted party in the specified district
    SELECT p.party_name, SUM(r.vote_count) AS total_votes
    INTO highest_voted_party, highest_vote_count
    FROM Result r 
    JOIN Parties p ON r.party_id = p.party_id 
    JOIN Regions re ON r.region_id = re.region_id
    WHERE re.district = input_district
    GROUP BY p.party_id 
    ORDER BY total_votes DESC
    LIMIT 1;

    -- Step 2: Find the best partner whose combined votes exceed the highest
    SELECT 
        p.party_name AS Potential_Partner, 
        SUM(r.vote_count) AS partner_votes,
        (SELECT SUM(r2.vote_count) 
         FROM Result r2 
         JOIN Parties p2 ON r2.party_id = p2.party_id 
         JOIN Regions re2 ON r2.region_id = re2.region_id
         WHERE p2.party_name = input_party_name
         AND re2.district = input_district) + SUM(r.vote_count) AS combined_votes
    FROM Result r
    JOIN Parties p ON r.party_id = p.party_id
    JOIN Regions re ON r.region_id = re.region_id
    WHERE p.party_name NOT IN (input_party_name, highest_voted_party) 
      AND re.district = input_district
    GROUP BY p.party_id
    HAVING combined_votes > highest_vote_count
    ORDER BY combined_votes DESC
   -- LIMIT 1;
   ;
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS GetBestPartnerInDistrict;

CALL GetBestPartnerInDistrict("INC","Chennai");



-- -----------------------------------------------------------------------------------------------------------

-- Qs 6

-- To Find the party that can have partnership in the next election in whole Tamil Nadu

DELIMITER //

CREATE PROCEDURE GetBestPartner(
    IN input_party_name VARCHAR(100)
)
BEGIN
    DECLARE highest_vote_party VARCHAR(100);

    SELECT p.party_name 
    INTO highest_vote_party
    FROM Result r
    JOIN Parties p ON r.party_id = p.party_id
    GROUP BY p.party_id
    ORDER BY SUM(r.vote_count) DESC
    LIMIT 1;

    SELECT 
        p.party_name AS Potential_Partner, SUM(r.vote_count) AS Partner_Total_Votes,
        (SELECT SUM(r2.vote_count) 
         FROM Result r2 
         JOIN Parties p2 ON r2.party_id = p2.party_id 
         WHERE p2.party_name = input_party_name) + SUM(r.vote_count) AS Combined_Votes
    FROM Result r
    JOIN Parties p ON r.party_id = p.party_id
    WHERE p.party_name NOT IN (input_party_name, highest_vote_party)
    GROUP BY p.party_id
    HAVING  Combined_Votes > (
            SELECT SUM(r3.vote_count) 
            FROM Result r3 
            JOIN Parties p3 ON r3.party_id = p3.party_id 
            WHERE p3.party_name = highest_vote_party
            )
    ORDER BY Combined_Votes DESC
    LIMIT 1;
END //

DELIMITER ;

CALL GetBestPartner("INC");

-- ------------------------------------------------------------------------------------------------------

-- Qs 7

-- To find the number of votes taken by each parties in the specific district, thoguthi and ward by using null values 

DELIMITER //

CREATE PROCEDURE GetPartyVotesByRegion(
    IN input_district VARCHAR(100),
    IN input_thoguthi VARCHAR(100),
    IN input_ward VARCHAR(100)
)
BEGIN
 
    IF input_thoguthi IS NULL THEN SET input_thoguthi = '%';
    END IF;

    IF input_ward IS NULL THEN SET input_ward = '%';
    END IF;

    IF (SELECT COUNT(*) FROM Regions WHERE district = input_district) = 0 THEN
        SELECT 'Invalid District Name' AS Message;
    ELSE
        SELECT p.party_name AS Party , SUM(r.vote_count) AS Total_Votes
        FROM Result r
        JOIN Parties p ON p.party_id = r.party_id
        JOIN Regions rg ON rg.region_id = r.region_id
        WHERE rg.district = input_district
              AND rg.thoguthi LIKE input_thoguthi
              AND rg.ward LIKE input_ward
        GROUP BY p.party_name
        ORDER BY Total_Votes DESC;

        IF ROW_COUNT() = 0 THEN SELECT 'No Votes Found' AS Message;
        END IF;
    END IF;
END //

DELIMITER ;


call GetPartyVotesByRegion("Chennai",null,null);
call GetPartyVotesByRegion("Chennai","T Nagar",null);
call GetPartyVotesByRegion("Chennai","T Nagar","Ward 1");


