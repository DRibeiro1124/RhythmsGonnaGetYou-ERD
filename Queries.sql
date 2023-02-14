--Create a new database for this project:

createdb RhythmsGonnaGetYou

pgcli RhythmsGonnaGetYou

--Create new tables

CREATE TABLE "Bands" (
  "Id" SERIAL PRIMARY KEY,
  "Name" TEXT,
  "CountryOfOrigin" TEXT,
  "NumberOfMembers" INT,
  "Website" TEXT,
  "Genre" TEXT,
  "IsSigned" BOOL,
  "ContactName" TEXT
);

CREATE TABLE "Albums" (
  "Id" SERIAL PRIMARY KEY,
  "Title" TEXT,
  "IsExplicit" BOOL,
  "ReleaseDate" DATE,
  "BandId" INT NULL REFERENCES "Bands" ("Id")
);

CREATE TABLE "Songs" (
  "Id" SERIAL PRIMARY KEY,
  "TrackNumber" INT,
  "Title" TEXT,
  "Duration" INT,
  "AlbumId" INT NULL REFERENCES "Albums" ("Id")
);

--Adding all the bands to the database

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Pink Floyd', 'United Kingdom', 5, 'https://www.pinkfloyd.com/', 'Progressive Rock', true, 'David Gilmour');
 
INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Led Zeppelin', 'United Kingdom', 4, 'https://www.ledzeppelin.com', 'Hard Rock', false, 'Robert Plant');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Alice in Chains', 'United States', 4, 'https://www.aliceinchains.com/', 'Grunge', true, 'Jerry Cantrell');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Soundgarden', 'United States', 5, 'https://www.soundgarden.com/', 'Grunge', false, 'Chris Cornell');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Bad Religion', 'United States', 4, 'https://www.badreligion.com/', 'Punk Rock', true, 'Greg Graffin');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Pennywise', 'United States', 5, 'https://www.pennywisdom.com/', 'Punk Rock', true, 'Jim Lindberg');

--Adding Albums from bands above

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('The Dark Side of the Moon', false, '1973-03-01', 1);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Wish You Were Here', false, '1975-09-12', 1);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Led Zeppelin', false, '1969-01-12', 2);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Led Zeppelin II', false, '1969-10-22', 2);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Facelift', false, '1990-08-21', 3);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Dirt', false, '1992-09-29', 3);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Superunknown', false, '1994-03-08', 4);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Badmotorfinger', false, '1991-10-08', 4);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Suffer', false, '1988-09-08', 5);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('No Control', false, '1989-11-02', 5);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Unknown Road', false, '1993-08-17', 6);

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Pennywise', false, '1992-10-22', 6);

--Adding all the songs from albums above

--Pink Floyd - The Dark Side of the Moon
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Speak to Me', (1*60 + 5), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Breathe', (2*60 + 49), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'On the Run', (3*60 + 49), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Time', (6*60 + 53), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'The Great Gig in the Sky', (4*60 + 43), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Money', (6*60 + 22), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Us and Them', (7*60 + 49), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Any Colour You Like', (3*60 + 26), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Brain Damage', (3*60 + 46), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Eclipse', (2*60 + 12), 1);

-- Pink Floyd - Wish you Were Here
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Shine on You Crazy Diamond Parts I-V', (13*60 + 32), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Welcome to the Machine', (7*60 + 28), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'Have a Cigar', (5*60 + 08), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Wish you Were Here', (5*60 + 35), 1);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Shine on You Crazy Diamond Parts VI-IX', (12*60 + 28), 1);

--Led Zeppelin - Led Zeppelin
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Good Times Bad Times', (2*60 + 43), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Babe I am Going to Leave You', (6*60 + 40), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'You Shook Me', (6*60 + 30), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Dazed and Confused', (6*60 + 27), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Your Time is Going to Come', (4*60 + 41), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Black Mountain Side', (2*60 + 06), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Communication Breakdown', (2*60 + 26), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'I Cant Quit You Baby', (4*60 + 42), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'How Many More Times', (8*60 + 28), 2);

--Led Zeppelin - Led Zeppelin II

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Whole Lotta Love', (5*60 + 34), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'What is and Should Never Be', (4*60 + 46), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'The Lemon Song', (6*60 + 20), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Thank You', (4*60 + 50), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Heartbreaker', (4*60 + 15), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Living Loving Maid', (2*60 + 39), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Ramble On', (4*60 + 35), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Moby Dick', (4*60 + 20), 2);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Bring It On Home', (4*60 + 18), 2);

--Alice In Chains --Facelift
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'We Die Young', (2*60 + 32), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Man In the Box', (4*60 + 46), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'Sea Of Sorrow', (5*60 + 49), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Bleed the Freak', (4*60 + 01), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'I Cant Remember', (3*60 + 42), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Love Hate Love', (6*60 + 26), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'It Aint Like That', (4*60 + 37), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Sunshine', (4*60 + 44), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Put You Down', (3*60 + 16), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Confusion', (5*60 + 44), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'I Know Somethin Bout You', (4*60 + 22), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'Real Thing', (4*60 + 02), 3);

