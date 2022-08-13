local function ServerHop()
local GUIDs = {}
local Http = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="))
for i = 1,5 do
    for i,v in pairs(Http.data) do
        if v.playing ~= v.maxPlayers and v.id ~= game.JobId then
            maxPlayers = v.maxPlayers
            table.insert(GUIDs, {id = v.id, users = v.playing})
        end
    end
    print("-","Page searched...")
    if Http.nextPageCursor ~= null then Http = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..Http.nextPageCursor)) else break end
end
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, GUIDs[math.random(1,#GUIDs)].id)
wait(2)
end
