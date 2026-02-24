-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran

--       QUERY
--         SELECT *
--         FROM crime_scene_report
--         WHERE date = 20180115
--         AND city = 'SQL City';

--       RESULTS
--         20180115	assault	Hamilton: Lee, do you yield? Burr: You shot him in the side! Yes he yields!	SQL City
--         20180115	assault	Report Not Found	SQL City
--         20180115	murder	Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City


--      QUERY
--          SELECT *
--          FROM person
--          WHERE name LIKE 'Annabel%';

--      RESULTS
--          16371	Annabel Miller	490173	103	Franklin Ave	318771143


--      QUERY
--          SELECT *
--          FROM interview
--          WHERE person_id = 16371;

--      RESULTS
--          16371	I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.


--      QUERY
--          SELECT *
--          FROM person
--          WHERE address_street_name = 'Northwestern Dr'
--          ORDER BY address_number desc
--          LIMIT 1;

--      RESULTS
--          14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949


--      QUERY
--          SELECT *
--          FROM interview
--          WHERE person_id = 14887;

--      RESULTS
--          14887	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".


--      QUERY
--          SELECT *
--          FROM get_fit_now_member
--          WHERE id LIKE '%48Z%';

--      RESULTS
--          48Z38	49550	Tomas Baisley	20170203	silver
--          48Z7A	28819	Joe Germuska	20160305	gold
--          48Z55	67318	Jeremy Bowers	20160101	gold


--      QUERY
--          SELECT *
--          FROM person
--          WHERE id = 28819
--          OR id = 67318;

--      RESULTS 
--          28819	Joe Germuska	173289	111	Fisk Rd	138909730
--          67318	Jeremy Bowers	423327	530	Washington Pl, Apt 3A	871539279


--      QUERY
--          SELECT *
--          FROM interview
--          WHERE person_id = 28819
--          OR person_id = 67318;

--      RESULTS
--          67318	I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017. 


--      QUERY
--          SELECT *
--          FROM drivers_license
--          WHERE hair_color = 'red'
--          AND car_make = 'Tesla'
--          AND car_model = 'Model S';

--      RESULTS
--          202298	68	66	green	red	female	500123	Tesla	Model S
--          291182	65	66	blue	red	female	08CM64	Tesla	Model S


--      QUERY
--          SELECT *
--          FROM person
--          WHERE license_id = 291182
--          OR license_id = 202298;

--      RESULTS
--          90700	Regina George	291182	332	Maple Ave	337169072
--          99716	Miranda Priestly	202298	1883	Golden Ave	987756388


--      QUERY
--          SELECT *
--          FROM facebook_event_checkin
--          WHERE person_id = 90700
--          OR person_id = 99716;

--      RESULTS
--          99716	1143	SQL Symphony Concert	20171206
--          99716	1143	SQL Symphony Concert	20171212
--          99716	1143	SQL Symphony Concert	20171229

--   2. Any notes or insights as SQL comments
--        There are a few things I didn't check but I made sure to get both parties involved in the crime.

--   3. Your final conclusion: who did it?
--       Jeremy Bowers was hired by Miranda Priestly to perpetrate the crime.

--      Miranda Priestly
--          Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!

--      Jeremy Bowers
--          Congrats, you found the murderer! But wait, there's more... If you think you're up for a challenge, try querying the interview transcript of the murderer to find the real villain behind this crime. If you feel especially confident in your SQL skills, try to complete this final step with no more than 2 queries. Use this same INSERT statement with your new suspect to check your answer.

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- writing a comment like this

-- selecting all columns from the crime scene report
SELECT * FROM crime_scene_report;
