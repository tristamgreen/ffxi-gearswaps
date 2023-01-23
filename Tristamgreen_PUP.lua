--[[ *************************************************************
 BASED OF Wren's THF gearswap .lua for SuperNova FFXI
 Save as windower/addons/GearSwap/data/PUP.lua

 REVISED BY ACROSS
 ************************************************************* --]]
 
 
 require("common_gs_functions")
 

 --[[ ******************************************************
  Gearsets - define the various sets of gear we'll wear.
****************************************************** --]] 
 function get_sets()
-- idle set is worn when we're standing around doing
-- nothing.  we want movement speed and evasion.

    sets.idle = {
        main        = "Spharai",
		range		= "Animator +1",
		ammo		= "Automat. Oil +2",
        head        = "Pantin Taj +1",
        neck        = "Orochi Nodowa +1",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "Avalon Breastplate",
        hands       = "Feronia's Bangles",
        left_ring   = "Patronus Ring",
        right_ring  = "Shadow Ring",
        back        = "Umbra Cape",
        waist       = "Ninurta's Sash",
        legs        = "Goliard Trews",
        feet        = "Hermes' Sandals +1"
    } 
    
    sets.dayregen	= {
        waist       = "Lycopodium Sash"
    }
    
-- our basic engaged set replaces some of our idle
-- evasion slots with haste, dual wield, accuracy.
    sets.engaged = {
		ammo		= "Automat. Oil +2",	
        head        = "Spurrer Beret",
        neck        = "Faith Torque",
        left_ear    = "Brutal Earring",
        right_ear   = "Harmonius Earring",
        body        = "Enkidu's Harness",
        hands       = "Pantin Dastanas +1",
        left_ring   = "Rajas Ring",
        right_ring  = "Mars's Ring",
        back        = "Pantin Cape",
        waist       = "Ninurta's Sash",
        legs        = "Enkidu's Subligar",
        feet        = "Setanta's Ledelsens"
    }
-- our evasion set, when dodging is all that matters.
-- this is very similar to our idle set, excapt we
-- sacrifice movement speed for even more evasion.
    sets.eva = {
        head        = "",
        body        = "Antares Harness",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        waist       = "Steppe Sash",
        feet        = "Dance Shoes +1"
    }
-- REPAIR set
	sets.repair = {
		ammo		= "Automat. Oil +2",
		left_ear    = "Guignol Earring",
        feet        = "Pup. Babouches +1"
    }
-- MANEUVERS set focuses on AGI+ since I mostly use Wind Maneuvers for ranger Bot
    sets.maneuver = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap"
    }
    sets.wind = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap"  ,
        left_ear    = "Altdorf's Earring",
        right_ear   = "Wilhelm's Earring",
        body        = "Antares Harness",
        left_ring   = "Breeze Ring",
        right_ring  = "Breeze Ring",
        feet        = "Enkidu's Leggings"
    }	
    sets.thunder = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap",
        body        = "Antares Harness",
        left_ear    = "Pixie Earring",
        right_ear   = "Adroit Earring",
        left_ring   = "Rajas Ring",
        right_ring  = "Adroit Ring +1",
        legs		= "Enkidu's Subligar",
        back		= "Pantin Cape",
        feet        = "Setanta's Ledelsens"
    }
    sets.water = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap",
        body        = "Mahatma Hpl.",
        left_ear    = "Celestial Earring",
        right_ear   = "Celestial Earring",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        legs		= "Mahatma Slops",
        back		= "Dew Silk Cape +1",
        feet        = "Goliard Clogs"
    }
    sets.ice = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap",
        body        = "Mahatma Hpl.",
        left_ear    = "Omn. Earring +1",
        right_ear   = "Omn. Earring +1",
--        left_ring   = "Omn. Ring +1",
        right_ring  = "Omn. Ring +1",
        legs		= "Mahatma Slops",
        back		= "Prism Cape",
        feet        = "Goliard Clogs"
    }
    sets.light = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap",
        body        = "Mahatma Hpl.",
        left_ear    = "Loquac. Earring",
--        right_ear   = "",
--        left_ring   = "Heaven's Ring +1",
        right_ring  = "Omega Ring",
        legs		= "Mahatma Slops",
        back		= "Prism Cape",
