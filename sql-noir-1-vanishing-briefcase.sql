-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
        
      -- QUERY
        -- SELECT *
        -- FROM crime_scene
        -- WHERE date = 19851120;

      -- RESULT
        -- 76
        -- 19851120
        -- theft	Blue Note Lounge	A briefcase containing sensitive documents vanished.
        -- A witness reported a man in a trench coat with a scar on his left cheek fleeing the scene.


      -- QUERY
        -- SELECT *
        -- FROM suspects
        -- WHERE attire = 'trench coat'
        -- AND scar = 'left cheek';

      -- RESULT
        -- 3	Frankie Lombardi	trench coat	left cheek
        -- 183	Vincent Malone	trench coat	left cheek

        -- 3 NULL
        -- 183	I wasn’t going to steal it, but I did.

  -- 2. Any notes or insights as SQL comments
  
        -- I don't really think I need to keep those in the code itself as we have a notes section.

        --         Crime Scene
        -- #76 1985.11.20 Blue Note Lounge
        -- 19851120

        -- Suspect
        -- Trench coat
        -- Notable scar on left cheek

        -- Main Suspects
        -- 3 Frankie Lombardi
        -- 183 Vincent Malone


  -- 3. Your final conclusion: who did it?
        -- It was Vincent Malone
