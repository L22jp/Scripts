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
-- JumpPower --
Tab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Velocity",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
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
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
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