-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
        -- QUERY
          -- SELECT *
          -- FROM crime_scene
          -- WHERE date = 19870520;

        -- RESULTS
          --48	19870520	Fontainebleau Hotel	The Heart of Atlantis necklace disappeared. Many guests were questioned but only two of them gave valuable clues. One of them is a really famous actor. The other one is a woman who works as a consultant for a big company and her first name ends with "an".


        -- QUERY
          -- SELECT *
          -- FROM guest
          -- JOIN witness_statements
          --  ON guest.id = witness_statements.guest_id
          -- WHERE occupation = 'Consultant'
          -- OR occupation = 'Actor';

        -- RESULTS
          -- 116	Vivian Nair	Consultant	VIP-R	16	116	I saw someone holding an invitation ending with "-R". He was wearing a navy suit and a white tie.
          -- 129	Clint Eastwood	Actor	VIP-G	50	129	I overheard someone say, "Meet me at the marina, dock 3.


        -- QUERY
          -- SELECT *
          -- FROM attire_registry
          -- JOIN guest
          --  ON attire_registry.guest_id = guest.id
          -- WHERE note = 'navy suit, white tie'
          -- AND invitation_code = 'VIP-R';

        -- RESULTS
          -- 48	105	navy suit, white tie	105	Mike Manning	Wealth Reallocation Expert	VIP-R


        -- QUERY
          --SELECT *
          -- FROM final_interviews
          -- WHERE guest_id = 105;

        -- RESULTS
          -- 105	I was the one who took the crystal. I guess I need a lawyer now?

  -- 2. Any notes or insights as SQL comments
        -- Fontainebleau Hotel 48
        -- 19870520
        -- The Heart of Atlantis necklace disappeared. Many guests were questioned but only two of them gave valuable clues. One of them is a really famous actor. The other one is a woman who works as a consultant for a big company and her first name ends with "an".

        -- WITNESSES
        -- Vivian Nair
        -- guest_id : 116
        -- Consultant
        -- VIP-R
        -- "I saw someone holding an invitation ending with "-R". He was wearing a navy suit and a white tie."

        -- Clint Eastwood
        -- person_id : 50
        -- guest_id : 129
        -- Actor
        -- VIP-G
        -- "I overheard someone say, "Meet me at the marina, dock 3."

        -- POSSIBLE SUSPECTS
        -- attire_registry id : 48
        -- guest_id : 105
        -- Mike Manning
        -- Wealth Reallocation Expert
        -- VIP-R


  -- 3. Your final conclusion: who did it?
        -- Mike Manning