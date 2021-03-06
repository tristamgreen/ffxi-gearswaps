-- Tristamgreen Ranger LUA, 2019
-- thanks to Wren and Enedin for bits and pieces of their own LUAs
 
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
		hands		="Blood Fng. Gnt.",
		legs		="Denali Kecks",
		feet		="Denali Gamashes",
		neck		="Uggalepih Pendant",
		waist		="Commodore Belt",
        left_ear    ="Novio Earring",
        right_ear   ="Moldavite Earring",
		left_ring	="Galdr Ring",
		right_ring	="Omega Ring",
		back		="Fowler's Mantle +1",
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
    if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Idle - Daylight Regen ON]")
			equip(sets.idle,{hands="Feronia's Bangles"},{waist="Lycopodium Sash"})
	else 
		windower.add_to_chat(8,'[Idle]')
		equip(sets.idle)
	end
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
    elseif spell.name:contains('Corsair') or spell.name:contains('Monk') or spell.name:contains('Healer') or spell.name:contains('Chaos') or spell.name:contains('Choral') or spell.name:contains('Drachen') or spell.name:contains('Hunter') or spell.name:contains('Ninja') or spell.name:contains('Magus') or spell.name:contains('Beast') or spell.name:contains('Samurai') or spell.name:contains('Wizard') or spell.name:contains('Warlock') or spell.name:contains('Rogue') or spell.name:contains('Gallant') or spell.name:contains('Evoker') or spell.name:contains('Puppet') or spell.name:contains('Dancer') or spell.name:contains('Scholar') then
        equip(sets.phantomroll)
    elseif spell.name:contains('Earth') or spell.name:contains('Water') or spell.name:contains('Wind') or spell.name:contains('Fire') or spell.name:contains('Ice') or spell.name:contains('Thunder') then
        equip(sets.quickdraw)
        if spell.element == world.day_element and spell.name:contains('Earth') or spell.name:contains('Water') or spell.name:contains('Wind') or spell.name:contains('Fire') or spell.name:contains('Ice') or spell.name:contains('Thunder') then
			windower.add_to_chat(8,"Quick Draw with Hachirin-no-Obi")
			equip({waist="Hachirin-no-Obi"})
        end
	end
 end
 
 -- equip haste gear for ninjutsu
 function midcast(spell)
     if spell.type == 'Ninjutsu' then
        equip(sets.utsu)
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

function buff_change(new,old)
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


function self_command(m)
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