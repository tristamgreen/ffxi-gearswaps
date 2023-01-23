--[[ *************************************************************
 Tristamgreen's PLD Lua
 
 Built off Wren's Lua
 Many thanks to Kurosaki, Laerion, Roach, and Enedin for gear options
************************************************************* --]]
 
 require("common_gs_functions")
 
 --[[ ******************************************************
  Gearsets - define the various sets of gear we'll wear.
****************************************************** --]]
 
 require("common_gs_functions")
 
 function get_sets()
 
     -- fashion set is for looking nice while lockstyled.
    -- make sure you include your top-row equipment,
    -- especially if you use a ranged or throwing weapon.
    -- I like how the Hydra armor looks.
    sets.excal	= {
		main		= "Excalibur",
		sub			= "Aegis",
    }
 
     -- idle set is worn when we're standing around doing
    -- nothing.  we want auto-refresh, movement
    sets.idle	= {
		ranged		= "Lamian Kaman +1",
		head		= "Valhalla Helm",
		body		= "Valhalla Breastplate",
		hands		= "Kaiser Handschuhs",
		legs		= "Blood Cuisses",
		feet		= "Askar Gambieras",
		neck		= "Orochi Nodowa +1",
		waist		= "Steppe Sash",
		left_ear	= "Ethereal Earring",
		right_ear	= "Novia Earring",
		left_ring	= "Shadow Ring",
		right_ring	= "Patronus Ring",
		back		= "Shadow Mantle",
    }
	
	sets.kiting = set_combine(
		sets.idle,{
		head		= "Wivre Mask +1",
		body		= "Valhalla Brstplate",
		neck		= "Evasion Torque",
		left_ring	= "Wivre Ring +1",
		right_ring	= "Wivre Ring +1",
		back		= "Boxer's Mantle",
		waist		= "Trance Belt",		
	})
 
	-- we throw on our engaged set when we engage a mob
    sets.engaged 	= {
	    head		= "Nocturnus Helm",
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
		left_ring	= "Mars's Ring",
		back		= "Cuchulain's Mantle",
	})
    
    sets.dayregen   =   {
		waist		= "Lycopodium Sash"
	}
     
	-- if its latent is procced, we'd rather wear the
    -- parade gorget than the shield 
    sets.parade		= {
        neck        = "Parade Gorget"
    }
 
	-- our enmity set stacks enmity
    sets.enmity 	= {
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
        right_ring  = "Corneus Ring",
        back        = "Cerb. Mantle +1",
    }
	
	sets.pdt		= {
	-- maximize Phys. Dmg down and VIT
		head		= "Valhalla Helm",
		--neck	= "",
		body		= "Valhalla Breastplate",
		hands		= "Darksteel Mittens +1",
		legs		= "Kaiser Diechlings",
		feet		= "Askar Gambieras",
		left_ring	= "Jelly Ring",
		right_ring	= "Patronus Ring",
		left_ear	= "Ethereal Earring",
		right_ear	= "Robust Earring",
		back		= "Shadow Mantle",
		waist		= "Warwolf Belt"
	}
	
	sets.mdt		= {
	-- maximize MDT and Magic Defense Bonus
		head		= "Valhalla Helm",
		hands		= "Coral Fng. Gnt. +1",
		body		= "Valhalla Brstplate",
		legs		= "Coral Cuisses +1",
		feet		= "Askar Gambieras",
		neck		= "Harmonia's Torque",
		waist		= "Resolute Belt",
		left_ear	= "Ethereal Earring",
		right_ear	= "Merman's Earring",
		left_ring	= "Shadow Ring",
		back		= "Lamia Mantle +1",
		right_ring	= "Merman's Ring",
	}	

	sets.breath = {
	-- breath damage down
		ammo		= "Verthandi's Gem",
		head		= "Valhalla Helm",
		body		= "Blood Scale Mail",
		hands		= "Kaiser Handschuhs",
		legs		= "Kaiser Diechlings",
		feet		= "Askar Gambieras",
		neck		= "Bloodbead Gorget",
		waist		= "Steppe Sash",
		left_ear	= "Harmonius Earring",
		right_ear	= "Harmonius Earring",
		left_ring	= "Gobniu's Ring",
		right_ring	= "Gobniu's Ring",
		back		= "Gigant Mantle",
	}
 
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
        waist       = "Hierarch Belt",
		back		= "Gigant Mantle"
    }
     
     -- stacking str and mnd for knigts of round
    sets.kor = {
        head        = "Nocturnus Helm",
        neck        = "Fotia Gorget",
        left_ear    = "Harmonius Earring",
        right_ear   = "Harmonius Earring",
        body        = "Hct. Harness +1",
        hands       = "Hct. Mittens +1",
        left_ring   = "Celestial Ring",
        right_ring  = "Rajas Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Warwolf Belt",
        legs        = "Hecatomb Subligar +1",
        feet        = "Hct. Leggings +1"
    }
 
     -- stacking strength for vorpal blade
    sets.str = {
        head        = "Hecatomb Cap +1",
        neck        = "Fotia Gorget",
        left_ear    = "Harmonius Earring",
        right_ear   = "Harmonius Earring",
        body        = "Hct. Harness +1",
        hands       = "Hct. Mittens +1",
        left_ring   = "Mars's Ring",
        right_ring  = "Rajas Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Warwolf Belt",
        legs        = "Hct. Subligar +1",
        feet        = "Hct. Leggings +1"
    }
     
     -- shield bash set
    sets.bash = {
        right_ear   = "Knightly Earring",
		right_ring	= "Fenian Ring",
        hands       = "Vlr. Gauntlets +1",
		feet		= "Glt. Leggings +1",
		
    }
	
	-- chivalry set maximizes MND
	sets.chivalry	= {
		head		= "Maat's Cap",
		body		= "Blood Scale Mail",
		-- hands	= "Dvt. Mitts +1",
		legs		= "Jet Seraweels",
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
		feet		= "Glt. Leggings +1"
	}
	
	sets.cover		= {
		head		= "Gallant Coronet +1",
		body		= "Valor Surcoat +1"
	}
 
     -- our base haste set for flash and utsu
    sets.haste 		= {
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
        left_ear    = "Buckler Earring",
        right_ear   = "Knightly Earring"
    }
 
     sets.fc = {
        head        = "Walahra Turban",
        right_ear   = "Loquac. Earring",
        feet        = "Dusk Ledelsens +1",
        hands       = "Dusk Gloves +1",
        right_ring  = "Blitz Ring"
    }
	
	sets.enhancing 	= {
		back		= "Merciful Cape",
		left_ear	= "Augment. Earring",
	}
	sets.enhancing.stoneskin = { -- MND (pot), Haste/FC/interrupt when cap is reached
	-- With 231 (210+16merits+5cape) skill and 450 being SN cap, you need 133 MND on PLD to get cap 
		head		= "Maat's Cap",
		body		= "Blood Scale Mail",
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
		legs		= "Vlr. Breeches +1",
		feet		= "Homam Gambieras",
		neck		= "Harmonia's Torque",
		waist		= "Ninurta's Sash",
		left_ear	= "Hades Earring +1",
		right_ear   = "Loquac. Earring",
		left_ring	= "Blitz Ring",
		right_ring  = "Patronus Ring",
		back		= "Gigant Mantle",
	}
	
	sets.reprisal 	= { -- Reprisal Maintenance set - mostly Shield Skill
		head		= "Kaiser Schaller",
		legs		= "Vlr. Breeches +1",
		feet		= "Gallant Leggings +1",
		neck		= "Shield Torque",
		right_ear	= "Buckler Earring",	
		back		= "Boxer's Mantle",
	}
	
	sets.healing = {
	-- cure potency, enmity+, interruption down, haste
		head		= "Maat's Cap",
		-- body		= "Hydra Haubert",
		-- hands		= "Hydra Moufles",
		legs		= "Vlr. Breeches +1",
		feet		= "Vlr. Leggings +1",
		neck		= "Bloodbead Gorget",
		waist		= "Ninurta's Sash",
		left_ear	= "Hospitaler Earring",
		right_ear	= "Knightly Earring",
		left_ring	= "Hercules' Ring",
		right_ring  = "Celestial Ring",
		back		= "Cerb. Mantle +1",
	}
	
	sets.divine 	= {
		head		= "Diana Corona",
		body		= "Corselet +1",
		hands		= "Dusk Gloves +1",
		legs		= "Vlr. Breeches +1",
		feet		= "Templar Sabatons",
		neck		= "Divine Torque",
		waist		= "Resolute Belt",
		left_ear	= "Novio Earring",
		right_ear	= "Moldavite Earring",
		left_ring	= "Galdr Ring",
		right_ring	= "Omega Ring",
		back		= "Altruistic Cape"
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
	common_idle_equip()
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
	windower.add_to_chat(8,'[Defense Mode: ' .. defmsg .. ']')
	equip(sets.idle,sets.engaged)
	if pdt == true then
		equip(sets.pdt)
		if buffactive['Reprisal'] then
			windower.add_to_chat(8, '[Reprisal Mode active]')
			equip(sets.reprisal)
		end
	elseif mdt == true then
		equip(sets.mdt)
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
	if buffactive['Cover'] then
 		equip(sets.cover)
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
            equip({left_ring="Guardian's Ring"})
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
		if spell.english == 'Reprisal' then
			if mdt then
				add_to_chat(122,'in MDT mode, cancelling Reprisal.')
				cancel_spell()
			end
		end
        local spell_recasts = windower.ffxi.get_spell_recasts()
        if spell_recasts[spell.recast_id] > 60 then -- 1s margin
			add_to_chat(167,spell.english .. ' is still on cooldown!')
			cancel_spell()
		elseif spell.name:contains('Utsusemi') then
			equip(sets.eva,sets.fc)
		else
            equip(sets.fc)
        end
    else
		equip(sets.enmity)
    end
				-- Cancel status effects for spells that don't overwrite themselves
			if spell.name == "Sneak" then send_command("cancel sneak") end
			if spell.name == "Stoneskin" then send_command("wait 4;cancel stoneskin") end
			if spell.name == "Reraise" then send_command("cancel reraise") end
			if spell.name == "Blink" then send_command("wait 4;cancel blink") end
			if spell.name == "Aquaveil" then send_command("wait 4;cancel aquaveil") end
			
 end
 
 -- most of our abilities are either insta-cast or require
 -- gearswaps at the start, so we don't do much mid-cast.
 function midcast(spell)
	if spell.name:contains('Utsusemi') then
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
	elseif spell.name == 'Shield Bash' then
        windower.add_to_chat(8,'[Shield Bash]')
        equip(sets.enmity,sets.bash)
		--if world.moon_pct <= 10 and world.moon_pct >= 5 and world.day == "Lightsday" and world.time <= 1080 and world.time >= 360 then
		--	equip({head="Horror Head II"})
		--end
        if player.hpp <= 75 and player.tp <=1000 then
            equip({left_ring="Guardian's Ring"})
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
	debuff_items()
end

-- ********************
-- *** MODE CHANGES ***
-- ********************

-- The self_commands below will allow you to change between
-- hybrid, full PDT, full MDT, and Breath Dmg. Reduction sets

function self_command(m)

-- how to use modes:
-- in a macro, use /console gs c mode_name
-- example: for weaponskills: /console gs c WS  for changing the weaponskill: /console gs c W+

-- modes:
-- W+ changes weaponskills between Knights of Round and Atonement
-- hybrid - Hybrid defense mode
-- pdt - Physical Damage Taken- mode PDT prioritized
-- mdt - Magical Damage Taken- mode MDT prioritized
-- breath - Breath Damage Taken- mode
-- highAcc - High Accuracy Mode


    if m == "W+" then
        if ws == "Knights of Round" then
			ws = "Atonement"
        else
			ws = "Knights of Round"
        end
        windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
	elseif m == "kiting" then
		if kiting == false then
			kiting = true
			kitemsg = "ACTIVE"
			-- windower.add_to_chat(8,'[' .. kitemsg .. ']')
		else 
			kiting = false
			kitemsg = "INACTIVE"
			-- windower.add_to_chat(8,'[' .. kitemsg .. ']')
		end
		choose_set()
	elseif m == "hybrid" then
		defmsg = "HYBRID"
		hybrid = true
        pdt = false
		mdt = false
		breath = false
            windower.add_to_chat(8,'[Tank mode: Hybrid]')
            choose_set()
	elseif m == "pdt" then
		defmsg = "PDT"
		pdt = true
		hybrid = false
		mdt = false
		breath = false
            windower.add_to_chat(8,'[Tank Mode: Physical Def.]')
            choose_set()
	elseif m == "mdt" then
		defmsg = "MDT"
		mdt = true
		hybrid = false
		pdt = false
		breath = false
            windower.add_to_chat(8,'[Tank Mode: Magic Def.]')
            choose_set()
	elseif m == "breath" then
		defmsg = "BREATH"
		breath = true
		hybrid = false
		pdt = false
		mdt = false
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
defmsg = "HYBRID"

highAcc = false

kiting = false
kitemsg = "INACTIVE"

-- set initial weapon skill
ws = "Atonement"

 -- Puts on our fashion set, lockstyle it, then switch
 -- to our idle set.
 send_command('wait 1;input /lockstyleset 7;wait 1;gs equip idle;wait 1;gs equip excal')
 send_command('input /macro book 7; wait 0.1; input /macro set 1;wait 0.1;input /u !myth')
 send_command('input //dp height;wait 1;input //dp ja')