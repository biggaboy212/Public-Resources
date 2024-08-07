local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local CurrentCamera = workspace.CurrentCamera

local MacLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/MacLib/maclib.lua"))()

local Window = MacLib:Window({
    Title = "Karpiware V6",
    Subtitle = "By Proton Utilities",
    Keybind = Enum.KeyCode.RightControl,
    AcrylicBlur = true
})

local function createGlobalSetting(name, defaultState, callback)
    return Window:GlobalSetting({
        Name = name,
        Default = defaultState,
        Callback = callback
    })
end

local function notifyChange(name, state)
    Window:Notify({
        Title = "Karpiware V6",
        Description = (state and "Enabled " or "Disabled ") .. name,
        Lifetime = 5
    })
end

local UIBlurToggle = createGlobalSetting("UI Blur", Window:GetAcrylicBlurState(), function(bool)
    Window:SetAcrylicBlurState(bool)
    notifyChange("UI Blur", bool)
end)

local NotificationToggler = createGlobalSetting("Notifications", Window:GetAcrylicBlurState(), function(bool)
    Window:SetNotificationsState(bool)
    notifyChange("Notifications", bool)
end)

local ShowUserInfo = createGlobalSetting("Show User Info", Window:GetUserInfoState(), function(bool)
    Window:SetUserInfoState(bool)
    Window:Notify({
        Title = "Karpiware V6",
        Description = (bool and "Showing" or "Redacted") .. " User Info",
        Lifetime = 5
    })
end)

local TabGroup = Window:TabGroup()
local TabGroup2 = Window:TabGroup()

local Legit = TabGroup:Tab({
    Name = "Legit",
    Image = "rbxassetid://18821810716"
})

local Settings = TabGroup2:Tab({
    Name = "Settings",
    Image = "rbxassetid://18837556179"
})

local LegitSection_1 = Legit:Section({ Side = "Left" })
local SettingsSection_1 = Settings:Section({ Side = "Left" })

local SilentAimSettings = {
    Enabled = false,
    Hitbox = "Head",
    RandomHitbox = false,
    FovCircle = true,
    Fov = 100,
    HitChance = 100  -- HitChance setting
}

local Hitboxes = { "Head", "Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg" }

local function GetClosest(Fov)
    local Target, Closest = nil, Fov or math.huge

    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= Player then
            local HitboxPart = v.Character:FindFirstChild(SilentAimSettings.Hitbox)
            if SilentAimSettings.RandomHitbox then
                HitboxPart = v.Character:FindFirstChild(Hitboxes[math.random(#Hitboxes)])
            end

            if HitboxPart then
                local Position, OnScreen = CurrentCamera:WorldToScreenPoint(HitboxPart.Position)
                local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

                if Distance < Closest and OnScreen then
                    Closest = Distance
                    Target = v
                end
            end
        end
    end

    if Target and math.random(100) > SilentAimSettings.HitChance then
        Target = nil
    end

    return Target
end

local Target
local CircleInline = Drawing.new("Circle")
local CircleOutline = Drawing.new("Circle")

RunService.Stepped:Connect(function()
    CircleInline.Radius = SilentAimSettings.Fov
    CircleInline.Thickness = 1
    CircleInline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
    CircleInline.Transparency = 0
    CircleInline.Color = Color3.fromRGB(255, 255, 255)
    CircleInline.Visible = SilentAimSettings.Enabled and SilentAimSettings.FovCircle
    CircleInline.ZIndex = 2

    Target = SilentAimSettings.Enabled and GetClosest(SilentAimSettings.Fov)
end)

local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = { ... }

    if not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" then
        if table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character then
            local Origin = Args[1].Origin
            local HitboxPart = Target.Character:FindFirstChild(SilentAimSettings.Hitbox)
            if SilentAimSettings.RandomHitbox then
                HitboxPart = Target.Character:FindFirstChild(Hitboxes[math.random(#Hitboxes)])
            end

            if HitboxPart then
                Args[1] = Ray.new(Origin, HitboxPart.Position - Origin)
            end
        end
    end

    return Old(Self, unpack(Args))
end)

local function createToggle(section, name, default, callback)
    return section:Toggle({
        Name = name,
        Default = default,
        Callback = callback
    })
end

local function createKeybind(section, name, default, callback)
    return section:Keybind({
        Name = name,
        Default = default,
        Callback = callback
    })
end

local function createSlider(section, name, default, min, max, displayMethod, callback)
    return section:Slider({
        Name = name,
        Default = default,
        Minimum = min,
        Maximum = max,
        DisplayMethod = displayMethod,
        Callback = callback
    })
end

local function createInput(section, name, placeholder, acceptedChars, callback)
    return section:Input({
        Name = name,
        Placeholder = placeholder,
        AcceptedCharacters = acceptedChars,
        Callback = callback
    })
end

local SilentAim_Toggle = createToggle(LegitSection_1, "Silent Aim", SilentAimSettings.Enabled, function(value)
    SilentAimSettings.Enabled = value
    notifyChange("Silent Aim", value)
end)

local SilentAim_Keybind = createKeybind(LegitSection_1, "Silent Aim Keybind", Enum.KeyCode.E, function(binded)
    SilentAim_Toggle:UpdateState(not SilentAim_Toggle:GetState())
end)

local SilentAimFOV_Toggle = createToggle(LegitSection_1, "Silent Aim FOV", SilentAimSettings.FovCircle, function(value)
    SilentAimSettings.FovCircle = value
    notifyChange("Silent Aim FOV", value)
end)

local SilentAimFOV_Slider = createSlider(LegitSection_1, "FOV Size", SilentAimSettings.Fov, 0, 1000, "Degrees", function(value)
    SilentAimSettings.Fov = value
end)

local Hitbox_Input = createInput(LegitSection_1, "Hitbox", "R6 Character Part", "Alphabetic", function(input)
    if table.find(Hitboxes, input) then
        SilentAimSettings.Hitbox = input
        Window:Notify({
            Title = "Karpiware V6",
            Description = "Successfully set hitbox to " .. input
        })
    else
        Window:Notify({
            Title = "Karpiware V6",
            Description = "Hitbox must be one of the following - " .. table.concat(Hitboxes, ", ")
        })
    end
end)

local RandomHitbox_Toggle = createToggle(LegitSection_1, "Random Hitbox", SilentAimSettings.RandomHitbox, function(value)
    SilentAimSettings.RandomHitbox = value
    notifyChange("Random Hitbox", value)
end)

local HitChance_Slider = createSlider(LegitSection_1, "Hit Chance", SilentAimSettings.HitChance, 0, 100, "Percent", function(value)
    SilentAimSettings.HitChance = value
end)

local MenuToggle_Keybind = createKeybind(SettingsSection_1, "Menu Keybind", Enum.KeyCode.RightControl, function(binded)
    Window:SetKeybind(binded)
end)

Legit:Select()
