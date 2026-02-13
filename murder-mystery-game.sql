-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
--        I mostly ran some pretty basic queries. Meaning, Select, from, where.
--        I only really had to do run a LIKE query here and there. I would have had to run some stuff like
--        between but the data was pretty specific so it didn't require much more than that.

--   2. Any notes or insights as SQL comments
--        I thankfully was pretty good about not mistaking the primary key for some of the entries for the wrong number
--        in the other tables. I had someone ask me to help and I saw it was that in particular which was causing her issue.

--   3. Your final conclusion: who did it?
--      I'm pretty sure it's Jeremy Bowers

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- writing a comment like this

-- selecting all columns from the crime scene report
SELECT * FROM crime_scene_report;
