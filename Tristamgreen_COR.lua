-- Tristamgreen Ranger LUA, 2019
-- thanks to Wren and Enedin for bits and pieces of their own LUAs
 
 require("common_gs_functions")
 
 function get_sets()
 
	sets.idle = {
    -- Prioritize Evasion, Regen, Movement Speed
        main        = "Mekki Shakki",
        sub         = "Rose Strap",
        ranged      = "Annihilator",
        ammo        = "Steel Bullet",
		head		= "Blood Mask",
		body		= "Scorpion Harness +1",
		hands		= "Denali Wristbands",
		legs		= "Blood Cuisses",
		feet		= "Hermes' Sandals +1",
		neck		= "Orochi Nodowa +1",
		waist		= "Scouter's Rope",
		left_ear	= "Novia Earring",
		right_ear	= "Triton Earring",
		left_ring	= "Patronus Ring",
		right_ring	= "Shadow Ring",
		back		= "Shadow Mantle",
	}
	
	sets.dayregen	= {
		hands		= "Feronia's Bangles",
		waist		= "Lycopodium Sash",
	}
	
	-- Haste set
    sets.engaged    = {
        head        = "Walahra Turban",
		body        = "Cobra Harness",
		neck        = "Peacock Amulet",
		hands       = "Enkidu's Mittens",
		legs        = "Cobra Subligar",
        feet        = "Dusk Ledelsens +1",
        waist       = "Ninurta's Sash",
		left_ring   = "Rajas Ring",
		right_ring  = "Mars's Ring",
		left_ear    = "Brutal Earring",
		right_ear   = "Merman's Earring",
		back        = "Cuchulain's Mantle",
    }
    
    sets.eva        = {
        head        = "Denali Bonnet",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        body        = "Scorpion Harness +1",
		hands       = "Denali Wristbands",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Commodore Trews +1",
        feet        = "Hermes' Sandals +1",
    }
    
   	sets.ranged     = {
    -- racc 400, sTP 
        head		="Commodore Tricorne +1",
		body		="Cobra Harness",
		hands		="Blood Fng. Gnt.",
		legs		="Enkidu's Subligar",
		feet		="Enkidu's Leggings",
		neck		="Faith Torque",
		waist		="Commodore Belt",
        left_ear    ="Brutal Earring",
        right_ear   ="Fenrir's Earring",
		left_ring	="Bellona's Ring",
		right_ring	="Jalzahn's Ring",
		back		="Mamool Ja Mantle",
    }
    
    sets.ranged.hard    = set_combine(sets.ranged,{
    -- racc 429
        head        ="Zha'Go's Barbut",
        body        ="Corsair's Frac",
        legs        ="Dusk Trousers +1",
        feet        ="Corsair's Bottes",
    })
    
    sets.quickdraw  = {
        head		="Corsair's Tricorne +1",
		body		="Denali Jacket",
		hands		="Rover's Gloves",
		legs		="Denali Kecks",
		feet		="Denali Gamashes",
		neck		="Uggalepih Pendant",
		waist		="Scouter's Belt",
        left_ear    ="Novio Earring",
        right_ear   ="Moldavite Earring",
		left_ring	="Galdr Ring",
		right_ring	="Omega Ring",
		back		="Fowler's Mantle +1",
    }
	
	sets.darklight	= {
		left_ear	= "Incubus Earring +1",
		right_ear	= "Incubus Earring +1",
	}

    sets.archery    = set_combine({sets.ranged,
        neck        = "Hope Torque",
    })

    sets.marksman   = set_combine({sets.ranged,
        neck        = "Faith Torque",
    })
    
    -- Weapon Skill sets
    
    sets.ws         = {
    -- Generic WS set for whatever
        head        = "Maat's Cap",
        body        = "Enkidu's Harness",
        hands       = "Enkidu's Mittens",
        legs        = "Hachiryu Haidate",
        feet        = "Denali Gamashes",
        neck        = "Fotia Gorget",
        left_ear    = "Merman's Earring",
		right_ear   = "Merman's Earring",
        left_ring   = "Harmonius Ring",
        right_ring  = "Rajas Ring",
        back        = "Cerberus Mantle +1",
        waist       = "Virtuoso Belt",
    }
       
    
    sets.slugshot = {
        head        = "Zha'Go's Barbut",
        body        = "Commodore Frac +1",
        hands       = "Blood Fng. Gnt.",
        legs        = "Dusk Trousers +1",
        feet        = "Rutter Sabatons",
        neck        = "Fotia Gorget",
        waist       = "Commodore Belt",
        left_ear    = "Brutal Earring",
        right_ear   = "Fenrir's Earring",
        left_ring   = "Dragon Ring +1",
        right_ring  = "Mars's Ring",
        back        = "Amemet Mantle +1",
    }
    
     sets.coronach = {
        head        = "Maat's Cap",
        body        = "Commodore Frac +1",
        hands       = "Blood Fng. Gnt.",
        legs        = "Enkidu's Subligar",
        feet        = "Rutter Sabatons",
        neck        = "Fotia Gorget",
        waist       = "Commodore Belt",
        left_ear    = "Brutal Earring",
        right_ear   = "Fenrir's Earring",
        left_ring   = "Jalzahn's Ring",
        right_ring  = "Rajas Ring",
        back        = "Fowler's Mantle +1",
    }
     
	
	sets.phantomroll = {
		head        = "Commodore Tricorne +1",
    }

    sets.randomdeal   = {
        body        = "Commodore Frac +1",
    }
        
    -- utsusemi haste
    sets.utsu = {
        head        = "Walahra Turban",
        neck        = "Tiercel Necklace",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        body        = "Antares Harness",
        hands       = "Dusk Gloves +1",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Byakko's Haidate",
        feet        = "Dusk Ledelsens +1"
    } 
	 
	 
 end
 
 --[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
 -- equip our idle set
 function equip_idle()
	common_idle_equip()
end

-- equip our engaged set
function equip_engaged()
    windower.add_to_chat(8,'[Engaged]')
	if ev == true then
		equip(sets.idle,sets.engaged,sets.eva)
	else
        equip(sets.idle,sets.engaged)
	end
end
 
 
 -- equip proper weaponskill set
 function equip_ws(spell)
	windower.add_to_chat(8,'[Weapon Skill: ' .. ws .. ']')
    if player.target.distance > 15 then add_to_chat(122,'You are too far to WS.')
        cancel_spell() -- if we're too far, cancel the WS to prevent TP loss
	end
    if spell.name == 'Slug Shot' then
        equip(sets.slugshot)
    elseif spell.name == 'Coronach' then   
        equip (sets.coronach)
    else
        equip(sets.ws)
    end
    if world.time <= 1080 and world.time >= 360 then
        windower.add_to_chat(8,"[Engaged - Daylight Ranged Bonus]")
        equip({right_ear="L.bug Earring +1"})
    end
end
 
 -- equip our ranged set
 function equip_racc()
    windower.add_to_chat(8,'[Ranged Attack]')
    equip(sets.ranged)
        equip({neck="Faith Torque"})
        if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Ranged Bonus]")
			equip({right_ear="L.bug Earring +1"})
		end
	end	
 
 -- the choose_set function figures out whether we're engaged with a
 -- mob or not, and passes control to the relevant function above.
 function choose_set()
     if player.status == "Engaged" then
		windower.add_to_chat(8,'[Engaged]')
        equip_engaged()
		if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({right_ear="Fenrir's Earring"})
		end
    else
        equip_idle()	
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
    if spell.type == 'WeaponSkill' then
        equip_ws(spell)
    elseif spell.name == 'Random Deal' then
        equip(sets.randomdeal)
	elseif spell.action_type == 'Ranged Attack' then
        equip_racc()		
    elseif spell.name:contains('Roll') then
        equip(sets.phantomroll)
	-- Quick Draw
    elseif
		spell.name == "Earth Shot" or
		spell.name == "Wind Shot" or
		spell.name == "Ice Shot" or
		spell.name == "Fire Shot" or
		spell.name == "Water Shot" or
		spell.name == "Thunder Shot" or
		spell.name == "Light Shot" or
		spell.name == "Dark Shot" then
			if player.target.distance > 17.9 then add_to_chat(122,'You are too far to use Quick Draw.')
				cancel_spell()
			end	
			equip(sets.quickdraw,{main="Chatoyant Staff",sub="Reaver Grip +1"})
			if spell.name == "Dark Shot" or spell.name == "Light Shot" then
				equip(sets.darklight)
			end
	end
 end
 
 -- equip haste gear for ninjutsu
 function midcast(spell)
	if spell.type == 'Ninjutsu' then
        equip(sets.utsu)
    end
	if spell.element == world.day_element then
		windower.add_to_chat(8,"Quick Draw with Hachirin-no-Obi")
		equip({waist="Hachirin-no-Obi"})
	elseif spell.element == world.weather_element then  
        add_to_chat(8,'[Matching Weather]')
        equip({waist="Hachirin-no-Obi"})
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
-- RW+ - changes default weaponskill called between Coronach/Slug Shot
-- WS - use selected Weaponskill
-- accmode - changes between "normal" and "high" ranged accuracy modes
-- EVA - equips evasion gear

    if m == "RW+" then
        if ws == "Coronach" then
			ws = "Slug Shot"
        else
			ws = "Coronach"
        end
        windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
    elseif m == "accmode" then
        if accmode == "normal" then
            windower.add_to_chat(8,'[Accuracy Mode: High]')
            accmode = "high"
        else
            windower.add_to_chat(8,'[Accuracy Mode: Normal]')
			accmode = "normal"
        end
    elseif m == "EVA" then
        if ev == false then
            ev = true
            windower.add_to_chat(8,'[Evasion during combat: ON]')
            choose_set()
        else
            ev = false
            windower.add_to_chat(8,'[Evasion during combat: OFF]')
            choose_set()
        end
     end
 end
 
 --[[ ******************************************************
  Code that runs once, when we first swap to our COR job
****************************************************** --]]
 
 -- ev determines whether we should wear our evasion gear in combat
 ev = false

 -- ws determines which ranged weapon skill we'll use.  Coronach by default.
 ws = "Coronach"
 
 -- accmode determines which accuracy/store tp level to use
 accmode = "normal"
 
 
 -- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 send_command('wait 1;input /lockstyleset 17;wait 1;gs equip idle')
 send_command('wait 1;input /macro book 17;wait 0.1;input /macro set 1')
 send_command('input //dp ja')