--[[ ******************************************************
  Gearsets - define the various sets of gear we'll wear.
****************************************************** --]]

-- v whatever.07.15.2021 - photographer mode for soultrapper added
 
 function get_sets()
 
	 -- th set is worn when we're in TH4 mode.
    sets.th = {
        sub         = "Thief's Knife",
        hands       = "Asn. Armlets +1"
    }
 
    -- idle set is worn when we're standing around doing
    -- nothing.  we want movement speed and evasion.
    sets.idle = {
		ammo		= "Fenrir's Stone",
        head        = "Wivre Mask +1",
        neck        = "Orochi Nodowa +1",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "Scorpion Harness +1",
        hands       = "Denali Wristbands",
        left_ring   = "Shadow Ring",
        right_ring  = "Patronus Ring",
        back        = "Shadow Mantle",
        waist       = "Scouter's Rope",
        legs        = "Denali Kecks",
        feet        = "Areion Boots +1"
    }
	
	sets.dayregen = {
		hands		= "Feronia's Bangles",
		waist		= "Lycopodium Sash"
	}
    
    sets.initial    = {
        main        = "Mandau",
        sub         = "Blau Dolch",
        ammo        = "Fenrir's Stone"
        }
	
	-- Haste set
	sets.engaged={
        ammo        = "Black Tathlum",
        head        = "Walahra Turban",
        body        = "Rapparee Harness",
        hands       = "Homam Manopolas",
        legs        = "Homam Cosciales",
        feet        = "Homam Gambieras",
        neck        = "Love Torque",
        waist       = "Ninurta's Sash",
        left_ear    = "Pixie Earring",
        right_ear   = "Brutal Earring",
        left_ring   = "Toreador's Ring",
        right_ring  = "Rajas Ring",
        back        = "Cuchulain's Mantle"
	}
	 
    sets.eva = {
		--ranged      = "Ungur Boomerang",
        head        = "Gnole Crown",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        body        = "Scorpion Harness +1",
		hands       = "Denali Wristbands",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Denali Kecks",
        feet        = "Areion Boots +1"
    }
         
     -- wsdex set is for dex-based weapon skills.
    sets.wsdex = {
        ammo        = "Black Tathlum",
        head        = "Hecatomb Cap +1",
        neck        = "Fotia Gorget",
        left_ear    = "Merman's Earring",
		right_ear   = "Brutal Earring",
        body        = "Antares Harness",
        hands       = "Hct. Mittens +1",
        left_ring	= "Rajas Ring",
        right_ring	= "Adroit Ring +1",
        back        = "Cuchulain's Mantle",
        waist       = "Cuchulain's Belt",
		legs		= "Hecatomb Subligar +1",
        feet        = "Hct. Leggings +1"
		--feet		= "Assassin's Pouln. +1"
    }
     
     -- mercy set stacks lots of STR for mercy stroke.
    sets.mercy = {
		ammo		= "Bomb Core",	
		head		= "Hecatomb Cap +1",
		body		= "Hct. Harness +1",
		hands		= "Hct. Mittens +1",
		legs		= "Hct. Subligar +1",
		feet		= "Hct. Leggings +1",
		neck		= "Fotia Gorget",
		waist		= "Warwolf Belt",
		left_ear	= "Harmonius Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Flame Ring",
		back		= "Cerb. Mantle +1",
	}
	
	-- dancing edge stacks DEX and STR
	sets.de 		= {
		ammo		= "Black Tathlum",
		head		= "Hecatomb Cap +1",
		body		= "Hct. Harness +1",
		hands		= "Hct. Mittens +1",
		legs		= "Hct. Subligar +1",
		feet		= "Hct. Leggings +1",
		neck		= "Fotia Gorget",
		waist		= "Cuchulain's Belt",
		left_ear	= "Harmonius Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Flame Ring",
		back		= "Cerb. Mantle +1",
	} 
	
	sets.cyclone = { -- MAB, DEX, INT
		head		= "Maat's Cap",
		body		= "Antares Harness",
		hands		= "Hct. Mittens +1",
		legs		= "Denali Kecks",
		feet		= "Denali Gamashes",
		neck		= "Fotia Gorget",
		waist		= "Cuchulain's Belt",
		left_ear	= "Novio Earring",
		right_ear	= "Moldavite Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Galdr Ring",
		back		= "Cuchulain's Mantle"
	}
	
	sets.sb = {
        ammo        = "White Tathlum",
        head        = "Dragon Cap +1",
		neck        = "Tiercel Necklace",
        body        = "Dragon Harness +1",
        hands       = "Enkidu's Mittens",
        legs        = "Enkidu's Subligar",
		feet		= "Enkidu's Leggings"
    }	
	
	sets.mdt = {
		body		= "Avalon Breastplate",
		hands		= "Denali Wristbands",
		ear1		= "Merman's Earring",
		ear2		= "Merman's Earring",
		ring1		= "Merman's Ring",
		ring2		= "Merman's Ring",
		waist		= "Resolute Belt"
	}
	
	sets.steal = {
		head		="Rogue's Bonnet",
		hands		="Rogue's Armlets +1",
		neck		="Rabbit Charm",
		legs		="Assassin's Culottes +1",
		feet		="Rogue's Poulaines",
        waist       ="Key Ring Belt"
	}
	
	sets.racc={
        ammo        ="Aht Urhgan Dart",
		head		="Optical Hat",
		body		="Denali Jacket",
		hands		="Enkidu's Mittens",
		legs		="Dusk Trousers +1",
		feet		="Enkidu's Leggings",
		neck		="Peacock Amulet",
		waist		="Hurling Belt",
        left_ear    ="Fenrir's Earring",
        right_ear   ="Altdorf's Earring",
		left_ring	="Dragon Ring +1",
		right_ring	="Dragon Ring +1",
		back		="Mamool Ja Mantle",
	}
		
	-- flee set includes feet that add flee duration.
    sets.flee = {
        feet        = "Rogue's Poulaines"
    }
     
    -- fast cast for ninjutsu
    sets.fc = {
        left_ear    = "Loquac. Earring",
        legs        = "Homam Cosciales"
    }
	
	sets.sa 		= {
		head		= "Hecatomb Cap +1",
		body		= "Dragon Harness +1",
		hands		= "Hct. Mittens +1",
		legs		= "Hct. Subligar +1",
		feet		= "Hct. Leggings +1",
		neck		= "Love Torque",
		waist		= "Cuchulain's Belt",
		left_ear	= "Harmonius Earring",
		right_ear	= "Harmonius Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Adroit Ring +1",
		back		= "Cerb. Mantle +1",
	}
    
    -- Rogue's Armlets +1 for Trick Attack
    sets.ta 		= {
     	head		= "Maat's Cap",
		body		= "Dragon Harness +1",
		hands		= "Rog. Armlets +1",
		legs		= "Hct. Subligar +1",
		feet		= "Hct. Leggings +1",
		neck		= "Love Torque",
		waist		= "Cuchulain's Belt",
		left_ear	= "Wilhelm's Earring",
		right_ear	= "Altdorf's Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Flame Ring",
		back		= "Cerb. Mantle +1",
    }
	
	sets.sata 		= {
		head		= "Hecatomb Cap +1",
		body		= "Dragon Harness +1",
		hands		= "Rog. Armlets +1",
		legs		= "Hct. Subligar +1",
		feet		= "Hct. Leggings +1",
		neck		= "Love Torque",
		waist		= "Cuchulain's Belt",
		left_ear	= "Wilhelm's Earring",
		right_ear	= "Altdorf's Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Adroit Ring +1",
		back		= "Cerb. Mantle +1",
	}
     
    -- utsusemi haste
    sets.fchaste	= {
        head        = "Walahra Turban",
        neck        = "Tiercel Necklace",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        body        = "Antares Harness",
        hands       = "Dusk Gloves +1",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Shadow Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Homam Cosciales",
        feet        = "Homam Gambieras"
    } 
	
	sets.soultrapper = {
		ranged		= "Soultrapper 2000",
		ammo		= "H.S. Soul Plate"
	}
 end
 
 -- functions
 
 function status_change(new,old)

	-- SA/TA gearlock: don't change anything when SA or TA is up
	if sa_gear or ta_gear then
		if sa_gear then windower.add_to_chat(122,'Sneak Attack gear on.') end
		if ta_gear then windower.add_to_chat(122,'Trick Attack gear on.') end
		
	-- When SA/TA is not active	
	else
		choose_set()
	end
 end
 
 -- Main function that decides whether to equip engaged/idle/resting gear
 function choose_set()
    if player.status == "Engaged" then
        equip_engaged()
    elseif player.status == "Resting" then
		equip(sets.rest)
	else
        equip_idle()
    end
	
	if photographer == true then
		equip(sets.soultrapper)
		disable('ranged','ammo')
	else
		enable('ranged','ammo')
	end
 end
 
 -- equip our engaged set
