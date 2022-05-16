--[[ *************************************************************
 Tristamgreen's DNC lua for Supernova FFXI
 Save as windower/addons/GearSwap/data/%username%_THF.lua
 
 2020-06-22 - first version
 2020-06-23 - revision 1.01, added modes and weaponskill change modes
 2020-06-24 - revision 1.02, added precast setup for all DNC JA's
 2020-06-24 - revision 1.03, added specific engaged handler for DRG Subjob and Wyvern Earring
************************************************************* --]]
 
 --[[ ******************************************************
  Gearsets - define the various sets of gear we'll wear.
****************************************************** --]]
 
 function get_sets()
 
    -- idle set is worn when we're standing around doing
    -- nothing.  we want movement speed and evasion.
    sets.idle = {
        ammo        = "Fenrir's Stone",
        head        = "Gnole Crown",
        neck        = "Orochi Nodowa +1",
        left_ear    = "Triton Earring",
        right_ear   = "Novia Earring",
        body        = "Scorpion Harness +1",
        hands       = "Denali Wristbands",
        left_ring   = "Patronus Ring",
        right_ring  = "Shadow Ring",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Denali Kecks",
        feet        = "Dancer's Toe Shoes"
    }
	
	sets.daylight = {
		hands		= "Feronia's Bangles",
		waist		= "Lycopodium Sash"
	}
    
    sets.weapons    = {
        main        = "Mandau",
        sub         = "Papilio Kirpan"
	}
	
	-- Haste Samba set
    sets.haste={
        ammo        = "Black Tathlum",
        head        = "Denali Bonnet",
        body        = "Rapparee Harness",
        hands       = "Dusk Gloves +1",
        legs        = "Etoile Tights +1",
        feet        = "Dusk Ledelsens +1",
        neck        = "Love Torque",
        waist       = "Ninurta's Sash",
        left_ear	= "Brutal Earring",
        right_ear	= "Pixie Earring",
        left_ring   = "Mars's Ring",
        right_ring  = "Rajas Ring",
        back        = "Etoile Cape"
}
    -- Drain Samba set
    sets.drainsamba={
        ammo        = "White Tathlum",
        head        = "Dancer's Tiara",
        body        = "Cobra Unit Harness",
        hands       = "Dusk Gloves +1",
        legs        = "Cobra Unit Subligar",
        feet        = "Dusk Ledelsens +1",
        neck        = "Chivalrous Chain",
        waist       = "Ninurta's Sash",
        -- left_ear    = "Wyvern Earring",
        right_ear   = "Pixie Earring",
        left_ring   = "Mars's Ring",
        right_ring  = "Rajas Ring",
        back        = "Amemet Mantle +1"
}
	 
    sets.eva = {
        head        = "Gnole Crown",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Novia Earring",
        body        = "Scorpion Harness +1",
		hands       = "Denali Wristbands",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Denali Kecks",
        feet        = "Dancer's Toe Shoes"
    }
         
     -- wsdex set is for dex-based weapon skills.
    sets.wsdex = {
        ammo        = "Black Tathlum",
        head        = "Maat's Cap",
        neck        = "Fotia Gorget",
        left_ear    = "Brutal Earring",
		right_ear   = "Pixie Earring",
        body        = "Antares Harness",
        hands       = "Enkidu's Mittens",
        left_ring   = "Rajas Ring",
        right_ring  = "Adroit Ring +1",
        back        = "Warwolf Mantle",
        waist       = "Cuchulain's Belt",
		legs		= "Enkidu's Subligar",
        feet        = "Setanta's Ledelsens"
    }
	
	sets.evis = { -- 511 ws acc / 430 atk
		ammo		= "Black Tathlum",
	    head		= "Maat's Cap",
		body		= "Antares Harness",
		hands		= "Enkidu's Mittens",
		legs		= "Enkidu's Subligar",
		feet		= "Etoile Shoes +1",
		neck		= "Fotia Gorget",
		waist		= "Cuchulain's Belt",
		left_ear	= "Brutal Earring",
		right_ear	= "Pixie Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Adroit Ring +1",
		back		= "Cuchulain's Mantle",
	}
	
	sets.de = { -- 487 weaponskill acc
		ammo		= "Black Tathlum",
		head		= "Maat's Cap",
		body		= "Enkidu's Harness",
		hands		= "Enkidu's Mittens",
		legs		= "Enkidu's Subligar",
		feet		= "Denali Gamashes",
		neck		= "Fotia Gorget",
		waist		= "Cuchulain's Belt",
		left_ear	= "Brutal Earring",
		right_ear	= "Harmonius Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Mars's Ring",
		back		= "Cerb. Mantle +1",
	}
     
     -- mercy set stacks lots of STR for mercy stroke.
    sets.mercy = { --472 ws acc
		ammo		= "Black Tathlum",
	    head		= "Maat's Cap",
		body		= "Enkidu's Harness",
		hands		= "Alkyoneus's Brc.",
		legs		= "Enkidu's Subligar",
		feet		= "Denali Gamashes",
		neck		= "Fotia Gorget",
		waist		= "Warwolf Belt",
		left_ear	= "Brutal Earring",
		right_ear	= "Harmonius Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Mars's Ring",
		back		= "Cerberus Mantle +1",
	}
	     
    -- fast cast for ninjutsu
    sets.fc = {
        left_ear    = "Loquac. Earring",
        --legs        = "Homam Cosciales"
		hands		= "Dusk Gloves +1",
		feet		= "Dusk Ledelsens +1",
    }
    
       
    -- utsusemi haste
    sets.utsu = {
        head        = "Walahra Turban",
        neck        = "Tiercel Necklace",
        left_ear	= "Triton Earring",
        right_ear   = "Novia Earring",
        body        = "Rapparee Harness",
        hands       = "Dusk Gloves +1",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Shadow Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Etoile Tights +1",
        feet        = "Dusk Ledelsens +1"
    } 
	 
    --***DANCER-SPECIFIC SETS***
    sets.samba  =   {
        head    =   "Dancer's Tiara"
    }
    
    sets.jig    =   {
        legs    =   "Etoile Tights +1",
        feet    =   "Dancer's Toe Shoes"
	}
    
    sets.waltz  	=   { -- stack chr+vit for maximum healage
        head    	=   "Etoile Tiara +1",
        body    	=   "Dancer's Casaque",
        legs    	=   "Etoile Tights +1",
        feet    	=   "Dance Shoes +1",
		ring1		=	"Corneus Ring",	
        left_ear	=   "Roundel Earring",
        right_ear	=   "Robust Earring",
        back    	=   "Etoile Cape",
        waist   	=   "Warwolf Belt"
    }
    
    sets.violent_flourish   =   {
        body    =   "Etoile Casaque +1"
    }
    
    sets.step   =   {
        hands   =   "Dnc. Bangles +1",
        feet    =   "Etoile Shoes +1"
    }
 end
 
 --[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
 -- equip our idle set
 function equip_idle()
	windower.add_to_chat(8,'[Idle]')					                -- all times of day, equip idle set
	if ev == true then
		equip(sets.idle,sets.eva)
	else
		equip(sets.idle)
	end
    if world.time <= 1080 and world.time >= 360 then                    -- if it isn't nighttime
        windower.add_to_chat(8,'[Daylight Regen]')                      -- Lycopodium Sash + Feronia's Bangles
        equip(sets.daylight)
    end
 end

-- equip our engaged set
function equip_engaged()
    windower.add_to_chat(8,'[Engaged]')
	if ev == true then
        equip(sets.haste,sets.eva)
        if world.time >= 1080 and world.time <= 360 then
			windower.add_to_chat(8,"[Engaged - Night Evasion Bonus]")
			equip(sets.haste,sets.eva,{ammo="Fenrir's Stone"})
        end
    else
		equip(sets.haste)
	end
	if player.sub_job == "DRG" then
            windower.add_to_chat(8,"[Dragoon Subjob - Wyvern Earring]")
            equip({right_ear="Wyvern Earring"})
	end
end
 
 
 -- equip either our mercy stroke or dex set
 function equip_ws(spell)
    windower.add_to_chat(8,'[Weapon Skill: ' .. spell.name .. ']')
    if spell.name == 'Mercy Stroke' then
        equip(sets.mercy)
    elseif spell.name == 'Dancing Edge' then
		equip(sets.de)
	elseif spell.name == 'Evisceration' then
		equip(sets.evis)
	else
		equip(sets.wsdex)
	end
	if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({left_ear="Fenrir's Earring"})
    end
 end

  
 -- the choose_set function figures out whether we're engaged with a
 -- mob or not, and passes control to the relevant function above.
 function choose_set()
    if player.status == "Engaged" then
		windower.add_to_chat(8,'[Engaged]')
        equip_engaged()
		if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Daylight Bonus]")
			equip({left_ear="Fenrir's Earring"})
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
 function precast(spell, spellMap, action)
    if spell.type == 'Ninjutsu' then
        equip(sets.fc)
    elseif spell.type == 'WeaponSkill' then
        equip_ws(spell)
    elseif spell.type:contains('Waltz') then
        equip(sets.waltz)
        if buffactive['Saber Dance'] then
            send_command('cancel "Saber Dance"')
            windower.add_to_chat(8,'[Saber Dance cancelled for Waltz]')
        end
    elseif spell.type:contains('Step') then
        equip(sets.step)
    elseif spell.type:contains('Jig')then
        equip(sets.jig)
        if spell.name == 'Spectral Jig' then
            send_command('cancel sneak')
        end
    elseif spell.type:contains('Samba') then
        equip(sets.samba)
        if buffactive['Fan Dance'] then
            send_command('cancel "Fan Dance"')
            windower.add_to_chat(8,'[Fan Dance cancelled for Samba]')
        end
    elseif spell.name == 'Violent Flourish' then
        equip(sets.violent_flourish)
    end
 end
 
 -- equip haste gear for ninjutsu
 function midcast(spell)
     if spell.type == 'Ninjutsu' then
        equip(sets.utsu)
    end
	if player.sub_job == "DRG" then
		windower.add_to_chat(8,"[Dragoon Subjob - Wyvern Earring]")
		equip({right_ear="Wyvern Earring"})
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
    if m == "W+" then
        if ws == "Mercy Stroke" then
            ws = "Dancing Edge"
        elseif ws == "Dancing Edge" then
            ws = "Evisceration"
        elseif ws == "Evisceration" then
            ws = "Mercy Stroke"
        end
        windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
    elseif m == "samba+" then
        if sambatype == "Drain Samba III" then
            sambatype = "Aspir Samba II"
        elseif sambatype == "Aspir Samba II" then
            sambatype = "Haste Samba"
        else
            sambatype = "Drain Samba III"
        end
        windower.add_to_chat(8,'[Current Samba: ' .. sambatype .. ']')
    elseif m == "step+" then
        if steptype == "Quickstep" then
            steptype = "Box Step"
            windower.add_to_chat(8,'[Current Step: ' .. steptype .. '] - Defense Down')
        elseif steptype == "Box Step" then
            steptype = "Stutter Step"
            windower.add_to_chat(8,'[Current Step: ' .. steptype .. '] - Magical Evasion Down')
        else
            steptype = "Quickstep"
            windower.add_to_chat(8,'[Current Step: ' .. steptype .. '] - Evasion Down')
        end
    elseif m == "S" then
        send_command('input /ja "' .. sambatype .. '" <me>')
    elseif m == "step" then
        send_command('input /ja "' .. steptype .. '" <t>')
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
     end
 end
 
 --[[ ******************************************************
  Code that runs once, when we first swap to our THF job
****************************************************** --]]
  
 -- ev determines whether we should wear our evasion gear in combat
 ev = false
 
 -- ws determines which weapon skill we'll use.  Mercy Stroke by default.
 ws = "Mercy Stroke"
 
 -- sambatype determines what our default samba type is on start
 sambatype = "Drain Samba III"
 
  -- steptype determines what our default step type is on start
 steptype = "Quickstep"
 
 -- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 send_command('wait 1; input /lockstyleset 19; wait 1; gs equip idle; wait 1; gs equip weapons')
 send_command('input /macro book 19; wait 0.1; input /macro set 1')
    windower.add_to_chat(8,'[Evasion: OFF]')
    windower.add_to_chat(8,'[Samba Selection: ' .. sambatype .. ']')
    windower.add_to_chat(8,'[Step Selection: ' .. steptype .. ']')
 send_command('input //dp ja')