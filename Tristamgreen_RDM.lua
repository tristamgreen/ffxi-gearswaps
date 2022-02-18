--[[*********************************************
Tristamgreen RDM Remix - 2020
********************************************* --]]
 
 -- Update Notes
 -- Sep. 30 2020 - v1.0 - new LUA, based on lessons learned from Red Mage
 
 --[[ **********
  Gearsets 
************ --]]
 
 function get_sets()
 
    -- idle sets 
	
	-- Generic Idle
    -- prioritize Regen and Refresh with Evasion
	sets.idle		= {
		ranged		= "Aureole",
		head		= "Dls. Chapeau +1",
		body		= "Dalmatica +1",
		hands		= "Duelist's Gloves +1",
		legs		= "Blood Cuisses",
		feet		= "Goliard Clogs",
		neck		= "Beguiling Collar",
		waist		= "Steppe Sash",
		left_ear	= "Novia Earring",
		right_ear	= "Triton Earring",
		left_ring	= "Shadow Ring",
		right_ring	= "Patronus Ring",
		back		= "Umbra Cape"
	}
	
	-- terra's staff for damage mitigation
	sets.terra		= {
		main		= "Terra's Staff",
		sub			= "Magic Strap"
	}
    
	sets.regen		= {
		neck		= "Orochi Nodowa +1"
	}			
	
    -- Daylight Regen set
	sets.dayregen	= {
		hands		= "Feronia's Bangles",
		waist		= "Lycopodium Sash"
	}
    
    -- combat sets
    
    -- max evasion set, toggled by macro /console gs c eva
    sets.evasion 	= {
        head        = "Wivre Mask +1",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        body        = "Scp. Harness +1",
        hands       = "Hydra Gloves",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Scouter's Rope",
        legs        = "Hydra Brais",
        feet        = "Hydra Gaiters"
    }
    
    -- generic engaged set prioritizes haste and accuracy
    
	sets.engaged    = {    
		head		= "Walahra Turban",
		body		= "Hydra Doublet",
		hands		= "Dusk Gloves +1",
		legs		= "Goliard Trews",
		feet		= "Dusk Ledelsens +1",
		neck		= "Peacock Amulet",
		waist		= "Ninurta's Sash",
		left_ear	= "Brutal Earring",
		right_ear	= "Merman's Earring",
		right_ring	= "Rajas Ring",
		left_ring	= "Toreador's Ring",
		back		= "Cuchulain's Mantle"
	}
    
    -- **** STAFF SETS ****
   
	sets.staff		= {
		main		= "Chatoyant Staff"
	}
    
    sets.staff.engaged = 
        set_combine(
        sets.staff,{
        sub         = "Pole Grip"
    })
    
    -- **** SWORD SETS ****
    -- specific weapon sets.  toggled via macro
    -- "Mode Switch" macro is /console gs c mode
    
    -- base sword set
    
	--Dual-Wield Set
    
    sets.sword      = {
        main        = "Excalibur"
    }
    
	sets.sword.dualwield = 
        set_combine(
        sets.sword,{
		sub			= "Mandau"
	})
    
    sets.sword.shield =
        set_combine(
        sets.sword,{
        sub         = "Genbu's Shield"
	})
    
	-- Tank Set - Maximize Defense, Enmity
    -- toggled by macro /console gs c tank
	sets.tank       = {
		head		= "Wivre Mask +1",
		body		= "Blood Scale Mail",
		hands		= "Dusk Gloves +1",
		legs		= "Goliard Trews",
		feet		= "Dusk Ledelsens +1",
		neck		= "Harmonia's Torque",
		waist		= "Trance Belt",
		left_ear	= "Brutal Earring",
		right_ear	= "Merman's Earring",
		left_ring	= "Shadow Ring",
		right_ring	= "Patronus Ring",
		back		= "Shadow Mantle"
	}
    
    -- magic defense set
    -- toggled via macro /console gs c defmode
    
    sets.mdef       = {
        hands       = "Dls. Gloves +1",
        left_ear    = "Merman's Earring",
        right_ear   = "Merman's Earring",
        left_ring   = "Merman's Ring",
        right_ring  = "Merman's Ring",
		back		= "Lamia Mantle +1"
    }
	
	sets.HPMP 	    = {
        main		= "Imperial Wand",
		sub			= "Legion Scutum",
		head		= "Mirror Tiara",
		body		= "Mahatma Hpl.",
		hands		= "Hydra Gloves",
		legs		= "Hydra Brais",
		feet		= "Numerist Pumps",
		neck		= "Grandiose Chain",
		waist		= "Duelist's Belt",
		left_ear	= "Relaxing Earring",
		right_ear	= "Antivenom Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Invigorating Cape"
    }
	
     -- fast cast set 
    sets.fc         = {
		head        = "Wlk. Chapeau +1",
		body        = "Duelist's Tabard +1",
        waist       = "Ninurta's Sash",
		left_ear    = "Loquacious Earring",
        back        = "Veela Cape"
    }
	
	-- Haste set
    -- used basically for Utsusemi only
	sets.haste		= {
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
		ranged		= "Aureole",
        head        = "Maat's Cap",
        neck        = "Fylgja Torque +1",
        left_ear    = "Roundel Earring",
        right_ear   = "Celestial Earring",
        body        = "Blood Scale Mail",
        hands       = "Bricta's Cuffs",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Dew Silk Cape +1",
        waist       = "Pythia Sash +1",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
    }
		-- *** SETS FOR OFFENSIVE SPELLS***
	
	-- intelligence set for dark enfeebling magic
	
	sets.enfeebling_int	= {
        main        = "Chatoyant Staff",
        sub         = "Vivid Strap +1",
        ranged		= "Aureole",
		head		= "Dls. Chapeau +1",
		body		= "Wlk. Tabard +1",
		hands		= "Bricta's Cuffs",
		legs		= "Nashira Seraweels",
		feet		= "Goliard Clogs",
		neck		= "Enfeebling Torque",
		waist		= "Witch Sash",
		left_ear	= "Incubus Earring +1",
		right_ear	= "Incubus Earring +1",
		left_ring	= "Galdr Ring",
		right_ring	= "Omega Ring",
		back		= "Altruistic Cape"
	}
	
	sets.enfeebling_intpot	= {
        main        = "Alkalurops",
        sub         = "Vivid Strap +1",
		ranged		= "Aureole",
		head		= "Dls. Chapeau +1",
		body		= "Mahatma Hpl.",
		hands		= "Bricta's Cuffs",
		legs		= "Mahatma Slops",
		feet		= "Goliard Clogs",
		neck		= "Lmg. Medallion +1",
		waist		= "Witch Sash",
		left_ear	= "Omn. Earring +1",
		right_ear	= "Omn. Earring",
		left_ring	= "Galdr Ring",
		right_ring	= "Omn. Ring +1",
		back		= "Prism Cape"
	}
	
	-- mind set for white enfeebling magic
	sets.enfeebling_mnd	= {
        main        = "Chatoyant Staff",
        sub         = "Reign Grip",
		ranged		= "Aureole",
		head		= "Dls. Chapeau +1",
		body		= "Wlk. Tabard +1",
		hands		= "Bricta's Cuffs",
		legs		= "Nashira Seraweels",
		feet		= "Goliard Clogs",
		neck		= "Enfeebling Torque",
		waist		= "Witch Sash",
		left_ear	= "Incubus Earring +1",
		right_ear	= "Incubus Earring +1",
		left_ring	= "Celestial Ring",
		right_ring	= "Omega Ring",
		back		= "Altruistic Cape"
	}
	
	-- mind set for white enfeebling magic
	sets.enfeebling_mndpot	= {
        main        = "Alkalurops",
        sub         = "Reign Grip",
		ranged		= "Aureole",
		head		= "Dls. Chapeau +1",
		body		= "Mahatma Hpl.",
		hands		= "Bricta's Cuffs",
		legs		= "Mahatma Slops",
		feet		= "Goliard Clogs",
		neck		= "Gnole Torque",
		waist		= "Witch Sash",
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Dew Silk Cape +1"
	}
    
    -- Elemental magic accuracy set
    sets.ElementalAccuracy = {
		ranged      = "Aureole",
        head        = "Wlk. Chapeau +1",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Incubus Earring +1",
		right_ear   = "Incubus Earring +1",
        body        = "Blood Scale Mail",
        hands       = "Genie Gages",
		left_ring   = "Galdr Ring",
        right_ring  = "Omega Ring",
        back        = "Merciful Cape",
		waist       = "Witch Sash",
        legs        = "Duelist's Tights +1",
        feet        = "Shrewd Pumps"
    }
  
     -- Elemental magic damage set
    sets.ElementalDamage = {
		ranged		= "Aureole",
        head        = "Maat's Cap",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
        body        = "Blood Scale Mail",
        hands       = "Zenith Mitts +1",
		left_ring   = "Galdr Ring",
        right_ring  = "Omniscient Ring +1",
        back        = "Hecate's Cape",
		waist       = "Witch Sash",
        legs        = "Valkyrie's Trews",
        feet        = "Duelist's Boots +1"
    }
    
    -- prioritize skill and haste for Enhancing Magic (while subbing WHM)
    
    sets.enhancing  = {
        head        = "Walahra Turban",
        neck        = "Enhancing Torque",
        left_ear    = "Augmenting Earring",
        right_ear   = "Celestial Earring",
        body        = "Blood Scale Mail",
        hands       = "Duelist's Gloves +1",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Merciful Cape",
        waist       = "Ninurta's Sash",
        legs        = "Wlk. Tights +1",
        feet        = "Goliard Clogs"
    }

	-- Interrupt down for Blink
	
	sets.enhancing.blink = {
		head		= "Nashira Turban",
		body		= "Warlock's Tabard +1",
		neck        = "Dusk Gloves +1",
		waist       = "Resolute Belt",
		legs	    = "Goliard Trews",
		left_ear	= "Ethereal Earring",		
		right_ear	= "Novia Earring",
		left_ring	= "Merman's Ring",
		right_ring	= "Merman's Ring",
		feet		= "Karasutengu",
		back		= "Umbra Cape",
		neck		= "Beguiling Collar",
		
	}
    
    -- stack MND for Stoneskin potency
    
    sets.enhancing.stoneskin    = {
        head        = "Maat's Cap",
        body        = "Blood Scale Mail",
		hands		= "Stone Mufflers",
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
		ranged		= "Aureole",
		head		= "Nashira Turban",
		body		= "Nashira Manteel",
		hands		= "Blood Fng. Gnt.",
		legs		= "Mahatma Slops",
		feet		= "Goliard Clogs",
		neck		= "Dark Torque",
		waist		= "Crimson Belt",
		left_ear	= "Dark Earring",
		right_ear	= "Abyssal Earring",
		left_ring	= "Galdr Ring",
		right_ring	= "Omega Ring",
		back		= "Merciful Cape"
    }
    
         -- Divine magic damage set
    sets.divdamage = {
        main        = "Chatoyant Staff",
        sub         = "Reign Grip",
		ranged		= "Aureole",
        head        = "Maat's Cap",
		neck		= "Faith Torque",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
        body        = "Mahatma Hpl.",
        hands       = "Zenith Mitts +1",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Hecate's Cape",
		waist       = "Pythia Sash +1",
        legs        = "Mahatma Slops",
        feet        = "Duelist's Boots +1"
    }
 
     -- Divine magic accuracy set
    sets.divaccuracy = {
        main        = "Alkalurops",
        sub         = "Reign Grip",
		ranged      = "Aureole",
        head        = "Maat's Cap",
		neck		= "Divine Torque",
        left_ear    = "Divine Earring",
		right_ear   = "Celestial Earring",
        body        = "Goliard Saio",
        hands       = "Bricta's Cuffs",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Prism Cape",
		waist       = "Witch Sash",
        legs        = "Nashira Seraweels",
        feet        = "Goliard Clogs"
    }
        
    -- *** WEAPON SKILL SETS FOR SWORDS ***
    
    sets.ws         = {}
    
    sets.ws.knights = {
        head        = "Maat's Cap",
        neck        = "Fotia Gorget",
        body        = "Scp. Harness +1",
        hands       = "Hydra Gloves",
        legs        = "Dusk Trousers +1",
        feet        = "Rutter Sabatons",
        back        = "Cerberus Mantle +1",
        left_ear    = "Brutal Earring",
        right_ear   = "Harmonius Earring",
        left_ring   = "Rajas Ring",
        right_ring  = "Harmonius Ring",
        waist       = "Virtuoso Belt"
    }
    
    sets.ws.vorpal  =  {
        sets.ws.knights
    }
    
	initializeNakedHPMP()
	
	end
	