function equip_engaged()
    windower.add_to_chat(8,'[Engaged]')
	if ev == true then
		equip(sets.engaged,sets.eva)
	elseif mdt == true then
		equip(sets.engaged,sets.mdt)
    else
		equip(sets.engaged)
	end
end

 -- equip idle set (with daylight regen)
 function equip_idle()
	windower.add_to_chat(8,'[Idle]')					                                -- all times of day, equip idle set
	if ev == true then
		equip(sets.idle,sets.eva,{feet="Areion Boots +1"})
	else
		equip(sets.idle)
	end
    if world.time <= 1080 and world.time >= 360 then                    -- if it isn't nighttime
        windower.add_to_chat(8,'[Daylight Regen]')                      -- Lycopodium Sash + Feronia's Bangles
        equip(sets.daylight)
    end
	if mdt == true then
		equip(sets.mdt)
	end
 end
 
 function buff_change(name,gain)
	-- if SA or TA wore (or were used), remove their gearlock and return to normal
	if name == 'Sneak Attack' or name == 'Trick Attack' then
		if gain == false then
			if name == 'Sneak Attack' then sa_gear = false end
			if name == 'Trick Attack' then ta_gear = false end
			windower.add_to_chat(122, 'SA/TA wore, removing SA/TA gear, back to normal.')
			
			-- emulate an aftercast
			choose_set()
		end
	end
	-- status removers
	if buffactive['Silence'] then
        send_command('@ input /item "Echo Drops" <me>')
        windower.add_to_chat(256,'[Silence Removed!]')
    elseif buffactive['Curse'] then
        send_command('@ input /item "Holy Water" <me>')
        windower.add_to_chat(201,'[Curse Removed!]')
    elseif buffactive['Doom'] then
        send_command('@ input /item "Hallowed Water" <me>')
        windower.add_to_chat(002,'[Doom Removed!]')
    elseif buffactive['Blindness'] then
        send_command('@ input /item "Remedy" <me>')
        windower.add_to_chat(160,'[Blindness Removed!]')
    elseif buffactive['Poison'] then
        send_command('@ input /item "Antidote" <me>')
        windower.add_to_chat(259,'[Poison Removed!]')
	elseif buffactive['Paralyzed'] then
		send_command('@ input /item "Remedy" <me>')
		windower.add_to_chat(259,'[Paralysis Removed!]')
	end
