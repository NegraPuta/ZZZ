Player.Character.Humanoid:UnequipTools()
game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_Invisible", "Start"})
for i, v in pairs(getconnections(jugador.PlayerGui.ScreenGui.MenuBtn.MouseButton1Click)) do
    v.Function()
end
for i, v in pairs(getconnections(jugador.Idled)) do
    v:Disable()
end