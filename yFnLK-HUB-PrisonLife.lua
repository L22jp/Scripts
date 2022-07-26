if game.PlaceId == 155615604 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Window -- 
local Window = OrionLib:MakeWindow({Name = "FNLK HUB | Prison Life (Cars fixed!)", HidePremium = false, IntroText = "FNLK HUB", SaveConfig = true, ConfigFolder = "OrionTest"})
-- Main --
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4799887091",
	PremiumOnly = false
})
-- Tab Player --
local Section = Tab:AddSection({
	Name = "Player"
})
-- WalkSpeed --
Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Velocity",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end
})
Tab:AddButton({
	Name = "StopWalkSpeed",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
  	end    
})
-- JumpPower --
Tab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end
})
Tab:AddButton({
	Name = "StopJumpPower",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
  	end    
})
-- Health -- 
local Section = Tab:AddSection({
	Name = "Health"
})
Tab:AddSlider({
	Name = "MaxHealth",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "MaxHealth",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = s
	end
})
-- Health -- 
Tab:AddSlider({
	Name = "Health",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Health",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.Health = s
	end
})
-- Invisible -- 
local Section = Tab:AddSection({
	Name = "Invisible"
})
Tab:AddButton({
	Name = "Invisible Body",
	Callback = function()
        local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()
--local player only
for _, part in ipairs(character:GetDescendants()) do
	if part:IsA("BasePart") then
		part.Transparency = 1
	end
end
  	end    
})
-- Teleports -- 
local Tab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://6863521323",
	PremiumOnly = false
})
-- Criminals Spawn -- 
local Section = Tab:AddSection({
	Name = "Criminal"
})
Tab:AddButton({
	Name = "Criminals Spawn",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.845398, 109.323769, 2053.74316, -0.00128220627, -3.02773628e-08, -0.999999166, 1.69631598e-08, 1, -3.02991374e-08, 0.999999166, -1.70019963e-08, -0.00128220627)
  	end    
})
Tab:AddButton({
	Name = "Criminals Garage",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.141479, 95.1272888, 2153.69165, -0.99922049, -8.97453987e-08, 0.0394768715, -8.83686084e-08, 1, 3.66207402e-08, -0.0394768715, 3.3103678e-08, -0.99922049)
  	end    
})
-- Polices Spawn -- 
local Section = Tab:AddSection({
	Name = "Police"
})
Tab:AddButton({
	Name = "Polices Spawn",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(857.08313, 97.1001282, 2317.84131, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})
Tab:AddButton({
	Name = "Polices Garage",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.930908, 98.2000046, 2491.87915, -0.99995178, 1.16960095e-08, -0.00982102845, 1.05723892e-08, 1, 1.14461528e-07, 0.00982102845, 1.14352176e-07, -0.99995178)
  	end    
})
-- Pull --
local Tab = Window:MakeTab({
	Name = "Pull",
	Icon = "rbxassetid://10089419689",
	PremiumOnly = false
})
-- Guns -- 
local Section = Tab:AddSection({
	Name = "Guns"
})
Tab:AddDropdown({
	Name = "Guns",
	Default = "1",
	Options = {"M9", "Remington 870", "AK-47", "M4A1"},
	Callback = function(v)
		local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1) 
	end    
})
-- Items -- 
local Section = Tab:AddSection({
	Name = "Items"
})
Tab:AddDropdown({
	Name = "Items",
	Default = "1",
	Options = {"Key card", "Crude Knife", "Hammer"},
	Callback = function(v)
		local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
	end    
})



end
OrionLib:Init()
