-- common gearswap functions used by all jobs

-- v1.0 Tristamgreen 2023

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

function magic_define()

	--[[Ninjutsu]]--

    ninElemental = S{
        'Doton: Ichi','Huton: Ichi','Hyoton: Ichi','Katon: Ichi','Raiton: Ichi','Suiton: Ichi',
	    'Doton: Ni','Huton: Ni','Hyoton: Ni','Katon: Ni','Raiton: Ni','Suiton: Ni',
	    'Doton: San','Huton: San','Hyoton: San','Katon: San','Raiton: San','Suiton: San',}
        
    ninEnfeebling = S{
        'Dokumori: Ichi','Hojo: Ichi','Hojo: Ni','Jubaku: Ichi','Kurayami: Ichi','Kurayami: Ni'}
        
    ninEnhancing = S{
		'Utsusemi: Ichi','Utsusemi: Ni','Monomi: Ichi','Tonko: Ichi','Tonko: Ni'}
		
	--[[Elemental Magic]]--
		
	elementalMagic = S{
        'Stone','Water','Aero','Fire','Blizzard','Thunder',
        'Stone II','Water II','Aero II','Fire II','Blizzard II','Thunder II',
        'Stone III','Water III','Aero III','Fire III','Blizzard III','Thunder III',
		'Stone IV', 'Water IV', 'Aero IV', 'Fire IV', 'Blizzard IV', 'Thunder IV',
		'Quake', 'Flood', 'Tornado', 'Flare', 'Freeze', 'Burst',
		'Quake II', 'Flood II', 'Tornado II', 'Flare II', 'Freeze II', 'Burst II'}
		
	elementalDebuff = S{
        'Frost','Burn','Choke','Shock','Rasp','Drown'}
		
	helix = S{
        'Geohelix', 'Hydrohelix','Anemohelix','Pyrohelix','Cryohelix','Ionohelix','Noctohelix','Luminohelix'}
		
	storm = S{
        'Firestorm','Rainstorm','Windstorm','Hailstorm','Thunderstorm','Sandstorm','Aurorastorm','Voidstorm'}
		
	--[[Dark Magic]]--
	
	absorb = S{
		'Absorb-DEX','Absorb-TP','Absorb-MND','Absorb-STR','Absorb-CHR','Absorb-VIT','Absorb-AGI','Absorb-INT','Absorb-ACC'}
		
	--[[Divine Magic]]--
	
	divine = S{
		'Banish','Banish II','Banish III','Banishga','Banishga II','Holy','Repose'}
	
	--[[Enfeebling Magic]]--
        
    mndEnfMagic = S{
        'Slow','Silence','Paralyze','Dia','Dia II','Dia III','Diaga','Frazzle','Distract'}
		
	--[[Enhancing Magic]]--
	
	swordBuff = S{
        'Enstone','Enwater','Enaero','Enfire','Enblizzard','Enthunder','Endark','Enlight'}
	
	--[[Blue Magic]]--
	
	physBlueMagic = S{
        'Foot Kick','Wild Oats','Power Attack','Sprout Smack','Battle Dance','Head Butt','Helldive','Bludgeon',
        'Claw Cyclone','Screwdriver','Grand Slam','Smite of Rage','Jet Stream','Uppercut','Terror Touch','Mandibular Bite',
        'Sickle Slash','Death Scissors','Dimensional Death','Body Slam','Frypan','Frenetic Rip','Hydro Shot','Spinal Cleave',
        'Hysteric Barrage','Tail Slap','Cannonball','Disseverment','Ram Charge','Vertical Cleave'}
		
	intBlueMagic = S{
		'Sandspin','Blastbomb','Cursed Sphere','Bomb Toss','Death Ray','Blitzstrahl','Ice Break','Maelstrom','Firespit'}
        
    mndBlueMagic = S{
        'Mind Blast','Magic Hammer'}
    
    chrBlueMagic = S{
        'Mysterious Light','Eyes on Me'}
        
    brBlueMagic = S{
        'Poison Breath','Magnetite Cloud','Hecatomb Wave','Radiant Breath','Flying Hip Press','Bad Breath','Frost Breath','Heat Breath'}
        
    enhBlueMagic = S{
        'Metallic Body','Cocoon','Refueling','Feather Barrier','Memento Mori','Voracious Trunk','Diamondhide','Warm-Up','Triumphant Roar',
        'Amplification','Saline Coat','Reactor Cool','Plasma Charge'}
        
    healBlueMagic = S{
        'Pollen','Healing Breeze','Wild Carrot','Magic Fruit'}
        
    enfBlueMagic = S{
        'Sheep Song','Soporific','Sound Blast','Chaotic Eye','Blank Gaze','Venom Shell','Stinking Gas','Geist Wall',
        'Awful Eye,','Jettatura','Frightful Roar','Cold Wave','Filamented Hold','Light of Penance','Yawn','Feather Tickle',
        'Infrasonics','Sandspray','Enervation','Lowing','Temporal Shift','Actinic Burst'}
		
	--[[Summoning Magic]]--
	
    spirits = S{"LightSpirit","DarkSpirit","FireSpirit","EarthSpirit","WaterSpirit","AirSpirit","IceSpirit","ThunderSpirit"}
    avatars = S{"Carbuncle","Fenrir","Diabolos","Ifrit","Titan","Leviathan","Garuda","Shiva","Ramuh","Odin","Alexander"}

	bptargets_stpc = S{'Healing Ruby','Healing Ruby II'}
	bptargets_me = S{'Shining Ruby','Aerial Armor','Frost Armor','Rolling Thunder','Whispering Wind','Crimson Howl','Lightning Armor',
		'Ecliptic Growl','Glittering Ruby','Earthen Ward','Spring Water','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud'}
	
    magicalRagePacts = S{
        'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon','Ruinous Omen',
        'Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II',
        'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV',
        'Thunderspark','Burning Strike','Meteorite','Nether Blast',
        'Meteor Strike','Heavenly Strike','Wind Blade','Geocrush','Grand Fall','Thunderstorm'}
		
	physicalRagePacts = S{
		'Punch','Rock Throw','Barracuda Dive','Claw','Axe Kick','Shock Strike','Camisado','Poison Nails','Moonlit Charge','Crescent Fang',
		'Rock Buster','Burning Strike','Tail Whip','Double Punch','Megalith Throw','Double Slap','Meteorite',
		'Eclipse Bite','Nether Blast','Flaming Crush','Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike'}
		
	debuffWardPacts = S{
		'Somnolence','Lunar Cry','Nightmare','Lunar Roar','Slowga','Ultimate Terror','Sleepga'}
	
	buffWardPacts = S{
		'Healing Ruby','Shining Ruby','Aerial Armor','Frost Armor','Rolling Thunder','Whispering Wind','Crimson Howl','Lightning Armor',
		'Ecliptic Growl','Glittering Ruby','Earthen Ward','Spring Water','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud','Healing Ruby II'}

    pacts = {}
	pacts.lowlv ={['Carbuncle']='Poison Nails',['Ifrit']='Double Punch',['Garuda']='Claw',['Titan']='Rock Buster',['Shiva']='Double Slap',['Ramuh']='Shock Strike',['Fenrir']='Crescent Fang',['Diabolos']='Camisado'}
    pacts.cure = {['Carbuncle']='Healing Ruby'}
    pacts.curaga = {['Carbuncle']='Healing Ruby II',['Garuda']='Whispering Wind',['Leviathan']='Spring Water'}
    pacts.buffoffense = {['Carbuncle']='Glittering Ruby',['Ifrit']='Crimson Howl',['Garuda']='Hastega',['Ramuh']='Rolling Thunder',
		['Fenrir']='Ecliptic Growl',['Diabolos']='Dream Shroud'}
    pacts.buffdefense = {['Carbuncle']='Shining Ruby',['Shiva']='Frost Armor',['Garuda']='Aerial Armor',['Titan']='Earthen Ward',['Ramuh']='Lightning Armor',
		['Fenrir']='Ecliptic Howl',['Diabolos']='Noctoshield'}
    pacts.debuff1 = {['Fenrir']='Lunar Cry',['Diabolos']='Somnolence'}
    pacts.debuff2 = {['Leviathan']='Slowga',['Fenrir']='Lunar Roar'}
    pacts.sleep = {['Shiva']='Sleepga',['Diabolos']='Nightmare'}
    pacts.nuke2 = {['Ifrit']='Fire II',['Shiva']='Blizzard II',['Garuda']='Aero II',['Titan']='Stone II',['Ramuh']='Thunder II',['Leviathan']='Water II'}
    pacts.nuke4 = {['Ifrit']='Fire IV',['Shiva']='Blizzard IV',['Garuda']='Aero IV',['Titan']='Stone IV',['Ramuh']='Thunder IV',['Leviathan']='Water IV'}
    pacts.lv70 = {['Ifrit']='Flaming Crush',['Shiva']='Rush',['Garuda']='Predator Claws',['Titan']='Mountain Buster',
        ['Ramuh']='Chaotic Strike',['Leviathan']='Spinning Dive',['Carbuncle']='Meteorite',['Fenrir']='Eclipse Bite',['Diabolos']='Nether Blast'}
    pacts.lv75 = {['Ifrit']='Meteor Strike',['Shiva']='Heavenly Strike',['Garuda']='Wind Blade',['Titan']='Geocrush',
        ['Ramuh']='Thunderstorm',['Leviathan']='Grand Fall'}
    pacts.af = {['Ifrit']='Inferno',['Shiva']='Diamond Dust',['Garuda']='Aerial Blast',['Titan']='Earthen Fury',
        ['Ramuh']='Judgment Bolt',['Leviathan']='Tidal Wave',['Carbuncle']='Searing Light',['Fenrir']='Howling Moon',['Diabolos']='Ruinous Omen'}
		
end