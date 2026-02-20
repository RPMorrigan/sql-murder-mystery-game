-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
        
        -- QUERY
          --SELECT *
          -- FROM crime_scene
          -- WHERE date = 19860814;

        -- RESULTS
          -- 19860814	Lincoln Road Mall	Famous street art mural worth $200,000 deliberately destroyed. Surveillance footage shows organized vandalism.
          -- 19860814	South Beach Club	A violent fight broke out between multiple patrons, resulting in severe injuries and extensive property damage. Security footage shows the incident started at the bar area.
          -- 43	19860814	Coral Bay Marina	The body of an unidentified man was found near the docks. Two people were seen nearby: one who lives on 300ish "Ocean Drive" and another whose first name ends with "ul" and his last name ends with "ez".


        -- QUERY
          -- SELECT *
          -- FROM person
          -- WHERE address LIKE '3% Ocean Drive'

        -- RESULTS
          -- 5	Michael Santos	Silent Mike	Bartender	33 Ocean Drive
          -- 101	Carlos Mendez	Los Ojos	Fisherman	369 Ocean Drive
          -- 105	Victor Martinez	Slick Vic	Bartender	33 Ocean Drive


        -- QUERY
          -- SELECT *
          -- FROM person
          -- WHERE name LIKE '%ul %ez';

        -- RESULTS
          -- 102	Raul Gutierrez	The Cobra	Nightclub Owner	45 Sunset Ave

        -- QUERY
          -- SELECT *
          -- FROM confessions
          -- WHERE person_id = 101
          -- OR person_id = 102;

        -- RESULTS
          -- 96	101	This is just a misunderstanding.
          -- 97	102	Alright! I've been running a blackmail operation.


        -- QUERY
          -- SELECT *
          -- FROM hotel_checkins
          -- WHERE person_id = 102;

        -- RESULTS
          -- 91	102	Marina Paradise Inn	19860815


        -- QUERY
          -- SELECT *
          -- FROM hotel_checkins
          -- JOIN interviews
          --  ON hotel_checkins.person_id = interviews.person_id
          -- WHERE check_in_date = 19860814;

        -- RESULTS
          -- 101	106	Harbor View Inn	19860814	109	106	A boat engine was running unusually late that night.
          -- 129	134	Marina View Hotel	19860814	95	134	I noticed someone signaling with a flashlight from their boat.
          -- 129	134	Marina View Hotel	19860814	55	134	Someone in a maintenance uniform was acting suspiciously.
          -- 129	134	Marina View Hotel	19860814	83	134	Someone suspicious was loitering near the victims boat all evening.
          -- 129	134	Marina View Hotel	19860814	69	134	Someone unfamiliar was asking questions about the victim.
          -- 129	134	Marina View Hotel	19860814	41	134	The victim seemed distressed after meeting someone near the fuel dock.
          -- 129	134	Marina View Hotel	19860814	27	134	There were unusual movements near dock C around midnight.
          -- 181	112	Marina View Inn	19860814	19	112	A silver briefcase exchanged hands behind the fuel station.


        -- QUERY
          -- SELECT *
          -- FROM surveillance_records
          -- JOIN hotel_checkins
          --  ON surveillance_records.person_id = hotel_checkins.person_id
          -- WHERE check_in_date = 19860813;

        -- RESULTS
          --  6	6	34	Spotted entering late at night	16	6	Sunset Inn	19860813
          -- 7	7	89	Seen arguing with an unknown person	22	7	Sunset Marina Hotel	19860813
          -- 8	8	2	Left suddenly at 3 AM	55	8	Sunset Palm Resort	19860813


        -- QUERY
          -- SELECT *
          -- FROM confessions
          -- WHERE person_id = 6
          -- OR person_id = 7
          -- OR person_id = 8;

        -- RESULTS
          -- 1	6	I don't know anything about this.
          -- 2	7	I was just walking my dog that night.
          -- 73	8	Alright! I did it. I was paid to make sure he never left the marina alive.


        -- QUERY
          -- SELECT *
          -- FROM person
          -- WHERE id = 8;

        -- RESULTS
          -- 8	Thomas Brown	The Fox	Dock Worker	234 Port Street

  -- 2. Any notes or insights as SQL comments

      --   19860814
      -- Crime Scene
      -- person_id 60
      -- The body of an unidentified man was found near the docks. Two people were seen nearby: one who lives on 300ish "Ocean Drive" and another whose first name ends with "ul" and his last name ends with "ez".

      -- Michael Santos / Silent Mike : Bartender
      -- person_id 5

      -- Carlos Mendez / Los Ojos : Fisherman : 369 Ocean Drive
      --  ID 101 : checkin ID 89
      --  I saw someone check into a hotel on August 13. The guy looked nervous.

      -- Raul Gutierrez / The Cobra : Nightclub Owner
      -- person_id 102
      -- 45 Sunset Ave

      -- Victor Martinez / Slick Vic : Bartender

      -- Norman Holmes / The Navigator : person_id 87
      --  Ship navigator
      --  654 Dock Street

      -- Walter Morgan / The Wolf : person_id 116
      --  Forest Ranger
      --  59 Palm Avenue

      -- Frank Collins / The Flame : Person_id 131
      --  Glass Blower
      --  83 Marina Place

      -- MAIN SUSPECT
      -- Alan Reynolds / The Alchemist : Chemist
      -- person_id : 73
      -- confession ID: 8
      -- 890 Ocean Road

      -- 8
      -- hotel_check_in 2
      -- left suddenly at 3AM

      -- 7
      -- hotel_check_in 89
      -- Seen arguing with someone else

      -- 6
      -- hotel_check_in 34
      -- came in late


  -- 3. Your final conclusion: who did it?
        -- There were 2 others involved, including a night club owner who was running a black mail ring. But the actual killer was Thomas Brown a.k.a. 'The Fox'.