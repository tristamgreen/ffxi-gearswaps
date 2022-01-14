--[[*********************************************
Tristamgreen SCH Remix - 2021
********************************************* --]]
 
 -- Update Notes
 -- Apr. 20 2021 - As above, so below.  Lessons learned from BLM lua inserted here
 -- v1.2 Apr 20 2021 - added handlers for Argute M.board +1/Scholar's Loafers
 
 --[[ **********
  Gearsets 
************ --]]
 
 function get_sets()
 
    -- idle sets 
	
	-- Generic Idle
    -- prioritize Regen and Refresh with Evasion
	sets.idle		= {
		ranged		= "Aureole",
        head        = "",
        neck        = "Orochi Nodowa +1",
        left_ear    = "Ethereal Earring",
        right_ear   = "Novia Earring",
        body        = "Ixion Cloak",
        hands       = "Mahatma Cuffs",
        left_ring   = "Shadow Ring",
        right_ring  = "Patronus Ring",
        back        = "Umbra Cape",
        waist       = "Resolute Belt",
        legs        = "Goliard Trews",
        feet        = "Herald's Gaiters"
	}
	
	sets.sublimation = {
		sub			= "Raptor Strap +1",
		ammo		= "Verthandi's Gem",
		head		= "Scholar's Mortarboard +1",
		neck		= "Bloodbead Gorget",
		left_ear	= "Bloodbead Earring",
		right_ear	= "Harmonius Earring",
		body		= "Argute Gown +1",
		hands		= "Creek M Mitts",
		waist		= "Steppe Sash",
		left_ring	= "Bomb Queen Ring",
		right_ring	= "Bloodbead Ring",
		legs		= "Argute Pants +1",
		feet		= "Creek M Clomps",
        back        = "Gigant Mantle"
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
		sub			= "Pole Grip"
	})
	
	-- terra's staff for damage mitigation
	sets.terra		= {
		main		= "Terra's Staff",
		sub			= "Raptor Strap +1"
	}
    
    -- combat sets
    
    -- max evasion set, toggled by macro /console gs c eva
    sets.evasion 	= {
        sub         = "Raptor Strap +1",
        head        = "Hydra Beret",
        neck        = "Evasion Torque",
        left_ear    = "Novia Earring",
        right_ear   = "Ethereal Earring",
        body        = "Hydra Doublet",
        hands       = "Bricta's Cuffs",
        left_ring   = "Patronus Ring",
        right_ring  = "Shadow Ring",
        back        = "Shadow Mantle",
        waist       = "Resolute Belt",
        legs        = "Hydra Brais",
        feet        = "Herald's Gaiters"
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
		right_ring	= "Toreador's Ring",
		back		= "Umbra Cape",
	}
    
    -- magic defense set
    -- toggled via macro /console gs c defmode
    
    sets.mdef       = {
        head        = "Goliard Chapeau",
        body        = "Argute Gown +1",
        hands       = "Goliard Cuffs",
        legs        = "Goliard Trews",
        feet        = "Goliard Clogs",
        left_ear    = "Merman's Earring",
        right_ear   = "Merman's Earring",
        left_ring   = "Merman's Ring",
        right_ring  = "Merman's Ring"
    }
	
	sets.HPMP 	    = {
        sub         = "Raptor Strap +1",
        neck        = "Grandiose Chain",
        left_ear    = "Relaxing Earring",
        right_ear   = "Sanative Earring",
		head		= "Hydra Beret",
        body        = "Mahatma Hpl.",
        hands       = "Hydra Gloves",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Invigorating Cape",
        waist       = "Qiqirn Sash +1",
        legs        = "Hydra Brais",
        feet        = "Goliard Clogs"
    }
	
     -- fast cast set 
    sets.fc         = {
        sub         = "Vivid Strap +1",
		feet        = "Rostrum Pumps",
        waist       = "Ninurta's Sash",
		left_ear    = "Loquacious Earring",
        back        = "Veela Cape",
    }
	
	-- Grimoire Set for matching Arts recast/casting time bonus
	sets.grimoire = {
		head		= "Argute Mortarboard +1",
		feet		= "Scholar's Loafers"
	}
	
	-- Haste set
    -- used basically for Utsusemi only
	sets.haste		= {
        head        = "Walahra Turban",
        left_ear    = "Loquacious Earring",
        body        = "Goliard Saio",
        waist       = "Ninurta's Sash",
    }
    
        -- *** Enhancing and Healing Sets ***
    
    -- Healing Magic Potency set
    sets.healing	= {
        head        = "Maat's Cap",
        neck        = "Fylgja Torque +1",
        left_ear    = "Roundel Earring",
        right_ear   = "Celestial Earring",
        body        = "Mahatma Hpl.",
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
	
	sets.int		= {
        sub         = "Dark Grip",
        head        = "Elite Beret +1",
        neck        = "Enfeebling Torque",
        left_ear    = "Enfeebling Earring",
		right_ear   = "Abyssal Earring",
        body        = "Scholar's Gown +1",
        hands       = "Argute Bracers +1",
		left_ring   = "Galdr Ring",
        right_ring  = "Omega Ring",
        back        = "Altruistic Cape",
		waist       = "Argute Belt",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
	}
	
	-- mind set for white enfeebling magic
	sets.mnd		= {
        sub         = "Reign Grip",
        head        = "Maat's Cap",
        neck        = "Gnole Torque",
        left_ear    = "Celestial Earring",
		right_ear   = "Celestial Earring",
        body        = "Mahatma Hpl.",
        hands       = "Argute Bracers +1",
		left_ring   = "Celestial Ring",
        right_ring  = "Omega Ring",
        back        = "Altruistic Cape",
		waist       = "Argute Belt",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
	}
    
    -- Elemental magic accuracy set
    sets.ElementalAccuracy = {
        sub         = "Vivid Strap +1",
        head        = "Argute M.board +1",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Incubus Earring +1",
		right_ear   = "Incubus Earring +1",
        body        = "Goliard Saio",
        hands       = "Bricta's Cuffs",
		left_ring   = "Galdr Ring",
        right_ring  = "Omega Ring",
        back        = "Merciful Cape",
		waist       = "Argute Belt",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
    }
  
     -- Elemental magic damage set
    sets.ElementalDamage = {
        sub         = "Wise Strap",
        head        = "Maat's Cap",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
        body        = "Mahatma Hpl.",
        hands       = "Goliard Cuffs",
		left_ring   = "Galdr Ring",
        right_ring  = "Omn. Ring +1",
        back        = "Hecate's Cape",
		waist       = "Argute Belt",
        legs        = "Mahatma Slops",
        feet        = "Shrewd Pumps"
    }
    
    -- Helix set 	
    sets.helix = {
        main        = "Claustrum",
        sub         = "Vivid Strap +1",
        head        = "Argute Mortarboard +1",
		neck		= "Lmg. Medallion +1",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
		body		= "Mahatma Hpl.",
		hands       = "Goliard Cuffs",
		left_ring   = "Galdr Ring",
        right_ring  = "Omn. Ring +1",
        back        = "Hecate's Cape",
		waist       = "Argute Belt",
        legs        = "Mahatma Slops",
        feet        = "Shrewd Pumps"
    }
    
    -- prioritize skill and haste for Enhancing Magic (while subbing WHM)
    
    sets.enhancing  = {
		sub         = "Reign Grip",
        head        = "Walahra Turban",
        neck        = "Enhancing Torque",
        left_ear    = "Augmenting Earring",
        right_ear   = "Celestial Earring",
        body        = "Argute Gown +1",
        hands       = "Bricta's Cuffs",
        left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Merciful Cape",
        waist       = "Ninurta's Sash",
        legs        = "Goliard Trews",
        feet        = "Goliard Clogs"
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
        head        = "Ree's Headgear",
        neck        = "Dark Torque",
        left_ear    = "Dark Earring",
		right_ear   = "Abyssal Earring",
        body        = "Scholar's Gown +1",
		hands		= "Bricta's Cuffs",
		ring1		= "Galdr Ring",
		ring2		= "Omega Ring",
        back        = "Merciful Cape",
		waist		= "Crimson Belt",
        legs        = "Argute Pants +1",
        feet        = "Scholar's Loafers"
    }
    

        
    -- *** WEAPON SKILL SETS ***
    
    sets.ws         = {
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
    
    sets.ws.gate = { -- INT 80%
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
	
	initializeNakedHPMP()
	
end
	
--[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
 function initializeNakedHPMP() -- magic numbers because the HP/MP % checks for latents aren't coded properly on topaz. It uses naked HP/MP, no gear, no food, no max HP/MP boost traits, but it does include HP and MP merits. Others will have to figure out these values for themselves for their own character.
    if player.sub_job == 'RDM' then
        nakedHP = 853
        nakedMP = 766
    elseif player.sub_job == 'DRK' then
        nakedHP = 876
        nakedMP = 728
    else
        nakedHP = 883
        nakedMP = 707
    end
end
 
 -- equip our idle set
 function equip_idle()
    equip(sets.idle,sets.staff)
    windower.add_to_chat(8,'[Scholar - Idle]')
    if world.time <= 1080 and world.time >= 360 then 
		windower.add_to_chat(8,'[Daylight Bonus Regen]')
		equip(sets.dayregen)
    end
	if buffactive ['Sublimation: Activated'] then
		equip_sublimation()
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
	if buffactive ['Sublimation: Activated'] then
		equip_sublimation()
	else 
		equip(sets.HPMP)
	end
	equip(sets.staff)
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
 
 function equip_sublimation()
	windower.add_to_chat(8,"[Scholar Super-Charging Sublimation]")
	equip(sets.sublimation,sets.staff)
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
	if spell.skill == 'Enfeebling Magic' then
        local magictype = get_magic_type(spell)
        if magictype == 'mndEnf' then
			if buffactive['Light Arts'] then
				equip(sets.grimoire)
			end
        elseif magictype == 'intEnf' then
			if buffactive['Dark Arts'] then
				equip(sets.grimoire)
			end
        end
		
    elseif spell.skill == 'Enhancing Magic' or spell.skill == 'Healing Magic' then
		if buffactive['Light Arts'] then
			equip(sets.grimoire)
		end
		
    elseif spell.skill == 'Elemental Magic' or spell.skill == 'Dark Magic' then
		if buffactive['Dark Arts'] then
			equip(sets.grimoire)
		end
	end

	-- Abilities	
	if spell.type == 'WeaponSkill' then
        equip_ws(spell)        
    end
	
	if spell.name == 'Sublimation' then
		equip(sets.sublimation)
	end
end
 
-- Midcast is for all Magic Spells
 function midcast(spell)
    if spell.skill == 'Enfeebling Magic' then
        local magictype = get_magic_type(spell)
		windower.add_to_chat(8,'[Enf. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        if magictype == 'mndEnf' then
            equip(sets.mnd,sets.staff,{sub="Reign Grip"})
			if buffactive['Light Arts'] then
				equip({legs="Scholar's Pants +1"})
			end
        elseif magictype == 'intEnf' then
            equip(sets.int,sets.staff,{sub="Vivid Strap +1"})
			if buffactive['Dark Arts'] then
				equip({body="Scholar's Gown +1"})
			end
        end
		
    elseif spell.skill == 'Enhancing Magic' then
        windower.add_to_chat(8,'[Enh. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip(sets.enhancing,sets.staff,{sub="Reign Grip"})
		if buffactive['Light Arts'] then
			equip({legs="Scholar's Pants +1"})
		end
        if spell.name == 'Stoneskin' then
            equip(sets.enhancing.stoneskin,{main="Alkalurops",sub="Reign Grip"})
        end
		
    elseif spell.skill == 'Healing Magic' then
        equip(sets.healing,sets.staff,{sub="Reign Grip"})
        windower.add_to_chat(8,'[Healing Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
		if buffactive['Light Arts'] then
			equip({legs="Scholar's Pants +1"})
		end
		
    elseif spell.skill == 'Elemental Magic' then
        local magictype = get_magic_type(spell)
        if magictype == "helix" then
            equip(sets[magictype],sets.staff,{sub="Vivid Strap +1"})
        else
            equip(sets[magicmode],sets.staff,{sub="Wise Strap"})
        end
        windower.add_to_chat(8,'[Ele. Magic - ' .. spell.english .. ' - MP: ' .. player.mp .. ' / '.. player.mpp .. '%]')
        equip_nuke(spell)
		
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
	-- if buffactive['Dark Arts'] then
	--		equip({body="Scholar's Gown +1"})
	-- end
    if spell.english == 'Flash' then
        windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
        equip(sets.divaccuracy)
		if buffactive['Light Arts'] then
			equip({legs="Scholar's Pants +1"})
		end
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
	if buffactive['Dark Arts'] then
		equip({body="Scholar's Gown +1"})
	end
 end
 
 -- when we're done with our spell or ability, return to either
 -- our idle or engaged gear.
 -- also check if Sublimation is needed upon finishing casting.
 function aftercast(spell)
 	if buffactive ['Sublimation: Complete'] and player.mp <= 500 then
		send_command('wait 2;input /echo • • • • • MP is getting low, using Sublimation! • • • • •;wait 2;input /ja Sublimation <me>;wait 2')
	end
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
		'Stone IV', 'Water IV', 'Aero IV', 'Fire IV', 'Blizzard IV', 'Thunder IV'}
        
    mndEnfMagic = S{
        'Slow','Silence','Paralyze','Dia','Dia II','Dia III','Diaga','Frazzle','Distract'}
        
    helix = S{
        'Geohelix', 'Hydrohelix', 'Anemohelix', 'Pyrohelix', 'Cryohelix', 'Ionohelix', 'Noctohelix', 'Luminohelix'}
		
	storm = S{
        'Firestorm','Rainstorm','Windstorm','Hailstorm','Thunderstorm','Sandstorm','Aurorastorm','Voidstorm'}
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
    end
 end
	
--[[ ******************************************************
  Code that runs once, when we first swap to Scholar
****************************************************** --]]
 
-- magicmode defaults to Elemental Damage
magicmode = "ElementalDamage"
 
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
 send_command('input /macro book 20; wait 0.1; input /macro set 1')
-- Puts on lockstyle set, lockstyle it, then switch to idle
 send_command('wait 1; input /lockstyleset 20; wait 1; gs equip idle; wait 1; gs equip staff')
 send_command('input //dp magic; wait 1; input //dp height')
	windower.add_to_chat(8,'[Magic Casting Mode: ' .. magicmode .. ']')
    windower.add_to_chat(8,'[Defense Mode: ' .. defmode .. ']')
	windower.add_to_chat(8,'[Melee Mode: Inactive]')