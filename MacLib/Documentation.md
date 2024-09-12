# Terms
- Acrylic Blur - UI Blur, do not use for maximum security.
- Global Setting - An option that can be accessed from the 'Globe' icon in the title bar.
- Tab Group - A group of tabs, the 'Tab Group' seperates different sections of tabs.
- Section - A group of elements, this can be on either the left or right side of the window.
- Callback - A function that is called upon interaction with an element. Usually this returns a new value.
# Use
## Loading MacLib
```lua
local MacLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/MacLib/maclib.lua"))()
```
---
## Creating a window
```lua
local Window = MacLib:Window({
  Title <string>
  Subtitle <string>
  Size <UDim2>
  DisabledWindowControls <table: "Exit", "Minimize">
  ShowUserInfo <boolean>
  Keybind <enum>
  AcrylicBlur <boolean>
})
```
---
## Adding a Global Setting
```lua
local Global_Setting = Window:GlobalSetting({
  Name <string>
  Default <boolean>
  Callback <function>
})
```
---
## Displaying a notification
```lua
Window:Notify({
    Title <string>
    Description <string>
    Lifetime <number>
    Style <string: "None", "Confirm", "Cancel"> -- The type of button that the user interacts with, input "None" for no interactable (or leave nil), input "Confirm" for a checkmark, and input "Cancel" for a crossmark.
    Callback <function>
})
```

```lua
:UpdateTitle(<string>)
:UpdateDescription(<string>)
:Cancel()
```
---
## Creating a tab group
```lua
local TabGroup = Window:TabGroup()
```
---
## Adding tabs
```lua
local Tab = TabGroup:Tab({
  Name <string>
  Image <string> -- Image can be at maximum 16 pixels wide and 16 pixels tall.
})
```

```lua
:Select()
```
---
## Adding Sections
```lua
local Section = Main:Section({
  Side <string: "Left", "Right">
})
```
---
## Adding Elements

### Button
```lua
Section:Button({
  Name <string>
  Callback <function>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
```
---

### Input
```lua
Section:Input({
  Name <string>
  Placeholder <string>
  AcceptedCharacters <string: "All", "Numeric", "Alphabetic">
  Callback <function(): string>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
:GetInput(: string)
:UpdatePlaceholder(<string>)
:UpdateText(<string>)
```
---

### Slider
```lua
Section:Slider({
  Name <string>
  Default <number>
  Minimum <number>
  Maximum <number>
  DisplayMethod <string: "Hundredths", "Tenths", "Round", "Degrees", "Percent", "Value">
  Callback <function(): number>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
:UpdateValue(<number>)
:GetValue(: number)
```
---

### Toggle
```lua
Section:Toggle({
  Name <string>
  Default <boolean>
  Callback <function(): boolean>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
:UpdateState(<boolean>)
:GetState(: boolean)
```
---

### Keybind
```lua
Section:Keybind({
  Name <string>
  Default <enum>
  Callback <function(): enum>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
:Unbind()
:Bind(<enum>)
:GetBind(: enum)
```
---

### Dropdown
```lua
Section:Dropdown({
  Name <string>
  Search <boolean> -- Enable searching?
  Multi <boolean> -- Allow multiple choices?
  Required <boolean> -- Force the user to select at minimum one choice?
  Options <table>
  Default <number or table> -- If Multi is enabled, you must input a table of every option name that you want enabled. If Multi is disabled you must input the order in which the default option is at.
  Callback <function(): string or table> -- Multi Dropdowns return a table of the name of every selected option, Single Dropdowns return the name (no table) of the selected option
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
:UpdateSelection(<number or table>)
```
---

### Header
```lua
Section:Header({
  Name <string>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
```
---

### Paragraph
```lua
Section:Paragraph({
  Header <string>
  Body <string>
})
```

```lua
:SetVisiblity(<boolean>)
:UpdateHeader(<string>)
:UpdateBody(<string>)
```
---

### Label
```lua
Section:Label({
  Name <string>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
```
---

### Divider
```lua
Section:Divider()
```

```lua
:Remove()
:SetVisiblity(<boolean>)
```
---

### Spacer
```lua
Section:Spacer()
```

```lua
:Remove()
:SetVisiblity(<boolean>)
```
---

## Miscellaneous 
### Library
```lua
:Demo() -- Brings up a demo window
```
### Window
```lua
:Unload() -- Destroy the window

:SetState(<boolean>) -- Set window visibility
:GetState(: boolean) -- Get window visibility

:SetNotificationsState(<boolean>) -- Set notification visibility
:GetNotificationsState(: boolean) -- Get notification visibility

:SetAcrylicBlurState(<boolean>) -- Set UI Blur enabled
:GetAcrylicBlurState(: boolean) -- Get UI Blur enabled

:SetUserInfoState(<boolean>) -- Show or redact user info
:GetUserInfoState(: boolean) -- Get User Info Visibility

:SetKeybind(<enum>) -- Set window visibility keybind

:SetSize(<UDim2>) -- Sets the UI size
:GetSize(: UDim2) -- Returns the current UI Size

:SetScale(<number) -- Sets the scale of the UI, 1 is the regular scale, 2 is twice the scale, you get it. ( This uses the UIScale instance, which has several engine bugs and can cause visual issues with certain elements.)
:GetScale(: number) -- Returns the current scale of the UI
```