--[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
 function initializeNakedHPMP() -- magic numbers because the HP/MP % checks for latents aren't coded properly on topaz. It uses naked HP/MP, no gear, no food, no max HP/MP boost traits, but it does include HP and MP merits. Others will have to figure out these values for themselves for their own character.
    if player.sub_job == 'WHM' then
        nakedHP = 910
        nakedMP = 775
    elseif player.sub_job == 'BLM' then
        nakedHP = 891
        nakedMP = 794
    elseif player.sub_job == 'SCH' then
        nakedHP = 910
        nakedMP = 776
    else
        nakedHP = 958
        nakedMP = 697
    end
end
 
 -- equip our idle set
 function equip_idle()
    equip(sets.idle)
    windower.add_to_chat(8,'[Red Mage - Idle]')
	if player.hpp <= 95 then
		if world.time <= 1080 and world.time >= 360 then 
			windower.add_to_chat(8,'[Daylight Bonus Regen]')
			equip(sets.idle,sets.regen,sets.dayregen)
		else
			windower.add_to_chat(8,'[Regen Set]')
			equip(sets.idle,sets.regen)
		end
	end
    if mode == "mage" then
        equip(sets.terra)
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
        equip(sets.engaged,sets.evasion)
    elseif mode == "melee" then
        if tank == true then
            equip(sets.sword.shield,sets.tank,{neck="Fortitude Torque"})
        else
            if player.sub_job == "NIN" or player.sub_job == "DNC" then
                equip(sets.sword.dualwield,{neck="Fortitude Torque"})
            else
                equip(sets.sword.shield,{neck="Fortitude Torque"})
            end
        end
        if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({right_ear="Fenrir's Earring"})
		end
        disable('sub','main')
    else 
        equip(sets.staff.engaged,{neck="Temperance Torque"})
        disable('sub','main')
    end
    if defmode == "magical" then
        equip(sets.mdef)
    end
end

-- equip appropriate Weapon Skill set

function equip_ws(name)
	if name == "Knights of Round" then
		equip(sets.ws.knights)
	elseif name == "Vorpal Blade" then
		equip(sets.ws.vorpal)
	end
    if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({left_ear="Fenrir's Earring"})
    end
end
 -- equip our hMP set when resting
 function equip_rest()
     windower.add_to_chat(8,'[Resting]')
    equip(sets.HPMP)
end

-- pick between our idle set and engaged set, depending on
-- whether we're currently engaged with a mob.
function choose_set()
    if mode == "mage" then
        equip(sets.terra)
    elseif mode == "melee" then
        if tank == true then
            equip(sets.sword.shield)
        else
            if player.sub_job == "NIN" or player.sub_job == "DNC" then
                windower.add_to_chat(8,'[Dual Wield Selected]')
                equip(sets.sword.dualwield)
            else
                windower.add_to_chat(8,'[Sword + Shield Selected]')
                equip(sets.sword.shield)
            end
        end
    end
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
            if mode == "mage" then
                equip({sub="Vivid Strap +1"})
            end
		
			-- Cancel status effects for spells that don't overwrite themselves
			if spell.name == "Sneak" then send_command("cancel sneak") end
			if spell.name == "Stoneskin" then send_command("wait 2;cancel stoneskin") end
			if spell.name == "Reraise" then send_command("cancel reraise") end
			if spell.name == "Blink" then send_command("cancel blink") end
			if spell.name == "Aquaveil" then send_command("cancel aquaveil") end

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
		-- windower.add_to_chat(8,'[Enf. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        local magictype = get_magic_type(spell)
        if magictype == 'mndEnf' then
            if mode == 'mage' then
                equip({sub="Reign Grip"})
            end
        elseif magictype == 'intEnf' then
            if mode == 'mage' then
                equip({sub="Vivid Strap +1"})
            end
        end
		equip_enfeebling(spell)
    elseif spell.skill == 'Enhancing Magic' then
        windower.add_to_chat(8,'[Enh. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets.enhancing)
        if mode == 'mage' then
            equip(sets.staff,{sub="Reign Grip"})
        end
        if spell.name == 'Stoneskin' then
            equip(sets.enhancing.stoneskin)
            if mode == 'mage' then
                equip({main="Alkalurops",sub="Reign Grip"})
            end
        end
		if spell.name == 'Blink' then
			equip(sets.enhancing.blink)
			if mode == 'mage' then
			    equip({main="Terra's Staff",sub="Reign Grip"})
			end
		end
        if spell.english:contains('Spikes') then
            equip({legs="Dls. Tights +1"})
        end
    elseif spell.skill == 'Healing Magic' then
        if mode == 'mage' then
            equip({sub="Reign Grip"})
        end
        windower.add_to_chat(8,'[Healing Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets.healing)
    elseif spell.skill == 'Elemental Magic' then 
        if mode == 'mage' then
            equip(sets.staff,{sub="Wise Strap"})
        end
        windower.add_to_chat(8,'[Ele. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets[magicmode])
        equip_nuke(spell)
    elseif spell.skill == 'Dark Magic' then
        if mode == 'mage' then
            equip(sets.staff,{sub="Dark Grip"})
        end
        windower.add_to_chat(8,'[Dark Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets.dark)
        equip_dark(spell)
    elseif spell.skill == 'Divine Magic' then
        if mode == 'mage' then
            equip(sets.staff,{sub="Wise Strap"})
        end
        windower.add_to_chat(8,'[Divine Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets.divdamage)
        equip_nuke(spell)
    elseif spell.english:contains('Utsusemi') then
        windower.add_to_chat(8,'[Utsusemi]')
        equip(sets.haste)
    end
 end
 
 -- equip nuke sets, with considerations for Uggalepih Pendant and Hachirin-no-Obi
 
 function equip_nuke(spell)
    if mode == 'melee' then
        disable('main','sub')
    end
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
    if spell.element == 'Ice' then
        windower.add_to_chat(8,"[Ice Magic - Aquilo's Staff]")
        equip({main="Aquilo's Staff"})
    end
    if spell.english == 'Flash' then
        windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
        equip(sets.divaccuracy)
    end
 end
 
 
 -- equip Enfeebling sets
 -- if potency is active, prioritize potency where applicable
 
 function equip_enfeebling(spell)
	-- Accuracy
	if magictype == 'mndEnf' then		-- MND-based enfeebles
		equip(sets.enfeebling_mnd)
	else
		equip(sets.enfeebling_int)
	end

	-- Potency
	if enfeebPot then
		if magictype == 'mndEnf' then
				equip(sets.enfeebling_mndpot)
		else
			equip(sets.enfeebling_intpot)
		end
	end
	if spell.name:contains('Sleep')
	or spell.name:contains('Blind')
	or spell.name == 'Dispel' then
		equip({sub="Dark Grip"})
	end
 end
 
 
 -- equip dark sets, considerations for Diabolos's Ring for Dark Magic, 
 -- Diabolos's Pole for Drain/Aspir during Dark Weather, and Thunder Grip for Stun
 function equip_dark(spell)
    if mode == 'melee' then
        disable('main','sub')
    end
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
    if player.mp < math.floor(nakedMP * 0.5) + math.floor(spell.mp_cost * 0.75) then
            windower.add_to_chat(8,'[Uggalepih Pendant boost]')
            equip({neck="Uggalepih Pendant"})
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
    enable('main','sub')
    choose_set()
end

-- Get enfeebling magic type to determine mind or int set used
function get_magic_type(spell)
    windower.add_to_chat(8,'[Enf. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
    if mndEnfMagic:contains(spell.english) then
        return 'mndEnf'
    else
        return 'intEnf'
    end
end


-- swap into hMP gear when we /heal, and return to idle gear
-- when we stand up.
function status_change(new,old)
    enable('sub','main')
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
        'Stone III','Water III','Aero III','Fire III','Blizzard III','Thunder III'}
        
    mndEnfMagic = S{
        'Slow','Silence','Paralyze','Dia','Dia II','Dia III','Diaga','Frazzle','Distract'}
        
    swordBuff = S{
        'Enstone', 'Enwater', 'Enaero', 'Enfire', 'Enblizzard', 'Enthunder', 'Endark', 'Enlight'}
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
-- W+ - cycles selected weaponskill between Vorpal Blade and Knights of Round; extensible for others.
-- WS - executes currently selected WS defined in W+
-- EVA - equips Evasion Gearsets
-- M+ - cycles Elemental Magic Mode between Damage and Accuracy
-- enfeebPot - cycles between Enfeebling Potency and Accuracy Modes
-- mode - generic mode that toggles pure mage mode or melee mode for Red Mage
-- tank - toggles sword/shield for Red Mage.  Must be activated when mode is set to MELEE
-- defmode - toggles normal Red Mage and Magical Defense Mode

    if m == "W+" then
        if ws == "Knights of Round" then
			ws = "Vorpal Blade"
        else
			ws = "Knights of Round"
        end
        windower.add_to_chat(222,'[Current WS: ' .. ws .. ']')
    elseif m == "WS" then
        send_command('input /ws "' .. ws .. '" <t>')
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
    elseif m == "M+" then
        if magicmode == "ElementalDamage" then
            magicmode = "ElementalAccuracy"
       	 else
			magicmode = "ElementalDamage"
        end
         windower.add_to_chat(8,'[Magic mode: ' .. magicmode .. ']')
	elseif m == "enfeebPot" then
		if enfeebPot == true then
			enfeebPot = false
			windower.add_to_chat(8,'[Enfeebling Magic Priority: Accuracy]')
		else
			enfeebPot = true
			windower.add_to_chat(8,'[Enfeebling Magic Priority: Potency]')
		end
    elseif m == "mode" then
        if mode == "mage" then
            windower.add_to_chat(8,'[Combat mode: MELEE]')
            mode = "melee"
            choose_set()
        else
            windower.add_to_chat(8,'[Combat mode: MAGE]')
            mode = "mage"
			tank = false
            choose_set()
        end
    elseif m == "tank" then
        if mode == "melee" then
            if tank == false then
                windower.add_to_chat(8,'[Tank mode: ACTIVE]')
                tank = true
                choose_set()
            else
                windower.add_to_chat(8,'[Tank mode: DEACTIVATED]')
                tank = false
                choose_set()
            end
        else
            windower.add_to_chat(8,'[Cannot activate Tank Mode when in Mage Mode.]')
        end
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
    end
 end
	
--[[ ******************************************************
  Code that runs once, when we first swap to Red Mage
****************************************************** --]]
 
-- mode decides if we are melee or mage mode
mode = "mage"
magicmode = "ElementalDamage"
 
-- ev determines whether we should wear our evasion gear in combat
ev = false

-- tank determines if we should go tank mode or dual-wield in melee combat
tank = false

-- defmode outlins defensive mode while tank mode is active.
defmode = "normal"

-- enfeebPot determines whether or not to prioritize Enfeebling Potency or Accuracy
enfeebPot = true
 
-- ws determines which weapon skill we'll use.  Mercy Stroke by default.
ws = "Knights of Round"

-- Runs the job setup function to populate list of spells 
setup_job()
 
 -- Send default text commands to Windower

--Set Macro Book
 send_command('input /macro book 5; wait 0.1; input /macro set 1')
-- Puts on lockstyle set, lockstyle it, then switch to idle
 send_command('wait 1; input /lockstyleset 5; wait 1; gs equip idle')
-- Equip Terra's Staff to begin
 send_command('wait 1; gs equip terra')
 send_command('input //dp magic; wait 1; input //dp height')
	windower.add_to_chat(8,'[Magic Casting Mode: ' .. magicmode .. ']')
    windower.add_to_chat(8,'[Mode Selected: ' .. mode .. ']')