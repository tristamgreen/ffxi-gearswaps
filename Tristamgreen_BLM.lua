--[[*********************************************
Tristamgreen BLM Remix - 2020
********************************************* --]]
 
 -- Update Notes
 -- Sep. 30 2020 - v1.0 - new LUA, based on lessons learned from Black Mage
 
 -- Base MP for Uggalepih Pendant Calculation: 878MP

 --[[ **********
  Gearsets 
************ --]]
 
 function get_sets()
 
    -- idle sets 
	
	-- Generic Idle
    -- prioritize Regen and Refresh with Evasion
	sets.idle		= {
        -- ammo        = "Fenrir's Stone",
		ranged		= "Aureole",
        head        = "Genie Tiara",
        neck        = "Beguiling Collar",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "Dalmatica +1",
        hands       = "Hydra Gloves",
        right_ring  = "Patronus Ring",
        left_ring   = "Shadow Ring",
        back        = "Umbra Cape",
        waist       = "Pythia Sash +1",
        legs        = "Goliard Trews",
        feet        = "Herald's Gaiters"
	}
	
	sets.regen 		= {
		neck		= "Orochi Nodowa +1"
	}

    -- Daylight Regen set
	sets.dayregen	= {
		hands		= "Feronia's Bangles",
		waist		= "Lycopodium Sash"
	}
	    
	-- **** STAFF SETS ****
   
	sets.staff		= {
		main		= "Claustrum",
		sub			= "Raptor Strap +1"
	}
	
	sets.meleeStaff = set_combine(
		sets.staff,{
		sub			= "Pole Grip",
		-- ammo		= "White Tathlum",
	})
	
	-- terra's staff for damage mitigation
	sets.terra		= {
		main		= "Terra's Staff",
		sub			= "Magic Strap"
	}
    
    -- combat sets
    
    -- max evasion set, toggled by macro /console gs c eva
    sets.evasion 	= {
        -- ammo        = "Fenrir's Stone",
        head        = "Hydra Beret",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        body        = "Hydra Doublet",
        hands       = "Hydra Gloves",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Pythia Sash +1",
        legs        = "Hydra Brais",
        feet        = "Hydra Gaiters"
    }
    
    sets.engaged = {
		head		= "Walahra Turban",
		body		= "Hydra Doublet",
		hands		= "Hydra Gloves",
		legs		= "Hydra Brais",
		feet		= "Hydra Gaiters",
		neck		= "Temp. Torque",
		waist		= "Ninurta's Sash",
		left_ear	= "Pixie Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Toreador's Ring",
		right_ring	= "Mars's Ring",
		back		= "Umbra Cape",
	}
    
    -- magic defense set
    -- toggled via macro /console gs c defmode
    
    sets.mdef       = {
        head        = "Goliard Chapeau",
        body        = "Goliard Saio",
        hands       = "Goliard Cuffs",
        legs        = "Goliard Trews",
        feet        = "Goliard Clogs",
        left_ear    = "Merman's Earring",
        right_ear   = "Merman's Earring",
        left_ring   = "Merman's Ring",
        right_ring  = "Merman's Ring"
    }
	
	sets.HPMP 	    = {
		-- ammo		= "Hedgehog Bomb",
		head		= "Goliard Chapeau",
		body		= "Mahatma Hpl.",
		hands		= "Oracle's Gloves",
		legs		= "Oracle's Braconi",
		feet		= "Goliard Clogs",
		neck		= "Grandiose Chain",
		waist		= "Qiqirn Sash +1",
		left_ear	= "Relaxing Earring",
		right_ear	= "Antivenom Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Invigorating Cape"
    }
	
     -- fast cast set 
    sets.fc         = {
        sub         = "Vivid Strap +1",
		feet        = "Rostrum Pumps",
        waist       = "Ninurta's Sash",
		left_ear    = "Loquacious Earring",
        back        = "Veela Cape"
    }
	
	-- Haste set
    -- used basically for Utsusemi only
	sets.haste		= {
		-- ammo        = "Hedgehog Bomb",
        head        = "Walahra Turban",
        left_ear    = "Loquacious Earring",
        body        = "Goliard Saio",
        hands       = "Dusk Gloves +1",
        waist       = "Ninurta's Sash",
        legs        = "Nashira Seraweels",
        feet        = "Dusk Ledelsens +1"
    }
    
        -- *** Enhancing and Healing Sets ***
    
    -- Healing Magic Potency set
    sets.healing	= {
		-- ammo        = "Jasper Tathlum",
        head        = "Maat's Cap",
        neck        = "Fylgja Torque +1",
        left_ear    = "Roundel Earring",
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
		-- *** SETS FOR OFFENSIVE SPELLS***
	
	-- intelligence set for dark enfeebling magic
	
	sets.int		= {
        ranged		= "Aureole",
		head		= "Sorcerer's Petasos +1",
		neck		= "Lmg. Medallion +1",
		body		= "Wizard's Coat +1",
		hands		= "Bricta's Cuffs",
		legs		= "Genie Lappas",
		feet		= "Goliard Clogs",
		neck		= "Enfeebling Torque",
		waist		= "Witch Sash",
		left_ear	= "Incubus Earring +1",
		right_ear	= "Incubus Earring +1",
		left_ring	= "Galdr Ring",
		right_ring	= "Omega Ring",
		back		= "Altruistic Cape"
	}
	
	-- mind set for white enfeebling magic
	sets.mnd		= {
		ranged		= "Aureole",
		head		= "Sorcerer's Petasos +1",
		neck		= "Gnole Torque",
		body		= "Wizard's Coat +1",
		hands		= "Bricta's Cuffs",
		legs		= "Genie Lappas",
		feet		= "Goliard Clogs",
		neck		= "Enfeebling Torque",
		waist		= "Witch Sash",
		left_ear	= "Incubus Earring +1",
		right_ear	= "Incubus Earring +1",
		left_ring	= "Celestial Ring",
		right_ring	= "Omega Ring",
		back		= "Altruistic Cape"
	}
    
    -- Elemental magic accuracy set
    sets.ElementalAccuracy = {
		ranged		= "Aureole",
        head        = "Sorcerer's Petasos +1",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Incubus Earring +1",
        right_ear   = "Incubus Earring +1",
        body        = "Oracle's Robe",
        hands       = "Wizard's Gloves",
        waist       = "Witch Sash",
        left_ring	= "Galdr Ring",
		right_ring  = "Omega Ring",
        back        = "Merciful Cape",
        legs        = "Valkyrie's Trews",
        feet        = "Shrewd Pumps"
    }
  
     -- Elemental magic damage set
    sets.ElementalDamage = {
		-- ammo		= "Phantom Tathlum",
        head        = "Maat's Cap",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
        body        = "Genie Weskit",
        hands       = "Zenith Mitts +1",
        waist       = "Witch Sash",        
        back        = "Ixion Cape",
		left_ring 	= "Galdr Ring",
		right_ring	= "Omniscient Ring +1",
        legs        = "Valkyrie's Trews",
        feet        = "Shrewd Pumps"
    }
    
    -- Elemental Debuffs prioritizes INT
    sets.elementalDebuff   ={ 
		ranged		= "Aureole",
		head		= "Maat's Cap",
		body		= "Mahatma Hpl.",
		neck		= "Lmg. Medallion +1",
		hands		= "Mahatma Cuffs",
		legs		= "Mahatma Slops",
		feet		= "Goliard Clogs",
		waist		= "Witch Sash",
		left_ear	= "Omn. Earring +1",
		right_ear	= "Omn. Earring +1",
		left_ring	= "Galdr Ring",
		right_ring	= "Omega Ring",
		back		= "Ixion Cape",
	}
    
    -- prioritize skill and haste for Enhancing Magic (while subbing WHM)
    
    sets.enhancing  = {
		-- ammo		= "Jasper Tathlum",
        head        = "Walahra Turban",
        neck        = "Enhancing Torque",
        left_ear    = "Augment. Earring",
        right_ear   = "Celestial Earring",
        body        = "Mahatma Hpl.",
        hands       = "Bricta's Cuffs",
        right_ring  = "Celestial Ring",
        left_ring   = "Celestial Ring",
        back        = "Merciful Cape",
        waist       = "Ninurta's Sash",
        legs        = "Mahatma Slops",
        feet        = "Genie Huaraches"
    }
    
    -- stack MND for Stoneskin potency
    
    sets.enhancing.stoneskin    = {
        head        = "Maat's Cap",
        body        = "Mahatma Hpl.",
        hands       = "Bricta's Cuffs",
        neck        = "Stone Gorget",
        left_ear    = "Celestial Earring",
        right_ear   = "Celestial Earring",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Dew Silk Cape +1",
        waist       = "Pythia Sash +1",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
    }     
    
    -- dark magic set prioritizes dark skill + INT
    sets.dark       = {
		-- ammo		= "Phantom Tathlum",
        head        = "Ree's Headgear",
        neck        = "Dark Torque",
        left_ear    = "Dark Earring",
		right_ear   = "Abyssal Earring",
        body        = "Nashira Manteel",
		hands		= "Sorcerer's Gloves +1",
        back        = "Merciful Cape",
		waist		= "Crimson Belt",
        legs        = "Wizard's Tonban",
        feet        = "Genie Huaraches"
    }
    
         -- Divine magic damage set
    sets.divdamage = {
		-- ammo        = "Jasper Tathlum",
        head        = "Maat's Cap",
		neck		= "Gnole Torque",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
        body        = "Mahatma Hpl.",
        hands       = "Zenith Mitts +1",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Hecate's Cape",
		waist       = "Pythia Sash +1",
        legs        = "Mahatma Slops",
        feet        = "Shrewd Pumps"
    }
 
     -- Divine magic accuracy set
    sets.divaccuracy = {
		ranged      = "Aureole",
        head        = "Maat's Cap",
		neck		= "Divine Torque",
        left_ear    = "Divine Earring",
		right_ear   = "Celestial Earring",
        body        = "Goliard Saio",
        hands       = "Bricta's Cuffs",
		left_ring   = "Celestial Ring",
        right_ring  = "Omega Ring",
        back        = "Prism Cape",
		waist       = "Witch Sash",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
    }
        
    -- *** WEAPON SKILL SETS ***
    
    sets.ws         = {
		-- ammo		= "Phantom Tathlum",
		head		= "Optical Hat",
		body		= "Hydra Doublet",
		hands		= "Hydra Gloves",
		legs		= "Hydra Brais",
		feet		= "Hydra Gaiters",
		neck		= "Fotia Gorget",
		waist		= "Virtuoso Belt",
		left_ear	= "Pixie Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Mars's Ring",
		right_ring	= "Defending Ring",
		back		= "Umbra Cape",
    }
    
    sets.ws.gate = { -- INT 80%
		-- ammo		= "Phantom Tathlum",
		head		= "Optical Hat",
		body		= "Hydra Doublet",
		hands		= "Hydra Gloves",
		legs		= "Hydra Brais",
		feet		= "Hydra Gaiters",
		neck		= "Fotia Gorget",
		waist		= "Virtuoso Belt",
		left_ear	= "Pixie Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Toreador's Ring",
		right_ring	= "Defending Ring",
		back		= "Umbra Cape",
    }
    
    sets.yellow = {
        head        = "Zenith Crown +1",
        body        = "Dalmatica +1",
        hands       = "Zenith Mitts +1",
        right_ring  = "Serket Ring",
        legs        = "Zenith Slacks +1",
        feet        = "Zenith Pumps +1"
    }
    
	initializeNakedHPMP()
	
	end
	
	
--[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]

function initializeNakedHPMP() -- magic numbers because the HP/MP % checks for latents aren't coded properly on topaz. It uses naked HP/MP, no gear, no food, no max HP/MP boost traits, but it does include HP and MP merits. Others will have to figure out these values for themselves for their own character.
    if player.sub_job == 'RDM' then
        nakedHP = 792
        nakedMP = 878
    elseif player.sub_job == 'WHM' then
        nakedHP = 774
        nakedMP = 897
    elseif player.sub_job == 'SCH' then
        nakedHP = 774
        nakedMP = 888
    else
        nakedHP = 822
        nakedMP = 819
    end
end
 
 -- equip our idle set
 function equip_idle()
    equip(sets.idle,sets.staff)
    windower.add_to_chat(8,'[Black Mage - Idle]')
	if player.hpp <= 75 then
		if world.time <= 1080 and world.time >= 360 then 
			windower.add_to_chat(8,'[Daylight Bonus Regen]')
			equip(sets.dayregen)
		else
			windower.add_to_chat(8,'[Regen Set]')
			equip(sets.idle,sets.regen)
		end
    end
    if defmode == "magical" then
        equip(sets.mdef)
    end
end

-- equip our engaged set
function equip_engaged()
    windower.add_to_chat(8,'[Engaged]')
    equip(sets.engaged)
    if ev == true then  
        windower.add_to_chat(8,'[Max Evasion]')
        equip(sets.evasion)
    end
    if defmode == "magical" then
        equip(sets.mdef)
    end
	if world.time <= 1080 and world.time >= 360 then 
		windower.add_to_chat(8,'[Daylight Attack Bonus]')
		equip({left_ear="Fenrir's Earring"})
    end
end

-- equip appropriate Weapon Skill set

function equip_ws(name)
	if name == "Gate of Tartarus" then
		equip(sets.ws.gate)
	else
		equip(sets.ws)
	end
    if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({left_ear="Fenrir's Earring"})
    end
end

 -- equip our hMP set when resting
 function equip_rest()
     windower.add_to_chat(8,'[Resting]')
    equip(sets.HPMP,sets.staff,{sub="Raptor Strap +1"})
end

-- pick between our idle set and engaged set, depending on
-- whether we're currently engaged with a mob.
function choose_set()
    if player.status == "Engaged" then
        equip_engaged()
    else
        equip_idle()
    end
 end
 

 
 --[[ ******************************************************
  Casting functions - these functions run automatically when
 we cast a spell, use a job ability, rest for MP, and so on
****************************************************** --]]
 
 -- the precast function runs automatically BEFORE we
 -- begin casting a spell or job ability.
 function precast(spell)
 if spell.action_type == 'Magic' then
	
		-- Cancel magic when it is not up yet
		local spell_recasts = windower.ffxi.get_spell_recasts()
		if spell_recasts[spell.recast_id] > 60 then -- 1s margin
			add_to_chat(167,spell.english .. ' is still on cooldown!')
			cancel_spell()
		else

			-- Fast cast for all spells	
			equip(sets.fc)	
		
			-- Cancel status effects for spells that don't overwrite themselves
			if spell.name == "Sneak" then send_command("cancel sneak") end
			if spell.name == "Stoneskin" then send_command("wait 4;cancel stoneskin") end
			if spell.name == "Reraise" then send_command("cancel reraise") end
			if spell.name == "Blink" then send_command("wait 4;cancel blink") end
			if spell.name == "Aquaveil" then send_command("wait 4;cancel aquaveil") end
		end		
    end
	-- Abilities	
	if spell.type == 'WeaponSkill' then
        equip_ws(spell)        
    end
end
 
-- Midcast is for all Magic Spells
 function midcast(spell)
    if spell.skill == 'Enfeebling Magic' then
		windower.add_to_chat(8,'[Enf. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        local magictype = get_magic_type(spell)
        if magictype == 'mndEnf' then
            equip(sets.mnd,sets.staff,{sub="Reign Grip"})
        elseif magictype == 'intEnf' then
            equip(sets.int,sets.staff,{sub="Vivid Strap +1"})
        end
    elseif spell.skill == 'Enhancing Magic' then
        windower.add_to_chat(8,'[Enh. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets.enhancing,sets.staff,{sub="Reign Grip"})
        if spell.name == 'Stoneskin' then
            equip(sets.enhancing.stoneskin,{main="Alkalurops",sub="Reign Grip"})
        end
    elseif spell.skill == 'Healing Magic' then
        equip(sets.healing,sets.staff,{sub="Reign Grip"})
        windower.add_to_chat(8,'[Healing Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
    elseif spell.skill == 'Elemental Magic' then
        local magictype = get_magic_type(spell)
        if magictype == "elementalDebuff" then
            equip(sets[magictype],sets.staff,{sub="Wise Strap"})
        else
            equip(sets[magicmode],sets.staff,{sub="Wise Strap"})
        end
        windower.add_to_chat(8,'[Ele. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip_nuke(spell)
		if player.hp < math.floor(nakedHP * 0.76) then
			windower.add_to_chat(8,'[Sorc. Ring MAB]')
			equip({ring2="Sorcerer's Ring"})
		end
    elseif spell.skill == 'Dark Magic' then
        equip(sets.dark,sets.staff,{sub="Dark Grip"})
        windower.add_to_chat(8,'[Dark Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip_dark(spell)
    end
 end
 
 -- equip nuke sets, with considerations for Uggalepih Pendant and Hachirin-no-Obi
 
 function equip_nuke(spell)
    if spell.element == world.day_element then
        equip({waist="Hachirin-no-Obi"})
        if spell.element == world.weather_element then
            add_to_chat(8,'[Matching Day + Weather]')
        else
            add_to_chat(8,'[Matching Day]')
        end
    elseif spell.element == world.weather_element then  
        add_to_chat(8,'[Matching Weather]')
        equip({waist="Hachirin-no-Obi"})
    end
    if player.mp < math.floor(nakedMP * 0.5) + math.floor(spell.mp_cost * 0.75) then
            windower.add_to_chat(8,'[Uggalepih Pendant boost]')
            equip({neck="Uggalepih Pendant"})
    end
    -- if spell.element == 'Ice' then
    --    windower.add_to_chat(8,"[Ice Magic - Aquilo's Staff]")
    --    equip({main="Aquilo's Staff"})
    -- end
    if spell.english == 'Flash' then
        windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
        equip(sets.divaccuracy)
    end
 end
 
 -- equip dark sets, considerations for Diabolos's Ring for Dark Magic, 
 -- Diabolos's Pole for Drain/Aspir during Dark Weather, and Thunder Grip for Stun
 function equip_dark(spell)
    if spell.element == world.day_element then
        equip({waist="Hachirin-no-Obi"})
        if spell.element == world.weather_element then
            equip({right_ring="Diabolos's Ring"})
            add_to_chat(8,'[Matching Day + Weather]')
        else
            add_to_chat(8,'[Matching Day]')
        end
    elseif spell.element == world.weather_element then  
        add_to_chat(8,'[Matching Weather]')
        equip({waist="Hachirin-no-Obi",right_ring="Diabolos's Ring"})
    end
    if spell.english:contains('Bio') then
        if player.mp < math.floor(nakedMP * 0.5) + math.floor(spell.mp_cost * 0.75) then
            windower.add_to_chat(8,'[Uggalepih Pendant boost]')
            equip({neck="Uggalepih Pendant"})
        end
    end
    if spell.english == 'Drain' or spell.english == 'Aspir' then
		equip({left_ear="Hirudinea Earring"})
        if spell.element == world.weather_element then
            windower.add_to_chat(8,"[Diabolos's Pole enhanced effect]")
            equip({main="Diabolos's Pole"})
        end
    end
    if spell.name == 'Stun' then
        windower.add_to_chat(8,"[Stun - using Thunder Grip]")
        equip({sub="Thunder Grip"})
    end
 end
 
 -- when we're done with our spell or ability, return to either
 -- our idle or engaged gear.
 function aftercast(spell)
	-- equip(sets.yellow)
    choose_set()
end

-- Get enfeebling magic type to determine mind or int set used
function get_magic_type(spell)
    if mndEnfMagic:contains(spell.english) then
        return 'mndEnf'
    else
        return 'intEnf'
    end
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

function setup_job()
    elementalMagic = S{
        'Stone','Water','Aero','Fire','Blizzard','Thunder',
        'Stone II','Water II','Aero II','Fire II','Blizzard II','Thunder II',
        'Stone III','Water III','Aero III','Fire III','Blizzard III','Thunder III',
		'Stone IV', 'Water IV', 'Aero IV', 'Fire IV', 'Blizzard IV', 'Thunder IV',
		'Quake', 'Flood', 'Tornado', 'Flare', 'Freeze', 'Burst',
		'Quake II', 'Flood II', 'Tornado II', 'Flare II', 'Freeze II', 'Burst II'}
        
    mndEnfMagic = S{
        'Slow','Silence','Paralyze','Dia','Dia II','Dia III','Diaga','Frazzle','Distract'}
        
    elementalDebuff = S{
        'Frost','Burn','Choke','Shock','Rasp','Drown'}
           
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
-- mode selectors are run by the macro command /console gs c [modename]
-- modes included here are:

-- EVA - equips Evasion Gearsets
-- meleeMode - toggles weaponry and equipment for melee with staff.
-- M+ - cycles Elemental Magic Mode between Damage and Accuracy
-- defmode - toggles normal Red Mage and Magical Defense Mode
-- Y - toggles "yellow" gear to activate Sorcerer's Ring

    if m == "EVA" then
        if ev == false then
            ev = true
            windower.add_to_chat(8,'[Evasion during combat: ON]')
            choose_set()
        else
            ev = false
            windower.add_to_chat(8,'[Evasion during combat: OFF]')
            choose_set()
        end
	elseif m == "meleeMode" then
		if melee == false then
			windower.add_to_chat(8,'[Melee Mode: Active]')
			melee = true
			equip(sets.meleeStaff)
			disable('main','sub','range')
		else
			melee = false
			enable('main','sub','range')
			choose_set()
			windower.add_to_chat(8,'[Melee Mode: Inactive]')
		end
    elseif m == "M+" then
        if magicmode == "ElementalDamage" then
            magicmode = "ElementalAccuracy"
       	 else
			magicmode = "ElementalDamage"
        end
         windower.add_to_chat(8,'[Magic mode: ' .. magicmode .. ']')
    elseif m == "defmode" then
        if defmode == "normal" then
            windower.add_to_chat(8,'[Defense Mode: MDT]')
            defmode = "magical"
            choose_set()
        else
            windower.add_to_chat(8,'[Defense Mode: Normal]')
            defmode = "normal"
            choose_set()
        end
    elseif m == "Y" then
        if yellow == false then
            yellow = true
            windower.add_to_chat(8,"[Activating Yellow HP Down Set]")
            equip(sets.yellow)
        else
            yellow = false
            windower.add_to_chat(8,"[Yellow Set Inactive - Returning to Normal]")
            choose_set()
        end
    end
 end
	
--[[ ******************************************************
  Code that runs once, when we first swap to Black Mage
****************************************************** --]]
 
-- magicmode defaults to Elemental Damage
magicmode = "ElementalDamage"

-- yellow variable set to flag for Yellow Equip
yellow = false
 
-- ev determines whether we should wear our evasion gear in combat
ev = false

-- defmode outlins defensive mode while tank mode is active.
defmode = "normal"

-- Runs the job setup function to populate list of spells 
setup_job()

-- Sets Melee Mode to false by default
melee = false
 
 -- Send default text commands to Windower

--Set Macro Book
 send_command('input /macro book 4; wait 0.1; input /macro set 1')
-- Puts on lockstyle set, lockstyle it, then switch to idle
 send_command('wait 1; input /lockstyleset 4; wait 1; gs equip idle; wait 1; gs equip staff')
 send_command('input //dp magic; wait 1; input //dp height')
	windower.add_to_chat(8,'[Magic Casting Mode: ' .. magicmode .. ']')
    windower.add_to_chat(8,'[Defense Mode: ' .. defmode .. ']')
	windower.add_to_chat(8,'[Melee Mode: Inactive]')