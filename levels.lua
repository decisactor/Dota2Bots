function tocommandname( name )
    prefix = "npc_dota_hero_"
    name = string.lower(name)

    if string.match( name, "anti.*" ) then
        name = "antimage" 
    elseif string.match( name, "clock.*" ) then
        name = "rattletrap"
    elseif string.match( name, "doo.*" ) then
        name = "doom_bringer"
    elseif #name == 2 then
        name = "wisp"
    elseif string.match( name, "life.*" ) then
        name = "life_stealer"
    elseif string.match( name, "magn.*" ) then
        name = "magnataur" 
    elseif string.match( name, "nature.*" ) then
        name = "fusion"
    elseif string.match( name, "necro.*" ) then
        name = "necrolyte"
    elseif string.match( name, "outworld.*" ) then
        name = "obsidian_destroyer"
    elseif string.match( name, "queen.*" ) then
        name = "queenofpain"
    elseif string.match( name, ".*fiend" ) then
        name = "nevermore"
    elseif string.match( name, "timber.*" ) then
        name = "shredder"
    elseif string.match( name, "treant.*" ) then
        name = "treant"
    elseif string.match( name, ".*underlord" ) then
        name = "abyssal_underlord"
    elseif string.match( name, "vengeful.*" ) then
        name = "vengefulspirit"
    elseif string.match( name, "wind.*" ) then
        name = "windrunner"
    elseif string.match( name, "wraith king" ) then
        name = "skeleton_king"
    elseif string.match( name, "zeus" ) then
        name = "zuus"
    else

    end

    return prefix .. string.gsub( name, "[- ]", "_" )
end

local https = require'ssl.https'
local http = require'socket.http'
local htmlparser = require("htmlparser")

body,c,l,head = http.request('http://wiki.teamliquid.net/dota2/Hero_Roles')
local root = htmlparser.parse(body)
roles = root("table[class=\"wikitable\"]")

for i=10,10 do
    for j=1,6 do
        content = roles[i].nodes[j].nodes[1]:getcontent()
        if j % 2 == 0 then
            content = htmlparser.parse(content)
            hero = content("img")
                for k,v in pairs(hero) do
                    print(k,tocommandname(v.attributes["alt"]))
                end
        else
            print(content)
        end
    end
end
