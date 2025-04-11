------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
 
 require("common_gs_functions")
 
-- Define sets and vars used by this job file.
function get_sets()
   
 sets.weapon        = {
		main		= "Gungnir",
		sub			= "Pole Grip"
    }
 
     -- idle set
 sets.idle          = {
        ammo        = "Fenrir's Stone",
        head        = "Blood Mask",
        body        = "Hydra Mail +1",
        hands       = "Askar Manopolas",
        legs        = "Blood Cuisses",
        feet        = "Askar Gambieras",
        neck        = "Orochi Nodowa +1",
        waist       = "Wyrm Belt",
        left_ear    = "Ethereal Earring",
        right_ear   = "Novia Earring",
        left_ring   = "Patronus Ring",
        right_ring  = "Shadow Ring",
        back        = "Shadow Mantle"
}

 sets.dayregen		= {
		waist		= "Lycopodium Sash",
	}
	
 sets.callwyvern    = {
        head        = "Wivre Mask +1",
        body        = "Askar Korazin",
        hands       = "Askar Manopolas",
        legs        = "Blood Cuisses",
        feet        = "Askar Gambieras",
        neck        = "Orochi Nodowa +1",
        waist       = "Wyrm Belt",
        left_ear    = "Triton Earring",
        right_ear   = "Triton Earring",
        left_ring   = "Patronus Ring",
        right_ring  = "Shadow Ring",
        back        = "Shadow Mantle"
}
   
     -- fast cast set
sets.fastcast       = {
        main        = "",
        sub         = "",
        ammo        = "Bibiki Seashell",
        head        = "Walahra Turban",
        neck        = "Evasion Torque",
        left_ear    = "Loquacious Earring",
        right_ear   = "",
        body        = "Blood Scale Mail",
        hands       = "Homam Manopolas",
        left_ring   = "Jelly Ring",
        right_ring  = "Defending Ring",
        back        = "Shadow Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Homam Cosciales",
        feet        = "Drn. Greaves +1"
    }
       
sets.Breath         = {
        main        = "",
        sub         = "",
        ammo        = "Verthandi's Gem",
        head        = "Drachen Armet +1",
        neck        = "Bloodbead Gorget",
        left_ear    = "Harmonius Earring",
        right_ear   = "Harmonius Earring",
        body        = "Wyrm Mail +1",
        hands       = "Dusk Gloves +1",
        left_ring   = "Bloodbead Ring",
        right_ring  = "Bomb Queen Ring",
        back        = "Gigant Mantle",
        waist       = "Steppe Sash",
        legs        = "Dusk Trousers +1",
        feet        = "Homam Gambieras"
    }
    

sets.Breath.Wyvern  = {
        body        = "Wyvern Mail",
        legs        = "Drachen Brais +1",
        feet        = "Homam Gambieras",
        neck        = "Chanoix's Gorget",
        hands       = "Ostreger Mitts",
        head        = "Wyrm Armet +1",
        ear1        = "Dragoon's Earring"
    }
   
    -- Hasted cast set
sets.recast         = {
        main        = "Fenrir's Stone",
        head        = "Walahra Turban",
        neck        = "Evasion Torque",
        left_ear    = "Loquacious Earring",
        right_ear   = "",
        body        = "Wym. Mail +1",
        hands       = "Dusk Gloves +1",
        left_ring   = "Blitz Ring",
        right_ring  = "",
        back        = "",
        waist       = "Ninurta's Sash",
        legs        = "Homam Cosciales",
        feet        = "Homam Gambieras"
    }
 
     -- Full haste set
sets.Haste          = {
        main        = "",
        sub         = "",
        ammo        = "Black Tathlum",
        head        = "Walahra Turban",
        neck        = "Love Torque",
        left_ear    = "Ethereal Earring",
        right_ear   = "Brutal Earring",
        body        = "Wym. Mail +1",
        hands       = "Homam Manopolas",
        left_ring   = "Rajas Ring",
        right_ring  = "Blitz Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Homam Cosciales",
        feet        = "Homam Gambieras"
    }
   
     -- Hybrid DD set
