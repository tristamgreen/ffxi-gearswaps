--[[ *************************************************************
 TG's WHM Lua, heavily modified from Wren's original.
************************************************************* --]]
 
 --[[ ******************************************************
  Gearsets - define the various sets of gear we'll wear.
****************************************************** --]]
 
 function get_sets()
 
    -- idle set is worn when we're standing around doing
    -- nothing.  we want auto-refresh, movement, MP
    sets.idle = {        
    
        -- main        = "Mjollnir" -- no Mjollnir yet
        main        = "Brise-os +1",
        sub         = "Genbu's Shield",
        ammo        = "Bibiki Seashell",
        head        = "Optical Hat",
        neck        = "Orochi Nodowa +1",
        ear1        = "Novia Earring",
        ear2        = "Triton Earring",
        body        = "Cleric's Bliaut +1",
        hands       = "Hydra Gloves",
        ring1       = "Shadow Ring",
        ring2       = "Patronus Ring",
        back        = "Shadow Mantle",
        waist       = "Scouter's Rope",
        legs        = "Goliard Trews",
        feet        = "Herald's Gaiters"
    }
 
     -- fast cast set is for casting quickly.  We put
    -- this on before the spell is begun, then switch
    -- to one of the other sets during cast.
    sets.fc = {
         
        ear1        = "Loquac. Earring",
        waist       = "Ninurta's Sash",
        feet        = "Rostrum Pumps"
    }
 
	 -- white enfeebling set
    sets.whiteenfeebling = {

		ammo        = "Jasper Tathlum",
        head        = "Goliard Chapeau",
        neck        = "Gnole Torque",
        ear1        = "Incubus Earring +1",
		ear2        = "Incubus Earring +1",
        body        = "Oracle's Robe",
        hands       = "Bricta's Cuffs",
		ring2       = "Omega Ring",
        ring1       = "Celestial Ring",
        back        = "Altruistic Cape",
		waist       = "Cleric's Belt",
        legs        = "Valkyrie's Trews",
        feet        = "Goliard Clogs"
    }
	
     -- (black) enfeebling set 
    sets.blackenfeebling = {
    
		ammo        = "Jasper Tathlum",
        head        = "Ree's Headgear",
        neck        = "Enfeebling Torque",
        ear1        = "Incubus Earring +1",
		ear2        = "Incubus Earring +1",
        body        = "Oracle's Robe",
        hands       = "Bricta's Cuffs",
		ring2       = "Omega Ring",
        ring1       = "Omniscient Ring +1",
        back        = "Altruistic Cape",
		waist       = "Witch Sash",
        legs        = "Valkyrie's Trews",
        feet        = "Goliard Clogs"
    }
    
    -- Divine magic damage set
    sets.divdamage = {
        
		ammo        = "Jasper Tathlum",
        head        = "Maat's Cap",
		neck		= "Faith Torque",
        left_ear    = "Novio Earring",
		right_ear   = "Moldavite Earring",
        body        = "Oracle's Robe",
        hands       = "Zenith Mitts +1",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Hecate's Cape",
		waist       = "Pythia Sash +1",
        legs        = "Valkyrie's Trews",
        feet        = "Shrewd Pumps"
    }
 
    -- Divine magic accuracy set
    sets.divaccuracy = {
        
		ammo        = "Aureole",
        head        = "Ree's Headgear",
		neck		= "Divine Torque",
        left_ear    = "Incubus Earring +1",
		right_ear   = "Incubus Earring +1",
        body        = "Goliard Saio",
        hands       = "Bricta's Cuffs",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        back        = "Prism Cape",
		waist       = "Witch Sash",
        legs        = "Mahatma Slops",
        feet        = "Goliard Clogs"
    }
 
     -- enhancing set is mostly for stoneskin.
    -- mostly +Enhancing Skill and Mind.
    sets.enhancing = {
    
        sub         = "Muse Tariqah",
        head        = "Walahra Turban",
        neck        = "Enhancing Torque",
        ear2        = "Augment. Earring",
        body        = "Mahatma Hpl.",
        hands       = "Blessed Mitts +1",
		waist		= "Ninurta's Sash",
        back        = "Merciful Cape",
        legs        = "Bls. Trousers +1",
        feet        = "Clr. Duckbills +1"
    }
 
     -- heal set for getting the most of our cures.
    -- mostly +Cure Potency and Mind.
    sets.heal = {
    
        sub         = "Muse Tariqah",
        head        = "Walahra Turban",
        neck        = "Healing Torque",
        ear2        = "Roundel Earring",
        body        = "Aristocrat's Coat",
        hands       = "Blessed Mitts +1",
        back        = "Altruistic Cape",
        waist       = "Pythia Sash +1",
        legs        = "Bls. Trousers +1",
        feet        = "Blessed Pumps +1"
    }
 
     -- resting set is for recovering MP while /heal.
    -- as much +hMP as possible.
    sets.rest = {
        
        main        = "Imperial Wand",
        sub         = "Legion Scutum",
        head        = "Goliard Chapeau",
        ear1        = "Antivenom Earring",
        ear2        = "Relaxing Earring",
        body        = "Mahatma Hpl.",
        hands       = "Oracle's Gloves",
        legs        = "Oracle's Braconi",
        feet        = "Goliard Clogs",
        back        = "Invigorating Cape",
        ring1       = "Celestial Ring",
        ring2       = "Celestial Ring",
        waist       = "Cleric's Belt"
    }
    
      -- our engaged set gets put on over our idle set
    -- when we engage a foe
    sets.engaged = {
    
        head        = "Walahra Turban",
        neck        = "Prudence Torque",
        ear1        = "Brutal Earring",
        ear2        = "Merman's Earring",
        body        = "Goliard Saio",
        hands       = "Blessed Mitts +1",
        ring1       = "Lava's Ring",
        ring2       = "Kusha's Ring",
        back        = "Shadow Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Blessed Trousers +1",
        feet        = "Blessed Pumps +1"
    }
 
     -- our weapon skill set contains lots of fuckery.
    sets.ws = {
    
        head        = "Maat's Cap",
        neck        = "Fotia Gorget",
        ear1        = "Brutal Earring",
        ear2        = "Harmonius Earring",
        body        = "Hydra Doublet",
        hands       = "Creek M Mitts",
        ring1       = "Rajas Ring",
        ring2       = "Harmonius Ring",
        back        = "Dew Silk Cape +1",
        waist       = "Life Belt",
        legs        = "Hydra Brais",
        feet        = "Creek M Clomps",
        ammo        = "Jasper Tathlum"
    }
    
 end
 
 --[[ ******************************************************
  Equip functions - put on the sets we defined above, and
 echo a note to our chat log so we know it worked.
****************************************************** --]]
 
