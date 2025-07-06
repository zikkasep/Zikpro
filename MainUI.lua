-- Zik PvP Pro Hub v1.0 - Tema Rezh Style Lengkap

-- LIBRARY
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Zik PvP Pro Hub", "DarkTheme")
local plr = game.Players.LocalPlayer
local hrp = plr.Character:WaitForChild("HumanoidRootPart")

local toggle = {}
local function Save() end -- Placeholder

-- PvP
local PvP = Window:NewTab("PvP")
local pvpSec = PvP:NewSection("Auto PvP")
pvpSec:NewToggle("Auto Bounty", "", function(v) toggle.Bounty = v end)
pvpSec:NewToggle("Auto Skill ZXC", "", function(v) toggle.Skill = v end)
pvpSec:NewToggle("Aimbot Skill", "", function(v) toggle.Aimbot = v end)
pvpSec:NewToggle("No Cooldown", "", function(v) toggle.NoCD = v end)
pvpSec:NewToggle("No Dash Cooldown", "", function(v) toggle.NoDash = v end)
pvpSec:NewToggle("No Jump Cooldown", "", function(v) toggle.NoJump = v end)

-- Farm
local Farm = Window:NewTab("Farm")
Farm:NewToggle("Auto Farm", "", function(v) toggle.AutoFarm = v end)
Farm:NewToggle("Auto Mastery", "", function(v) toggle.AutoMas = v end)
Farm:NewToggle("Farm Boss Only", "", function(v) toggle.Boss = v end)

-- Raid
local Raid = Window:NewTab("Raid")
Raid:NewToggle("Auto Raid", "", function(v) toggle.Raid = v end)
Raid:NewToggle("Auto Buy Chip", "", function(v) toggle.Chip = v end)

-- ESP
local ESP = Window:NewTab("ESP")
ESP:NewToggle("ESP Player", "", function(v) toggle.ESP = v end)

-- Teleport
local TP = Window:NewTab("Teleport")
TP:NewButton("Sea 1", "", function() hrp.CFrame = CFrame.new(0,300,0) end)
TP:NewButton("Sea 2", "", function() hrp.CFrame = CFrame.new(1,300,0) end)
TP:NewButton("Sea 3", "", function() hrp.CFrame = CFrame.new(2,300,0) end)

-- Misc
local Misc = Window:NewTab("Misc")
Misc:NewButton("Hide UI", "", function() Library:ToggleUI() end)
Misc:NewButton("Show UI", "", function() Library:ToggleUI() end)