sets.Hybrid         = {
        main        = "",
        sub         = "",
        ammo        = "Black Tathlum",
        head        = "Ace's Helm",
        neck        = "Love Torque",
        left_ear    = "Ethereal Earring",
        right_ear   = "Brutal Earring",
        body        = "Askar Korazin",
        hands       = "Homam Manopolas",
        left_ring   = "Rajas Ring",
        right_ring  = "Blitz Ring",
        back        = "Cuchulain's Mantle",
        waist       = "Ninurta's Sash",
        legs        = "Homam Cosciales",
        feet        = "Homam Gambieras"
    }
    
sets.rosestrap = {
    main        =   { name="Gungnir", augments={'Accuracy+15','Attack+15','"Triple Atk."+3',}},
    sub         =   "Rose Strap",
    ammo        =   "White Tathlum",
    head        =   "Nocturnus Helm",
    body        =   "Aurum Cuirass",
    hands       =   "Homam Manopolas",
    legs        =   "Homam Cosciales",
    feet        =   "Homam Gambieras",
    neck        =   "Love Torque",
    waist       =   "Ninurta's Sash",
    left_ear    =   "Ethereal Earring",
    right_ear   =   "Brutal Earring",
    left_ring   =   "Rajas Ring",
    right_ring  =   "Blitz Ring",
    back        =   "Cerb. Mantle +1"
}
   
     -- Evasion set
sets.evasion        = {
        main        = "",
        sub         = "",
        ammo        = "Fenrir's Stone",
        head        = "Wivre Mask +1",
        neck        = "Evasion Torque",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
        body        = "Scorpion Harness +1",
        hands       = "Drn. Fng. Gnt. +1",
        left_ring   = "Wivre Ring +1",
        right_ring  = "Wivre Ring +1",
        back        = "Boxer's Mantle",
        waist       = "Steppe Sash",
        legs        = "Askar Dirs",
        feet        = "Wyrm Greaves +1"
    }  
    
	-- HMP set
sets.hhp      		= {
		body		= "Wyvern Mail",
		neck		= "Grandiose Chain",
		head		= "Mirror Tiara",
        hands       = "Wym. Fng. Gnt. +1",        
        legs        = "Wyrm Brais +1",
        feet        = "Wyrm Greaves +1",
		left_ear	= "Relaxing Earring",
		right_ear	= "Sanative Earring",
        right_ring  = "Celestial Ring",
        left_ring   = "Celestial Ring"
	}
 
-------- WS and JA section ---------
   
    -- Drakesbane set  
sets.drakesbane     = {
        main        = "",
        sub         = "",
        ammo        = "Black Tathlum",
        head        = "Hecatomb Cap +1",
        neck        = "Fotia Gorget",        
        left_ear    = "Harmonius Earring",
        right_ear   = "Harmonius Earring",
        body        = "Nocturnus Mail",
        hands       = "Alkyoneus's Bracelets",
        left_ring   = "Rajas Ring",
        right_ring  = "Mars's Ring",
        back        = "Cerb. Mantle +1",
        waist       = "Warwolf Belt",
        legs        = "Hct. Subligar +1",
        feet        = "Hct. Leggings +1"
    }
   
    -- Geirskogul set  
sets.geirskogul     = {
        main        = "",
        sub         = "",
        ammo        = "Black Tathlum",
        head        = "Nocturnus Helm",
        neck        = "Fotia Gorget",          
        left_ear    = "Assault Earring",
        right_ear   = "Harmonius Earring",
        body        = "Nocturnus Mail",
        hands       = "Hecatomb Mittens +1",
        left_ring   = "Rajas Ring",
        right_ring  = "Mars's Ring",
        back        = "Cerb. Mantle +1",
        waist       = "Warwolf Belt",
        legs        = "Hct. Subligar +1",
        feet        = "Hct. Leggings +1"
    }
	
	-- Generic WS set
sets.ws				= {
        main        = "",
        sub         = "",
        ammo        = "Black Tathlum",
        head        = "Hecatomb Cap +1",
        neck        = "Fotia Gorget",        
        left_ear    = "Harmonius Earring",
        right_ear   = "Harmonius Earring",
        body        = "Nocturnus Mail",
        hands       = "Alkyoneus's Bracelets",
        left_ring   = "Rajas Ring",
        right_ring  = "Mars's Ring",
        back        = "Cerb. Mantle +1",
        waist       = "Warwolf Belt",
        legs        = "Hct. Subligar +1",
        feet        = "Hct. Leggings +1"
    }
   
    -- Jump set
