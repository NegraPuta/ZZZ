while true do
    wait()
    if Player.Character.Humanoid.Health == 0 then
        ServerHop()
        break
    end
end
