local Stepped = game:GetService("RunService").Stepped:Connect(
    function()
        local Part,distance = CFrame.new(-265.755157, 279.427368, 1000.90588, -0.0678123757, 5.10859834e-08, -0.997698069, 3.46426288e-09, 1, 5.09683886e-08, 0.997698069, -8.63215088e-16, -0.0678123757)
        if game.Players.LocalPlayer.Character then
            local busco = game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
            if busco then
                distance = (game.Players.LocalPlayer.Character.UpperTorso.Position - Part.Position).Magnitude
                local Studs = (math.floor(distance))
                print(Studs)
                if Studs >= 0.5 then
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
                        if Http.nextPageCursor ~= null then Http = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..Http.nextPageCursor))
                        else
                            break
                        end
                    end
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, GUIDs[math.random(1,#GUIDs)].id)
                    wait(2)
                    Stepped:Disconnect()
                end
            end
        end
    end
)