sets.Jump           = {
        ammo        = "Bibiki Seashell",
        head        = "Nocturnus Helm",
        neck        = "Love Torque",
        left_ear    = "Assault Earring",
        right_ear   = "Brutal Earring",
        body        = "Conte Corazza",
        hands       = "Hecatomb Mittens +1",
        left_ring   = "Rajas Ring",
        right_ring  = "Corneus Ring",
        back        = "Cerb. Mantle +1",
        waist       = "Wyrm Belt",
        legs        = "Conte Cosciales",
        feet        = "Drn. Greaves +1"
    }
 
    -- Angon
sets.Angon          = {
        ammo        = "Angon"
    }
   
    -- MP down set for job-change or GS-load initialization
sets.mpdown         = {        
        left_ear    = "Cassie Earring",
        right_ear   = "Intruder Earring",
        left_ring   = "Bloodbead Ring"
    }
	
sets.Stoneskin		= {
		head		= "Maat's Cap",
		ammo		= "Jasper Tathlum",
		neck		= "Stone Gorget",
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		body		= "Blood Scale Mail",
		hands		= "Stone Mufflers",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Merciful Cape",
		waist		= "Ninurta's Sash",
		legs		= "Homam Cosciales",
		feet		= "Homam Gambieras"
	}
       
end
         
-- Handle equipping of idle set with/without Regen item(s), re-supply quiver
 function equip_idle()
	common_idle_equip()
	if pet.isvalid then
        equip({hands="Wym. Fng. Gnt. +1"})
    end
end
 
