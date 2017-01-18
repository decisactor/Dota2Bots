

function counter( root, name )
    print(name)
    title = root("div[style$=\"red;\"] > a")
    print("bad")
    for i,e in pairs(title) do
    print(i,e.attributes["title"])
    end

    title = root("div[style$=\"chartreuse;\"] > a")
    print("good")
    for i,e in pairs(title) do
    print(i,e.attributes["title"])
    end

    title = root("div[style$=\"skyblue;\"] > a")
    print("work")
    for i,e in pairs(title) do
    print(i,e.attributes["title"])
    end
end


local http = require'socket.http'
local htmlparser = require("htmlparser")

dota2gamepedia = 'http://dota2.gamepedia.com'
body,c,l,head = http.request(dota2gamepedia)

local root = htmlparser.parse(body)
heros = root("[class=\"heroentry\"]")

for k,v in pairs(heros) do
    name = v.nodes[1].nodes[1].attributes["href"]
    link = dota2gamepedia .. name..'/Counters'
    body,c,l,head = http.request(link)
    local root = htmlparser.parse(body) 
    counter(root, string.sub(name, 2, -1))
end
