-- Tristamgreen Ranger LUA, 2019
-- thanks to Wren and Enedin for bits and pieces of their own LUAs
-- all patch notes in github history
 
 require("common_gs_functions")
 
 function get_sets()
 
	sets.idle = {
    -- Prioritize Evasion, Regen, Movement Speed
		head		= "Blood Mask",
		body		= "Kyudogi +1",
		hands		= "Denali Wristbands",
		legs		= "Blood Cuisses",
		feet		= "Areion Boots +1",
		neck		= "Orochi Nodowa +1",
		waist		= "Scouter's Rope",
		left_ear	= "Novia Earring",
		right_ear	= "Triton Earring",
		left_ring	= "Patronus Ring",
		right_ring	= "Shadow Ring",
		back		= "Shadow Mantle",
	}
	
	sets.gun		= {
		ranged		= "Annihilator",
		ammo		= "Silver Bullet"
	}
	
	sets.bow		= {
		ranged		= "Yoichinoyumi",
		ammo		= "Kabura Arrow"
	}

	sets.dayregen	= {
		hands		= "Feronia's Bangles",
		waist		= "Lycopodium Sash"
	}
    
    sets.mekki    	= {
        main        = "Mekki Shakki",
        sub         = "Rose Strap"
    }
	
	sets.axes   = {
        main        = "Kriegsbeil",
        sub         = "Fransisca"
    }
	
	sets.staff   = {
        main        = "Vulcan's Staff",
        sub         = "Axe Grip"
    }
	
	-- Haste set
    sets.engaged    = {
        head        = "Walahra Turban",
		body        = "Cobra Harness",
		neck        = "Peacock Amulet",
		hands       = "Enkidu's Mittens",
		legs        = "Byakko's Haidate",
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
        body        = "Kirin's Osode",
		hands       = "Scout's Bracers +1",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Scout's Braccae +1",
        feet        = "Hunter's Socks"
    }
    
   	sets.ranged     = {		
        head		="Zha'Go's Barbut",
		body		="Kirin's Osode",
		hands		="Blood Fng. Gnt.",
		legs		="Enkidu's Subligar",
		feet		="Scout's Socks +1",
		waist		="Scout's Belt",
        left_ear    ="Brutal Earring",
        right_ear   ="Fenrir's Earring",
		left_ring	="Bellona's Ring",
		right_ring	="Rajas Ring",
		back		="Fowler's Mantle +1",
    }
	
	sets.ranged.hybrid = {
		head		="Zha'Go's Barbut",
		body		="Kirin's Osode",
		hands		="Blood Fng. Gnt.",
		legs		="Dusk Trousers +1",
		feet		="Sct. Socks +1",
		waist		="Scout's Belt",
		left_ear	="Altdorf's Earring",
		right_ear	="Fenrir's Earring",
		left_ring	="Bellona's Ring",
		right_ring	="Jalzahn's Ring",
		back		="Fowler's Mantle +1",
	}

    sets.ranged.acc = {
		head		="Zha'Go's Barbut",
		body		="Kirin's Osode",
		hands		="Blood Fng. Gnt.",
		legs		="Dusk Trousers +1",
		feet		="Sct. Socks +1",
		neck		="Faith Torque",
		waist		="Scout's Belt",
		left_ear	="Altdorf's Earring",
		right_ear	="Fenrir's Earring",
		left_ring	="Bellona's Ring",
		right_ring	="Cerberus Ring +1",
		back		="Amemet Mantle +1",
    }
	
	sets.ranged.daylight = {
		left_ear	="L.bug Earring +1",
		right_ear	="L.bug Earring +1"
	}

    sets.archery    = set_combine(sets.ranged,{
        neck        = "Hope Torque",
    })

    sets.marksman   = set_combine(sets.ranged,{
        neck        = "Faith Torque",
    })
    
    -- Weapon Skill sets
	-- nighttime: add +10 ranged attack for Fenrir's Earring
    
    sets.ws         = {
    -- Generic WS set for Rampage
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
            
    sets.sidewinder = { -- RACC 469 with Fotia, RATTK 463
		head        = "Zha'Go's Barbut",
        body        = "Kirin's Osode",
		hands       = "Blood Fng. Gnt.",
		legs        = "Hachiryu Haidate",
		feet        = "Scout's Socks +1",
        neck        = "Fotia Gorget",
		waist       = "Scout's Belt",
		left_ring   = "Dragon Ring +1",
		right_ring  = "Bellona's Ring",
		left_ear    = "Brutal Earring",
		right_ear   = "Fenrir's Earring",
		back        = "Amemet Mantle +1",
    }
    
    sets.namas 		= {  -- RACC 472 with Fotia, RATTK 447
		head        = "Zha'Go's Barbut",
        body        = "Denali Jacket",
		hands       = "Seiryu's Kote",
		legs        = "Hachiryu Haidate",
		feet        = "Sct. Socks +1",
        neck        = "Fotia Gorget",
		waist       = "Scout's Belt",
		left_ring   = "Bellona's Ring",
		right_ring  = "Rajas Ring",
		left_ear    = "Brutal Earring",
		right_ear   = "Fenrir's Earring",
		back        = "Fowler's Mantle +1",
    }
    
    sets.slugshot 	= {  -- RACC 466 with Fotia, RATTK 455
        head        = "Zha'Go's Barbut",
        body        = "Kirin's Osode",
        hands       = "Seiryu's Kote",
        legs        = "Hachiryu Haidate",
        feet        = "Sct. Socks +1",
        neck        = "Fotia Gorget",
        waist       = "Scout's Belt",
        left_ear    = "Brutal Earring",
        right_ear   = "Fenrir's Earring",
        left_ring   = "Bellona's Ring",
        right_ring  = "Rajas Ring",
        back        = "Amemet Mantle +1",
    }
	
	sets.heavyshot = { -- Racc 479 / Rattk 458
	    head        = "Zha'Go's Barbut",
        body        = "Kirin's Osode",
        hands       = "Seiryu's Kote",
        legs        = "Hachiryu Haidate",
        feet        = "Sct. Socks +1",
        neck        = "Fotia Gorget",
        waist       = "Scout's Belt",
        left_ear    = "Altdorf's Earring",
        right_ear   = "Wilhelm's Earring",
        left_ring   = "Bellona's Ring",
        right_ring  = "Jalzahn's Ring",
        back        = "Amemet Mantle +1",	
	}
    
    sets.coronach 	= {  -- RACC 455 with Fotia, RATTK 461
        head        = "Maat's Cap",
        body        = "Kirin's Osode",
        hands       = "Blood Fng. Gnt.",
        legs        = "Hachiryu Haidate",
        feet        = "Sct. Socks +1",
        neck        = "Fotia Gorget",
        waist       = "Scout's Belt",
        left_ear    = "Brutal Earring",
        right_ear   = "Fenrir's Earring",
        left_ring   = "Bellona's Ring",
        right_ring  = "Rajas Ring",
        back        = "Fowler's Mantle +1",
    }
	
	sets.trueflight	= {
		head		= "Maat's Cap",
		body		= "Kirin's Osode",
		hands		= "Rover's Gloves",
		legs		= "Denali Kecks",
		feet		= "Hachiryu Sune-Ate",
		neck		= "Fotia Gorget",
		waist		= "Scouter's Rope",
		left_ear	= "Novio Earring",
		right_ear	= "Novia Earring",
		left_ring	= "Galdr Ring",
		right_ring	= "Omega Ring",
		back		= "Fowler's Mantle +1",
	}
	
	sets.shadowbind = {
		hands		= "Hunter's Bracers +1",
    }

    sets.scavenge   = {
        feet        = "Hunter's Socks",
    }
    
    sets.sharpshot  = {
        legs        = "Hunter's Braccae",
    }
    
    sets.camo       = {
        body        = "Hunter's Jerkin",
    }
    
    sets.unlimshot  = {
        body        = "Kirin's Osode",
        back        = "Amemet Mantle +1",
        left_ring   = "Cerberus Ring +1",
		right_ring	= "Cerberus Ring +1",
		hands		= "Blood Fng. Gnt."
    }
        
    -- utsusemi haste
    sets.utsu = {
        head        = "Walahra Turban",
        neck        = "Tiercel Necklace",
		left_ear	= "Novia Earring",
		right_ear	= "Triton Earring",
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
        windower.add_to_chat(8,'[Evasion While Engaged]')
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
    if spell.name == 'Sidewinder' then
        equip(sets.sidewinder)
    elseif spell.name == 'Namas Arrow' then
        equip(sets.namas)
	elseif spell.name == 'Heavy Shot' then
		equip(sets.heavyshot)
    elseif spell.name == 'Slug Shot' then
        equip(sets.slugshot)
    elseif spell.name == 'Coronach' then   
        equip(sets.coronach)
	elseif spell.name == 'Trueflight' then
		equip(sets.trueflight)
		if world.day == "Firesday" then
			equip({feet="Marabout Sandals"})
		elseif world.moon == "full" then
			equip({head="Diana Corona"})
		end
    else
        equip(sets.ws)
    end
    if world.time <= 1080 and world.time >= 360 then
        windower.add_to_chat(8,"[Daylight - L.bug Earring +1]")
        equip(sets.ranged.daylight)
    end
	if world.day == "Firesday" and not spell.name == 'Trueflight' then
		windower.add_to_chat(8,"[Fire Ring - RATTK +15]")
		equip({right_ring="Fire Ring"})
	end
end
 
 -- equip our ranged set
 function equip_racc()
    windower.add_to_chat(8,'[Ranged Attack]')
    if accmode == "high" then
        equip(sets.ranged.acc)
        if rangedtype == true then
            equip(sets.ranged.acc,{neck="Hope Torque"})
        else 
            equip(sets.ranged.acc,{neck="Faith Torque"})
        end
    else 
		if fivehit == true then
			equip(sets.ranged,{legs="Hachiryu Haidate"})
		else
			equip(sets.ranged.hybrid,{legs="Hachiryu Haidate"})
			if world.day == "Firesday" then
				windower.add_to_chat(8,"[Fire Ring - RATTK +15]")
				equip({right_ring="Fire Ring"})
			end	
		end
        if rangedtype == true then
            equip({neck="Hope Torque"})
        else 
            equip({neck="Faith Torque"})
        end
    end
    if (buffactive['barrage'])then
		equip(sets.ranged.acc,{hands="Hunter's Bracers +1",right_ring="Jalzahn's Ring"})
        disable('hands')
		if world.day == "Lightningday" then
			windower.add_to_chat(8,"[Lightning Ring - RACC +15]")
			equip({right_ring="Lightning Ring"})
		end	
    end
	if player.sub_job == "NIN" then
		if staffmode == false then
			equip({feet="Hachiryu Sune-ate"})
		end
	end
	if world.time <= 1080 and world.time >= 360 then
		windower.add_to_chat(8,"[Daylight - L.bug Earring +1]")
		equip(sets.ranged.daylight)
	end
    enable('ammo','hands')
end
 
 -- the choose_set function figures out whether we're engaged with a
 -- mob or not, and passes control to the relevant function above.
 function choose_set()
    if player.status == "Engaged" then
        equip_engaged()
    else 
        equip_idle()    
    end
	-- Weapons select
	if player.sub_job == "NIN" then
		if fivehit == true then
			windower.add_to_chat(8,'[Five-Hit Ranger: ON]')
			equip(sets.mekki)
		elseif staffmode == true then 
			windower.add_to_chat(8,'[Ninja Staff Mode active]')
			equip(sets.staff)
		elseif kc == true then
			windower.add_to_chat(8,'[Ninja Kclub mode active]')
			equip({main="Kriegsbeil",sub="Kraken Club"})
		else
			equip(sets.axes)
		end
	else
		if fivehit == true then
			windower.add_to_chat(8,'[Five-Hit Ranger: ON]')
			equip(sets.mekki)
		elseif kc == true then
			windower.add_to_chat(8,'[Kclub mode active]')
			equip({main="Kraken Club"})
		else
			equip(sets.staff)
		end
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
    elseif spell.name == 'Scavenge' then
        equip(sets.scavenge)
    elseif spell.name == 'Unlimited Shot' then  
        if rangedtype == true then
            windower.add_to_chat(8,"[Unlimited Shot - Cmb. Cst. Arrow]")
            equip({ammo="Combat Caster's Arrow"})
            disable('ammo')
        else
            windower.add_to_chat(8,"[Unlimited Shot - Hightail Bullet]")        
            equip({ammo="Hightail Bullet"})
            disable('ammo')
        end
	elseif spell.action_type == 'Ranged Attack' then
        equip_racc()
    elseif spell.name == 'Sharpshot' then
        equip(sets.sharpshot)
    elseif spell.name == 'Shadowbind' then
        equip(sets.shadowbind)
    elseif spell.name == 'Camouflage' then
        equip(sets.camouflage)
	elseif spell.name:contains('Corsair') or spell.name:contains('Monk') or spell.name:contains('Healer') or spell.name:contains('Chaos') or spell.name:contains('Choral') or spell.name:contains('Drachen') or spell.name:contains('Hunter') or spell.name:contains('Ninja') or spell.name:contains('Magus') or spell.name:contains('Beast') or spell.name:contains('Samurai') or spell.name:contains('Wizard') or spell.name:contains('Warlock') or spell.name:contains('Rogue') or spell.name:contains('Gallant') or spell.name:contains('Evoker') or spell.name:contains('Puppet') or spell.name:contains('Dancer') or spell.name:contains('Scholar') then
        equip({left_ring="Luzaf's Ring"})
	end
	-- Cancel status effects for spells that don't overwrite themselves
	if spell.name:contains "Monomi" then 
		send_command("cancel sneak") 
	end	
	if spell.name == 'Barrage' then
		enable('ammo')
		if rangedtype == true then
			equip({ammo="Kabura Arrow"})
		else
			equip({ammo="Silver Bullet"})
		end
		if player.inventory[player.equipment.ammo].count < 8 then
			windower.add_to_chat("[Not enough to maximize Barrage, cancelling]")
			cancel_spell()
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
    if rangedtype == true then
        equip({ammo="Kabura Arrow"})
    else
        equip({ammo="Silver Bullet"})
    end
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
-- W+ - changes default weaponskill called between Coronach/Slug Shot or Namas Arrow/Sidewinder
-- rangedtype - changes between gun and bow
-- accmode - changes between "normal" and "high" ranged accuracy modes
-- fivehit - equips fivehit/fourhit setup or not
-- kclub - equips kclub, or if on /nin, equips kclub in offhand
-- EVA - equips evasion gear
-- staffmode - /nin only, toggles between staves and axes

    if m == "W+" then
        if rangedtype == false then
            if ws == "Coronach" then
                ws = "Slug Shot"
			elseif ws == "Slug Shot" then
				ws = "Heavy Shot"
            else ws = "Coronach"
            end
        else
            if ws == "Namas Arrow" then
                ws = "Sidewinder"
            else ws = "Namas Arrow"
            end
        end
        windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
    elseif m == "rangedtype" then
        if rangedtype == false then
            rangedtype = true
            ws = 'Namas Arrow'
            windower.add_to_chat(8,'[Ranged Attack Mode: Archery]')
            windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
            equip(sets.bow)
			send_command('input //dp bow')
			send_command('input /lockstyle off;wait 10;input /lockstyleset 11')
            choose_set()
        else
            rangedtype = false
            ws = 'Coronach'
            windower.add_to_chat(8,'[Ranged Attack Mode: Marksmanship]')
            windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
            equip(sets.gun)
			send_command('input //dp gun')
            send_command('input /lockstyle off;wait 10;input /lockstyleset 11')
            choose_set()
        end
    elseif m == "accmode" then
        if accmode == "normal" then
            windower.add_to_chat(8,'[Accuracy Mode: High]')
            accmode = "high"
            choose_set()
        else
            windower.add_to_chat(8,'[Accuracy Mode: Normal]')
			accmode = "normal"
            choose_set()
        end
	elseif m == "fivehit" then
        if fivehit == false then
			fivehit = true
            choose_set()
        else
			fivehit = false
			windower.add_to_chat(8,'[Five-Hit Ranger: OFF]')
            choose_set()
        end
     elseif m == "EVA" then
        if ev == false then
            ev = true
            windower.add_to_chat(8,'[Evasion while engaged: ON]')
            choose_set()
        else
            ev = false
            windower.add_to_chat(8,'[Evasion while engaged: OFF]')
            choose_set()
        end
     elseif m == "kclub" then
		if kc == false then
			kc = true
			choose_set()
		else
			kc = false
			windower.add_to_chat(8,'[Kclub mode inactive]')
			choose_set()
		end
	 elseif m == "staffmode" then
		if player.sub_job == "NIN" then
			if staffmode == false then
				staffmode = true
				choose_set()
			else
				staffmode = false
				windower.add_to_chat(8,'[Ninja Staff Mode inactive]')
				choose_set()
			end
		else
			windower.add_to_chat(8,'[Player not NIN sub job]')
		end
	end
 end
 
 --[[ ******************************************************
  Code that runs once, when we first swap to our RNG job
****************************************************** --]]
 
 -- determine rangedtype
 rangedtype = false
 
 -- set accuracy mode to normal by default
 accmode = "normal"
 
 -- set fivehit mode to active or deactive
 fivehit = false
 
 -- set default staffmode for nin subjob
 staffmode = false
 
 -- ev determines whether we should wear our evasion gear in combat
 ev = false

 -- ws determines which weapon skill we'll use.  Coronach by default.
 ws = "Coronach"
 
 -- kc determines that kclub mode is inactive by default
 kc = false
 
 
 -- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 if player.sub_job == "NIN" then
	send_command('gs enable all;wait 1;gs equip idle;wait 1;gs equip axes;wait 1;gs equip gun;wait 1;input /lockstyleset 9')
	windower.add_to_chat(8,'[Ranged Attack Mode: Marksmanship]')
	send_command('input //dp gun;wait 1;input /echo Sub job select: NINJA')
 else
	send_command('gs enable all;wait 1;gs equip idle;wait 1;gs equip staff;wait 1;gs equip gun;wait 1;input /lockstyleset 9')
	windower.add_to_chat(8,'[Ranged Attack Mode: Marksmanship]')
	send_command('input //dp gun;wait 1;input /echo Default Ranger Mode: Staff')
 end
 send_command('input /macro book 11; wait 0.1; input /macro set 1; wait .5; input /u !myth')
 send_command('input /echo Gearswap loaded.')