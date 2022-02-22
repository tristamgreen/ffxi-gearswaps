function get_sets()


sets.idle       =   {
    main        =   "Amanomurakumo",
    sub         =   "Rose Strap",
    range       =   "Yoichinoyumi",
    head        =   "Wivre Mask +1",
    body        =   "Hydra Mail +1",
    hands       =   "Rasetsu Tekko +1",
    legs        =   "Myn. Haidate +1",
    feet        =   "Askar Gambieras",
    neck        =   "Orochi Nodowa +1",
    waist       =   "Scouter's Rope",
    left_ear    =   "Novia Earring",
    right_ear   =   "Triton Earring",
    left_ring   =   "Patronus Ring",
    right_ring  =   "Shadow Ring",
    back        =   "Boxer's Mantle"
}


sets.dayregen   = {
    waist       =   "Lycopodium Sash"
}

sets.meditate   = {
    head        =   "Myn. Kabuto +1",
    hands       =   "Sao. Kote +1"
}


sets.tp         =   {
    main        =   "Amanomurakumo",
    sub         =   "Rose Strap",
    range       =   "Yoichinoyumi",
    head        =   "Ace's Helm",
    body        =   "Askar Korazin",
    hands       =   "Dusk Gloves +1",
    legs        =   "Byakko's Haidate",
    feet        =   "Dusk Ledelsens +1",
    neck        =   "Justice Torque",
    waist       =   "Ninurta's Sash",
    left_ear    =   "Brutal Earring",
    right_ear   =   "Wyvern Earring",
    left_ring   =   "Rajas Ring",
    right_ring  =   "Mars's Ring",
    back        =   "Cerb. Mantle +1"
}


sets.kaiten     =   {
    main        =   "Amanomurakumo",
    sub         =   "Rose Strap",
    range       =   "Yoichinoyumi",
    head        =   "Nocturnus Helm",
    body        =   "Askar Korazin",
    hands       =   "Alkyoneus's Bracelets",
    legs        =   "Hachiryu Haidate",
    feet        =   "Rutter Sabatons",
    neck        =   "Fotia Gorget",
    waist       =   "Warwolf Belt",
    left_ear    =   "Harmonius Earring",
    right_ear   =   "Harmonius Earring",
    left_ring   =   "Rajas Ring",
    right_ring  =   "Mars's Ring",
    back        =   "Cerb. Mantle +1"
}

sets.namas      =   {
    head        =   "Zha'Go's Barbut",
    body        =   "Kyudogi +1",
    hands       =   "Seiryu's Kote",
    legs        =   "Hachiryu Haidate",
    feet        =   "Enkidu's Leggings",
    neck        =   "Fotia Gorget",
    waist       =   "Saotome koshi-ate",
    left_ring   =   "Cerberus Ring +1",
    right_ring  =   "Cerberus Ring +1",
    left_ear    =   "Brutal Earring",
    right_ear   =   "Fenrir's Earring",
    back        =   "Fowler's Mantle +1",
}

sets.racc       = {
    head        =   "Optical Hat",
    body        =   "Kyudogi +1",
    hands       =   "Seiryu's Kote",
    legs        =   "Hachiryu Haidate",
    feet        =   "Enkidu's Leggings",
    neck        =   "Fotia Gorget",
    waist       =   "Saotome koshi-ate",
    left_ring   =   "Bellona's Ring",
    right_ring  =   "Jalzahn's Ring",
    left_ear    =   "Brutal Earring",
    right_ear   =   "Fenrir's Earring",
    back        =   "Fowler's Mantle +1",
}

end
function choose_set()
    if player.status == "Engaged" then
        equip_engaged()
    else
        equip_idle()
    end
end

function equip_idle()
    equip(sets.idle)
    windower.add_to_chat(8,'[Samurai - Idle]')
    if world.time <= 1080 and world.time >= 360 then 
		windower.add_to_chat(8,'[Daylight Bonus Regen]')
		equip(sets.idle,sets.dayregen)
    end
end

function equip_engaged()
    equip(sets.tp)
    windower.add_to_chat(8,'[Samurai - Engaged]')
     if world.time <= 1080 and world.time >= 360 then
			windower.add_to_chat(8,"[Engaged - Daylight Bonus]")
			equip({right_ear="Fenrir's Earring"})
    end
end

function equip_ws(spell)
    windower.add_to_chat(8,'[Weapon Skill]')
    if spell.name == 'Tachi: Kaiten' then
        equip(sets.kaiten)
    elseif spell.name == 'Namas Arrow' then
        equip(sets.namas)
        if world.time <= 1080 and world.time >= 360 then
            windower.add_to_chat(8,"[Daylight - L.bug Earring +1]")
            equip({right_ear="L.bug Earring +1"})
        else
            windower.add_to_chat(8,"[Nighttime - Fenrir's Earring]")
            equip({right_ear="Fenrir's Earring"})
        end
    elseif spell.name == 'Sidewinder' then
        equip(sets.racc)
        if world.time <= 1080 and world.time >= 360 then
            windower.add_to_chat(8,"[Daylight - L.bug Earring +1]")
            equip({right_ear="L.bug Earring +1"})
        else
            windower.add_to_chat(8,"[Nighttime - Fenrir's Earring]")
            equip({right_ear="Fenrir's Earring"})
        end
    else
        equip (sets.ws)
    end
end

function equip_ranged()
    equip(sets.racc)
    if world.time <= 1080 and world.time >= 360 then
        windower.add_to_chat(8,"[Daylight - L.bug Earring +1]")
        equip({right_ear="L.bug Earring +1"})
    end
end

function precast(spell)
    if spell.type == 'WeaponSkill' then
        equip_ws(spell)
    elseif spell.name == 'Meditate' then
        equip(sets.meditate)
	elseif spell.action_type == 'Ranged Attack' then
        equip_ranged()
	end
end
function midcast()
end
function aftercast()
    choose_set()
end

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
end

 -- Finally, puts on our fashion set, lockstyle it, then switch to our idle set.
 send_command('wait 1;input /lockstyleset 12;wait 1;gs equip idle')
 send_command('input /macro book 12; wait 0.1; input /macro set 1')
 send_command('input //dp bow')