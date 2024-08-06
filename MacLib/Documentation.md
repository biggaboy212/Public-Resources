# Use
## Getting the loadstring
```lua
local MacLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/MacLib/maclib.lua"))()
```
---
## Loading a window
```lua
local Window = MacLib:Window({
  Title <string>
  Subtitle <string>
  Keybind <enum>
  AcrylicBlur <boolean>
})
```
---
### Adding a Global Setting
```lua
local Global_Setting = DemoWindow:GlobalSetting({
  Name <string>,
  Default <boolean>,
  Callback <function>
})
```
---
## Creating a notification
```lua
Window:Notify({
    Title <string>
    Description <string>
    Lifetime <number>
})
```
---
## Making a tab group
```lua
local TabGroup = Window:TabGroup()
```
---
## Making tabs
```lua
local Tab = TabGroup:Tab({
  Name <string>
  Image <string> -- 16x16 Image
})
```
---
## Adding Sections
```lua
local Section = Main:Section({
  Side <string> -- "Left", "Right"
})
```
---
## Adding Elements & Element Functions
### Button
```lua
MainSection:Button({
  Name <string>
  Callback <function>
})
```
#### Functions
```lua
:UpdateName(<string>)
```
---
### Input
```lua
MainSection:Input({
  Name <string>
  Placeholder <string>
  AcceptedCharacters <string> -- "All", "Numeric", "Alphabetic"
  Callback <function, input>
})
```
#### Functions
```lua
:UpdateName(<string>)
:UpdatePlaceholder(<string>)
:UpdateText(<string>)
```
---
### Slider
```lua
MainSection:Slider({
  Name <string>
  Default <number>
  Minimum <number
  Maximum <number>
  DisplayMethod <string> -- "Hundredths", "Tenths", "Round", "Degrees", "Percent", "Value"
  Callback <function, value>
})
```
#### Functions
```lua
:UpdateName(<string>)
:UpdateValue(<number>)
```
---
### Toggle
```lua
MainSection:Toggle({
  Name <string>
  Default <boolean>
  Callback <function, state>
})
```
#### Functions
```lua
:UpdateName(<string>)
:UpdateState(<boolean>)
```
---
### Keybind
```lua
MainSection:Keybind({
  Name <string>
  Default <enum>
  Callback <function, input>
})
```
#### Functions
```lua
:UpdateName(<string>)
:Unbind()
:Bind(<enum>)
```

---

## Miscellaneous Functions
### Library
```lua
:Demo() -- Brings up a demo window
```
### Window
```lua
:SetState(<boolean>) -- Set window visibility
:GetState() -- Get window visibility
:SetNotificationState(<boolean>) -- Set notification visibility
:GetNotificationState() -- Get notification visibility
:SetAcrylicBlurState(<boolean>) -- Set UI Blur enabled
:GetAcrylicBlurState() -- Get UI Blur enabled
:SetUserInfoState(<boolean>) -- Show or redact user info
:GetUserInfoState() -- Get User Info Visibility
:SetKeybind(<enum>) -- Set window visibility keybind
```
