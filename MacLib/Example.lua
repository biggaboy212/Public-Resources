local MacLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/MacLib/maclib.lua"))()

local DemoWindow = MacLib:Window({
	Title = "MacLib Demo",
	Subtitle = "This is a subtitle.",
	Size = UDim2.fromOffset(868, 650),
	ShowUserInfo = true,
	Keybind = Enum.KeyCode.RightControl,
	AcrylicBlur = true,
})
	
local UIBlurToggle = DemoWindow:GlobalSetting({
	Name = "UI Blur",
	Default = DemoWindow:GetAcrylicBlurState(),
	Callback = function(bool)
		DemoWindow:SetAcrylicBlurState(bool)
		DemoWindow:Notify({
			Title = "MacLib Demo",
			Description = (bool and "Enabled" or "Disabled") .. " UI Blur",
			Lifetime = 5
		})
	end,
})
local NotificationToggler = DemoWindow:GlobalSetting({
	Name = "Notifications",
	Default = DemoWindow:GetAcrylicBlurState(),
	Callback = function(bool)
		DemoWindow:SetNotificationsState(bool)
		DemoWindow:Notify({
			Title = "MacLib Demo",
			Description = (bool and "Enabled" or "Disabled") .. " Notifications",
			Lifetime = 5
		})
	end,
})
local ShowUserInfo = DemoWindow:GlobalSetting({
	Name = "Show User Info",
	Default = DemoWindow:GetUserInfoState(),
	Callback = function(bool)
		DemoWindow:SetUserInfoState(bool)
		DemoWindow:Notify({
			Title = "MacLib Demo",
			Description = (bool and "Showing" or "Redacted") .. " User Info",
			Lifetime = 5
		})
	end,
})

local TabGroup = DemoWindow:TabGroup()

local Main = TabGroup:Tab({
	Name = "Demo",
	Image = "rbxassetid://18817196940"
})

local MainSection = Main:Section({
	Side = "Left"
})

MainSection:Button({
	Name = "Button",
	Callback = function()
		DemoWindow:Notify({
			Title = "MacLib Demo",
			Description = "Success!"
		})
	end,
})

MainSection:Input({
	Name = "Input",
	Placeholder = "Input",
	AcceptedCharacters = "All",
	Callback = function(input)
		DemoWindow:Notify({
			Title = "MacLib Demo",
			Description = "Successfully set input to " .. input
		})
	end,
})

MainSection:Slider({
	Name = "Slider",
	Default = 50,
	Minimum = 0,
	Maximum = 100,
	DisplayMethod = "Percent"
})

MainSection:Toggle({
	Name = "Toggle",
	Default = false,
	Callback = function(value)
		DemoWindow:Notify({
			Title = "MacLib Demo",
			Description = (value and "Enabled " or "Disabled ") .. "Toggle"
		})
	end,
})

MainSection:Keybind({
	Name = "Keybind",
	Callback = function(binded)
		DemoWindow:Notify({
			Title = "Demo Window",
			Description = "Successfully pressed keybind - "..tostring(binded.Name),
			Lifetime = 5
		})
	end,
})

MainSection:Dropdown({
	Name = "Dropdown",
	Multi = false,
	Required = true,
	Options = {
		"Option 1",
		"Option 2",
		"Option 3",
		"Option 4",
		"Option 5",
	},
	Default = 1,
	Callback = function(Value)
		print("Dropdown changed: ".. Value)
	end,
})

MainSection:Dropdown({
	Name = "Multi Dropdown",
	Multi = true,
	Required = false,
	Options = {
		"Option 1",
		"Option 2",
		"Option 3",
		"Option 4",
		"Option 5",
	},
	Default = {"Option 1", "Option 3"},
	Callback = function(Value)
		local Values = {}
		for Value, State in next, Value do
			table.insert(Values, Value)
		end
		print("Mutlidropdown changed:", table.concat(Values, ", "))
	end,
})

Main:Select()