function status_change(new,old)
    choose_set()
end
 
 function choose_set()
	if player.status == 'Engaged' then 
        disable('sub')
		equip_engaged()
    elseif player.status == 'Resting' then
        enable('sub')
        equip_rest()
	else
        enable('sub')
        windower.add_to_chat(8,'[Idle]')
		equip_idle()
    end
end

-- IDLE
 -- Equip Idle set when standing around doing nothing.
 
 function equip_idle(spell,eventArgs)
    if world.time <= 1080 and world.time >= 360 then 
		windower.add_to_chat(8,"[White Mage Idle Set Active - Bonus Regen ON]")
		equip(sets.idle,{waist="Lycopodium Sash",hands="Feronia's Bangles"})
    elseif world.time >=1080 and world.time <= 360 then
		windower.add_to_chat(8,"[White Mage Idle Set Active - Fenrir's Stone]")
		equip(sets.idle,{ammo="Fenrir's Stone"})
			
	else 
        windower.add_to_chat(8,"[White Mage Idle Set Active]")
		equip(sets.idle)
	end
end

-- REST
 -- Equip hMP set when /heal. 

function equip_rest()
	windower.add_to_chat(8,'[Resting]')
    equip(sets.rest)
end

function equip_engaged()
    windower.add_to_chat(8,'[Engaged]')
    equip(sets.engaged)
end

function equip_ws()
    windower.add_to_chat(8,'[Weapon Skill]')
    equip(sets.ws)
end