end

 -- equip either our mercy stroke or dex set
 function equip_ws(spell)
    windower.add_to_chat(8,'[Weapon Skill: ' .. spell.name .. ']')    
	if spell.name == 'Mercy Stroke' then
		equip(sets.mercy)
    elseif spell.name == 'Dancing Edge' then
		equip(sets.de)
	elseif spell.name == 'Cyclone' then
		equip(sets.cyclone)
	else
		equip(sets.wsdex)
	end
	if world.time <= 1080 and world.time >= 360 then
		windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
		equip({left_ear="Fenrir's Earring"})
	end
 end
 
 -- equip our Racc set
 function equip_racc()
    windower.add_to_chat(8,'[Ranged Attack]')
	equip(sets.racc)
		if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Ranged Attack - Daytime]")
			equip({left_ear="Wilhelm's Earring"})
		end
 end	

-----------------------
-- Pre/mid/aftercast --
-----------------------

-- Before casting/using ability
function precast(spell, spellMap, action)
	-- If you're not doing SA, TA, Hide or AC, remove SA/TA gearlock
	if spell.name ~= 'Sneak Attack' and spell.name ~= 'Trick Attack' and spell.name ~= 'Hide' and spell.name ~= "Assassin's Charge" then
		if (sa_gear or ta_gear) and not spell.type == 'WeaponSkill' then windower.add_to_chat(122,'Removing SA/TA gear, back to normal.') end
		if sa_gear then sa_gear = false end
		if ta_gear then ta_gear = false end
	end
	-- SA/TA
	if spell.name == 'Sneak Attack' then
		equip(sets.sa)
		sa_gear = true
	elseif spell.name == 'Trick Attack' then
		if buffactive['Sneak Attack'] then
			equip(sets.sata)
		else
			equip(sets.ta)
		end
		ta_gear = true
	elseif spell.action_type == 'Ranged Attack' then
        equip_racc()		
    elseif spell.name == 'Flee' then
        equip(sets.flee)
	elseif spell.name == 'Steal' then
		equip(sets.steal)
	-- Weaponskills
	elseif spell.type == 'WeaponSkill' then
		equip_ws(spell)
	elseif spell.name:contains('Utsusemi') then
		equip(sets.eva,sets.fc)
	end
