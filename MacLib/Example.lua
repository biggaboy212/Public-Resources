local MacLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/MacLib/maclib.lua"))()

local Window = MacLib:Window({
	Title = "MacLib Demo",
	Subtitle = "This is a subtitle.",
	Size = UDim2.fromOffset(868, 650),
	DragStyle = 1,
	DisabledWindowControls = {},
	ShowUserInfo = true,
	Keybind = Enum.KeyCode.RightControl,
	AcrylicBlur = true,
})

local globalSettings = {
	UIBlurToggle = Window:GlobalSetting({
		Name = "UI Blur",
		Default = Window:GetAcrylicBlurState(),
		Callback = function(bool)
			Window:SetAcrylicBlurState(bool)
			Window:Notify({
				Title = "MacLib Demo",
				Description = (bool and "Enabled" or "Disabled") .. " UI Blur",
				Lifetime = 5
			})
		end,
	}),
	NotificationToggler = Window:GlobalSetting({
		Name = "Notifications",
		Default = Window:GetNotificationsState(),
		Callback = function(bool)
			Window:SetNotificationsState(bool)
			Window:Notify({
				Title = "MacLib Demo",
				Description = (bool and "Enabled" or "Disabled") .. " Notifications",
				Lifetime = 5
			})
		end,
	}),
	ShowUserInfo = Window:GlobalSetting({
		Name = "Show User Info",
		Default = Window:GetUserInfoState(),
		Callback = function(bool)
			Window:SetUserInfoState(bool)
			Window:Notify({
				Title = "MacLib Demo",
				Description = (bool and "Showing" or "Redacted") .. " User Info",
				Lifetime = 5
			})
		end,
	})
}

local tabGroups = {
	TabGroup1 = Window:TabGroup()
}

local tabs = {
	Main = tabGroups.TabGroup1:Tab({ Name = "Demo", Image = "rbxassetid://18821914323" })
}

local sections = {
	MainSection1 = tabs.Main:Section({ Side = "Left" })
}

sections.MainSection1:Header({
	Name = "Header #1"
})

sections.MainSection1:Button({
	Name = "Button",
	Callback = function()
		Window:Dialog({
			Title = "MacLib Demo",
			Description = "Lorem ipsum odor amet, consectetuer adipiscing elit. Eros vestibulum aliquet mattis, ex platea nunc.",
			Buttons = {
				{
					Name = "Confirm",
					Callback = function()
						print("Confirmed!")
					end,
				},
				{
					Name = "Cancel"
				}
			}
		})
	end,
})

sections.MainSection1:Input({
	Name = "Input",
	Placeholder = "Input",
	AcceptedCharacters = "All",
	Callback = function(input)
		Window:Notify({
			Title = "MacLib Demo",
			Description = "Successfully set input to " .. input
		})
	end,
	onChanged = function(input)
		print("Input is now ".. input)
	end,
})

sections.MainSection1:Slider({
	Name = "Slider",
	Default = 50,
	Minimum = 0,
	Maximum = 100,
	DisplayMethod = "Percent",
	Callback = function(Value)
		print("Changed to ".. Value)
	end,
})

sections.MainSection1:Toggle({
	Name = "Toggle",
	Default = false,
	Callback = function(value)
		Window:Notify({
			Title = "MacLib Demo",
			Description = (value and "Enabled " or "Disabled ") .. "Toggle"
		})
	end,
})

sections.MainSection1:Keybind({
	Name = "Keybind",
	Callback = function(binded)
		Window:Notify({
			Title = "Demo Window",
			Description = "Pressed keybind - "..tostring(binded.Name),
			Lifetime = 3
		})
	end,
	onBinded = function(bind)
		Window:Notify({
			Title = "Demo Window",
			Description = "Successfully Binded Keybind to - "..tostring(bind.Name),
			Lifetime = 3
		})
	end,
})

sections.MainSection1:Colorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(0, 255, 255),
	Callback = function(color)
		print("Color: ", color)
	end,
})

local alphaColorPicker = sections.MainSection1:Colorpicker({
	Name = "Transparency Colorpicker",
	Default = Color3.fromRGB(255,0,0),
	Alpha = 0,
	Callback = function(color, alpha)
		print("Color: ", color, " Alpha: ", alpha)
	end,
})

local rainbowActive
local rainbowConnection
local hue = 0

sections.MainSection1:Toggle({
	Name = "Rainbow",
	Default = false,
	Callback = function(value)
		rainbowActive = value
		if rainbowActive then
			rainbowConnection = game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
				hue = (hue + deltaTime * 0.1) % 1
				local newColor = Color3.fromHSV(hue, 1, 1)
				alphaColorPicker:SetColor(newColor)
			end)
		else
			if rainbowConnection then
				rainbowConnection:Disconnect()
				rainbowConnection = nil
			end
		end
	end,
})

local optionTable = {}

for i = 1,10 do
	local formatted = "Option ".. tostring(i)
	table.insert(optionTable, formatted)
end

local Dropdown = sections.MainSection1:Dropdown({
	Name = "Dropdown",
	Multi = false,
	Required = true,
	Options = optionTable,
	Default = 1,
	Callback = function(Value)
		print("Dropdown changed: ".. Value)
	end,
})

local MultiDropdown = sections.MainSection1:Dropdown({
	Name = "Multi Dropdown",
	Search = true,
	Multi = true,
	Required = false,
	Options = optionTable,
	Default = {"Option 1", "Option 3"},
	Callback = function(Value)
		local Values = {}
		for Value, State in next, Value do
			table.insert(Values, Value)
		end
		print("Mutlidropdown changed:", table.concat(Values, ", "))
	end,
})

sections.MainSection1:Button({
	Name = "Update Selection",
	Callback = function()
		Dropdown:UpdateSelection(4)
		MultiDropdown:UpdateSelection({"Option 2", "Option 5"})
	end,
})

sections.MainSection1:Divider()

sections.MainSection1:Header({
	Text = "Header #2"
})

sections.MainSection1:Paragraph({
	Header = "Paragraph",
	Body = "Paragraph body. Lorem ipsum odor amet, consectetuer adipiscing elit. Morbi tempus netus aliquet per velit est gravida."
})

sections.MainSection1:Label({
	Text = "Label. Lorem ipsum odor amet, consectetuer adipiscing elit."
})

sections.MainSection1:SubLabel({
	Text = "Sub-Label. Lorem ipsum odor amet, consectetuer adipiscing elit."
})

Window.onUnloaded(function()
	print("Unloaded!")
end)

tabs.Main:Select()
