settings().Rendering.QualityLevel = 1
local Terrain = game:GetService("Workspace").Terrain

Terrain.WaterWaveSize = 0
Terrain.WaterWaveSpeed = 0
Terrain.WaterReflectance = 0
Terrain.WaterTransparency = 0

local Lighting = game:GetService("Lighting")

Lighting.GlobalShadows = false
Lighting.FogEnd = math.huge

for i,v in pairs(game:GetDescendants()) do
    if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    end
end

for i,v in pairs(Lighting:GetChildren()) do
    if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("Sky") then
        v.Enabled = false
    end
end

local Workspace = game:GetService("Workspace")

Workspace.DescendantAdded:Connect(
    function(a)
        coroutine.wrap(
            function()
                if a:IsA("ForceField") then
                    game:GetService("RunService").Heartbeat:Wait()
                elseif a:IsA("Sparkles") then
                    a:Destroy()
                elseif a:IsA("Smoke") or a:IsA("Fire") then
                    a:Destroy()
                end
            end
        )()
    end
)
