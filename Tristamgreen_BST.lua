-- [[************************************]] --
-- [[		MmeWardu's BST lua 			 ]] --
-- [[************************************]] --
 
-- [[************************************]] --
-- [[         Chapter 1: Gearsets        ]] --
-- [[************************************]] --

-- Gearsets define the equipment we'll wear in different situations.
 
function get_sets()
 
-- IDLE set
 -- Refresh, PDT and MDT, Evasion, Movement Speed.
     
    sets.idle = {
        head        = "Gnole Crown",
        neck        = "Orochi Nodowa +1",
        left_ear    = "Novia Earring",
        right_ear   = "Triton Earring",
		body        = "Darksteel Harness +1",
        hands       = "Darksteel Mittens +1",
        left_ring   = "Shadow Ring",
        right_ring  = "Patronus Ring",
        back        = "Shadow Mantle",
        waist       = "Scouter's Rope",
        legs        = "Askar Dirs",
        feet        = "Askar Gambieras"
		}
 
 		
-- DAMAGE REDUCTION sets
 -- Can be macro'd in when damage is imminent.
 
 -- PDT panic button set for things like Oblivion Smash. 
 -- This set is similar to our IDLE set, but gets macro'd in to stick during actions like casting, which is not the case for our IDLE set.
 
    sets.PDT = {
        ammo        = "Goblin Cracker",
        head        = "Louhi's Mask",
        neck        = "Evasion Torque",
        left_ear    = "Triton Earring",
        right_ear   = "Novia Earring",
        body        = "Darksteel Harness +1",
        hands       = "Darksteel Mittens +1",
        left_ring   = "Jelly Ring",
        right_ring  = "Succor Ring",
        back        = "Corse Cape",
        waist       = "Scouter's Rope",
        legs        = "Darksteel Subligar +1",
        feet        = "Askar Gambieras"
		}
 
 -- MDT panic button set for things like Meteor.
 
    sets.MDT = {
        ammo        = "Goblin Cracker",
        head        = "Louhi's Mask",
        neck        = "Evasion Torque",
        left_ear    = "Merman's Earring",
        right_ear   = "Merman's Earring",
        body        = "Avalon Breastplate",
        hands       = "Merman's Mittens",
        left_ring   = "Minerva's Ring",
        right_ring  = "Succor Ring",
        back        = "Corse Cape",
        waist       = "Scouter's Rope",
        legs        = "Merman's Subligar"	,
        feet        = "Askar Gambieras"
		}
		
-- MAGIC SETS
 -- Charm set. Currently very rudimental since we use BST for soloing with Jug Pets.
 
	sets.Charm = {
		ammo		=   "Tsar's Egg",
		head		=	"Beast Helm",
		body		=	"Monster Jackcoat +1",
		left_ring	=	"Heaven's Ring",
		right_ring	=	"Veela Ring",
		legs		=	"Monster Trousers",
		feet		=	"Monster Gaiters",
		}
 
	-- neck			=	"Temperance Torque",
	-- left_ear		=	"Melody Earring +1",
    -- right_ear	=	"Melody Earring +1",
    -- hands		=	"Monster Gloves",
    -- right_ring	=	"Heaven's Ring",
	-- back			=	"Lyricist's Gonelle",
	-- waist		=	"Monster Belt",
  
 
 -- Reward set.
  -- Reward + MND.
  
	sets.reward = {
		ammo		=   "Pet Food Zeta",
		head		=	"Beast Helm",
		neck		=	"Faith Torque",
		left_ear	=	"Celestial Earring",
		right_ear	=	"Mamool Ja Earring",
		body		=	"Monster Jackcoat +1",
		hands		=	"Ogre Gloves +1",
		left_ring	=	"Celestial Ring",
		right_ring	=	"Celestial Ring",
		waist		=	"Jungle Stone",
		feet		=	"Monster Gaiters",
		}
	
	-- back		=	"Royal Army Mantle",
	-- legs		=	"Magic Cuisses",

 -- Healing set: Curing Waltz and Cures when /WHM or /RDM.
   -- Cure potency > MND*3 > VIT/4 > Healing magic skill.
    
    sets.heal = {
		head        = "Ree's Headgear",
        neck        = "Faith Torque",
		left_ear    = "Celestial Earring",
        right_ear   = "Celestial Earring",
        body        = "Kirin's Osode",
        hands       = "Bricta's Cuffs",
        back        = "Altruistic Cape",
        waist       = "Jungle Stone",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        feet        = "Suzaku's Sune-Ate"
		}

-- Enhancing set.
  -- Enhancing magic skill and MND.
    
    sets.enhancing = {
        head        = "Ree's Headgear",
        neck        = "Faith Torque",
		left_ear    = "Celestial Earring",
        right_ear   = "Augmenting Earring",
        body        = "Kirin's Osode",
        hands       = "Bricta's Cuffs",
        back        = "Merciful Cape",
        waist       = "Jungle Stone",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        feet        = "Suzaku's Sune-Ate"
		}
		
-- Enfeebling set.
    -- MHR determines both land rate and duration (through resist rolls).
	-- Potency depends on MND (slow, paralyze) or INT (blind).
    -- Nashira Seraweels still to obtain.	
	
	sets.enfeebling = {
		ammo		= "Sturm's Report",
        head        = "Diana Corona",
        neck        = "Enfeebling Torque",
		left_ear    = "Incubus Earring +1",
        right_ear   = "Incubus Earring +1",
        body        = "Hlr. Briault",
        hands       = "Bricta's Cuffs",
        back        = "Merciful Cape",
        waist       = "Jungle Stone",
		left_ring   = "Celestial Ring",
        right_ring  = "Celestial Ring",
        feet        = "Suzaku's Sune-Ate"
		}
		
-- Fast Cast.

   sets.fc = {
		head        = "Walahra Turban",
        left_ear    = "Loquac. Earring",
		waist       = "Capricornian Rope",
		legs        = "Byakko's Haidate",
		}
	
-- RESTING SETS
 -- hHP.
  
	sets.rest = {
	ammo        = "Tsar's Egg",
	neck        = "Grandiose Chain",
	legs        = "Monster Trousers",
    }
	
	--  waist       = "Marid Belt +1",
	--	left_ear    = "Stoic Earring",
	--	right_ear   = "Sanative Earring",

-- WEAPON SETS

	sets.dual = {
	main        = "Maneater",
    sub         = "Ridill",
	}
	
	sets.bow  = {
	main        = "Kriegsbeil",
    sub         = "Fransisca",
	ranged 		= "Lamian Kaman +1",
    ammo        = "Kabura Arrow",
	}
	
	sets.shield  = {
	main        = "Maneater",
    sub         = "Tatami Shield",
	}
	
	
-- ENGAGED SETS
 -- TP Sets. 639 Acc. 23% Haste. 358 Att. 88 STR.
 
	sets.TP = {
    head		=	"Walahra Turban",
	neck		=	"Chivalrous Chain",
	left_ear	=	"Brutal Earring",
    right_ear	=	"Harmonius Earring",
    body		=	"Askar Korazin",
    hands		=	"Dusk Gloves +1",
	left_ring	=	"Strigoi Ring",
    right_ring	=	"Rajas Ring",
	back		=	"Cuchulain's Mantle",
	waist		=	"Ninurta's Sash",
    legs		=	"Byakko's Haidate",
    feet		=	"Dusk Ledelsens +1",
	}
 
 -- Accuracy Set. 
 
    sets.Accuracy = {
    head		=	"Aurum Armet",
	neck		=	"Ancient Torque",
	left_ear	=	"Brutal Earring",
    right_ear	=	"Merman's Earring",
    body		=	"Armada Hauberk",
    hands		=	"Armada Mufflers",
	left_ring	=	"Mars's Ring",
    right_ring	=	"Rajas Ring",
	back		=	"Cuchulain's Mantle",
	waist		=	"Virtuoso Belt",
    legs		=	"Amada Breeches",
    feet		=	"Aurum Sabatons",
	}

 -- Evasion Set for when consistently taking damage (or soloing).
 
    sets.Evasion = {
    ammo        = "Goblin Cracker",
    head        = "Optical Hat",
    neck        = "Evasion Torque",
    left_ear    = "Novia Earring",
    right_ear   = "Triton's Earring",
    body        = "Askar Korazin",
    hands       = "Raven Bracers",
    left_ring   = "Jelly Ring",
    right_ring  = "Succor Ring",
    back        = "Corse Cape",
    waist       = "Scouter's Rope",
    legs        = "Raven Hose"	,
    feet        = "Dance Shoes +1"
	}

 -- WS Set.	Rampage only modifier is 50% STR.
  -- 617 Acc. 154 STR. 360 Att.
 
 sets.ws = {
    head		=	"Hecatomb Cap +1",
	neck		=	"Fotia Gorget",
	left_ear	=	"Brutal Earring",
    right_ear	=	"Harmonius Earring",
    body		=	"Valkyrie's Breastplate",
    hands		=	"Alkyoneus's Bracelets",
	left_ring	=	"Rajas Ring",
    right_ring	=	"Strigoi Ring",
	back		=	"Cerberus Mantle +1",
	waist		=	"Warwolf Belt",
    legs		=	"Hecatomb Subligar +1",
    feet		=	"Hecatomb Leggings +1",
	}
end
 
-- [[************************************]] --
-- [[         Chapter 2: Functions       ]] --
-- [[************************************]] -- 

-- Functions execute the gearswaps automatically in certain situations.
 
 -- STATUS CHANGE
 -- The status_change function runs the equip functions (defined further down) whenever we engage, disengage, kneel, or stand. 
 
 function status_change(new,old)
    choose_set()
end
 
 function choose_set()
	if player.status == 'Engaged' then 
		equip_engaged()
    elseif player.status == 'Resting' then
        equip_rest()
	else
		equip_idle()
	windower.add_to_chat(8,'[Idle]')
    end
	equip_Panic()
end

-- IDLE
 -- Equip Idle set when standing around doing nothing.
 
function equip_idle()
    equip(sets.idle)
end

-- REST
 -- Equip hMP set when /heal. 

function equip_rest()
	windower.add_to_chat(8,'[Resting]')
    equip(sets.rest)
end

-- PANIC
 -- Equips PDT or MDT sets when macro'd in.

function equip_Panic()
	if PanicMode == "PDT" then
		equip(sets.PDT)
	windower.add_to_chat(8,'[PDT]')
	
	elseif PanicMode == "MDT" then
		equip(sets.MDT)
	windower.add_to_chat(8,'[MDT]')
	end
end

-- ENGAGED
 -- Equip our TP set (default), Accuracy set, Evasion set or panic button PDT/MDT sets, depending on the current EngagedMode.
 
function equip_engaged()
    equip(sets[EngagedMode])
end

-- PRECAST 
 -- The precast function runs automatically BEFORE we begin casting a spell or job ability:
 -- It equips our Fast Cast set before a spell. 
 -- It casts Utsusemi: Ichi instead of Ni when Ni's CD is down (so only a Ni macro is necessary).
 -- It equips our WS gear before a WS.
 -- It equips our heal set before a Waltz.
 
 function precast(spell)
 local spell_recasts = windower.ffxi.get_spell_recasts()
	if spell.type == "Ninjutsu" then
		if spell.name == "Utsusemi: Ni" and spell_recasts[spell.recast_id] > 0 then
			cancel_spell()
			send_command('input /ma "Utsusemi: Ichi" <me>')	
		end
    elseif spell.type == 'WeaponSkill' then
        equip_ws()
	elseif spell.english:contains("Waltz") then
		equip(sets.heal)
	elseif spell.name == "Charm" then
		equip_charm()
	elseif spell.name == "Reward" then
		equip_reward()
	elseif spell.name == "Call Beast" then
		equip({hands = "Monster Gloves"})
	elseif spell.name == "Ready" then
		equip({legs = "Herder's Subligar"})
		equip({body = "Aega's Doublet"})
	else 
		equip(set.fc)
    end
	equip_Panic()
 end
 
 
 function midcast(spell)
	if spell.skill == 'Enfeebling Magic' then
        equip_enfeebling(spell)
	elseif spell.skill == 'Healing Magic' then
        equip_heal(spell)
	elseif spell.skill == 'Enhancing Magic' then
        equip_enhancing(spell)
	end
 
 -- AUTO BUFF CANCELS
 -- Cancel current buffs if a non-overwriting spell is cast.
 
	if spell.name == "Utsusemi: Ichi" then send_command('input ; wait 3;input //cancel copy image*')end
	if spell.name == "Blink" then send_command('wait 3;cancel blink;input //cancel copy image*') end
	if spell.name == "Sneak" or spell.name == "Spectral Jig" then send_command("cancel sneak") end
	if spell.name == "Stoneskin" then send_command("wait 5;cancel Stoneskin") end	
	
	equip_Panic()
end
 
 -- AFTERCAST
 -- After we finish our spell or ability, status change is ran to return to our current stance (idle, resting, engaged).
 
 function aftercast(spell)
    choose_set()
 end
 
-- WS
 
function equip_ws()
    windower.add_to_chat(8,'[WS]')
    equip(sets.ws)
end

-- Charm

function equip_charm()
    windower.add_to_chat(8,'[Charm]')
    equip(sets.Charm)
end

function equip_reward()
    windower.add_to_chat(8,'[Reward]')
    equip(sets.reward)
end

-- Magic

 function equip_enfeebling(spell)
   	equip(sets.enfeebling)
	windower.add_to_chat(8,'[Enfeeb]')
	end
	

  function equip_heal(spell)
    equip(sets.heal)
	windower.add_to_chat(8,'[Cure]')
 end
 
 function equip_enhancing(spell)
		if spell.name == 'Stoneskin' then
        equip(sets.enhancing,{neck="Stone Gorget",hands="Stone Mufflers"})
		else
        equip(sets.enhancing)
		windower.add_to_chat(8,'[Enhance]')
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

-- [[************************************]] --
-- [[         Chapter 3: Commands        ]] --
-- [[************************************]] --  

-- ENGAGED SWAPS
 -- Swap between TP and Acc sets in the Engaged mode with the command "A".
 -- Swap between TP or Acc and Eva sets in the Engaged mode with the command "E".
 -- Note: From the Evasion mode we go back to TP mode, so if Acc is needed, you need to use "A" again.



-- IDLE SWAPS
 -- Swaps between to MDT from Regain and PDT sets with the command "I".
 -- Swaps back to PDT from MDT.
 
 function self_command(m)
    if m == "I" then
		if PanicMode == "" or PanicMode == "MDT" then
        PanicMode = "PDT"
		else 
		PanicMode = "" 
		end
		choose_set()
		
	elseif m == "A" then
		if PanicMode == "" or PanicMode == "PDT" then
        PanicMode = "MDT"
		else 
		PanicMode = "" 
		end
		choose_set()
		
	elseif m == "E" then
    	if EngagedMode == "TP" or EngagedMode == "Accuracy" then
            EngagedMode = "Evasion"
		else
			EngagedMode = "TP"
        end	
		windower.add_to_chat(8,'[EngagedMode: ' .. EngagedMode .. ']')
		choose_set()
		
	elseif m == "R" then
    	if EngagedMode == "TP" then
            EngagedMode = "Accuracy"
		else
			EngagedMode = "TP"
        end	
		windower.add_to_chat(8,'[EngagedMode: ' .. EngagedMode .. ']')
		choose_set()
	
	end
end
 
 -- [[************************************]] --
-- [[         Chapter 4: Start code      ]] --
-- [[************************************]] --  
  
-- When changing jobs these will be the default/starting modes.
 
 EngagedMode = "TP"
 PanicMode = ""

-- Equip and lockstyleset. Swapping to the correct macro book.

send_command('wait 1; gs equip idle; wait 2; input /lockstyleset 38; wait 1; input /macro book 10; wait 2; input /macro set 1')