end

-- During casting magic
function midcast(spell)
	if spell.name:contains('Utsusemi') then
		equip(sets.eva,sets.fchaste)
	end
end

-- After casting or using an ability
function aftercast(spell)

	-- SA/TA gearlock
	if sa_gear or ta_gear then
		if sa_gear and not spell.name == "Sneak Attack" then windower.add_to_chat(122,'Sneak Attack gear on.') end
		if ta_gear and not spell.name == "Trick Attack" then windower.add_to_chat(122,'Trick Attack gear on.') end
	else
		choose_set()
	end
end

function self_command(m)

-- modes activated in macro by the command /gs console c [modename]
-- modes listed here:
-- WS - activates current selected weaponskill
-- W+ - toggles between Dancing Edge and Mercy Stroke for selected Weaponskill. Extensible for others if desired.
-- SAWS - Sneak Attack WS (uses ws listed from W+)
-- TAWS - Trick Attack WS (uses ws listed from W+)
-- SATAWS - Sneak Attack+Trick Attack+WS (uses ws listed from W+)
-- TH - toggles Treasure Hunter 4 gear (TH gloves and THF knife)
-- EVA - toggles Evasion gear
-- mdt - toggles Magic Defense Gear (useful against mobs like Pandemonium Warden)
-- photographer - Peter Parker mode - equips/unequips soultrapper and soul plates

    if m == "W+" then
        if ws == "Mercy Stroke" then
            ws = "Dancing Edge"
        elseif ws == "Dancing Edge" then
			ws = "Shark Bite"
		else
			ws = "Mercy Stroke"
        end
        windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
    elseif m == "SAWS" then
        send_command('input /ja "Sneak Attack" <me>;wait 1;input /ws "' .. ws .. '" <t>')
    elseif m == "TAWS" then
		send_command('input /ja "Trick Attack" <me>;wait 1;input /ws "' .. ws .. '" <t>')
    elseif m == "SATAWS" then
		send_command('input /ja "Sneak Attack" <me>;wait 1;input /ja "Trick Attack" <me>;wait 1;input /ws "' .. ws .. '" <t>')
    elseif m == "TH" then
        if th == false then
            th = true
            windower.add_to_chat(8,'[Treasure Hunter 4: ON]')
            equip(sets.th)
            disable('sub','hands')
            choose_set()
        else
            th = false
            windower.add_to_chat(8,'[Treasure Hunter 4: OFF]')
            enable('sub','hands')
            equip({sub="Blau Dolch"})
            choose_set()
        end
		
    elseif m == "EVA" then
        if ev == false then
            ev = true
            windower.add_to_chat(8,'[Evasion: ON]')
            choose_set()
        else
            ev = false
            windower.add_to_chat(8,'[Evasion: OFF]')
            choose_set()
        end
		
	elseif m == "mdt" then
        if mdt == false then
           mdt = true
            windower.add_to_chat(8,'[Magic Defense: ON]')
            choose_set()
        else
            mdt = false
            windower.add_to_chat(8,'[Magic Defense: OFF]')
            choose_set()
        end
		
	elseif m == "photographer" then
		if photographer == true then
			windower.add_to_chat(8,'[Soultrapper Mode: Deactivate]')
			photographer = false
			choose_set()
		else
			windower.add_to_chat(8,'[Soultrapper Mode: Activate]')
			photographer = true
			choose_set()
		end
     end
 end
 
-- th determines whether we should wear our TH4 gear
	th = false
 
-- ev determines whether we should wear our evasion gear in combat
	ev = false

-- photographer mode for soultrapper
	photographer = false

-- handles for sneak attack and trick attack
	sa_gear = false 
	ta_gear = false

-- mdt determines if magic defense mode is active
	mdt = false
 
-- ws determines which weapon skill we'll use.  Mercy Stroke by default.
	ws = "Mercy Stroke"
 
 
-- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 send_command('wait 1; input /lockstyleset 6; wait 1; gs equip idle')
 send_command('input /macro book 6; wait 0.1; input /macro set 1')
 send_command('wait 1; gs equip initial')
 send_command('input //dp height') -- sets distanceplus in height read mode