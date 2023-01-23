-- common gearswap functions used by all jobs

-- v1.0 reznor 2023

function common_idle_equip()
    equip(sets.idle)
	windower.add_to_chat(8,'[' .. player.main_job_full .. ' - Idle]')
    if world.time <= 1080 and world.time >= 360 then
		windower.add_to_chat(8,"[Daylight Regen - HP at " .. player.hpp .. "%]")
		equip(sets.idle,sets.dayregen)
	end
	if mdt then
		equip(sets.mdt)
	elseif pdt then
		equip(sets.pdt)
	end
end

function debuff_items()
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
        send_command('@ input /item "Eye Drops" <me>')
        windower.add_to_chat(160,'[Blindness Removed!]')
    elseif buffactive['Poison'] then
        send_command('@ input /item "Antidote" <me>')
        windower.add_to_chat(259,'[Poison Removed!]')
	elseif buffactive['Paralyzed'] then
		send_command('@ input /item "Remedy" <me>')
		windower.add_to_chat(259,'[Paralysis Removed!]')
    end
end