# Documentation Formatting

- Each argument is listed with its **name** followed by its **type** in angle brackets (`<>`), indicating the kind of data it expects.

  Example: 
  ```lua
  Title <string>
  ```

- A `...` before a `<table>` type means the function can take **multiple arguments** in a variable-length table.

  Example:
  ```lua
  Tree <...table: FruitName, FruitColor> -- Accepts multiple Fruit definitions, each as a table with a Name and Color.
  ```

- A colon (`:`) after a **type** means those are the arguments that the type expects.

  Example:
  ```lua
  PrintWhat <string: "Hello World", "Goodbye world ):"> -- Expects one of the two strings.
  ```

- A `():` after a **function type** indicates the **return type**.

  Example:
  ```lua
  Callback <function(): string> -- The function returns a string when called.
  ```

- A `(): void` after a **function type** indicates it does not return anything.

  Example:
  ```lua
   Callback <function(): void> -- The function called when the setting is toggled. Returns nothing.
  ```

- `<type or type>` means the argument can accept either type.

  Example:
  ```lua
  Default <number or table> -- Accepts either a number or a table as the default value.
  ```
  
- A `:` **before** a parameter type indicates a parameter is returned with this type.
  
  Example:
  ```lua
  :GetState(: boolean) -- Returns whether the window is currently visible or not.
  ```

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
  DragStyle <number: 1, 2> -- 1: Uses a move icon to drag, ideal for PC. 2: Uses the entire UI to drag, ideal for Mobile.
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
  Callback <function(): void>
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
    Callback <function(): void>
})
```

```lua
:UpdateTitle(<string>)
:UpdateDescription(<string>)
:Cancel()
```
---
## Prompting a dialog
```lua
Window:Dialog({
    Title <string>
    Description <string>
    Buttons <table: <...table: Name, Callback>>
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
  Callback <function() void>
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
  Callback <function(): string> -- Called upon focus lost
  onChanged <function(): string> -- Called upon text changed
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
  onBinded <function(): enum>
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
  Callback <function(): string or table> -- Multi Dropdowns return a table like such {"Option 1" = true, "Option 3" = true,} Single Dropdowns return the name (no table) of the selected option
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
:UpdateSelection(<number or table>)
:InsertOptions(<table>)
:RemoveOptions(<table>)
:IsOption(<string: boolean>)
:GetOptions(: table) -- Returns a table of every option and if its true or false (Example: {"Option 1" = true, "Option 2" = false, "Option 3" = false} etc..)
:ClearOptions()
```
---

### Header
```lua
Section:Header({
  Text <string>
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
  Text <string>
})
```

```lua
:UpdateName(<string>)
:SetVisiblity(<boolean>)
```
---

### Sub-Label
```lua
Section:SubLabel({
  Text <string>
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

:SetScale(<number>) -- Sets the scale of the UI, 1 is the 100& scale (default), 1.5 is 150% scale, 2 is 200%, you get it. ( This uses the UIScale instance, which has several engine bugs and can cause visual issues with certain elements.)
:GetScale(: number) -- Returns the current scale of the UI
```