--		waist		= "Corsette +1",
        feet        = "Goliard Clogs"
    }
    sets.earth = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap",
        body        = "Avalon Breastplate",
		ear1		= "Robust earring",
        ring1       = "Corneus Ring",
        ring2       = "Mercenary's Ring",
		waist		= "Steppe Sash",
        legs        = "Pantin Churidars +1",
        feet        = "Creek M Clomps"
    }
    sets.fire = {
        neck        = "Buffoon's Collar +1",
        hands       = "Pup. Dastanas +1",
		ammo		= "Automat. Oil +2",
        head        = "Maat's Cap",
        body        = "Enkidu's Harness",
        left_ear    = "Harmonius Earring",
        right_ear   = "Harmonius Earring",
        left_ring   = "Rajas Ring",
        right_ring  = "Harmonius Ring",
        legs		= "Enkidu's Subligar",
		waist		= "Potent Belt",
        feet        = "Agrona's Leggings"
    }
-- FINAL HEAVEN set with max STR
    sets.final = {
        head        = "Maat's Cap",
        neck        = "Fotia Gorget",
        left_ear    = "Brutal Earring",
        right_ear   = "Harmonius Earring",
        body        = "Enkidu's Harness",
        hands       = "Creek M Mitts",
        left_ring   = "Rajas Ring",
        right_ring  = "Harmonius Ring",
        back        = "Pantin Cape",
        waist       = "Virtuoso Belt",
        legs        = "Enkidu's Subligar",
        feet        = "Agrona's Leggings"
    }
-- STRINGING PUMMEL set with max STR and acc cause VIT as a mod sucks
    sets.pummel = {
        head        = "Maat's Cap",
        neck        = "Fotia Gorget",
        left_ear    = "Brutal Earring",
        right_ear   = "Harmonius Earring",
        body        = "Enkidu's Harness",
        hands       = "Creek M Mitts",
        left_ring   = "Rajas Ring",
        right_ring  = "Harmonius Ring",
        back        = "Pantin Cape",
        waist       = "Potent Belt",
        legs        = "Enkidu's Subligar",
        feet        = "Agrona's Leggings"
    }
-- ASURAN FISTS set with max :::
    sets.asuran = {
        head        = "Maat's Cap",
        neck        = "Fotia Gorget",
        left_ear    = "Brutal Earring",
        right_ear   = "Harmonius Earring",
        body        = "Enkidu's Harness",
        hands       = "Creek M Mitts",
        left_ring   = "Lava's Ring",
        right_ring  = "Kusha's Ring",
        back        = "Pantin Cape",
        waist       = "Virtuoso Belt",
        legs        = "Enkidu's Subligar",
        feet        = "Agrona's Leggings"
    }
-- fast cast for ninjutsu
    sets.fc = {
        head        = "Walahra Turban",
        left_ear   = "Loquac. Earring",
        right_ear   	= "Celestial Earring",
        body        = "Goliard Saio",
		neck		= "Beak Necklace +1",
        hands       = "Pantin Dastanas +1",
        left_ring   = "Succor Ring",
        right_ring  = "Shadow Ring",
        back        = "Veela Cape",
        waist       = "Ninurta's Sash",
        legs        = "Goliard Trews",
        feet        = "Rostrum Pumps"
    }
-- Curing Waltz set filled with CHR for the heals.
    sets.waltz = {
        head        = "Maat's Cap",
        body        = "Avalon Breastplate",
        hands       = "Pantin Dastanas +1",
        left_ring   = "Roundel Earring",
        left_ring   = "Heavens Ring +1",
        right_ring  = "Heavens Ring +1",
        feet        = "Dance Shoes +1"
    }
-- Stoneskin SET
    sets.skin = {
        head        = "Maat's Cap",
		neck		= "Stone Gorget",
        left_ear    = "Celestial Earring",
        right_ear   = "Celestial Earring",
        body        = "Mahatma Hpl.",
        hands       = "Devotee's Mitts +1",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Dew Silk Cape +1",
        waist       = "Pythia Sash +1",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
    }
-- CURES SET
    sets.cures = {
        head        = "Goliard Chapeau",
		neck		= "Fylgja Torque +1",
        left_ear    = "Loquac. Earring",
        right_ear   = "Roundel Earring",
        body        = "Mahatma Hpl.",
        hands       = "Devotee's Mitts +1",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Dew Silk Cape +1",
        waist       = "Pythia Sash +1",
        legs        = "Mahatma Slops",
        feet        = "Rostrum Pumps"
    }
end

 function debugMsg(txt)
    local s = txt
    if(pupswap.debug) 
        then windower.add_to_chat(8, s) 
    end
end	

