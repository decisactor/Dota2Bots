
local http = require'socket.http'
local https = require 'ssl.https'
local htmlparser = require("htmlparser")

dotabuff = 'https://www.dotabuff.com'
body,c,l,h = https.request(dotabuff .. '/heroes')
local root = htmlparser.parse(body)
heros = root("[class=\"hero-grid\"] > a")


function getlane( link, name )
    body,c,l,head = https.request(link)
    local root = htmlparser.parse(body)
    sections = root("[class=\"col-8\"] > section")
    lanes = htmlparser.parse(sections[1].nodes[2]:getcontent())
    lane = lanes("table > tbody > tr")
    print(name, lane[1].nodes[1]:getcontent())
end

for _,v in pairs(heros) do
    name = v.attributes["href"]
    link = dotabuff .. name
    getlane(link, string.sub(name, 9, -1))
end



