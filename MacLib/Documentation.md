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
:Unbind()
:Bind(<enum>)
:GetBind(: enum)
```
---

### Dropdown
```lua
Section:Dropdown({
  Name <string>
  Multi <boolean> -- Allow multiple choices?
  Required <boolean> -- Force the user to select at minimum one choice?
  Options <table>
  Default <number or table> -- If Multi is enabled, you must input a table of every option name that you want enabled. If Multi is disabled you must input the order in which the default option is at.
  Callback <function(): string or table> -- If Multi is enabled it returns a table like such: {"Option 1" = true, "Option 2" = true}. If Multi is disabled it will return the name of the selected option.
})
```

```lua
:UpdateName(<string>)
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
```
---

### Divider
```lua
Section:Divider()
```

```lua
:Remove()
```
---

### Spacer
```lua
Section:Spacer()
```

```lua
:Remove()
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
```
