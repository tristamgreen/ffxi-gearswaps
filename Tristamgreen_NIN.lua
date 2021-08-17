-- TG Ninja, 2019
-- version whatever-the-fuck.06.29.2021 - comment out all ammo except koga shuriken, add magic def. mode
-- version whatever-the-fuck.07.15.2021 - added peter parker mode for soultrapper

function get_sets()
 
	-- ***IDLE SETS***
 
    -- idle set is worn when we're standing around doing
    -- nothing.  we want movement speed and evasion.
	-- Also adds +2 Regen
	
    sets.idle = {
		ammo		= "Koga Shuriken",
        head        = "Gnole Crown",
        neck        = "Orochi Nodowa +1",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "War Shinobi Gi +1",
        hands       = "Denali Wristbands",
        left_ring   = "Patronus Ring",
        right_ring  = "Shadow Ring",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Koga Hakama +1",
        feet        = "Ninja Kyahan +1"
    }
    
    sets.initial    = {
        main        = "Kikoku",
        sub         = "Perdu Blade",
        -- ammo        = "Fenrir's Stone"
        }
	
	--idle during daylight - adds +regen during daylight
	
	sets.idle.day 	= {
		waist		= "Lycopodium Sash"
		}
        
	-- *** TP GAIN SETS ***
 
	-- balanced set.  Balance haste and attack for engaging mobs
 
    sets.balance    = {
		-- ammo		= "Fire Bomblet",
		head        = "Walahra Turban",
        neck        = "Hope Torque",
        left_ear   	= "Brutal Earring",
		right_ear   = "Merman's Earring",
        body        = "Ninja Chainmail +1",
        hands       = "Dusk Gloves +1",
        left_ring   = "Lava's Ring",
        right_ring  = "Kusha's Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Byakko's Haidate",
        feet        = "Fuma Sune-Ate"
    }
 
    -- eva set sacrifices attack speed and accuracy for
    -- all-out evasion.
	
    sets.eva = {
        head        = "Gnole Crown",
        neck        = "Evasion Torque",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "Scorpion Harness +1",
        hands       = "Denali Wristbands",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Denali Kecks",
        feet        = "Rasetsu Sune-Ate +1"
    }
	
	sets.mdef = {
		back		= "Lamia Mantle +1",
		hands		= "Denali Wristbands",
		waist		= "Resolute Belt",
		left_ring	= "Merman's Ring",
		right_ring	= "Merman's Ring",
		left_ear	= "Merman's Earring",
		right_ear	= "Merman's Earring"
	}
	
	-- set for ranged attack
	sets.rattk = {
		head		= "Zha'Go's Barbut",
		body		= "Koga Chainmail +1",
		hands		= "Ninja Tekko +1",
		legs		= "Ninja Hakama",
		feet		= "Enkidu's Leggings",
		neck		= "Qiqirn Collar",
		waist		= "Hurling Belt",
		left_ear	= "Fenrir's Earring",
		right_ear	= "Altdorf's Earring",
		left_ring	= "Bellona's Ring",
		right_ring	= "Jalzahn's Ring",
		back 		= "Amemet Mantle +1",
     }
	 
	 -- Nighttime TP set
	 
	sets.balance.night	= {
		hands		= "Koga Tekko +1"
	}
		
	sets.eva.night	= {
		legs		= "Koga Hakama +1",
		head		= "Koga Hatsuburi +1",
		-- ammo		= "Fenrir's Stone"
	}
	 
     -- WS gear for Blade Metsu: DEX 80%
     -- base str = 110
     -- base dex = 96
    sets.ws = {
		-- ammo		= "Fire Bomblet",
        head        = "Gnadbhod's Helm",
        neck        = "Fotia Gorget",
        left_ear    = "Brutal Earring",
        right_ear   = "Harmonius Earring",
        body        = "Hachiryu Haramaki",
        hands       = "Hachiryu Kote",
        left_ring   = "Rajas Ring",
        right_ring  = "Flame Ring",
        back        = "Cerberus Mantle +1",
        waist       = "Warwolf Belt",
        legs        = "Hachiryu Haidate",
		feet        = "Rutter Sabatons"
    }
	
	-- SPELL CASTING SETS
	
	-- Utsusemi set.  Haste prioritized
		  
    sets.utsu = {
        head        = "Walahra Turban",
        neck        = "Tiercel Necklace",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "Scorpion Harness +1",
        hands       = "Dusk Gloves +1",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Byakko's Haidate",
        feet        = "Fuma Sune-Ate"
    }
     
	-- Elemental Wheel spells.  Prioritizes Ninjutsu, INT, and MAB.
	 
    sets.elemental = {
        head        = "Maat's Cap",
        neck        = "Ninjutsu Torque",
		-- ranged		= "Aureole",
        left_ear    = "Incubus Earring +1",
        right_ear   = "Incubus Earring +1",
        body        = "Ninja Chainmail +1",
        hands       = "Koga Tekko +1",
        left_ring   = "Galdr Ring",
        right_ring  = "Omega Ring",
        back        = "Astute Cape",
        waist       = "Koga Sarashi",
        legs        = "Denali Kecks",
        feet        = "Kog. Kyahan +1"
    }
	
	sets.soultrapper = {
		ranged		= "Soultrapper 2000",
		ammo		= "H.S. Soul Plate"
	}
	
 end
 
  --[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
 -- equip idle set (with feet at dusk to dawn)
 function equip_idle()
	windower.add_to_chat(8,'[Idle]')
    equip(sets.idle)                       	 					-- all times of day, equip idle set
    if world.time <= 1020 and world.time >= 420 then                        -- if it isn't dusk
        windower.add_to_chat(8,'[Dawn to Dusk]')
        equip({legs="Hachiryu Haidate",feet="Rasetsu Sune-Ate +1"})
    else
        windower.add_to_chat(8,'[Dusk to Dawn: Movement +25%]')
    end
    if world.time <= 1080 and world.time >= 360 then                        -- if it isn't nighttime
        windower.add_to_chat(8,'[Daylight: Regen +3]')                      -- Lycopodium Sash
        equip(sets.idle.day)
    end
 end
 
  -- equip evasion set (with legs at dusk to dawn) 
 function equip_eva()
	windower.add_to_chat(8,'[Evasion]')
	if world.time <= 1020 and world.time >= 420 then
        equip(sets.eva)
	else
        windower.add_to_chat(8,'[Dusk to Dawn: Parrying+12 Evasion+22]')
		windower.add_to_chat(8,'[Dusk to Dawn: Str+13 Haste+4%]')
		equip(sets.eva,sets.eva.night,sets.balance.night)		
	end
 end
 
  -- equip balanced engaged set (with hands at dusk to dawn)
 function equip_engaged()
	windower.add_to_chat(8,'[Balanced]')
    if world.time <= 1020 and world.time >= 420 then
    	equip(sets.balance)
    else
		windower.add_to_chat(8,'[Dusk to Dawn: Str+13 Haste+4%]')
		equip(sets.balance,sets.balance.night)
	end
	if mdef == true then
		equip(sets.mdef)
	end
end


	-- equip our weapon skill set (with feet at dusk to dawn)
 function equip_ws()
	windower.add_to_chat(8,'[Weapon Skill]')
    if world.time <= 1020 and world.time >= 420 then
        windower.add_to_chat(8,'[Daylight: Attack +10]')
        equip(sets.ws,{right_ear="Fenrir's Earring"})
    else
        windower.add_to_chat(8,'[Dusk to Dawn: DEX+7, STR+14]')
        equip(sets.ws,{feet="Koga Kyahan +1",hands="Koga Tekko+1"})
    end
end
	
	--equip Utsusemi (Haste) gear for Utsusemi cast
	
function equip_utsu()
--	if spell.name:contains('Ni') then
--		windower.add_to_chat(8,'[Utsusemi: San - 4 Shadows]')
--	elseif spell.name:contains('Ichi') then
--		windower.add_to_chat(8,'[Utsusemi: Ichi - 3 Shadows]')
--	end
	equip(sets.utsu)
end

function equip_elemental(spell)
    if spell.element == world.day_element then
        windower.add_to_chat(8,'[Elemental - on matching day]')
        equip(sets.elemental,{waist="Hachirin-no-Obi"})
    elseif spell.element == world.weather_element then
        windower.add_to_chat(8,'[Elemental - with matching weather]')
        equip(sets.elemental,{waist="Hachirin-no-Obi"})
    else
        windower.add_to_chat(8,'[Elemental]')
        equip(sets.elemental)
    end    
end

-- a catchall equip function that puts on the correct set
-- whether we are engaged or idle, and sepending on our stance.
-- stance can be (E)vasion, (A)ttack, or (B)alanced.

function choose_set()
    if player.status == "Engaged" then
        if eva == true then
            equip_eva()
		else
            equip_engaged()
        end
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
 
  --[[ ******************************************************
  Casting functions - these functions run automatically when
 we cast a spell, use a job ability, rest for MP, and so on
****************************************************** --]]
 
 -- the precast function runs automatically BEFORE we
 -- begin casting a spell or job ability.  For our NIN,
 -- we want to equip ws gear for weapon skills, and our
 -- balanced set for casting Utsusemi.  We use Balanced
 -- set because it has evasion to avoid spell-interruption,
 -- and haste for utsu recast timers.
 
 function precast(spell)
	if spell.action_type == 'Ranged Attack' then
		windower.add_to_chat(8,'[Ranged Attack]')
		if world.time <= 1080 and world.time >= 360 then
            equip(sets.rattk,{left_ear="L.bug Earring +1",right_ear="L.bug Earring +1"})
		else
            windower.add_to_chat(8,'[Night: Ranged Atk +10]')
            equip(sets.rattk)			
		end
    elseif spell.type == 'WeaponSkill' then
        equip_ws()
    elseif spell.type == 'Ninjutsu' then
        local spell_recasts = windower.ffxi.get_spell_recasts()
        if spell_recasts[spell.recast_id] > 60 then -- 1s margin
            add_to_chat(167,spell.english .. ' is still on cooldown!')
            cancel_spell()
        else
            equip({right_ear = "Loquac. Earring"})
        end
    end
 end
 
  -- as a NIN we don't do anything mid-cast, because all
 -- our job abilities and WS are essentially insta-cast.
 
 function midcast(spell)
	if spell.type == 'Ninjutsu' then
		if spell.name:contains('Utsusemi') then
			equip_utsu()
		else
			equip_elemental(spell)
		end
	end
 end

 
 -- after our ws or ability, call the choose_set function
 -- to put on the correct gear.
 function aftercast(spell)
     choose_set()
end

-- whenever we engage or disengage from combat, put on the
-- correct gear.
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

-- the self_command function can be called from a Yush or
-- in-game macro.  We use it to toggle evasion on and off.
function self_command(m)
    if m == "toggleEvasion" then
        if eva == true then
            windower.add_to_chat(8,'[Evasion during combat: OFF]')
            eva = false
            choose_set()
        else
            windower.add_to_chat(8,'[Evasion during combat: ON]')
            eva = true
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
		
	elseif m == "togglemdef" then
		if mdef == true then
			windower.add_to_chat(8,'[Change Mode: Balanced]')
			mdef = false
			choose_set()
		else
			windower.add_to_chat(8,'[Change Mode: Magic Defense]')
			mdef = true
			choose_set()
		end

    elseif m == "castElemental" then
        if (nextElement=='thunder') then
            send_command('input /ma "Raiton: San" <t>')
            nextElement = 'earth'
        elseif (nextElement=='earth')   then
            send_command('input /ma "Doton: San" <t>')
            nextElement = 'wind'
        elseif (nextElement=='wind')    then
            send_command('input /ma "Huton: San" <t>')
            nextElement = 'ice'
        elseif (nextElement=='ice')     then
            send_command('input /ma "Hyoton: San" <t>')
            nextElement = 'fire'
        elseif (nextElement=='fire')    then
            send_command('input /ma "Katon: San" <t>')
            nextElement = 'water'
        elseif (nextElement=='water')   then
            send_command('input /ma "Suiton: San" <t>')
            nextElement = 'thunder'
        end
	elseif m == "resetWheel" then
        windower.add_to_chat(8,'[Elemental wheel reset]')
        nextElement = 'thunder'
	end
end

 
 --[[ ******************************************************
  Code that runs once, when we first swap to our NIN job
****************************************************** --]]
 
 nextElement = 'thunder'
 mdef = false
 eva = false
 photographer = false
 
 -- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 send_command('wait 1;input /lockstyleset 13;wait 1;gs equip idle;wait 1;gs equip initial')
 send_command('input /macro book 13; wait 0.1; input /macro set 1')
 send_command('input //dp magic')