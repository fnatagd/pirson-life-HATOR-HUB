local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({"HATOR hub: pirson life", "by fnata", "testando-redzLibv5.json"})
Window:AddMinimizeButton({
  Button = { Image = redzlib:GetIcon("rbxassetid://10734950309"), BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})
local Tab1 = Window:MakeTab({"Home", "Home"})
local Tab2 = Window:MakeTab({"Combat", "Sword"})
local Tab3 = Window:MakeTab({"Humanoid", "User"})
local Tab4 = Window:MakeTab({"Misc", "rbxassetid://10734950309"})

Tab4:AddButton({"Rejoin", function()
  	   game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end})

local Paragraph = Tab2:AddParagraph({"Kill Aura", ""})


Tab2:AddButton({"Kill Aura (Rejoin to off)", function()
  	   while wait () do
  for i, e in pairs(game.Players:GetChildren()) do
                        if e ~= game.Players.LocalPlayer then
                            local meleeEvent = game:GetService("ReplicatedStorage").meleeEvent
                            meleeEvent:FireServer(e)
                            
                        end end end 
end})

local Paragraph = Tab2:AddParagraph({"FE sword script", ""})

Tab2:AddButton({"FE sword", function()
  	   local plr=game.Players.LocalPlayer;local tool=Instance.new("Tool",plr.Backpack)tool.GripPos=Vector3.new(0.1,-1,0)tool.Name="Sword"local k=Instance.new("Part",tool)k.Name="Handle"k.Size=Vector3.new(0.4,4,0.4)local l=Instance.new("Animation",tool)l.AnimationId="rbxassetid://218504594"local m=plr.Character.Humanoid:LoadAnimation(l)db=true;da=false;tool.Equipped:connect(function()tool.Activated:connect(function()if db==true then db=false;m:Play()wait()da=true;db=true;wait(0.1)da=false end end)end)k.Touched:connect(function(n)if da==true then local o=n.Parent.Humanoid;if o~=nil then local p=game.Players:FindFirstChild(n.Parent.Name)for j=1,10 do if p.Name~="RealAnimus"then game.ReplicatedStorage.meleeEvent:FireServer(p)end end end end end)
end})

local Paragraph = Tab3:AddParagraph({"Walk Speed", ""})

Tab3:AddSlider({
  Name = "Walk Speed",
  Min = 16,
  Max = 200,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
  end
})

local Paragraph = Tab3:AddParagraph({"Jump Power", ""})

Tab3:AddSlider({
  Name = "Jump Power",
  Min = 50,
  Max = 250,
  Increase = 1,
  Default = 50,
  Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
  end
})

local Paragraph = Tab2:AddParagraph({"Noclip", ""})

Tab2:AddButton({"Noclip (Rejoin to off)", function()
  	   local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end})

Tab1:AddDiscordInvite({
  Name = "HATOR HUB",
  Description = "Join my Discord server for releases and new",
  Logo = "Home",
  Invite = "https://discord.com/invite/a8ptBnWX"
})

Tab1:AddDiscordInvite({
  Name = "My YouTube",
  Description = "YouTube",
  Logo = "Home",
  Invite = "https://www.youtube.com/@unknownskriptscroblox"
})
