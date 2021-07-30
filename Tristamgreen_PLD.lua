--[[ *************************************************************
 Tristamgreen's PLD Lua
 
 Built off Wren's Lua
 Many thanks to Kurosaki, Laerion, Roach, and Enedin for gear options
************************************************************* --]]
 
 --[[ ******************************************************
  Gearsets - define the various sets of gear we'll wear.
****************************************************** --]]
 
 function get_sets()
 
     -- fashion set is for looking nice while lockstyled.
    -- make sure you include your top-row equipment,
    -- especially if you use a ranged or throwing weapon.
    -- I like how the Hydra armor looks.
    sets.fashion = {
		main		= "Excalibur",
		sub			= "Aegis",
        --head        = "Maat's Cap",
        --body        = "Hydra Haubert",
        --hands       = "Hydra Moufles",
        --legs        = "Hydra Brayettes",
        --feet        = "Hydra Sollerets"
    }
 
     -- idle set is worn when we're standing around doing
    -- nothing.  we want auto-refresh, movement
    sets.idle = {
		ranged		= "Lamian Kaman +1",
		head		= "Blood Mask",
		body		= "Valhalla Breastplate",
		hands		= "Kaiser Handschuhs",
		legs		= "Blood Cuisses",
		feet		= "Askar Gambieras",
		neck		= "Orochi Nodowa +1",
		waist		= "Steppe Sash",
		left_ear	= "Ethereal Earring",
		right_ear	= "Triton Earring",
		left_ring	= "Shadow Ring",
		right_ring	= "Patronus Ring",
		back		= "Shadow Mantle",
    }
	
	sets.kiting = set_combine(
		sets.idle,{
		head		= "Wivre Mask +1",
		body		= "Valhalla Brstplate",
		neck		= "Evasion Torque",
		ring1		= "Wivre Ring +1",
		ring2		= "Wivre Ring +1",
		back		= "Boxer's Mantle",
		waist		= "Trance Belt",		
	})
 
	-- we throw on our engaged set when we engage a mob
    sets.engaged = {
	    head		= "Walahra Turban",
		body		= "Askar Korazin",
		hands		= "Dusk Gloves +1",
		legs		= "Homam Cosciales",
		feet		= "Homam Gambieras",
		neck		= "Fortitude Torque",
		waist		= "Ninurta's Sash",
		left_ear	= "Ethereal Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Blitz Ring",
		back		= "Cerb. Mantle +1",
    }
	
	sets.engaged.acc = set_combine(
		sets.engaged,{
		-- more accuracy
		body		= "Nocturnus Mail",
		hands		= "Homam Manopolas",
		neck		= "Ancient Torque",
		left_ring	= "Toreador's Ring",
		back		= "Cuchulain's Mantle",
	})
    
    sets.dayidle    =   {
		waist		= "Lycopodium Sash",
		hands		= "Feronia's Bangles"
	}
     
	-- if its latent is procced, we'd rather wear the
    -- parade gorget than the shield 
    sets.parade = {
        neck        = "Parade Gorget"
    }
 
	-- our enmity set stacks enmity
    sets.enmity = {
        head        = "Hydra Salade",
		body        = "Hydra Haubert",
		hands       = "Hydra Moufles",
		legs        = "Hydra Brayettes",
        feet        = "Hydra Sollerets",
        neck        = "Harmonia's Torque",
		waist       = "Warwolf Belt",
        left_ear    = "Hades Earring +1",
        right_ear   = "Hades Earring +1",
        left_ring   = "Hercules' Ring",
        right_ring  = "Patronus Ring",
        back        = "Cerb. Mantle +1",
    }
	
	sets.pdt	= {
	-- maximize Phys. Dmg down and VIT
		--head	= "Valhalla Helm",
		--neck	= "",
		body	= "Valhalla Breastplate",
		hands	= "Darksteel Mittens +1",
		legs	= "Kaiser Diechlings",
		feet	= "Askar Gambieras",
		ring1	= "Jelly Ring",
		ring2	= "Patronus Ring",
		ear1	= "Ethereal Earring",
		ear2	= "Robust Earring",
		back	= "Shadow Mantle",
		waist	= "Warwolf Belt"
	}
	
	sets.mdt	= {
	-- maximize MDT and Magic Defense Bonus
		--head		= "Valhalla Helm",
		hands		= "Coral Fng. Gnt. +1",
		body		= "Valhalla Brstplate",
		legs		= "Coral Cuisses +1",
		feet		= "Askar Gambieras",
		neck		= "Harmonia's Torque",
		waist		= "Resolute Belt",
		left_ear	= "Merman's Earring",
		right_ear	= "Merman's Earring",
		left_ring	= "Shadow Ring",
		back		= "Lamia Mantle +1",
		right_ring	= "Patronus Ring",
	}	

	sets.breath = set_combine(sets.mdt,{
	-- breath damage down
		body		= "Blood Scale Mail"
	})
 
     -- our resting set is for hMP.
    sets.rest = {
		head		= "Mirror Tiara",
		body		= "Valhalla Brstplate",
	    hands       = "Genie Gages",
		feet		= "King's Sabatons",
        left_ear    = "Relaxing Earring",
        right_ear   = "Sanative Earring",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        waist       = "Qiqirn Sash +1",
		back		= "Gigant Mantle"
    }
     
     -- stacking str and mnd for knigts of round
    sets.kor = {
        head        = "Nocturnus Helm",
        neck        = "Fotia Gorget",
        ear1        = "Celestial Earring",
        ear2        = "Tmph. Earring +1",
        body        = "Hct. Harness +1",
        hands       = "Hct. Mittens +1",
        ring1       = "Celestial Ring",
        ring2       = "Rajas Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Warwolf Belt",
        legs        = "Hecatomb Subligar +1",
        feet        = "Hct. Leggings +1"
    }
 
     -- stacking strength for vorpal blade
    sets.str = {
        head        = "Hecatomb Cap +1",
        neck        = "Fotia Gorget",
        ear1        = "Tmph. Earring +1",
        ear2        = "Tmph. Earring +1",
        body        = "Hct. Harness +1",
        hands       = "Hct. Mittens +1",
        ring1       = "Flame Ring",
        ring2       = "Rajas Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Warwolf Belt",
        legs        = "Hct. Subligar +1",
        feet        = "Hct. Leggings +1"
    }
     
     -- shield bash set
    sets.bash = {
        ear2        = "Knightly Earring",
		neck		= "Shield Torque",
		ear1		= "Buckler Earring",
        hands       = "Vlr. Gauntlets +1",
		feet		= "Gallant Leggings"
    }
	
	-- chivalry set maximizes MND
	sets.chivalry	= {
		head		= "Maat's Cap",
		body		= "Blood Scale Mail",
		-- hands		= "Dvt. Mitts +1",
		-- legs		= "Jet Seraweels",
		feet		= "Vlr. Leggings +1",
		neck		= "Gnole Torque",
		waist		= "Pythia Sash +1",
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring"
	}
 
     -- sentinel set
    sets.sentinel = {
        feet        = "Vlr. Leggings +1"
    }
 
     -- rampart set
    sets.rampart = {
        head        = "Vlr. Coronet +1"
    }
	
	sets.holycircle	= {
		feet		= "Gallant Leggings"
	}
 
     -- our base haste set for flash and utsu
    sets.haste = {
		head		= "Walahra Turban",
		body		= "Hydra Haubert",
		hands		= "Homam Manopolas",
		legs		= "Homam Cosciales",
		feet		= "Homam Gambieras",
		neck		= "Harmonia's Torque",
		waist		= "Warwolf Belt",
		right_ear	= "Hades Earring +1",
		left_ear    = "Loquac. Earring",
		left_ring	= "Hercules' Ring",
		right_ring	= "Blitz Ring",
		back		= "Cerb. Mantle +1",
	}
     
     -- for utsu, we sacrifice some enmity for shield
    -- skill because shield blocks prevent interruption.
    sets.utsu = {
        neck        = "Shield Torque",
        ear1        = "Buckler Earring",
        ear2        = "Knightly Earring"
    }
 
     sets.fc = {
        head        = "Walahra Turban",
        ear2        = "Loquac. Earring",
        feet        = "Dusk Ledelsens +1",
        hands       = "Dusk Gloves +1",
        ring2       = "Blitz Ring"
    }
	
	sets.enhancing = {
		back		= "Merciful Cape",
		left_ear	= "Augment. Earring",
	}
	sets.enhancing.stoneskin = { -- MND (pot), Haste/FC/interrupt when cap is reached
	-- With 231 (210+16merits+5cape) skill and 450 being SN cap, you need 133 MND on PLD to get cap 
		head		= "Maat's Cap",
		body		= "Blood Scale Mail",
		-- hands		= "Dvt. Mitts +1",
		hands		= "Stone Mufflers",
		legs		= "Jet Seraweels",
		feet		= "Vlr. Leggings +1",
		neck		= "Stone Gorget",
		waist		= "Pythia Sash +1",
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Merciful Cape",
	}
	sets.enhancing.blink = { -- Interrupt
		feet		= "Karasutengu",
		head		= "Valhalla Helm",
		body		= "Valhalla Brstplate",
		neck        = "Shield Torque",
		waist       = "Ninurta's Sash",
		left_ear    = "Buckler Earring",
		right_ear	= "Knightly Earring",
	}
	sets.enhancing.reprisal = { -- Haste/FC > HP+
		head		= "Walahra Turban",
		body		= "Blood Scale Mail",
		hands		= "Dusk Gloves +1",
		legs		= "Homam Cosciales",
		feet		= "Homam Gambieras",
		neck		= "Harmonia's Torque",
		waist		= "Ninurta's Sash",
		left_ear	= "Hades Earring +1",
		right_ear   = "Loquac. Earring",
		left_ring	= "Blitz Ring",
		right_ring  = "Patronus Ring",
		back		= "Gigant Mantle",
	}
	
	sets.healing = {
	-- cure potency, enmity+, interruption down, haste
		head		= "Maat's Cap",
		body		= "Hydra Haubert",
		hands		= "Hydra Moufles",
		legs		= "Vlr. Breeches +1",
		feet		= "Vlr. Leggings +1",
		neck		= "Gnole Torque",
		waist		= "Ninurta's Sash",
		left_ear	= "Hospitaler Earring",
		right_ear	= "Knightly Earring",
		left_ring	= "Hercules' Ring",
		right_ring  = "Celestial Ring",
		back		= "Dew Silk Cape +1",
	}
	
	sets.divine = {
		ear2		= "Celestial Earring",
		ear1		= "Divine Earring",
		neck		= "Divine Torque",
		body		= "Gallant Surcoat",
		hands		= "Dusk Gloves +1",
		back		= "Altruistic Cape",
		waist		= "Ninurta's Sash",
		legs		= "Vlr. Breeches +1",
		feet		= "Templar Sabatons"
	}
 
 end
 
 --[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
-- pick between our idle set and engaged set, depending on
-- whether we're currently engaged with a mob.
function choose_set()	
    if player.status == "Engaged" then
        equip_engaged()
    else
        equip_idle()
    end
 end
 
 -- equip our idle set for standing around
 function equip_idle()
    windower.add_to_chat(8,'[Idle]')
	if world.time <= 1080 and world.time >= 360 and player.hpp < 94 then
		windower.add_to_chat(8,"[Daylight Regen]")
		equip(sets.idle,sets.dayidle)
	else
        equip(sets.idle)
	end
	if player.hpp >= 85 and player.mpp <= 80 then
		windower.add_to_chat(8,'[Parade Gorget]')
        equip(sets.parade)
	end
	if kiting == true then
		windower.add_to_chat(8, '[Kiting Mode: ' .. kitemsg .. ']')
		equip(sets.kiting)
	end
end

-- equip our engaged set. If the parade gorget latent is
-- procced and we need mp, throw that on as well.
function equip_engaged()
    windower.add_to_chat(8,'[Engaged]')
	equip(sets.idle,sets.engaged)
	if pdt == true then
		equip(sets.pdt)
		if world.time <= 1080 and world.time >= 360 then
			equip({head="Louhi's Mask"})
		end
	elseif mdt == true then
		if world.time <= 1080 and world.time >= 360 then
			equip(sets.mdt)
		else
			equip(sets.mdt,{head="Louhi's Mask"})
		end
	elseif breath == true then
		equip(sets.breath)
	end
	if highAcc == true then
		breath = false
		pdt = false
		mdt = false
		windower.add_to_chat(8, '[Accuracy Mode: ' .. accmsg .. ']')
		equip(sets.engaged.acc)
	end
	if player.hpp >= 85 and player.mpp <= 70 then
		equip(sets.parade)
    end
 end
 
 -- equip our WS set
 function equip_ws(spell)
     windower.add_to_chat(8,'[Weapon Skill]')
    if spell.name == 'Knights of Round' then
        equip(sets.kor)
    elseif spell.name == 'Atonement' then
		equip(sets.enmity)
		if world.moon_pct <= 10 and world.moon_pct >= 5 and world.day == "Lightsday" and world.time <= 1080 and world.time >= 360 then
			equip({head="Horror Head II"})
		end
	else
		equip(sets.str)
    end
 end
 
 -- equip our hMP set
 function equip_rest()
     windower.add_to_chat(8,'[Resting]')
    equip(sets.rest)
end

 
 --[[ ******************************************************
  Casting functions - these functions run automatically when
 we cast a spell, use a job ability, rest for MP, and so on
****************************************************** --]]
 
 -- the precast function runs automatically BEFORE we
 -- begin casting a spell or job ability.
 function precast(spell)
	if spell.type == 'WeaponSkill' then
        equip_ws(spell)
    elseif spell.name == 'Shield Bash' then
        windower.add_to_chat(8,'[Shield Bash]')
        equip(sets.enmity,sets.bash)
		--if world.moon_pct <= 10 and world.moon_pct >= 5 and world.day == "Lightsday" and world.time <= 1080 and world.time >= 360 then
		--	equip({head="Horror Head II"})
		--end
        if player.hpp <= 75 and player.tp <=1000 then
            equip({ring1="Guardian's Ring"})
        end
    elseif spell.name == 'Sentinel' then
        windower.add_to_chat(8,'[Sentinel]')
        equip(sets.enmity,sets.sentinel)
		--if world.moon_pct <= 10 and world.moon_pct >= 5 and world.day == "Lightsday" and world.time <= 1080 and world.time >= 360 then
		--	equip({head="Horror Head II"})
		--end
    elseif spell.name == 'Rampart' then
        windower.add_to_chat(8,'[Rampart]')
        equip(sets.enmity,sets.rampart)
		--if world.moon_pct <= 10 and world.moon_pct >= 5 and world.day == "Lightsday" and world.time <= 1080 and world.time >= 360 then
		--	equip({head="Horror Head II"})
		--end
    elseif spell.type:contains('Magic') or spell.type == 'Ninjutsu' then
        local spell_recasts = windower.ffxi.get_spell_recasts()
        if spell_recasts[spell.recast_id] > 60 then -- 1s margin
			add_to_chat(167,spell.english .. ' is still on cooldown!')
			cancel_spell()
		else
            equip(sets.fc)
        end
    else
         equip(sets.enmity)
    end
 end
 
 -- most of our abilities are either insta-cast or require
 -- gearswaps at the start, so we don't do much mid-cast.
 function midcast(spell)
	if spell.name == 'Utsusemi: Ni' or spell.name == 'Utsusemi: Ichi' then
        windower.add_to_chat(8,'[Utsusemi]')
        equip(sets.enmity,sets.haste,sets.utsu)
	elseif spell.skill == 'Healing Magic' then
        equip(sets.healing)
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.enhancing)
		if spell.name == 'Stoneskin' then
			equip(sets.enhancing.stoneskin)
		elseif spell.name == 'Blink' then
			equip(sets.enhancing.blink)
		elseif spell.name == 'Reprisal' then
			equip(sets.enhancing.reprisal)
		end
    elseif spell.skill == 'Divine Magic' then
		equip(sets.divine)
		if spell.name == 'Flash' then
			windower.add_to_chat(8,'[Flash]')
			equip(sets.enmity,sets.haste)
			if world.moon_pct <= 10 and world.moon_pct >= 5 and world.day == "Lightsday" and world.time <= 1080 and world.time >= 360 then
				equip({head="Horror Head II"})
			end
		end
	else
        equip(sets.enmity)
    end
 end
 
 -- when we're done with our spell or ability, return to either
 -- our idle or engaged gear.
 function aftercast(spell)
     choose_set()