--Alice In Chains - Dirt
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Them Bones', (2*60 + 30), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Dam That River', (3*60 + 09), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'Rain When I Die', (6*60 + 01), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Down In a Hole', (5*60 + 38), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Sick Man', (5*60 + 29), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Rooster', (6*60 + 15), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Junkhead', (5*60 + 09), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Dirt', (5*60 + 16), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'God Smack', (3*60 + 56), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Intro Iron Gland', (0*60 + 43), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Hate To Feel', (5*60 + 15), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'Angry Chair', (4*60 + 48), 3);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, 'Would', (3*60 + 28), 3);

--Soundgarden --Superunknown
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Let Me Drown', (3*60 + 51), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'My Wave', (5*60 + 12), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'Fell on Black Days', (4*60 + 42), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Mailman', (4*60 + 25), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Superunknown', (5*60 + 06), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Head Down', (6*60 + 08), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Black Hole Sun', (5*60 + 18), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Spoonman', (4*60 + 06), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Limo Wreck', (5*60 + 47), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'The Day I Tried to Live', (5*60 + 19), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Kickstand', (1*60 + 34), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'Fresh Tendrils', (4*60 + 16), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, '4th of July', (5*60 + 08), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (14, 'Half', (2*60 + 14), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (15, 'Like Suicide', (7*60 + 01), 4);

--Soundgarden - Badmotorfinger

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Rusty Cage', (4*60 + 26), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Outshined', (5*60 + 10), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'Slaves & Bulldozers', (6*60 + 55), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Jesus Christ Pose', (5*60 + 50), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Face Pollution', (2*60 + 23), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Somewhere', (4*60 + 20), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Searching With My Good Eye Closed', (6*60 + 31), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Room a Thousand Years Wide', (4*60 + 05), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Mind Riot', (4*60 + 49), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Drawing Flies', (2*60 + 26), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Holy Water', (5*60 + 07), 4);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'New Damage', (5*60 + 40), 4);

--Bad Religion - Suffer

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'You Are The Government', (1*60 + 21), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, '1000 More Fools', (1*60 + 34), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'How Much Is Enough', (1*60 + 22), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'When?', (1*60 + 39), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Give You Nothing', (2*60 + 02), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Land of Competition', (2*60 + 04), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Forbidden Beat', (1*60 + 57), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Best For You', (1*60 + 55), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Suffer', (1*60 + 47), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Delirium of Disorder', (1*60 + 39), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Part II The Numbers Game', (1*60 + 41), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'What Can You Do?', (2*60 + 44), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, 'Do What You Want', (1*60 + 07), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (14, 'Part IV The Index Fossil', (2*60 + 04), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (15, 'Pessimistic Lines', (1*60 + 10), 5);

--Bad Religion - No Control 

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Change of Ideas', (0*60 + 55), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Big Bang', (1*60 + 42), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'No Control', (1*60 + 46), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Sometimes I Feel Like', (1*60 + 34), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Automatic Man', (1*60 + 40), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'I Want to Conquer the World', (2*60 + 19), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Sanity', (2*60 + 44), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Henchman', (1*60 + 07), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'It Must Look Pretty Appealing', (1*60 + 23), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'You', (2*60 + 05), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Progress', (2*60 + 14), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'I Want Something More', (0*60 + 47), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, 'Anxiety', (2*60 + 08), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (14, 'Billy', (1*60 + 54), 5);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (15 'The World Wont Stop', (1*60 + 57), 5);

--Pennywise -Pennywise

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Wouldnt Be Nice', (2*60 + 06), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Rules', (1*60 + 25), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'The Secret', (3*60 + 33), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Living for Today', (3*60 + 07), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Come Out Fighting', (2*60 + 16), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Homeless', (2*60 + 09), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Open Door', (1*60 + 40), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'Pennywise', (1*60 + 37), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Who to Blame', (1*60 + 39), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Fun and Games', (2*60 + 32), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Kodiak', (1*60 + 46), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'Side One', (2*60 + 10), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, 'No Reason Why', (2*60 + 36), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (14, 'Bro Hymn', (3*60 + 00), 6);

--Pennywise -Unknown Road
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (1, 'Unknown Road', (2*60 + 46), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (2, 'Homesick', (2*60 + 17), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (3, 'Time to Burn', (2*60 + 19), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (4, 'Its Up to Me', (3*60 + 16), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'You Can Demand', (2*60 + 17), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (6, 'Nothing', (2*60 + 33), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (7, 'Vices', (2*60 + 03), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (8, 'City Is Burning', (2*60 + 12), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (9, 'Dying to Know', (3*60 + 04), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (10, 'Tester', (3*60 + 14), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (11, 'Try to Conform', (2*60 + 40), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (12, 'Give and Get', (2*60 + 01), 6);

INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (13, 'Clear Your Head', (2*60 + 51), 6);














