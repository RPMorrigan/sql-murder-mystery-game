-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
        -- I decided I should use cross references by using JOIN on overyone's guest id. It focused the list quite well. I had a single result come up twice which matched the profile and badda-bing there he was.
  -- 2. Any notes or insights as SQL comments
        -- I guess I'll post my notes here.
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