-- Handle equipping auto-attacking mode sets (Fenrir's Earring equips during daytime)
function equip_Attackmode()
--if world.time <= 1080 and world.time >= 360 then
--        windower.add_to_chat(8,"[ (" .. player.equipment.main .. ") - [[- " .. mode .. " -]] mode is selected - Fenrir's Earring Activated!]")
--        equip(sets[mode],{left_ear="Fenrir's Earring"})
 
--    else     
        windower.add_to_chat(8,"[ (" .. player.equipment.main .. ") - [[- " .. mode .. " -]] mode is selected!]")
        equip(sets[mode])
--    end
end
 
-- Equips the HMP+ set while resting
function equip_rest()
    windower.add_to_chat(8,'[Knight of the Holy Crest, now at rest...]')
    equip(sets.hhp)
end

function equip_ws(spell)
     windower.add_to_chat(8,'[Weapon Skill]')
    if spell.name == 'Drakesbane' then
		equip(sets.drakesbane)	
	elseif spell.name == 'Geirskogul' then
		equip(sets.geirskogul)
    else
         equip(sets.ws)
    end
	if world.time <= 1080 and world.time >= 360 then
		windower.add_to_chat(8,"[- " .. spell.name .. " with Fenrir's Earring using " .. player.tp .. "TP -]")
		equip({left_ear="Fenrir's Earring"})
	else
		windower.add_to_chat(8,"[- " .. spell.name .. " using " .. player.tp .. "TP -]")
	end
end
 
--[[ ********************
 Casting and WS functions
********************* --]]
 
------- Precase Section -------


 function precast(spell, spellMap, action)
    if spell.action_type == 'Magic' then
     
     -- Cancel magic when it is not up yet
		local spell_recasts = windower.ffxi.get_spell_recasts()
		if spell_recasts[spell.recast_id] > 60 then -- 1s margin
			add_to_chat(167,spell.english .. ' is still on cooldown!')
			cancel_spell()
		else
			if spell.name == 'Stoneskin' then
				windower.add_to_chat(8,'[Fast Cast]')
				equip(sets.fastcast)
                if player.sub_job == 'RDM' then
                  equip({back="Warlock's Mantle"})
                end
			else
				windower.add_to_chat(8,'[- Pre-Cast Set Active -]')
				equip(sets.Breath)
			end
        end
		-- Cancel status effects for spells that don't overwrite themselves
		if spell.name == "Sneak" then send_command("cancel sneak") end
		if spell.name == "Stoneskin" then send_command("wait 4;cancel stoneskin") end
		if spell.name == "Reraise" then send_command("cancel reraise") end
		if spell.name == "Blink" then send_command("wait 4;cancel blink") end
		if spell.name == "Aquaveil" then send_command("wait 4;cancel aquaveil") end
		
    end

    if spell.english == 'Angon' then
        windower.add_to_chat(8,"[- " .. spell.name .. " with " .. player.tp .. "TP -]")
        equip(sets.Angon)
    end
	
	if spell.type == 'WeaponSkill' then
        equip_ws(spell)        
	end
   
    if spell.name == 'Ancient Circle' then
        windower.add_to_chat(8,"[- No dragons allowed... -]")
        equip(sets.Circle)
	end
   
    if spell.name == 'Spirit Link' then
        windower.add_to_chat(8,'[- Hungry fella? There ya go! -]')
        equip(sets.Spirit)
	end
 
    if spell.name:contains('Jump') then
		if windower.ffxi.get_ability_recasts()[spell.recast_id] > 0 then
			windower.add_to_chat(8,'[-Selected Jump is not ready for use!-]')
		else
			windower.add_to_chat(8,'[- UP! -]')
			equip(sets.Jump)
			if spell.name == 'High Jump' then
				windower.add_to_chat(8,'[- HIGHER!! -]')
				equip(sets.Jump,{legs="Wyrm Brais +1"})
			end
		end 
	end
end   
 
------- Midcast Section -------
 
function midcast(spell)
    if spell.action_type == 'Magic' then
		if spell.name == 'Stoneskin' then
			windower.add_to_chat(8,'[Stoneskin Midcast]')
			equip(sets.Stoneskin)
		else
			windower.add_to_chat(8,'[Breath Activation]')
			equip(sets.Breath) 
		end
	end
end

function pet_midcast(spell)
	if spell.name:contains('Breath') then
		windower.add_to_chat(8,'[Breath Potency]')
		equip(sets.Breath,sets.Breath.Wyvern)
		send_command('gs disable all')
	end
end
 
 ------- Aftercast Section -------

 
 -- post-cast, return to idle
function aftercast(spell)
	choose_set()
end

-- After pet breath
function pet_aftercast(spell)
	send_command('gs enable all')
	choose_set()
end

function status_change(new,old)
    choose_set()
end

-- Main function that decides whether to equip engaged/idle/resting gear
function choose_set()
    if player.status == "Engaged" then
        equip_Attackmode(mode)
    elseif player.status == "Resting" then
		equip_rest()
	else
        equip_idle()
    end
end 
 
function buff_change(name,gain)
	debuff_items()
end

 -- Melee mode selectorizer --
 
 
function self_command(m)

-- mode selectors are run by the macro command /console gs c [modename]

-- modes included here are:
-- M+ cycles between Hybrid mode and Evasion mode.
-- fivehit toggles fivehit mode (never used, don't really need)

if m == "M+" then
    if mode == "Hybrid" then
		mode = "Evasion"
	else
		mode = "Hybrid"
    end
        windower.add_to_chat(8,'[Mode Selection: [[' .. mode .. ']]')
    end
	
--	if m == "fivehit" then
--		if 5hit == false then
--           5hit = true
--            windower.add_to_chat(8,'[5-hit: ON]')
--           choose_set()
--        else
--            ev = false
--            windower.add_to_chat(8,'[5-hit: OFF]')
--            choose_set()
--        end
--	end
end
 
 
 
-- **** Run once @ start ****
 
 --Default attack mode:
 mode = "Hybrid"
 -- Evasion is off by default:
 -- 5hit = false
 
-- Select default macro book on initial load or subjob change.
 send_command('wait 1;input /lockstyleset 14; wait 1; gs equip mpdown; wait 1; gs equip idle; wait .1; gs equip weapon')
 send_command('input /macro book 14; wait .5; input /u !myth')
 if player.sub_job == "BLU" then
	send_command('input /macro set 7; //asets removeall; wait 1; input //asets spellset dragoon_blusub')
 elseif player.sub_job == "RDM" then
	send_command('input /macro set 5')
 elseif player.sub_job == "SAM" then
	send_command('input /macro set 3')
 else 
	send_command('input /macro set 1')
 end