end

-- swap into hMP gear when we /heal, and return to idle gear
-- when we stand up.
function status_change(new,old)
    if new == 'Resting' then
        equip_rest()
    else
        choose_set()
    end
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

-- ********************
-- *** MODE CHANGES ***
-- ********************

-- The self_commands below will allow you to change between
-- hybrid, full PDT, full MDT, and Breath Dmg. Reduction sets

function self_command(m)
-- W+ changes weaponskills between Knights of Round and Atonement
    if m == "W+" then
        if ws == "Knights of Round" then
			ws = "Atonement"
        else
			ws = "Knights of Round"
        end
        windower.add_to_chat(8,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
	elseif m == "kiting" then
		if kiting == false then
			kiting = true
			kitemsg = "ACTIVE"
			windower.add_to_chat(8,'[' .. kitemsg .. ']')
		else 
			kiting = false
			kitemsg = "INACTIVE"
			windower.add_to_chat(8,'[' .. kitemsg .. ']')
		end
		choose_set()
	elseif m == "hybrid" then
		hybrid = true
        pdt = false
		mdt = false
		breath = false
            windower.add_to_chat(8,'[Tank mode: Hybrid]')
            choose_set()
	elseif m == "pdt" then
		hybrid = false
		pdt = true
		mdt = false
		breath = false
            windower.add_to_chat(8,'[Tank Mode: Physical Def.]')
            choose_set()
	elseif m == "mdt" then
		hybrid = false
		pdt = false
		mdt = true
		breath = false
            windower.add_to_chat(8,'[Tank Mode: Magic Def.]')
            choose_set()
	elseif m == "breath" then
		hybrid = false
		pdt = false
		mdt = false
		breath = true
            windower.add_to_chat(8,'[Tank Mode: Breath Dmg. Reduction]')
            choose_set()
	elseif m == "highAcc" then
		if highAcc == false then
			highAcc = true
			accmsg = "High"
			windower.add_to_chat(8,'[' .. accmsg .. ']')
		else
			highAcc = false
			accmsg = "Normal"
			windower.add_to_chat(8,'[' .. accmsg .. ']')
		end
		choose_set()
	end
	end
 
 --[[ ******************************************************
  Code that runs once, when we first swap to our PLD job
****************************************************** --]]

-- set initial tank mode
hybrid = true
pdt = false
mdt = false
breath = false

highAcc = false

kiting = false

-- set initial weapon skill
ws = "Atonement"

 -- Puts on our fashion set, lockstyle it, then switch
 -- to our idle set.
 send_command('wait 1;gs equip fashion;wait 1;input /lockstyleset 7;wait 1;gs equip idle')
 send_command('input /macro book 7; wait 0.1; input /macro set 1;wait 0.1;input /u !myth')
 send_command('input //dp height;wait 1;input //dp ja')