function isDayElement(element)
   local result = false
    
   if world.day_element == element then
       result = true
		
    end
    
    return result
 end 
 
 
 --[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
-- equip our idle set
 function equip_idle()
    equip(sets.idle)
    local debug_info = '[Idle'
	if pet.isvalid
        then equip({neck="Shepherd's Chain"})
            debug_info = debug_info .. ' + Shepherds Chain]'
    elseif heal 
		then equip({legs="Pup. Churidars +1"})
			debug_info = debug_info .. ' + Heal Bot]'
	elseif mage 
		then equip({legs="Pantin Churidars +1" ; feet="Pantin Babouches +1"})
			debug_info = debug_info .. ' + Mage Bot]'
	elseif (buffactive['Thunder Maneuver']) 
        then equip({back="Pantin Cape"})
			debug_info = debug_info .. ' + Pantin Cape]'
    end
    if world.time <= 1080 and world.time >= 360
        then equip(sets.daylight)
            debug_info = debug_info .. ' + Daylight Regen Bonus]'
    else
        debug_info = debug_info .. ']'
    end
    debugMsg(debug_info)
end

-- equip our engaged set
function equip_engaged()
    local debug_info = '[Engaged'
	if eva and heals 
		then equip(set_combine(sets.eva,{legs="Pup. Churidars +1",ear1="Triton Earring",ear2="Triton Earring"}))
			debug_info = debug_info .. ' on Evasion & Heal Bot]'
	elseif eva 
		then equip(set_combine(sets.eva,{ear1="Triton Earring",ear2="Triton Earring"}))
			debug_info = debug_info .. ' on Evasion set]'
	elseif heal 
		then equip(set_combine(sets.engaged,{legs="Pup. Churidars +1"}))
			debug_info = debug_info .. ' w/ Heal Bot]'
	elseif eva and mage  
		then equip(set_combine(sets.eva,{legs="Pantin Churidars +1" ; feet="Pantin Babouches +1"}))
			debug_info = debug_info .. ' on Evasion and Mage Bot]'
	elseif mage 
		then equip(set_combine(sets.engaged,{legs="Pantin Churidars +1" ; feet="Pantin Babouches +1"}))
			debug_info = debug_info .. ' w/ Mage Bot]'
	else equip(sets.engaged)
			debug_info = debug_info .. ']'
	end
    if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({right_ear="Fenrir's Earring"})
    end
debugMsg(debug_info)
end


-- Function to get the propper WS set depending on WS
 function equip_ws(spell)
 		local debug_info = ''
	if player.target.distance > 3.80 
        then add_to_chat(122,'You are too far to WS.')
        cancel_spell() -- if we're too far, cancel the WS to prevent TP loss
	end
	if spell.name == 'Final Heaven'
		then equip(sets.final)
        debug_info = debug_info .. '[Final Heaven]'
	elseif spell.name == 'Stringing Pummel' 
		then equip(sets.pummel)
        debug_info = debug_info .. '[Stringing Pummel]'
	else equip(sets.asuran)
		debug_info = debug_info .. '[Asuran Fists]'
    end
    if world.time <= 1080 and world.time >= 360 
        then windower.add_to_chat(8,"[WS - Daylight Bonus]")
        equip({right_ear="Fenrir's Earring"})
    end
    debugMsg(debug_info)
end


-- equip our waltz set
function equip_waltz()
	equip(sets.waltz)
end 


-- function to precast equip propper sets for each MANEUVER TYPE
 function equip_maneuvers(spell)
 		local debug_info = ''
    if spell.name == 'Wind Maneuver' 
        then equip(sets.wind)
        debug_info = debug_info .. '[Wind Maneuver]'
	elseif spell.name == 'Thunder Maneuver' 
        then equip(sets.thunder)
        debug_info = debug_info .. '[Thunder Maneuver]'
	elseif spell.name == 'Water Maneuver' 
        then equip(sets.water)
        debug_info = debug_info .. '[Water Maneuver]'
	elseif spell.name == 'Light Maneuver' 
        then equip(sets.light)
        debug_info = debug_info .. '[Light Maneuver]'
	elseif spell.name == 'Earth Maneuver' 
        then equip(sets.earth)
        debug_info = debug_info .. '[Earth Maneuver]'
	elseif spell.name == 'Fire Maneuver'
        then equip(sets.fire)
        debug_info = debug_info .. '[Fire Maneuver]'
	elseif spell.name == 'Ice Maneuver' 
        then equip(sets.ice)
        debug_info = debug_info .. '[Ice Maneuver]'
	elseif string.find(spell.english,'Maneuver') 
        then equip(sets.maneuver)
        debug_info = debug_info .. '[General Maneuvers]'
    end
    debugMsg(debug_info)
 end

-- the choose_set function figures out whether we're engaged with a
-- mob or not, and passes control to the relevant function above.
 function choose_set()
    if player.status == "Engaged" 
        then equip_engaged()
    else equip_idle()
    end
end


 --[[ ******************************************************
  Casting functions - these functions run automatically when
 we cast a spell, use a job ability, rest for MP, and so on
****************************************************** --]]
-- the precast function runs automatically BEFORE we
-- begin casting a spell or job ability.  For our THF,
-- we want to equip ws gear for weapon skills, and flee
-- duration gear when fleeing.

 function precast(spell)
  		local debug_info = ''
	if spell.english == 'Spectral Jig' and buffactive.sneak 
        then cast_delay(0.2)
        send_command('cancel sneak')
    elseif spell.english == 'Sneak' and spell.target.type == 'SELF' and buffactive.sneak 
        then send_command('cancel sneak')
    elseif spell.english:startswith('Monomi') and spell.target.type == 'SELF' and buffactive.sneak 
		then send_command('@wait 1.4;cancel sneak')
    elseif spell.english == 'Utsusemi: Ichi' 
        then send_command('@wait 1.7;cancel copy image,copy image (2)')
	end
	if spell.type == 'Ninjutsu' 
        then equip(sets.fc)
    elseif spell.name == 'Stoneskin' 
        then equip(sets.skin)
        send_command('@wait 6.0;cancel stoneskin')
        debug_info = debug_info .. '[Stoneskin]'
    elseif spell.type == 'WeaponSkill' 
        then equip_ws(spell)
    elseif spell.name == 'Repair' 
        then equip(sets.repair)
	elseif string.find(spell.english,'Maneuver') 
        then equip_maneuvers(spell)
    elseif string.find(spell.english,'Waltz') 
        then equip(sets.waltz)
        debug_info = debug_info .. '[Waltzing]'
    elseif spell.name:startswith('Cur') 
        then equip(sets.cures)
        debug_info = debug_info .. '[Cures]'
	elseif (spell.type:contains('Magic')) 
        then equip(sets.fc)
        debug_info = debug_info .. '[Magics]'
    end
    debugMsg(debug_info)
 end
 
 
-- equip haste gear for ninjutsu
 function midcast(spell)
    if spell.type == 'Ninjutsu' 
        then equip(sets.fc)
    end
 end
 
 
-- after we JA or WS, we want to return either to our
-- engaged gear or our idle gear.  The choose_set function
-- handles that for us.
 function aftercast(spell)
    choose_set()
end


-- status_change also calls the choose_set function, which
-- handles engaging and disengaging from combat.
function status_change(new,old)
    choose_set()
end

function buff_change(name,gain)
	debuff_items()
end


function self_command(m)

-- how to use modes:
-- in a macro, use /console gs c mode_name
-- example: for weaponskills: /console gs c WS  for changing the weaponskill: /console gs c W+

-- modes:
-- EVA - Evasion toggle on or off
-- HEAL - healer mode on/off
-- MAGE - mage mode on/off

  		local debug_info = ''
	if m == "EVA" then
        if eva == false then
           eva = true
debug_info = debug_info .. '[Eva mode ON]'
        else eva = false
debug_info = debug_info .. '[Eva mode OFF]'
		end
	elseif m == "HEAL" then
        if heal == false then
           heal = true
debug_info = debug_info .. '[HEAL mode ON]'
        else heal = false
debug_info = debug_info .. '[HEAL mode OFF]'
		end
	elseif m == "MAGE" then
        if mage == false then
           mage = true
debug_info = debug_info .. '[MAGE mode ON]'
        else mage = false
debug_info = debug_info .. '[MAGE mode OFF]'
		end
	end
debugMsg(debug_info)	
 end
 --[[ ******************************************************
  Code that runs once, when we first swap to our THF job
****************************************************** --]]
 pupswap = {}
 pupswap.debug = true;
 pupswap.ws = "Final Heaven"
-- FOR TOGGLE IF USING WHM/HEALING BOTs
 heal = false
 -- FOR TOGGLE IF USING BLM OR RDM BOTs
 mage = false
-- FOR TOGGLE whether we should wear our evasion gear in combat
 eva = false
-- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 send_command('wait 1;input /lockstyleset 18; wait .1; gs equip idle')
send_command('input /macro book 18; wait 0.1; input /macro set 1;wait 0.1;input /u !myth')
send_command('input //dp height;wait 1;input //dp ja')