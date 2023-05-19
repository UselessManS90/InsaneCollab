local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Test", "DarkTheme")

-- Main
local Esp = Library.CreateESP()

Esp:AddEnemy(function(enemy)
    -- Draw a red box around the enemy's head.
    local head = enemy.Head
    local size = 20
    Drawing.DrawBox(head.Position, head.Position + Vector3.new(size, size, size), Color3.fromRGB(255, 0, 0))
end)

local Aimbot = Library.CreateAimbot()

-- Aimbot: Simple Mode
Aimbot:SetMode("Simple")

Aimbot:SetTarget(function(enemy)
    -- Get the enemy's head position.
    local head = enemy.Head

    -- Aim at the enemy's head.
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = head.CFrame
end)

-- Aimbot: Insane Mode
Aimbot:SetMode("Insane")

Aimbot:SetTarget(function(enemy)
    -- Get the enemy's head position.
    local head = enemy.Head

    -- Aim at the enemy's head.
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = head.CFrame

    -- Track the enemy's movement.
    while enemy.Parent do
        Aimbot:SetTarget(enemy)
        wait()
    end
end)

local SpeedHack = Library.CreateSpeedHack()

SpeedHack:SetSpeed(10)

-- Credits
local credits = Window:NewTab("Credits")
local CreditSection = credits:NewSection("Credits")
CreditSection:NewLabel("Made by DiemzMastersz, AlohaGyphin, VantaxIO & TRIBAR_RABIRT.")
CreditSection:NewLabel("Kavo UI Library")
CreditSection:NewLabel("Use with caution lol")
