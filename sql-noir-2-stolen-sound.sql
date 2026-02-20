-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran

        -- QUERY

          -- SELECT *
          -- FROM crime_scene
          -- WHERE date = 19830715;

        -- RESULT
          -- 65	19830715	theft	West Hollywood Records	A prized vinyl record was stolen from the store during a busy evening.


        -- QUERY

          -- SELECT *
          -- FROM witnesses
          -- WHERE crime_scene_id = 65;

        -- RESULT
          
          -- 28	65	I saw a man wearing a red bandana rushing out of the store.
          -- 75	65	The main thing I remember is that he had a distinctive gold watch on his wrist.


        -- QUERY
        
          -- SELECT *
          -- FROM suspects
          -- WHERE bandana_color = 'red'
          -- AND accessory = 'gold watch';

        -- RESULT

          -- 35	Tony Ramirez	red	gold watch
          -- 44	Mickey Rivera	red	gold watch
          -- 97	Rico Delgado	red	gold watch


        -- QUERY

          -- SELECT *
          -- FROM interviews
          -- WHERE suspect_id = 35
          -- AND suspect_id = 44
          -- AND suspect_id = 97;

        -- RESULT

          -- 35	I wasn't anywhere near West Hollywood Records that night.
          -- 44	I was busy with my music career; I have nothing to do with this theft.
          -- 97	I couldn't help it. I snapped and took the record.

  -- 2. Any notes or insights as SQL comments

        -- These are my notes.

          -- crime Scene
          -- 65
          -- West Hollywood Records
          -- 1983.07.15
          -- 19830715
          -- Prized vinyl stolen
          -- Busy Evening

          -- Witnesses
          -- W_id = 28: Red bandana.

          -- W_75 = Gold watch.

          -- Suspects
          -- 35 Tony Ramirez
          -- 44 Mickey Rivera
          -- 97 Rico Delgado: "I couldn't help it. I snapped and took the record."


  -- 3. Your final conclusion: who did it?
  
        -- Rico Delgado. I got him because of his watch and bandana.