-- equip Divine Attack set, with conditional
-- special functions for Uggalepih Pendant and/or Hachirin-no-Obi
-- Flash always casts in Accuracy Mode!
function equip_divine(spell)
    if  spell.element == world.day_element and spell.skill == 'Divine Magic' and player.mp - spell.mp_cost < 0.45*player.max_mp then
        windower.add_to_chat(8,"[Casting " .. spell.english .. " on " .. world.day_element .. "sday at " .. player.mpp .. "% MP with Uggalepih Pendant]")
        equip(sets.divdamage,{neck="Uggalepih Pendant",waist="Hachirin-no-Obi"})
	elseif spell.element == world.day_element and spell.skill == 'Divine Magic' then
			windower.add_to_chat(8,"[Casting " .. spell.english .. " with " .. world.day_element .. "sday power]")
			equip(sets.divdamage,{waist="Hachirin-no-Obi"})
			
    elseif spell.element == world.weather_element and spell.skill == 'Divine Magic' and player.mp - spell.mp_cost < 0.45*player.max_mp then
			windower.add_to_chat(8,"[Casting " .. spell.english .. " with the " .. world.weather_element .. " weather at " .. player.mpp .. "% MP with Uggalepih Pendant]")
			equip(sets.divdamage,{neck="Uggalepih Pendant",waist="Hachirin-no-Obi"})
	elseif spell.element == world.weather_element and spell.skill == 'Divine Magic' then
			windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. world.weather_element .. ' weather power]')
			equip(sets.divdamage,{waist="Hachirin-no-Obi"})
	
	elseif spell.skill == 'Divine Magic' and player.mp - spell.mp_cost < 0.45*player.max_mp then
			windower.add_to_chat(8,"[Casting " .. spell.english .. " at " .. player.mpp .. "% MP with Uggalepih Pendant]")
			equip(sets.divdamage,{neck="Uggalepih Pendant"})
	
	elseif spell.english == 'Flash' then
			windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
			equip(sets.divaccuracy)
    else  
		windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
		equip(sets.divaccuracy)
    end
 end

-- equip  White Enfeebling Magic set
function equip_whiteenfeebling(spell)
    windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
    equip(sets.whiteenfeebling)
end

-- equip (black) Enfeebling Magic set
function equip_blackenfeebling(spell)
    windower.add_to_chat(8,'[Casting ' .. spell.english .. ' with ' .. player.mp .. ' MP remaining]')
    equip(sets.blackenfeebling)
end


-- equip our enhancing set, including the relic pieces
-- for barspells and regen
function equip_enhancing(spell)
    windower.add_to_chat(8,'[Enhancing]')
    if spell.name:contains('Bar') then
        equip(sets.enhancing,{legs="Clr. Pantaln. +1",body="Blessed Bliaut +1"})
    elseif spell.name:contains('Regen') then
        equip(sets.enhancing,{body="Clr. Bliaut +1"})
    elseif spell.name == 'Stoneskin' then
        equip(sets.enhancing,{main="Alkalurops",neck="Stone Gorget"})
    else
        equip(sets.enhancing)
    end
 end
 
 -- equip our healing magic set
 function equip_heal()
     windower.add_to_chat(8,'[Healing]')
    equip(sets.heal)
end

--[[ ******************************************************
 Casting functions - these functions run automatically when
 we cast a spell, use a job ability, rest for MP, and so on
****************************************************** --]]
 
 -- the precast function runs automatically BEFORE we
 -- begin casting a spell or job ability.  For our WHM,
 -- we want to equip fast cast gear prior to casting.
 -- If casting a cure spell, wear clogs instead of rostrum.
 function precast(spell)
    if spell.type:contains('Magic') then
        if spell.name:contains('Cure') then
            equip(sets.fc,{feet="Cure Clogs"})
        else
            equip(sets.fc)
        end
    elseif spell.type == 'WeaponSkill' then
        equip_ws()
    end
 end
 
 -- now that we've already gained the benefit of fast cast,
 -- the midcast function swaps in a new set of gear during
 -- the cast, which will make the spell effect more potent.
 function midcast(spell)
    if spell.skill == 'Healing Magic' then
        equip_heal()
    elseif spell.english:contains("Slow") then
        equip_whiteenfeebling(spell)
	elseif spell.english:contains("Paralyze") then
		equip_whiteenfeebling(spell)
	elseif spell.english:contains("Silence") then
		equip_whiteenfeebling(spell)
	elseif spell.english:contains("Dia") then
		equip_whiteenfeebling(spell)
    elseif spell.skill == 'Enfeebling Magic' then
        equip_blackenfeebling()
    elseif spell.skill == 'Enhancing Magic' then
        equip_enhancing(spell)
    elseif spell.skill == 'Divine Magic' then
        equip_divine(spell)
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
 
 -- we're done with our spell or job ability, so the aftercast
 -- function makes sure we return to our idle gear to benefit
 -- from auto-refresh and movement speed.
function aftercast(spell)
    choose_set()
end

 
 --[[ ******************************************************
  Code that runs once, when we first swap to our WHM job
****************************************************** --]]
 
 -- Puts on our fashion set, lockstyle it, then switch
 -- to our idle set.
 send_command('wait 1;input /lockstyleset 10;wait 0.5;gs equip idle;wait 0.5;input /equip main Mjollnir')
 send_command('input /macro book 3; wait 0.1; input /macro set 1')
 send_command('input //dp magic; wait 1; input //dp height')