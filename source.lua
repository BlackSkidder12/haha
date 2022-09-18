local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Anti-Lag v2", HidePremium = false, IntroText = "Loaded Anti-Lag v2.", IntroEnabled = true, SaveConfig = true, ConfigFolder = "OrionTest"})

-- // tabs

local AntiChestLag = Window:MakeTab({
	Name = "Heals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

function AntiChestlag()
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Chest" then
            v:Destroy()
        end   
      end
end

AntiChestLag:AddBind({
	Name = "Anti-Chestlag",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
		AntiChestlag()
	end    
})
