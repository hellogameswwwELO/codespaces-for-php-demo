local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local autoclicker = false

local Window = OrionLib:MakeWindow({Name = "Meme Race 😂", HidePremium = false, SaveConfig = false, ConfigFolder = ""})

local Tab_Game = Window:MakeTab({
	Name = "Game",
	Icon = "",
	PremiumOnly = false
})

Tab_Game:AddToggle({
	Name = "Auto Clicker",
	Default = false,
	Callback = function(Value)
		autoclicker = Value
	end    
})

task.spawn(function()
    while wait() do
        if autoclicker then
            game.ReplicatedStorage.Remotes.PlayerClicking:fireServer()
        end
    end
end)
