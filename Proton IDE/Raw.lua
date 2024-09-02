--[[
	-> Proton IDE Raw <-

	@ version Module 1.0
	@ author biggaboy212
	@ description IDE replacement with advanced syntax
]]

-- Instances: 226 | Scripts: 18 | Modules: 11 | Tags: 0
local G2L = {};

-- StarterGui.Proton_IDE
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 100;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.None;
G2L["1"]["Name"] = [[Proton_IDE]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Proton_IDE.UnlockMouse
G2L["2"] = Instance.new("TextButton", G2L["1"]);
G2L["2"]["Active"] = false;
G2L["2"]["Interactable"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["Modal"] = true;
G2L["2"]["TextSize"] = 14;
G2L["2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Name"] = [[UnlockMouse]];
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body
G2L["3"] = Instance.new("Frame", G2L["1"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[Body]];


-- StarterGui.Proton_IDE.Body.Settings
G2L["4"] = Instance.new("Folder", G2L["3"]);
G2L["4"]["Name"] = [[Settings]];


-- StarterGui.Proton_IDE.Body.Settings.MenuKeybind
G2L["5"] = Instance.new("StringValue", G2L["4"]);
G2L["5"]["Name"] = [[MenuKeybind]];
G2L["5"]["Value"] = [[Insert]];


-- StarterGui.Proton_IDE.Body.Settings.EnableChatCommand
G2L["6"] = Instance.new("BoolValue", G2L["4"]);
G2L["6"]["Name"] = [[EnableChatCommand]];


-- StarterGui.Proton_IDE.Body.Settings.EditorScale
G2L["7"] = Instance.new("NumberValue", G2L["4"]);
G2L["7"]["Name"] = [[EditorScale]];
G2L["7"]["Value"] = 1;


-- StarterGui.Proton_IDE.Body.MainHandler
G2L["8"] = Instance.new("LocalScript", G2L["3"]);
G2L["8"]["Name"] = [[MainHandler]];
-- Attributes
G2L["8"]:SetAttribute([[IDEAccent]], Color3.fromRGB(76, 86, 101));


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule
G2L["9"] = Instance.new("ModuleScript", G2L["8"]);
G2L["9"]["Name"] = [[TabModule]];


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab
G2L["a"] = Instance.new("TextButton", G2L["9"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["AutoButtonColor"] = false;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["a"]["Size"] = UDim2.new(0, 175, 1, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["LayoutOrder"] = 1;
G2L["a"]["Name"] = [[Tab]];
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Elements
G2L["b"] = Instance.new("Frame", G2L["a"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[Elements]];
G2L["b"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Elements.UIPadding
G2L["c"] = Instance.new("UIPadding", G2L["b"]);
G2L["c"]["PaddingRight"] = UDim.new(0, 10);
G2L["c"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Elements.Close
G2L["d"] = Instance.new("ImageButton", G2L["b"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["AutoButtonColor"] = false;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["d"]["Image"] = [[rbxassetid://7743878857]];
G2L["d"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Name"] = [[Close]];
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Elements.Icon
G2L["e"] = Instance.new("ImageLabel", G2L["b"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["ImageColor3"] = Color3.fromRGB(181, 181, 181);
G2L["e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["e"]["Image"] = [[rbxassetid://7733789088]];
G2L["e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Name"] = [[Icon]];
G2L["e"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Elements.Title
G2L["f"] = Instance.new("TextBox", G2L["b"]);
G2L["f"]["Active"] = false;
G2L["f"]["Interactable"] = false;
G2L["f"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
G2L["f"]["PlaceholderColor3"] = Color3.fromRGB(126, 126, 126);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 15;
G2L["f"]["Name"] = [[Title]];
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["f"]["PlaceholderText"] = [[tab.lua]];
G2L["f"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Tab.lua]];
G2L["f"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Elements.Title.UIPadding
G2L["10"] = Instance.new("UIPadding", G2L["f"]);
G2L["10"]["PaddingRight"] = UDim.new(0, 20);
G2L["10"]["PaddingLeft"] = UDim.new(0, 30);


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.ToggledIndicator
G2L["11"] = Instance.new("Frame", G2L["a"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["11"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["11"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["11"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[ToggledIndicator]];


-- StarterGui.Proton_IDE.Body.MainHandler.TabModule.Tab.Seperator
G2L["12"] = Instance.new("Frame", G2L["a"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["12"]["Size"] = UDim2.new(0, 1, 1, 0);
G2L["12"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Seperator]];
G2L["12"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule
G2L["13"] = Instance.new("ModuleScript", G2L["8"]);
G2L["13"]["Name"] = [[ScriptModule]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript
G2L["14"] = Instance.new("Frame", G2L["13"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[NewScript]];
G2L["14"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptImage
G2L["15"] = Instance.new("ImageLabel", G2L["14"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["ScaleType"] = Enum.ScaleType.Crop;
G2L["15"]["ImageColor3"] = Color3.fromRGB(101, 101, 101);
G2L["15"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["15"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Name"] = [[ScriptImage]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptImage.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);



-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptImage.Shadow
G2L["17"] = Instance.new("ImageLabel", G2L["15"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["ImageTransparency"] = 0.2;
G2L["17"]["Image"] = [[rbxassetid://17601143211]];
G2L["17"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Rotation"] = 180;
G2L["17"]["Name"] = [[Shadow]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptImage.Shadow.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.UICorner
G2L["19"] = Instance.new("UICorner", G2L["14"]);



-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.UIStroke
G2L["1a"] = Instance.new("UIStroke", G2L["14"]);
G2L["1a"]["Transparency"] = 0.9;
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1a"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions
G2L["1b"] = Instance.new("Frame", G2L["14"]);
G2L["1b"]["ZIndex"] = 2;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Actions]];
G2L["1b"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.UIPadding
G2L["1c"] = Instance.new("UIPadding", G2L["1b"]);
G2L["1c"]["PaddingTop"] = UDim.new(0, 15);
G2L["1c"]["PaddingRight"] = UDim.new(0, 15);
G2L["1c"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1c"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.UIListLayout
G2L["1d"] = Instance.new("UIListLayout", G2L["1b"]);
G2L["1d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1d"]["Padding"] = UDim.new(0, 5);
G2L["1d"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["1d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Run
G2L["1e"] = Instance.new("TextButton", G2L["1b"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["AutoButtonColor"] = false;
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(48, 176, 46);
G2L["1e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["1e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1e"]["LayoutOrder"] = 1;
G2L["1e"]["Name"] = [[Run]];
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[Run]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Run.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1e"]);
G2L["1f"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Run.UIPadding
G2L["20"] = Instance.new("UIPadding", G2L["1e"]);
G2L["20"]["PaddingTop"] = UDim.new(0, 5);
G2L["20"]["PaddingRight"] = UDim.new(0, 10);
G2L["20"]["PaddingLeft"] = UDim.new(0, 10);
G2L["20"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Run.Animate
G2L["21"] = Instance.new("LocalScript", G2L["1e"]);
G2L["21"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Open
G2L["22"] = Instance.new("TextButton", G2L["1b"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["AutoButtonColor"] = false;
G2L["22"]["TextSize"] = 14;
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 201);
G2L["22"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["22"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["22"]["LayoutOrder"] = 2;
G2L["22"]["Name"] = [[Open]];
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[Open]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Open.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Open.UIPadding
G2L["24"] = Instance.new("UIPadding", G2L["22"]);
G2L["24"]["PaddingTop"] = UDim.new(0, 5);
G2L["24"]["PaddingRight"] = UDim.new(0, 10);
G2L["24"]["PaddingLeft"] = UDim.new(0, 10);
G2L["24"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Open.Animate
G2L["25"] = Instance.new("LocalScript", G2L["22"]);
G2L["25"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Animator
G2L["26"] = Instance.new("ModuleScript", G2L["1b"]);
G2L["26"]["Name"] = [[Animator]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptName
G2L["27"] = Instance.new("TextLabel", G2L["14"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["27"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["TextSize"] = 19;
G2L["27"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[Script Name]];
G2L["27"]["Name"] = [[ScriptName]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptName.UIPadding
G2L["28"] = Instance.new("UIPadding", G2L["27"]);
G2L["28"]["PaddingTop"] = UDim.new(0, 13);
G2L["28"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptDescription
G2L["29"] = Instance.new("TextLabel", G2L["14"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["TextSize"] = 16;
G2L["29"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(246, 246, 246);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(0.65, 0, 1, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[Script Description, Lorem Ipsum.]];
G2L["29"]["Name"] = [[ScriptDescription]];


-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.ScriptDescription.UIPadding
G2L["2a"] = Instance.new("UIPadding", G2L["29"]);
G2L["2a"]["PaddingTop"] = UDim.new(0, 37);
G2L["2a"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.MainHandler.PresetScripts
G2L["2b"] = Instance.new("ModuleScript", G2L["8"]);
G2L["2b"]["Name"] = [[PresetScripts]];


-- StarterGui.Proton_IDE.Body.MainHandler.PresetScripts.testimage
G2L["2c"] = Instance.new("ImageLabel", G2L["2b"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[testimage]];


-- StarterGui.Proton_IDE.Body.MainHandler.WriteModule
G2L["2d"] = Instance.new("ModuleScript", G2L["8"]);
G2L["2d"]["Name"] = [[WriteModule]];


-- StarterGui.Proton_IDE.Body.MainHandler.WriteModule.NewLine
G2L["2e"] = Instance.new("TextBox", G2L["2d"]);
G2L["2e"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["2e"]["PlaceholderColor3"] = Color3.fromRGB(201, 201, 201);
G2L["2e"]["ZIndex"] = 5;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["TextSize"] = 16;
G2L["2e"]["Name"] = [[NewLine]];
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2e"]["RichText"] = true;
G2L["2e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["2e"]["ClearTextOnFocus"] = false;
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[]];
G2L["2e"]["LayoutOrder"] = 1;
G2L["2e"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.MainHandler.WriteModule.NewLine.Content
G2L["2f"] = Instance.new("TextLabel", G2L["2e"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f"]["TextTransparency"] = 1;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["TextSize"] = 16;
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Visible"] = false;
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[]];
G2L["2f"]["Name"] = [[Content]];


-- StarterGui.Proton_IDE.Body.MainHandler.IDEModule
G2L["30"] = Instance.new("ModuleScript", G2L["8"]);
G2L["30"]["Name"] = [[IDEModule]];


-- StarterGui.Proton_IDE.Body.BottomBar
G2L["31"] = Instance.new("Frame", G2L["3"]);
G2L["31"]["ZIndex"] = 3;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["31"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 45);
G2L["31"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[BottomBar]];


-- StarterGui.Proton_IDE.Body.BottomBar.Left
G2L["32"] = Instance.new("Frame", G2L["31"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["32"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["32"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[Left]];
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.BottomBar.Left.State
G2L["33"] = Instance.new("TextLabel", G2L["32"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["TextSize"] = 15;
G2L["33"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["33"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[n/a]];
G2L["33"]["LayoutOrder"] = 2;
G2L["33"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["33"]["Name"] = [[State]];


-- StarterGui.Proton_IDE.Body.BottomBar.Left.List
G2L["34"] = Instance.new("UIListLayout", G2L["32"]);
G2L["34"]["Padding"] = UDim.new(0, 12);
G2L["34"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["34"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["34"]["Name"] = [[List]];
G2L["34"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.BottomBar.Left.Indicator
G2L["35"] = Instance.new("Frame", G2L["32"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["35"]["Size"] = UDim2.new(0, 10, 0, 10);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Name"] = [[Indicator]];
G2L["35"]["LayoutOrder"] = 1;


-- StarterGui.Proton_IDE.Body.BottomBar.Left.Indicator.UICorner
G2L["36"] = Instance.new("UICorner", G2L["35"]);
G2L["36"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Proton_IDE.Body.BottomBar.Left.Padding
G2L["37"] = Instance.new("UIPadding", G2L["32"]);
G2L["37"]["PaddingRight"] = UDim.new(0, 10);
G2L["37"]["Name"] = [[Padding]];
G2L["37"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.BottomBar.Right
G2L["38"] = Instance.new("Frame", G2L["31"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["38"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["38"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Name"] = [[Right]];
G2L["38"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.BottomBar.Right.List
G2L["39"] = Instance.new("UIListLayout", G2L["38"]);
G2L["39"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["39"]["Padding"] = UDim.new(0, 3);
G2L["39"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["39"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["39"]["Name"] = [[List]];
G2L["39"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute
G2L["3a"] = Instance.new("TextButton", G2L["38"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["AutoButtonColor"] = false;
G2L["3a"]["TextSize"] = 14;
G2L["3a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3a"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["LayoutOrder"] = 2;
G2L["3a"]["Name"] = [[Execute]];
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Icon
G2L["3b"] = Instance.new("ImageLabel", G2L["3a"]);
G2L["3b"]["ImageColor3"] = Color3.fromRGB(181, 181, 181);
G2L["3b"]["Image"] = [[rbxassetid://7733917120]];
G2L["3b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["LayoutOrder"] = 2;
G2L["3b"]["Name"] = [[Icon]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Icon.UIAspectRatioConstraint
G2L["3c"] = Instance.new("UIAspectRatioConstraint", G2L["3b"]);



-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Label
G2L["3d"] = Instance.new("TextLabel", G2L["3a"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["TextSize"] = 15;
G2L["3d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["3d"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
G2L["3d"]["BackgroundTransparency"] = 10;
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[Execute]];
G2L["3d"]["LayoutOrder"] = 1;
G2L["3d"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["3d"]["Name"] = [[Label]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.List
G2L["3e"] = Instance.new("UIListLayout", G2L["3a"]);
G2L["3e"]["Padding"] = UDim.new(0, 10);
G2L["3e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["3e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["3e"]["Name"] = [[List]];
G2L["3e"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Padding
G2L["3f"] = Instance.new("UIPadding", G2L["3a"]);
G2L["3f"]["PaddingTop"] = UDim.new(0, 5);
G2L["3f"]["PaddingRight"] = UDim.new(0, 10);
G2L["3f"]["Name"] = [[Padding]];
G2L["3f"]["PaddingLeft"] = UDim.new(0, 10);
G2L["3f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Rounding
G2L["40"] = Instance.new("UICorner", G2L["3a"]);
G2L["40"]["Name"] = [[Rounding]];
G2L["40"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Animate
G2L["41"] = Instance.new("LocalScript", G2L["3a"]);
G2L["41"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear
G2L["42"] = Instance.new("TextButton", G2L["38"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["AutoButtonColor"] = false;
G2L["42"]["TextSize"] = 14;
G2L["42"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["LayoutOrder"] = 1;
G2L["42"]["Name"] = [[Clear]];
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Icon
G2L["43"] = Instance.new("ImageLabel", G2L["42"]);
G2L["43"]["ImageColor3"] = Color3.fromRGB(181, 181, 181);
G2L["43"]["Image"] = [[rbxassetid://7743873772]];
G2L["43"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["43"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["LayoutOrder"] = 2;
G2L["43"]["Name"] = [[Icon]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Icon.UIAspectRatioConstraint
G2L["44"] = Instance.new("UIAspectRatioConstraint", G2L["43"]);



-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Label
G2L["45"] = Instance.new("TextLabel", G2L["42"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["TextSize"] = 15;
G2L["45"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["45"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
G2L["45"]["BackgroundTransparency"] = 10;
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[Clear]];
G2L["45"]["LayoutOrder"] = 1;
G2L["45"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["45"]["Name"] = [[Label]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.List
G2L["46"] = Instance.new("UIListLayout", G2L["42"]);
G2L["46"]["Padding"] = UDim.new(0, 10);
G2L["46"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["46"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["46"]["Name"] = [[List]];
G2L["46"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Padding
G2L["47"] = Instance.new("UIPadding", G2L["42"]);
G2L["47"]["PaddingTop"] = UDim.new(0, 5);
G2L["47"]["PaddingRight"] = UDim.new(0, 10);
G2L["47"]["Name"] = [[Padding]];
G2L["47"]["PaddingLeft"] = UDim.new(0, 10);
G2L["47"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Rounding
G2L["48"] = Instance.new("UICorner", G2L["42"]);
G2L["48"]["Name"] = [[Rounding]];
G2L["48"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Animate
G2L["49"] = Instance.new("LocalScript", G2L["42"]);
G2L["49"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Animator
G2L["4a"] = Instance.new("ModuleScript", G2L["38"]);
G2L["4a"]["Name"] = [[Animator]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach
G2L["4b"] = Instance.new("TextButton", G2L["38"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["AutoButtonColor"] = false;
G2L["4b"]["TextSize"] = 14;
G2L["4b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["LayoutOrder"] = 4;
G2L["4b"]["Name"] = [[Attach]];
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Icon
G2L["4c"] = Instance.new("ImageLabel", G2L["4b"]);
G2L["4c"]["ImageColor3"] = Color3.fromRGB(181, 181, 181);
G2L["4c"]["Image"] = [[rbxassetid://7733673229]];
G2L["4c"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["LayoutOrder"] = 2;
G2L["4c"]["Name"] = [[Icon]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Icon.UIAspectRatioConstraint
G2L["4d"] = Instance.new("UIAspectRatioConstraint", G2L["4c"]);



-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Label
G2L["4e"] = Instance.new("TextLabel", G2L["4b"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["TextSize"] = 15;
G2L["4e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["4e"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
G2L["4e"]["BackgroundTransparency"] = 10;
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Text"] = [[Attach]];
G2L["4e"]["LayoutOrder"] = 1;
G2L["4e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["4e"]["Name"] = [[Label]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.List
G2L["4f"] = Instance.new("UIListLayout", G2L["4b"]);
G2L["4f"]["Padding"] = UDim.new(0, 10);
G2L["4f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["4f"]["Name"] = [[List]];
G2L["4f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Padding
G2L["50"] = Instance.new("UIPadding", G2L["4b"]);
G2L["50"]["PaddingTop"] = UDim.new(0, 5);
G2L["50"]["PaddingRight"] = UDim.new(0, 10);
G2L["50"]["Name"] = [[Padding]];
G2L["50"]["PaddingLeft"] = UDim.new(0, 10);
G2L["50"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Rounding
G2L["51"] = Instance.new("UICorner", G2L["4b"]);
G2L["51"]["Name"] = [[Rounding]];
G2L["51"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Animate
G2L["52"] = Instance.new("LocalScript", G2L["4b"]);
G2L["52"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.BottomBar.Right.Seperator
G2L["53"] = Instance.new("Frame", G2L["38"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(0, 15, 1, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[Seperator]];
G2L["53"]["LayoutOrder"] = 3;
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.BottomBar.Right.UIPadding
G2L["54"] = Instance.new("UIPadding", G2L["38"]);
G2L["54"]["PaddingTop"] = UDim.new(0, 3);
G2L["54"]["PaddingRight"] = UDim.new(0, 15);
G2L["54"]["PaddingLeft"] = UDim.new(0, 5);
G2L["54"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.Proton_IDE.Body.BottomBar.Divider
G2L["55"] = Instance.new("Frame", G2L["31"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Name"] = [[Divider]];
G2L["55"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Proton_IDE.Body.Content
G2L["56"] = Instance.new("Frame", G2L["3"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Name"] = [[Content]];
G2L["56"]["LayoutOrder"] = 1;
G2L["56"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Padding
G2L["57"] = Instance.new("UIPadding", G2L["56"]);
G2L["57"]["Name"] = [[Padding]];
G2L["57"]["PaddingLeft"] = UDim.new(0, 80);
G2L["57"]["PaddingBottom"] = UDim.new(0, 45);


-- StarterGui.Proton_IDE.Body.Content.Console
G2L["58"] = Instance.new("Frame", G2L["56"]);
G2L["58"]["Visible"] = false;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["58"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Name"] = [[Console]];


-- StarterGui.Proton_IDE.Body.Content.Console.UIPadding
G2L["59"] = Instance.new("UIPadding", G2L["58"]);
G2L["59"]["PaddingTop"] = UDim.new(0, 10);
G2L["59"]["PaddingRight"] = UDim.new(0, 5);
G2L["59"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Console.Lines
G2L["5a"] = Instance.new("ScrollingFrame", G2L["58"]);
G2L["5a"]["Active"] = true;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["5a"]["Name"] = [[Lines]];
G2L["5a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["5a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["ScrollBarThickness"] = 3;
G2L["5a"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["5a"]:SetAttribute([[ScrollSpeed]], 20);


-- StarterGui.Proton_IDE.Body.Content.Console.Lines.UIPadding
G2L["5b"] = Instance.new("UIPadding", G2L["5a"]);
G2L["5b"]["PaddingRight"] = UDim.new(0, 5);
G2L["5b"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Console.Lines.UIListLayout
G2L["5c"] = Instance.new("UIListLayout", G2L["5a"]);
G2L["5c"]["Padding"] = UDim.new(0, 5);
G2L["5c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Proton_IDE.Body.Content.Console.Lines.Scrolling
G2L["5d"] = Instance.new("LocalScript", G2L["5a"]);
G2L["5d"]["Name"] = [[Scrolling]];


-- StarterGui.Proton_IDE.Body.Content.Console.Lines.Scrolling.Scroll
G2L["5e"] = Instance.new("ModuleScript", G2L["5d"]);
G2L["5e"]["Name"] = [[Scroll]];


-- StarterGui.Proton_IDE.Body.Content.Execution
G2L["5f"] = Instance.new("Frame", G2L["56"]);
G2L["5f"]["Visible"] = false;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Name"] = [[Execution]];
G2L["5f"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar
G2L["60"] = Instance.new("Frame", G2L["5f"]);
G2L["60"]["ZIndex"] = 100;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 45);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[TabBar]];


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Seperator
G2L["61"] = Instance.new("Frame", G2L["60"]);
G2L["61"]["ZIndex"] = 0;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["61"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Name"] = [[Seperator]];
G2L["61"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls
G2L["62"] = Instance.new("Frame", G2L["60"]);
G2L["62"]["ZIndex"] = 2;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Name"] = [[Controls]];
G2L["62"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add
G2L["63"] = Instance.new("TextButton", G2L["62"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["AutoButtonColor"] = false;
G2L["63"]["TextSize"] = 14;
G2L["63"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["ZIndex"] = 2;
G2L["63"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["63"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Name"] = [[Add]];
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Text"] = [[]];
G2L["63"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);
G2L["64"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add.Plus
G2L["65"] = Instance.new("ImageLabel", G2L["63"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["ImageColor3"] = Color3.fromRGB(181, 181, 181);
G2L["65"]["Image"] = [[rbxassetid://7734042071]];
G2L["65"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["BackgroundTransparency"] = 1;
G2L["65"]["Name"] = [[Plus]];


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add.UIPadding
G2L["66"] = Instance.new("UIPadding", G2L["63"]);
G2L["66"]["PaddingTop"] = UDim.new(0, 5);
G2L["66"]["PaddingRight"] = UDim.new(0, 5);
G2L["66"]["PaddingLeft"] = UDim.new(0, 5);
G2L["66"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add.Animate
G2L["67"] = Instance.new("LocalScript", G2L["63"]);
G2L["67"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add.UIStroke
G2L["68"] = Instance.new("UIStroke", G2L["63"]);
G2L["68"]["Transparency"] = 0.95;
G2L["68"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["68"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.UIPadding
G2L["69"] = Instance.new("UIPadding", G2L["62"]);
G2L["69"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Animator
G2L["6a"] = Instance.new("ModuleScript", G2L["62"]);
G2L["6a"]["Name"] = [[Animator]];


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Tabs
G2L["6b"] = Instance.new("Frame", G2L["60"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[Tabs]];
G2L["6b"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Tabs.Scrolling
G2L["6c"] = Instance.new("ScrollingFrame", G2L["6b"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["6c"]["TopImage"] = [[]];
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["6c"]["Name"] = [[Scrolling]];
G2L["6c"]["ScrollBarImageTransparency"] = 1;
G2L["6c"]["BottomImage"] = [[]];
G2L["6c"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["6c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["ScrollBarThickness"] = 0;
G2L["6c"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Tabs.Scrolling.UIListLayout
G2L["6d"] = Instance.new("UIListLayout", G2L["6c"]);
G2L["6d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["6d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Tabs.Scrolling.AutoScroll
G2L["6e"] = Instance.new("LocalScript", G2L["6c"]);
G2L["6e"]["Name"] = [[AutoScroll]];


-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Tabs.UIPadding
G2L["6f"] = Instance.new("UIPadding", G2L["6b"]);
G2L["6f"]["PaddingRight"] = UDim.new(0, 65);


-- StarterGui.Proton_IDE.Body.Content.Execution.InitWarn
G2L["70"] = Instance.new("TextLabel", G2L["5f"]);
G2L["70"]["ZIndex"] = 0;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["TextSize"] = 16;
G2L["70"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["70"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Text"] = [[IDE not initialized]];
G2L["70"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["70"]["Name"] = [[InitWarn]];
G2L["70"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.Content.ScriptHub
G2L["71"] = Instance.new("Frame", G2L["56"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Name"] = [[ScriptHub]];
G2L["71"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.ScriptHub.ScrollingFrame
G2L["72"] = Instance.new("ScrollingFrame", G2L["71"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["ScrollBarImageTransparency"] = 0.5;
G2L["72"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["72"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["ScrollBarThickness"] = 3;
G2L["72"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.ScriptHub.ScrollingFrame.UIGridLayout
G2L["73"] = Instance.new("UIGridLayout", G2L["72"]);
G2L["73"]["CellSize"] = UDim2.new(0, 350, 0, 200);
G2L["73"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["73"]["CellPadding"] = UDim2.new(0, 20, 0, 20);


-- StarterGui.Proton_IDE.Body.Content.ScriptHub.ScrollingFrame.UIPadding
G2L["74"] = Instance.new("UIPadding", G2L["72"]);
G2L["74"]["PaddingTop"] = UDim.new(0, 30);
G2L["74"]["PaddingRight"] = UDim.new(0, 30);
G2L["74"]["PaddingLeft"] = UDim.new(0, 30);
G2L["74"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.Proton_IDE.Body.Content.Settings
G2L["75"] = Instance.new("Frame", G2L["56"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Name"] = [[Settings]];
G2L["75"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller
G2L["76"] = Instance.new("ScrollingFrame", G2L["75"]);
G2L["76"]["Active"] = true;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Name"] = [[SettingsScroller]];
G2L["76"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["76"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["ScrollBarThickness"] = 3;
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings
G2L["77"] = Instance.new("Frame", G2L["76"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[MenuSettings]];
G2L["77"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind
G2L["78"] = Instance.new("Frame", G2L["77"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["78"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[Keybind]];
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.Title
G2L["79"] = Instance.new("TextLabel", G2L["78"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["TextSize"] = 15;
G2L["79"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["79"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["79"]["BackgroundTransparency"] = 1;
G2L["79"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[Menu Keybind]];
G2L["79"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["79"]["Name"] = [[Title]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.Title.UIPadding
G2L["7a"] = Instance.new("UIPadding", G2L["79"]);
G2L["7a"]["PaddingRight"] = UDim.new(0, 55);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.Binder
G2L["7b"] = Instance.new("TextBox", G2L["78"]);
G2L["7b"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["Name"] = [[Binder]];
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["7b"]["Selectable"] = false;
G2L["7b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["7b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7b"]["PlaceholderText"] = [[...]];
G2L["7b"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["7b"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[]];
G2L["7b"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.Binder.UIStroke
G2L["7c"] = Instance.new("UIStroke", G2L["7b"]);
G2L["7c"]["Transparency"] = 0.9;
G2L["7c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["7c"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.Binder.UICorner
G2L["7d"] = Instance.new("UICorner", G2L["7b"]);
G2L["7d"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.Binder.UIPadding
G2L["7e"] = Instance.new("UIPadding", G2L["7b"]);
G2L["7e"]["PaddingRight"] = UDim.new(0, 8);
G2L["7e"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.UIStroke
G2L["7f"] = Instance.new("UIStroke", G2L["78"]);
G2L["7f"]["Transparency"] = 0.9;
G2L["7f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["7f"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.BindHandler
G2L["80"] = Instance.new("LocalScript", G2L["78"]);
G2L["80"]["Name"] = [[BindHandler]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.UICorner
G2L["81"] = Instance.new("UICorner", G2L["78"]);
G2L["81"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.UIPadding
G2L["82"] = Instance.new("UIPadding", G2L["78"]);
G2L["82"]["PaddingTop"] = UDim.new(0, 15);
G2L["82"]["PaddingRight"] = UDim.new(0, 15);
G2L["82"]["PaddingLeft"] = UDim.new(0, 15);
G2L["82"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.TypeLabel
G2L["83"] = Instance.new("TextLabel", G2L["77"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["TextSize"] = 25;
G2L["83"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[Menu Settings]];
G2L["83"]["LayoutOrder"] = -1;
G2L["83"]["Name"] = [[TypeLabel]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand
G2L["84"] = Instance.new("Frame", G2L["77"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["84"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Name"] = [[ToggleChatCommand]];
G2L["84"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.UIPadding
G2L["85"] = Instance.new("UIPadding", G2L["84"]);
G2L["85"]["PaddingTop"] = UDim.new(0, 20);
G2L["85"]["PaddingRight"] = UDim.new(0, 15);
G2L["85"]["PaddingLeft"] = UDim.new(0, 15);
G2L["85"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.UIStroke
G2L["86"] = Instance.new("UIStroke", G2L["84"]);
G2L["86"]["Transparency"] = 0.9;
G2L["86"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["86"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.UICorner
G2L["87"] = Instance.new("UICorner", G2L["84"]);
G2L["87"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.ToggleHandler
G2L["88"] = Instance.new("LocalScript", G2L["84"]);
G2L["88"]["Name"] = [[ToggleHandler]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Toggle
G2L["89"] = Instance.new("TextButton", G2L["84"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["AutoButtonColor"] = false;
G2L["89"]["TextSize"] = 14;
G2L["89"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["89"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["89"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["89"]["BackgroundTransparency"] = 1;
G2L["89"]["Name"] = [[Toggle]];
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Text"] = [[]];
G2L["89"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Toggle.UICorner
G2L["8a"] = Instance.new("UICorner", G2L["89"]);
G2L["8a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Toggle.UIStroke
G2L["8b"] = Instance.new("UIStroke", G2L["89"]);
G2L["8b"]["Transparency"] = 0.9;
G2L["8b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["8b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Toggle.State
G2L["8c"] = Instance.new("TextLabel", G2L["89"]);
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["TextSize"] = 18;
G2L["8c"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8c"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["8c"]["BackgroundTransparency"] = 1;
G2L["8c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["8c"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["8c"]["ClipsDescendants"] = true;
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Text"] = [[✓]];
G2L["8c"]["Name"] = [[State]];
G2L["8c"]["Position"] = UDim2.new(0.5, 0, 0, 0);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Information
G2L["8d"] = Instance.new("Frame", G2L["84"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["8d"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["8d"]["Size"] = UDim2.new(0, 100, 0, 0);
G2L["8d"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Name"] = [[Information]];
G2L["8d"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Information.Information
G2L["8e"] = Instance.new("TextLabel", G2L["8d"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["TextTransparency"] = 0.5;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["TextSize"] = 13;
G2L["8e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["8e"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Text"] = [[/internal, /menu]];
G2L["8e"]["LayoutOrder"] = 1;
G2L["8e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["8e"]["Name"] = [[Information]];
G2L["8e"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Information.Information.UIPadding
G2L["8f"] = Instance.new("UIPadding", G2L["8e"]);
G2L["8f"]["PaddingRight"] = UDim.new(0, 55);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Information.Title
G2L["90"] = Instance.new("TextLabel", G2L["8d"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["TextSize"] = 15;
G2L["90"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["90"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["90"]["BackgroundTransparency"] = 1;
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Text"] = [[UI Toggle Chat Command]];
G2L["90"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["90"]["Name"] = [[Title]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Information.Title.UIPadding
G2L["91"] = Instance.new("UIPadding", G2L["90"]);
G2L["91"]["PaddingRight"] = UDim.new(0, 55);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.Information.UIListLayout
G2L["92"] = Instance.new("UIListLayout", G2L["8d"]);
G2L["92"]["Padding"] = UDim.new(0, 7);
G2L["92"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["92"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.UIListLayout
G2L["93"] = Instance.new("UIListLayout", G2L["77"]);
G2L["93"]["Padding"] = UDim.new(0, 10);
G2L["93"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["93"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.UIPadding
G2L["94"] = Instance.new("UIPadding", G2L["76"]);
G2L["94"]["PaddingTop"] = UDim.new(0, 10);
G2L["94"]["PaddingRight"] = UDim.new(0, 30);
G2L["94"]["PaddingLeft"] = UDim.new(0, 30);
G2L["94"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.UIListLayout
G2L["95"] = Instance.new("UIListLayout", G2L["76"]);
G2L["95"]["Padding"] = UDim.new(0, 25);
G2L["95"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings
G2L["96"] = Instance.new("Frame", G2L["76"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Name"] = [[IDESettings]];
G2L["96"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider
G2L["97"] = Instance.new("Frame", G2L["96"]);
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["97"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["Name"] = [[Slider]];
G2L["97"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Title
G2L["98"] = Instance.new("TextLabel", G2L["97"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["TextSize"] = 15;
G2L["98"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["98"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[Editor Scale]];
G2L["98"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["98"]["Name"] = [[Title]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Title.UIPadding
G2L["99"] = Instance.new("UIPadding", G2L["98"]);
G2L["99"]["PaddingRight"] = UDim.new(0, 130);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.UIStroke
G2L["9a"] = Instance.new("UIStroke", G2L["97"]);
G2L["9a"]["Transparency"] = 0.9;
G2L["9a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["9a"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.SlideHandler
G2L["9b"] = Instance.new("LocalScript", G2L["97"]);
G2L["9b"]["Name"] = [[SlideHandler]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["97"]);
G2L["9c"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.UIPadding
G2L["9d"] = Instance.new("UIPadding", G2L["97"]);
G2L["9d"]["PaddingTop"] = UDim.new(0, 15);
G2L["9d"]["PaddingRight"] = UDim.new(0, 15);
G2L["9d"]["PaddingLeft"] = UDim.new(0, 15);
G2L["9d"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider
G2L["9e"] = Instance.new("Frame", G2L["97"]);
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["9e"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["9e"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["Name"] = [[Slider]];
G2L["9e"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.UIStroke
G2L["9f"] = Instance.new("UIStroke", G2L["9e"]);
G2L["9f"]["Transparency"] = 0.9;
G2L["9f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["9f"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9e"]);
G2L["a0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.Bar
G2L["a1"] = Instance.new("Frame", G2L["9e"]);
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
G2L["a1"]["ClipsDescendants"] = true;
G2L["a1"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["Name"] = [[Bar]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.Bar.UICorner
G2L["a2"] = Instance.new("UICorner", G2L["a1"]);
G2L["a2"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.Bar.Clip
G2L["a3"] = Instance.new("Frame", G2L["a1"]);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(76, 76, 76);
G2L["a3"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["a3"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["a3"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Name"] = [[Clip]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.Bar.Clip.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a3"]);
G2L["a4"]["CornerRadius"] = UDim.new(0, 0);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.Value
G2L["a5"] = Instance.new("TextLabel", G2L["9e"]);
G2L["a5"]["ZIndex"] = 2;
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a5"]["TextSize"] = 14;
G2L["a5"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["a5"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["a5"]["BackgroundTransparency"] = 1;
G2L["a5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Text"] = [[nil]];
G2L["a5"]["Name"] = [[Value]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.Slider.Interact
G2L["a6"] = Instance.new("TextButton", G2L["9e"]);
G2L["a6"]["BorderSizePixel"] = 0;
G2L["a6"]["TextSize"] = 14;
G2L["a6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a6"]["BackgroundTransparency"] = 1;
G2L["a6"]["Name"] = [[Interact]];
G2L["a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a6"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.TypeLabel
G2L["a7"] = Instance.new("TextLabel", G2L["96"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["TextSize"] = 25;
G2L["a7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["BackgroundTransparency"] = 1;
G2L["a7"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Text"] = [[IDE Settings]];
G2L["a7"]["LayoutOrder"] = -1;
G2L["a7"]["Name"] = [[TypeLabel]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.UIListLayout
G2L["a8"] = Instance.new("UIListLayout", G2L["96"]);
G2L["a8"]["Padding"] = UDim.new(0, 10);
G2L["a8"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["a8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker
G2L["a9"] = Instance.new("Frame", G2L["96"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["a9"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Name"] = [[ColorPicker]];
G2L["a9"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Title
G2L["aa"] = Instance.new("TextLabel", G2L["a9"]);
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["TextSize"] = 15;
G2L["aa"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["aa"]["TextColor3"] = Color3.fromRGB(216, 216, 216);
G2L["aa"]["BackgroundTransparency"] = 1;
G2L["aa"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Text"] = [[IDE Accent]];
G2L["aa"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["aa"]["Name"] = [[Title]];


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Title.UIPadding
G2L["ab"] = Instance.new("UIPadding", G2L["aa"]);
G2L["ab"]["PaddingRight"] = UDim.new(0, 155);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.UIStroke
G2L["ac"] = Instance.new("UIStroke", G2L["a9"]);
G2L["ac"]["Transparency"] = 0.9;
G2L["ac"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["ac"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.UICorner
G2L["ad"] = Instance.new("UICorner", G2L["a9"]);
G2L["ad"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.UIPadding
G2L["ae"] = Instance.new("UIPadding", G2L["a9"]);
G2L["ae"]["PaddingTop"] = UDim.new(0, 15);
G2L["ae"]["PaddingRight"] = UDim.new(0, 15);
G2L["ae"]["PaddingLeft"] = UDim.new(0, 15);
G2L["ae"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values
G2L["af"] = Instance.new("Frame", G2L["a9"]);
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["af"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["af"]["Size"] = UDim2.new(0, 135, 0, 25);
G2L["af"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Name"] = [[Values]];
G2L["af"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.UIStroke
G2L["b0"] = Instance.new("UIStroke", G2L["af"]);
G2L["b0"]["Enabled"] = false;
G2L["b0"]["Transparency"] = 0.9;
G2L["b0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b0"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.UICorner
G2L["b1"] = Instance.new("UICorner", G2L["af"]);
G2L["b1"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.UIGridLayout
G2L["b2"] = Instance.new("UIGridLayout", G2L["af"]);
G2L["b2"]["CellSize"] = UDim2.new(0.298, 0, 0.9, 0);
G2L["b2"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["b2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["b2"]["CellPadding"] = UDim2.new(0, 7, 0, 7);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.R
G2L["b3"] = Instance.new("TextBox", G2L["af"]);
G2L["b3"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["b3"]["PlaceholderColor3"] = Color3.fromRGB(136, 136, 136);
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b3"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["b3"]["TextSize"] = 13;
G2L["b3"]["Name"] = [[R]];
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b3"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["b3"]["PlaceholderText"] = [[R]];
G2L["b3"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Text"] = [[]];
G2L["b3"]["LayoutOrder"] = 1;
G2L["b3"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.R.UICorner
G2L["b4"] = Instance.new("UICorner", G2L["b3"]);
G2L["b4"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.R.UIStroke
G2L["b5"] = Instance.new("UIStroke", G2L["b3"]);
G2L["b5"]["Transparency"] = 0.9;
G2L["b5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b5"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.R.UIPadding
G2L["b6"] = Instance.new("UIPadding", G2L["b3"]);
G2L["b6"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.G
G2L["b7"] = Instance.new("TextBox", G2L["af"]);
G2L["b7"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["b7"]["PlaceholderColor3"] = Color3.fromRGB(136, 136, 136);
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b7"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["b7"]["TextSize"] = 13;
G2L["b7"]["Name"] = [[G]];
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["b7"]["PlaceholderText"] = [[G]];
G2L["b7"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Text"] = [[]];
G2L["b7"]["LayoutOrder"] = 2;
G2L["b7"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.G.UICorner
G2L["b8"] = Instance.new("UICorner", G2L["b7"]);
G2L["b8"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.G.UIStroke
G2L["b9"] = Instance.new("UIStroke", G2L["b7"]);
G2L["b9"]["Transparency"] = 0.9;
G2L["b9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b9"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.G.UIPadding
G2L["ba"] = Instance.new("UIPadding", G2L["b7"]);
G2L["ba"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.B
G2L["bb"] = Instance.new("TextBox", G2L["af"]);
G2L["bb"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["bb"]["PlaceholderColor3"] = Color3.fromRGB(136, 136, 136);
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bb"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["bb"]["TextSize"] = 13;
G2L["bb"]["Name"] = [[B]];
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bb"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["bb"]["PlaceholderText"] = [[B]];
G2L["bb"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["Text"] = [[]];
G2L["bb"]["LayoutOrder"] = 3;
G2L["bb"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.B.UICorner
G2L["bc"] = Instance.new("UICorner", G2L["bb"]);
G2L["bc"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.B.UIStroke
G2L["bd"] = Instance.new("UIStroke", G2L["bb"]);
G2L["bd"]["Transparency"] = 0.9;
G2L["bd"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["bd"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.B.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bb"]);
G2L["be"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.Values.UIPadding
G2L["bf"] = Instance.new("UIPadding", G2L["af"]);



-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.ColorPickerHandler
G2L["c0"] = Instance.new("LocalScript", G2L["a9"]);
G2L["c0"]["Name"] = [[ColorPickerHandler]];


-- StarterGui.Proton_IDE.Body.Content.Settings.UIPadding
G2L["c1"] = Instance.new("UIPadding", G2L["75"]);
G2L["c1"]["PaddingTop"] = UDim.new(0, 10);
G2L["c1"]["PaddingRight"] = UDim.new(0, 10);


-- StarterGui.Proton_IDE.Body.SideBar
G2L["c2"] = Instance.new("Frame", G2L["3"]);
G2L["c2"]["ZIndex"] = 2;
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["c2"]["Size"] = UDim2.new(0, 80, 1, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Name"] = [[SideBar]];
G2L["c2"]["LayoutOrder"] = 1;


-- StarterGui.Proton_IDE.Body.SideBar.Divider
G2L["c3"] = Instance.new("Frame", G2L["c2"]);
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["c3"]["Size"] = UDim2.new(0, 1, 1, 0);
G2L["c3"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c3"]["Name"] = [[Divider]];
G2L["c3"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Proton_IDE.Body.SideBar.Tabs
G2L["c4"] = Instance.new("Frame", G2L["c2"]);
G2L["c4"]["ZIndex"] = 2;
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[Tabs]];
G2L["c4"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.UIPadding
G2L["c5"] = Instance.new("UIPadding", G2L["c4"]);
G2L["c5"]["PaddingTop"] = UDim.new(0, 15);
G2L["c5"]["PaddingBottom"] = UDim.new(0, 50);


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top
G2L["c6"] = Instance.new("Frame", G2L["c4"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["Name"] = [[Top]];
G2L["c6"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.ScriptHub
G2L["c7"] = Instance.new("TextButton", G2L["c6"]);
G2L["c7"]["Active"] = false;
G2L["c7"]["BorderSizePixel"] = 0;
G2L["c7"]["AutoButtonColor"] = false;
G2L["c7"]["TextSize"] = 14;
G2L["c7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c7"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c7"]["BackgroundTransparency"] = 1;
G2L["c7"]["LayoutOrder"] = 3;
G2L["c7"]["Name"] = [[ScriptHub]];
G2L["c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c7"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.ScriptHub.Image
G2L["c8"] = Instance.new("ImageButton", G2L["c7"]);
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["AutoButtonColor"] = false;
G2L["c8"]["ImageTransparency"] = 0.5;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["ImageColor3"] = Color3.fromRGB(236, 236, 236);
G2L["c8"]["LayoutOrder"] = 3;
G2L["c8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c8"]["Image"] = [[rbxassetid://17580127180]];
G2L["c8"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["c8"]["BackgroundTransparency"] = 1;
G2L["c8"]["Name"] = [[Image]];
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.ScriptHub.Image.UIAspectRatioConstraint
G2L["c9"] = Instance.new("UIAspectRatioConstraint", G2L["c8"]);



-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.ScriptHub.Image.Animate
G2L["ca"] = Instance.new("LocalScript", G2L["c8"]);
G2L["ca"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.ScriptHub.Toggled
G2L["cb"] = Instance.new("BoolValue", G2L["c7"]);
G2L["cb"]["Name"] = [[Toggled]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Execution
G2L["cc"] = Instance.new("TextButton", G2L["c6"]);
G2L["cc"]["Active"] = false;
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["AutoButtonColor"] = false;
G2L["cc"]["TextSize"] = 14;
G2L["cc"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cc"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["cc"]["BackgroundTransparency"] = 1;
G2L["cc"]["LayoutOrder"] = 1;
G2L["cc"]["Name"] = [[Execution]];
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Execution.Image
G2L["cd"] = Instance.new("ImageButton", G2L["cc"]);
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["AutoButtonColor"] = false;
G2L["cd"]["ImageTransparency"] = 0.5;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["LayoutOrder"] = 1;
G2L["cd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["cd"]["Image"] = [[rbxassetid://7733920644]];
G2L["cd"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["cd"]["BackgroundTransparency"] = 1;
G2L["cd"]["Name"] = [[Image]];
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Execution.Image.UIAspectRatioConstraint
G2L["ce"] = Instance.new("UIAspectRatioConstraint", G2L["cd"]);



-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Execution.Image.Animate
G2L["cf"] = Instance.new("LocalScript", G2L["cd"]);
G2L["cf"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Execution.Toggled
G2L["d0"] = Instance.new("BoolValue", G2L["cc"]);
G2L["d0"]["Name"] = [[Toggled]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Console
G2L["d1"] = Instance.new("TextButton", G2L["c6"]);
G2L["d1"]["Active"] = false;
G2L["d1"]["BorderSizePixel"] = 0;
G2L["d1"]["AutoButtonColor"] = false;
G2L["d1"]["TextSize"] = 14;
G2L["d1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d1"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["d1"]["BackgroundTransparency"] = 1;
G2L["d1"]["LayoutOrder"] = 2;
G2L["d1"]["Name"] = [[Console]];
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Console.Image
G2L["d2"] = Instance.new("ImageButton", G2L["d1"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["AutoButtonColor"] = false;
G2L["d2"]["ImageTransparency"] = 0.5;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["LayoutOrder"] = 2;
G2L["d2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d2"]["Image"] = [[rbxassetid://7734079055]];
G2L["d2"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["d2"]["BackgroundTransparency"] = 1;
G2L["d2"]["Name"] = [[Image]];
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Console.Image.UIAspectRatioConstraint
G2L["d3"] = Instance.new("UIAspectRatioConstraint", G2L["d2"]);



-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Console.Image.Animate
G2L["d4"] = Instance.new("LocalScript", G2L["d2"]);
G2L["d4"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Console.Toggled
G2L["d5"] = Instance.new("BoolValue", G2L["d1"]);
G2L["d5"]["Name"] = [[Toggled]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.UIGridLayout
G2L["d6"] = Instance.new("UIGridLayout", G2L["c6"]);
G2L["d6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["d6"]["CellSize"] = UDim2.new(0, 80, 0, 80);
G2L["d6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["d6"]["CellPadding"] = UDim2.new(0, 0, 0, 0);
G2L["d6"]["FillDirection"] = Enum.FillDirection.Vertical;


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom
G2L["d7"] = Instance.new("Frame", G2L["c4"]);
G2L["d7"]["BorderSizePixel"] = 0;
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d7"]["Name"] = [[Bottom]];
G2L["d7"]["BackgroundTransparency"] = 1;


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.UIGridLayout
G2L["d8"] = Instance.new("UIGridLayout", G2L["d7"]);
G2L["d8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["d8"]["CellSize"] = UDim2.new(0, 80, 0, 80);
G2L["d8"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["d8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["d8"]["CellPadding"] = UDim2.new(0, 0, 0, 0);
G2L["d8"]["FillDirection"] = Enum.FillDirection.Vertical;


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.Settings
G2L["d9"] = Instance.new("TextButton", G2L["d7"]);
G2L["d9"]["Active"] = false;
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["AutoButtonColor"] = false;
G2L["d9"]["TextSize"] = 14;
G2L["d9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d9"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["d9"]["BackgroundTransparency"] = 1;
G2L["d9"]["LayoutOrder"] = 2;
G2L["d9"]["Name"] = [[Settings]];
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Text"] = [[]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.Settings.Image
G2L["da"] = Instance.new("ImageButton", G2L["d9"]);
G2L["da"]["BorderSizePixel"] = 0;
G2L["da"]["AutoButtonColor"] = false;
G2L["da"]["ImageTransparency"] = 0.5;
G2L["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["da"]["LayoutOrder"] = 3;
G2L["da"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["da"]["Image"] = [[rbxassetid://7743878358]];
G2L["da"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["da"]["BackgroundTransparency"] = 1;
G2L["da"]["Name"] = [[Image]];
G2L["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["da"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.Settings.Image.UIAspectRatioConstraint
G2L["db"] = Instance.new("UIAspectRatioConstraint", G2L["da"]);



-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.Settings.Image.Animate
G2L["dc"] = Instance.new("LocalScript", G2L["da"]);
G2L["dc"]["Name"] = [[Animate]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.Settings.Toggled
G2L["dd"] = Instance.new("BoolValue", G2L["d9"]);
G2L["dd"]["Name"] = [[Toggled]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Animator
G2L["de"] = Instance.new("ModuleScript", G2L["c4"]);
G2L["de"]["Name"] = [[Animator]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.SwitchHandler
G2L["df"] = Instance.new("LocalScript", G2L["c4"]);
G2L["df"]["Name"] = [[SwitchHandler]];


-- StarterGui.Proton_IDE.Body.SideBar.Tabs.SwitchModule
G2L["e0"] = Instance.new("ModuleScript", G2L["c4"]);
G2L["e0"]["Name"] = [[SwitchModule]];


-- StarterGui.Proton_IDE.Body.Events
G2L["e1"] = Instance.new("Folder", G2L["3"]);
G2L["e1"]["Name"] = [[Events]];


-- StarterGui.Proton_IDE.Body.Events.Attach
G2L["e2"] = Instance.new("IntValue", G2L["e1"]);
G2L["e2"]["Name"] = [[Attach]];


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["9"]] = {
Closure = function()
    local script = G2L["9"];--[[
@ author biggaboy212
@ description Tab switcher for my Editor module.

	* Notes
		To make your own Tab Button Design, make sure the item named 'Tab' is a [TextButton, ImageButton] and is parented directly under this module, also you must have the following elements in the 'Tab' Button
		[-] 'Elements' GuiObject
			[-] 'Close' TextButton, ImageButton
			[-] 'Title' TextObject (TextBox reccommended)
		[-] 'ToggledIndicator' GuiObject
		
	* Updates
		[+] Added tab rename (visual only, the tab instances won't be updated and will keep the original name for simplicity)
]]

local TweenService = game:GetService('TweenService')

local TabModule = {}

--// Variables
local currentTabIndex = -1
local activeTab = nil
local tabInstances = {}
local tabTextContent = {}

local TweenSettings = {
	Style = Enum.EasingStyle.Linear,
	HoverTime = 0.15,
	ClickTime = 0.1,
	ToggledTransparency = 0.92,
	DefaultTransparency = 1,
	HoverTransparency = 0.97
}

local function tweenProperties(instance, time, properties)
	TweenService:Create(instance, TweenInfo.new(time, TweenSettings.Style, Enum.EasingDirection.InOut), properties):Play()
end

local function generateUniqueTabName(baseName)
	local uniqueName = baseName
	local counter = 1
	local nameExists
	repeat
		nameExists = false
		for _, tab in pairs(tabInstances) do
			if tab.Elements.Title.Text == uniqueName then
				nameExists = true
				uniqueName = baseName .. " (" .. counter .. ")"
				counter = counter + 1
				break
			end
		end
	until not nameExists
	return uniqueName
end

local function updateTabVisuals(selectedTab)
	local uniqueName = nil
	for _, tab in pairs(tabInstances) do
		local isSelected = (tab == selectedTab)
		tweenProperties(tab, TweenSettings.ClickTime, {BackgroundTransparency = isSelected and TweenSettings.ToggledTransparency or TweenSettings.DefaultTransparency})
		if tab.ToggledIndicator then
			tab.ToggledIndicator.Visible = isSelected
		end
		if isSelected then
			uniqueName = tab.Elements.Title.Text
		end
	end
	return uniqueName
end

local function saveCurrentTabText(NewIDE)
	if activeTab then
		tabTextContent[activeTab.Elements.Title.Text] = NewIDE:GetText()
	end
end

local function updateIDEVisibility(NewIDE)
	NewIDE.Gui.Visible = #tabInstances > 0 and activeTab ~= nil
end

function TabModule.AddTab(NewIDE, TabsContainer, presetText, Name)
	Name = Name or "Tab"
	saveCurrentTabText(NewIDE)

	currentTabIndex += 1
	local extension = "lua"
	local baseName = Name .. "." .. extension
	local uniqueName = generateUniqueTabName(baseName)

	local newTab = script.Tab:Clone()
	newTab.Parent = TabsContainer
	newTab.Name = uniqueName
	newTab.LayoutOrder = currentTabIndex
	table.insert(tabInstances, newTab)
	tabTextContent[uniqueName] = presetText or ""

	local Title = newTab.Elements.Title
	Title.Text = uniqueName

	newTab.Elements.Close.MouseButton1Click:Connect(function()
		currentTabIndex -= 1
		local tabIndex = table.find(tabInstances, newTab)
		table.remove(tabInstances, tabIndex)
		tabTextContent[uniqueName] = nil
		newTab:Destroy()

		if activeTab == newTab then
			activeTab = nil
			if tabIndex > 1 then
				local previousTab = tabInstances[tabIndex - 1]
				NewIDE:SetText(tabTextContent[previousTab.Elements.Title.Text] or "")
				updateTabVisuals(previousTab)
				activeTab = previousTab
			elseif #tabInstances > 0 then
				local firstTab = tabInstances[1]
				NewIDE:SetText(tabTextContent[firstTab.Elements.Title.Text] or "")
				updateTabVisuals(firstTab)
				activeTab = firstTab
			end
		end
		updateIDEVisibility(NewIDE)
	end)

	newTab.MouseButton2Click:Connect(function()
		if Title:IsA("TextBox") then
			Title:CaptureFocus()
		end
	end)

	if Title:IsA("TextBox") then
		local originalText
		Title.ClearTextOnFocus = false
		Title.Focused:Connect(function()
			Title.PlaceholderText = Title.Text
			originalText = Title.Text
			
			Title.Text = ""
			Title.Active = true
			Title.Interactable = true
		end)

		Title.FocusLost:Connect(function()
			if Title.Text == "" then
				Title.Text = originalText
				
				Title.Active = false
				Title.Interactable = false
			else
				local newUniqueName = generateUniqueTabName(Title.Text .. "." .. extension)
				
				tabTextContent[newUniqueName] = tabTextContent[uniqueName]
				tabTextContent[uniqueName] = nil
				
				uniqueName = newUniqueName
				
				Title.Text = uniqueName
				Title.Active = false
				Title.Interactable = false
			end
		end)
	end

	local function Switch()
		saveCurrentTabText(NewIDE)
		NewIDE:SetText(tabTextContent[uniqueName] or "")
		updateTabVisuals(newTab)
		activeTab = newTab
		updateIDEVisibility(NewIDE)
		NewIDE:Refresh()
	end

	newTab.MouseButton1Click:Connect(Switch)

	Switch()
end

return TabModule
end;
};
G2L_MODULES[G2L["13"]] = {
Closure = function()
    local script = G2L["13"];--// References
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ContentProvider = game:GetService("ContentProvider")

local CopyScript = script.NewScript
local TabModule = require(script.Parent.TabModule)
local WriteModule = require(script.Parent.WriteModule)
local SwitchModule = require(script.Parent.Parent.SideBar.Tabs.SwitchModule)

--// Logic
local ScriptModule = {}

function ScriptModule.CreateNewScript(Console: Instance, NewIDE: Instance, Tabs: Instance, Parent: Instance, ScriptImage, ScriptName: string, ScriptDescription: string, Content: string)
	ScriptImage = ScriptImage or "rbxassetid://127539975705356"
	ScriptName = ScriptName or "Title"

	local NewScript = CopyScript:Clone()
	NewScript.Parent = Parent
	local Actions = NewScript.Actions
	local BackgroundImage = NewScript.ScriptImage
	local ScriptLabel = NewScript.ScriptName
	local ScriptDescriptionLabel = NewScript.ScriptDescription

	BackgroundImage.Image = ScriptImage
	ScriptLabel.Text = ScriptName

	if typeof(ScriptDescription) ~= "string" then
		ScriptDescriptionLabel.Text = tostring(ScriptDescription)
	else
		ScriptDescriptionLabel.Text = ScriptDescription
	end

	Actions.Open.MouseButton1Click:Connect(function()
		if Content then
			TabModule.AddTab(NewIDE, Tabs, Content, ScriptName)
			SwitchModule.SwitchTab("Execution")
		end
	end)

	Actions.Run.MouseButton1Click:Connect(function()
		if Content and script.Parent.Parent.Events.Attach.Value == 1 then
			local Success, Error = pcall(function()
				loadstring(Content)()
			end)

			if not Success then
				WriteModule:WriteLine(Console, string.format("<font color=\"rgb(255,50,50)\">[ERROR] %s</font>", Error))
				SwitchModule.SwitchTab("Console")
			end
		else
			WriteModule:WriteLine(Console, "<font color=\"rgb(255,50,50)\">[ERROR] " .. "Unable to process request, are you attached?" .. "</font>")
			SwitchModule.SwitchTab("Console")
		end
	end)

	coroutine.wrap(function()
		ContentProvider:PreloadAsync({ScriptImage})
	end)()
end

return ScriptModule
end;
};
G2L_MODULES[G2L["26"]] = {
Closure = function()
    local script = G2L["26"];local TweenService = game:GetService('TweenService')

local ButtonTweener = {}

local TweenSettings = {
	HoverTime = 0.15,
	ClickTime = 0.1,
	Style = Enum.EasingStyle.Cubic,
	HoverTransparency2 = 0.15,
	DefaultTransparency2 = 0,
	ClickTransparency2 = 0.25
}

local function tweenProperties(instance, time, properties)
	TweenService:Create(instance, TweenInfo.new(time, TweenSettings.Style, Enum.EasingDirection.InOut), properties):Play()
end

function ButtonTweener:SetupButton(interactableinstance)
	interactableinstance.MouseEnter:Connect(function()
		tweenProperties(interactableinstance, TweenSettings.HoverTime, {BackgroundTransparency = TweenSettings.HoverTransparency2})
	end)

	interactableinstance.MouseLeave:Connect(function()
		tweenProperties(interactableinstance, TweenSettings.HoverTime, {BackgroundTransparency = TweenSettings.DefaultTransparency2})
	end)

	interactableinstance.MouseButton1Down:Connect(function()
		tweenProperties(interactableinstance, TweenSettings.ClickTime, {BackgroundTransparency = TweenSettings.ClickTransparency2})
	end)

	interactableinstance.MouseButton1Up:Connect(function()
		tweenProperties(interactableinstance, TweenSettings.ClickTime, {BackgroundTransparency = TweenSettings.HoverTransparency2})
	end)
end

return ButtonTweener
end;
};
G2L_MODULES[G2L["2b"]] = {
Closure = function()
    local script = G2L["2b"];--[[
@author biggaboy212
@description Easily load strings.
]]

local PresetScripts = {}

function PresetScripts:GetScript(Name: string)
	local Content = "Script not found ):"
	if Name == "Dex" then
		
		Content = [==[loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()]==]
	elseif Name == "IY" then
		Content = [==[loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()]==]
		
	elseif Name == 'UNESP' then
		Content = [==[loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua',true))()]==]
		
	elseif Name == "RemoteSpy" then
		Content = [==[loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()]==]
		
	elseif Name == 'OwlHub' then
		Content = [==[loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();]==]
		
	elseif Name == 'DarkHub' then
		Content = [==[loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()]==]
		
	elseif Name == "Hydroxide" then
		Content = [==[local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")]==]
		
	elseif Name == "sUNC" then
		Content = [==[loadstring(game:HttpGet("https://raw.githubusercontent.com/HummingBird8/HummingRn/main/sUNCTestGET"))()]==]
		
	elseif Name == "AdonisCries" then
		Content = [==[loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua"))()]==]
	end
	return Content
end

return PresetScripts
end;
};
G2L_MODULES[G2L["2d"]] = {
Closure = function()
    local script = G2L["2d"];--[[
@author biggaboy212
@description Writes lines like a console application
]]

local WriteModule = {}

local UserInputService = game:GetService("UserInputService")

local ConsoleBox = script.NewLine

local ConsoleText = nil

function WriteModule:WriteLine(Directory: Instance, Text: string)
	ConsoleBox.Parent = Directory
	ConsoleBox.Text = ConsoleBox.Text .. Text .. "\n"
	ConsoleText = ConsoleBox.Text
	ConsoleBox.Content.Text = ConsoleBox.ContentText
end

function WriteModule:Write(Text: string)
	ConsoleBox.Text = ConsoleBox.Text .. Text
	ConsoleBox.Content.Text = ConsoleBox.ContentText
	ConsoleText = ConsoleBox.Text
end

function WriteModule:Clear()
	ConsoleBox.Text = ''
	ConsoleBox.Content.Text = ''
	ConsoleText = ''
end

ConsoleBox.Focused:Connect(function()
	ConsoleBox.Text = ConsoleBox.Content.ContentText
end)

ConsoleBox.FocusLost:Connect(function()
	ConsoleBox.Text = ConsoleText
end)

ConsoleBox.MouseLeave:Connect(function()
	ConsoleBox.Text = ConsoleText
	ConsoleBox:ReleaseFocus()
end)

ConsoleBox:GetPropertyChangedSignal("Text"):Connect(function()
	if ConsoleBox:IsFocused() then
		ConsoleBox.Text = ConsoleBox.Content.ContentText
	end
end)

return WriteModule
end;
};
G2L_MODULES[G2L["30"]] = {
Closure = function()
    local script = G2L["30"];--[[
@author biggaboy212 & LorekeeperZinnia???
@description Optimized and lightweight In-Game Code editor for Roblox, view and edit scripts without performance loss.
]]

--// CodeFrame.new() returns an instance, the returned object will take the full size of whatever it is parented to.

--[[
	UPDATE 9
	----
	* Scroll System Changes
		[+] Having a selection and moving your mouse out of frame now scrolls faster.
	
	* Font Changes
		[+] Font weight is now 'Medium'.
		
	* Keybind additions
		[+] Added Ctrl + UpArrow keybind to zoom in.
		[+] Added Ctrl + DownArrow keybind to zoom out.
		[+] Added Ctrl + LeftArrow to zoom to minimum/default.
		[+] Added Ctrl + RightArrow to zoom to maximum
		
	* Function Additions
		[+] Added SetCursorBlinkSpeed function.
		
	* Line System Changes
		[+] Added current line highlighting, this is commented out for now however, due to some bugs that occur while scrolling.
		
	* Syntax color changes
		[+] Changed color to [Github Dark Default]
]]

repeat wait() until game.Loaded

local Settings = {
	Theme = {
		Syntax = {
			-- Colors
			Text = Color3.fromRGB(230, 237, 243),
			Background = Color3.fromRGB(20, 20, 20),
			Selection = Color3.fromRGB(255, 255, 255),
			SelectionBack = Color3.fromRGB(102, 161, 255),
			Operator = Color3.fromRGB(255, 123, 114),
			Number = Color3.fromRGB(121, 192, 255),
			String = Color3.fromRGB(165, 214, 255),
			Comment = Color3.fromRGB(102, 102, 102),
			Keyword = Color3.fromRGB(255, 123, 114),
			BuiltIn = Color3.fromRGB(238, 157, 40),
			LocalMethod = Color3.fromRGB(121, 192, 255),
			LocalProperty = Color3.fromRGB(179, 146, 240),
			Nil = Color3.fromRGB(121, 184, 255),
			Bool = Color3.fromRGB(121, 184, 255),
			Function = Color3.fromRGB(249, 117, 131),
			Local = Color3.fromRGB(249, 117, 131),
			Self = Color3.fromRGB(179, 146, 240),
			FunctionName = Color3.fromRGB(210, 168, 255),
			Bracket = Color3.fromRGB(121, 192, 255),
			--[[
			Text = Color3.fromRGB(204,204,204), -- Previous theme
			Background = Color3.fromRGB(36, 41, 46),
			Selection = Color3.fromRGB(255, 255, 255),
			SelectionBack = Color3.fromRGB(102, 161, 255),
			Operator = Color3.fromRGB(249, 117, 131),
			Number = Color3.fromRGB(121, 184, 255),
			String = Color3.fromRGB(158, 203, 255),
			Comment = Color3.fromRGB(102, 102, 102),
			Keyword = Color3.fromRGB(249, 117, 131),
			BuiltIn = Color3.fromRGB(121, 184, 255),
			LocalMethod = Color3.fromRGB(121, 184, 255),
			LocalProperty = Color3.fromRGB(179, 146, 240),
			Nil = Color3.fromRGB(121, 184, 255),
			Bool = Color3.fromRGB(121, 184, 255),
			Function = Color3.fromRGB(249, 117, 131),
			Local = Color3.fromRGB(249, 117, 131),
			Self = Color3.fromRGB(179, 146, 240),
			FunctionName = Color3.fromRGB(179, 146, 240),
			Bracket = Color3.fromRGB(121, 184, 255),
			]]
		},
		--[[LineSyntax = {
			CurrentLineTransparency = 0.95,
			ErrorLineTransparency = 0.75,
			ErrorLineColor =  Color3.fromRGB(255,0,0),
			CurrentLineColor =  Color3.fromRGB(255,255,255)
		}]]
	}
}

local service = game
local players = service:GetService('Players')

local plr = service.Players.LocalPlayer

local create = function(data)
	local insts = {}
	for i,v in pairs(data) do insts[v[1]] = Instance.new(v[2]) end

	for _,v in pairs(data) do
		for prop,val in pairs(v[3]) do
			if type(val) == "table" then
				insts[v[1]][prop] = insts[val[1]]
			else
				insts[v[1]][prop] = val
			end
		end
	end

	return insts[1]
end

local Lib = {}

Lib.CheckMouseInGui = function(gui)
	if gui == nil then return false end
	local mouse = plr:GetMouse()
	local guiPosition = gui.AbsolutePosition
	local guiSize = gui.AbsoluteSize	

	return mouse.X >= guiPosition.X and mouse.X < guiPosition.X + guiSize.X and mouse.Y >= guiPosition.Y and mouse.Y < guiPosition.Y + guiSize.Y
end

Lib.Signal = (function()
	local funcs = {}

	local disconnect = function(con)
		local pos = table.find(con.Signal.Connections,con)
		if pos then table.remove(con.Signal.Connections,pos) end
	end

	funcs.Connect = function(self,func)
		if type(func) ~= "function" then error("Attempt to connect a non-function") end		
		local con = {
			Signal = self,
			Func = func,
			Disconnect = disconnect
		}
		self.Connections[#self.Connections+1] = con
		return con
	end

	funcs.Fire = function(self,...)
		for i,v in next,self.Connections do
			xpcall(coroutine.wrap(v.Func),function(e) warn(e.."\n"..debug.traceback()) end,...)
		end
	end

	local mt = {
		__index = funcs,
		__tostring = function(self)
			return "Signal: " .. tostring(#self.Connections) .. " Connections"
		end
	}

	local function new()
		local obj = {}
		obj.Connections = {}

		return setmetatable(obj,mt)
	end

	return {new = new}
end)()

local createSimple = function(class,props)
	local inst = Instance.new(class)
	for i,v in next,props do
		inst[i] = v
	end
	return inst
end

Lib.CreateArrow = function(size,num,dir)
	local max = num
	local arrowFrame = createSimple("Frame",{
		BackgroundTransparency = 1,
		Name = "Arrow",
		Size = UDim2.new(0,size,0,size)
	})
	if dir == "up" then
		for i = 1,num do
			local newLine = createSimple("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)+i-math.floor(max/2)-1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame
			})
		end
		return arrowFrame
	elseif dir == "down" then
		for i = 1,num do
			local newLine = createSimple("Frame",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
						Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)-i+math.floor(max/2)+1),
						Size = UDim2.new(0,i+(i-1),0,1),
						Parent = arrowFrame
					})
				end
				return arrowFrame
			elseif dir == "left" then
				for i = 1,num do
					local newLine = createSimple("Frame",{
						BackgroundColor3 = Color3.new(220/255,220/255,220/255),
						BorderSizePixel = 0,
						Position = UDim2.new(0,math.floor(size/2)+i-math.floor(max/2)-1,0,math.floor(size/2)-(i-1)),
						Size = UDim2.new(0,1,0,i+(i-1)),
						Parent = arrowFrame
					})
				end
				return arrowFrame
			elseif dir == "right" then
				for i = 1,num do
					local newLine = createSimple("Frame",{
						BackgroundColor3 = Color3.new(220/255,220/255,220/255),
						BorderSizePixel = 0,
						Position = UDim2.new(0,math.floor(size/2)-i+math.floor(max/2)+1,0,math.floor(size/2)-(i-1)),
						Size = UDim2.new(0,1,0,i+(i-1)),
						Parent = arrowFrame
					})
				end
				return arrowFrame
			end
			error()
		end

		Lib.FastWait = (function(arg)
			task.wait(arg)
		end)

		Lib.ScrollBar = (function()
			local funcs = {}
			local user = service.UserInputService
			local mouse = plr:GetMouse()
			local checkMouseInGui = Lib.CheckMouseInGui
			local createArrow = Lib.CreateArrow

			local function drawThumb(self)
				local total = self.TotalSpace
				local visible = self.VisibleSpace
				local index = self.Index
				local scrollThumb = self.GuiElems.ScrollThumb
				local scrollThumbFrame = self.GuiElems.ScrollThumbFrame

				if not (self:CanScrollUp()	or self:CanScrollDown()) then
					scrollThumb.Visible = false
				else
					scrollThumb.Visible = true
				end

				if self.Horizontal then
					scrollThumb.Size = UDim2.new(visible/total,0,1,0)
					if scrollThumb.AbsoluteSize.X < 10 then
						scrollThumb.Size = UDim2.new(0,10,1,0)
					end
					local fs = scrollThumbFrame.AbsoluteSize.X
					local bs = scrollThumb.AbsoluteSize.X
					scrollThumb.Position = UDim2.new(self:GetScrollPercent()*(fs-bs)/fs,0,0,0)
				else
					scrollThumb.Size = UDim2.new(1,0,visible/total,0)
					if scrollThumb.AbsoluteSize.Y < 10 then
						scrollThumb.Size = UDim2.new(1,0,0,10)
					end
					local fs = scrollThumbFrame.AbsoluteSize.Y
					local bs = scrollThumb.AbsoluteSize.Y
					scrollThumb.Position = UDim2.new(0,0,self:GetScrollPercent()*(fs-bs)/fs,0)
				end
			end

			local function createFrame(self)
				local newFrame = createSimple("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,0.35294118523598,0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,10,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ScrollBar",})
				local button1 = nil
				local button2 = nil

				if self.Horizontal then
					newFrame.Size = UDim2.new(1,0,0,10)
					button1 = createSimple("ImageButton",{
						Parent = newFrame,
						Name = "Left",
						Size = UDim2.new(0,10,0,10),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						AutoButtonColor = false
					})
					createArrow(10,4,"left").Parent = button1
					button2 = createSimple("ImageButton",{
						Parent = newFrame,
						Name = "Right",
						Position = UDim2.new(1,-10,0,0),
						Size = UDim2.new(0,10,0,10),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						AutoButtonColor = false
					})
					createArrow(10,4,"right").Parent = button2
				else
					newFrame.Size = UDim2.new(0,10,1,0)
					button1 = createSimple("ImageButton",{
						Parent = newFrame,
						Name = "Up",
						Size = UDim2.new(0,10,0,10),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						AutoButtonColor = false
					})
					createArrow(10,4,"up").Parent = button1
					button2 = createSimple("ImageButton",{
						Parent = newFrame,
						Name = "Down",
						Position = UDim2.new(0,0,1,-10),
						Size = UDim2.new(0,10,0,10),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						AutoButtonColor = false
					})
					createArrow(10,4,"down").Parent = button2
				end

				local scrollThumbFrame = createSimple("Frame",{
					BackgroundTransparency = 1,
					Parent = newFrame
				})
				if self.Horizontal then
					scrollThumbFrame.Position = UDim2.new(0,10,0,0)
					scrollThumbFrame.Size = UDim2.new(1,-20,1,0)
				else
					scrollThumbFrame.Position = UDim2.new(0,0,0,10)
					scrollThumbFrame.Size = UDim2.new(1,0,1,-20)
				end

				local scrollThumb = createSimple("Frame",{
					BackgroundColor3 = Color3.new(120/255,120/255,120/255),
					BorderSizePixel = 0,
					Parent = scrollThumbFrame
				})

				local markerFrame = createSimple("Frame",{
					BackgroundTransparency = 1,
					Name = "Markers",
					Size = UDim2.new(1,0,1,0),
					Parent = scrollThumbFrame
				})

				local buttonPress = false
				local thumbPress = false
				local thumbFramePress = false

				--local thumbColor = Color3.new(120/255,120/255,120/255)
				--local thumbSelectColor = Color3.new(140/255,140/255,140/255)
				button1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and self:CanScrollUp() then button1.BackgroundTransparency = 0.8 end
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 or not self:CanScrollUp() then return end
					buttonPress = true
					button1.BackgroundTransparency = 0.5
					if self:CanScrollUp() then self:ScrollUp() self.Scrolled:Fire() end
					local buttonTick = tick()
					local releaseEvent
					releaseEvent = user.InputEnded:Connect(function(input)
						if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
						releaseEvent:Disconnect()
						if checkMouseInGui(button1) and self:CanScrollUp() then button1.BackgroundTransparency = 0.8 else button1.BackgroundTransparency = 1 end
						buttonPress = false
					end)
					while buttonPress do
						if tick() - buttonTick >= 0.3 and self:CanScrollUp() then
							self:ScrollUp()
							self.Scrolled:Fire()
						end
						wait()
					end
				end)
				button1.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button1.BackgroundTransparency = 1 end
				end)
				button2.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and self:CanScrollDown() then button2.BackgroundTransparency = 0.8 end
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 or not self:CanScrollDown() then return end
					buttonPress = true
					button2.BackgroundTransparency = 0.5
					if self:CanScrollDown() then self:ScrollDown() self.Scrolled:Fire() end
					local buttonTick = tick()
					local releaseEvent
					releaseEvent = user.InputEnded:Connect(function(input)
						if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
						releaseEvent:Disconnect()
						if checkMouseInGui(button2) and self:CanScrollDown() then button2.BackgroundTransparency = 0.8 else button2.BackgroundTransparency = 1 end
						buttonPress = false
					end)
					while buttonPress do
						if tick() - buttonTick >= 0.3 and self:CanScrollDown() then
							self:ScrollDown()
							self.Scrolled:Fire()
						end
						wait()
					end
				end)
				button2.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button2.BackgroundTransparency = 1 end
				end)

				scrollThumb.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0.2 scrollThumb.BackgroundColor3 = self.ThumbSelectColor end
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end

					local dir = self.Horizontal and "X" or "Y"
					local lastThumbPos = nil

					buttonPress = false
					thumbFramePress = false			
					thumbPress = true
					scrollThumb.BackgroundTransparency = 0
					local mouseOffset = mouse[dir] - scrollThumb.AbsolutePosition[dir]
					local mouseStart = mouse[dir]
					local releaseEvent
					local mouseEvent
					releaseEvent = user.InputEnded:Connect(function(input)

						if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
						releaseEvent:Disconnect()
						if mouseEvent then mouseEvent:Disconnect() end
						if checkMouseInGui(scrollThumb) then scrollThumb.BackgroundTransparency = 0.2 else scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = self.ThumbColor end
						thumbPress = false
					end)
					self:Update()

					mouseEvent = user.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement and thumbPress and releaseEvent.Connected then
							local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
							local pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - mouseOffset
							if pos > thumbFrameSize then
								pos = thumbFrameSize
							elseif pos < 0 then
								pos = 0
							end
							if lastThumbPos ~= pos then
								lastThumbPos = pos
								self:ScrollTo(math.floor(0.5+pos/thumbFrameSize*(self.TotalSpace-self.VisibleSpace)))
							end
							wait()
						end
					end)
				end)
				scrollThumb.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = self.ThumbColor end
				end)
				scrollThumbFrame.InputBegan:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 or checkMouseInGui(scrollThumb) then return end

					local dir = self.Horizontal and "X" or "Y"
					local scrollDir = 0
					if mouse[dir] >= scrollThumb.AbsolutePosition[dir] + scrollThumb.AbsoluteSize[dir] then
						scrollDir = 1
					end

					local function doTick()
						local scrollSize = self.VisibleSpace - 1
						if scrollDir == 0 and mouse[dir] < scrollThumb.AbsolutePosition[dir] then
							self:ScrollTo(self.Index - scrollSize)
						elseif scrollDir == 1 and mouse[dir] >= scrollThumb.AbsolutePosition[dir] + scrollThumb.AbsoluteSize[dir] then
							self:ScrollTo(self.Index + scrollSize)
						end
					end

					thumbPress = false			
					thumbFramePress = true
					doTick()
					local thumbFrameTick = tick()
					local releaseEvent
					releaseEvent = user.InputEnded:Connect(function(input)
						if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
						releaseEvent:Disconnect()
						thumbFramePress = false
					end)
					while thumbFramePress do
						if tick() - thumbFrameTick >= 0.3 and checkMouseInGui(scrollThumbFrame) then
							doTick()
						end
						wait()
					end
				end)

				newFrame.MouseWheelForward:Connect(function()
					self:ScrollTo(self.Index - self.WheelIncrement)
				end)

				newFrame.MouseWheelBackward:Connect(function()
					self:ScrollTo(self.Index + self.WheelIncrement)
				end)

				self.GuiElems.ScrollThumb = scrollThumb
				self.GuiElems.ScrollThumbFrame = scrollThumbFrame
				self.GuiElems.Button1 = button1
				self.GuiElems.Button2 = button2
				self.GuiElems.MarkerFrame = markerFrame

				return newFrame
			end

			funcs.Update = function(self,nocallback)
				local total = self.TotalSpace
				local visible = self.VisibleSpace
				local index = self.Index
				local button1 = self.GuiElems.Button1
				local button2 = self.GuiElems.Button2

				self.Index = math.clamp(self.Index,0,math.max(0,total-visible))

				if self.LastTotalSpace ~= self.TotalSpace then
					self.LastTotalSpace = self.TotalSpace
					self:UpdateMarkers()
				end

				if self:CanScrollUp() then
					for i,v in pairs(button1.Arrow:GetChildren()) do
						v.BackgroundTransparency = 0
					end
				else
					button1.BackgroundTransparency = 1
					for i,v in pairs(button1.Arrow:GetChildren()) do
						v.BackgroundTransparency = 0.5
					end
				end
				if self:CanScrollDown() then
					for i,v in pairs(button2.Arrow:GetChildren()) do
						v.BackgroundTransparency = 0
					end
				else
					button2.BackgroundTransparency = 1
					for i,v in pairs(button2.Arrow:GetChildren()) do
						v.BackgroundTransparency = 0.5
					end
				end

				drawThumb(self)
			end

			funcs.UpdateMarkers = function(self)
				local markerFrame = self.GuiElems.MarkerFrame
				markerFrame:ClearAllChildren()

				for i,v in pairs(self.Markers) do
					if i < self.TotalSpace then
						createSimple("Frame",{
							BackgroundTransparency = 0,
							BackgroundColor3 = v,
							BorderSizePixel = 0,
							Position = self.Horizontal and UDim2.new(i/self.TotalSpace,0,1,-6) or UDim2.new(1,-6,i/self.TotalSpace,0),
							Size = self.Horizontal and UDim2.new(0,1,0,6) or UDim2.new(0,6,0,1),
							Name = "Marker"..tostring(i),
							Parent = markerFrame
						})
					end
				end
			end

			funcs.AddMarker = function(self,ind,color)
				self.Markers[ind] = color or Color3.new(0,0,0)
			end
			funcs.ScrollTo = function(self,ind,nocallback)
				self.Index = ind
				self:Update()
				if not nocallback then
					self.Scrolled:Fire()
				end
			end
			funcs.ScrollUp = function(self)
				self.Index = self.Index - self.Increment
				self:Update()
			end
			funcs.ScrollDown = function(self)
				self.Index = self.Index + self.Increment
				self:Update()
			end
			funcs.CanScrollUp = function(self)
				return self.Index > 0
			end
			funcs.CanScrollDown = function(self)
				return self.Index + self.VisibleSpace < self.TotalSpace
			end
			funcs.GetScrollPercent = function(self)
				return self.Index/(self.TotalSpace-self.VisibleSpace)
			end
			funcs.SetScrollPercent = function(self,perc)
				self.Index = math.floor(perc*(self.TotalSpace-self.VisibleSpace))
				self:Update()
			end

			funcs.Texture = function(self,data)
				self.ThumbColor = data.ThumbColor or Color3.new(0,0,0)
				self.ThumbSelectColor = data.ThumbSelectColor or Color3.new(0,0,0)
				self.GuiElems.ScrollThumb.BackgroundColor3 = data.ThumbColor or Color3.new(0,0,0)
				self.Gui.BackgroundColor3 = data.FrameColor or Color3.new(0,0,0)
				self.GuiElems.Button1.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
				self.GuiElems.Button2.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
				for i,v in pairs(self.GuiElems.Button1.Arrow:GetChildren()) do
					v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
				end
				for i,v in pairs(self.GuiElems.Button2.Arrow:GetChildren()) do
					v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
				end
			end

			funcs.SetScrollFrame = function(self,frame)
				if self.ScrollUpEvent then self.ScrollUpEvent:Disconnect() self.ScrollUpEvent = nil end
				if self.ScrollDownEvent then self.ScrollDownEvent:Disconnect() self.ScrollDownEvent = nil end
				self.ScrollUpEvent = frame.MouseWheelForward:Connect(function() self:ScrollTo(self.Index - self.WheelIncrement) end)
				self.ScrollDownEvent = frame.MouseWheelBackward:Connect(function() self:ScrollTo(self.Index + self.WheelIncrement) end)
			end

			local mt = {}
			mt.__index = funcs

			local function new(hor)
				local obj = setmetatable({
					Index = 0,
					VisibleSpace = 0,
					TotalSpace = 0,
					Increment = 1,
					WheelIncrement = 1,
					Markers = {},
					GuiElems = {},
					Horizontal = hor,
					LastTotalSpace = 0,
					Scrolled = Lib.Signal.new()
				},mt)
				obj.Gui = createFrame(obj)
				obj:Texture({
					ThumbColor = Color3.fromRGB(60,60,60),
					ThumbSelectColor = Color3.fromRGB(75,75,75),
					ArrowColor = Color3.new(1,1,1),
					FrameColor = Color3.fromRGB(40,40,40),
					ButtonColor = Color3.fromRGB(75,75,75)
				})
				return obj
			end

			return {new = new}
		end)()

		Lib.CodeFrame = (function()
			local funcs = {}

			local typeMap = {
				[1] = "String",
				[2] = "String",
				[3] = "String",
				[4] = "Comment",
				[5] = "Operator",
				[6] = "Number",
				[7] = "Keyword",
				[8] = "BuiltIn",
				[9] = "LocalMethod",
				[10] = "LocalProperty",
				[11] = "Nil",
				[12] = "Bool",
				[13] = "Function",
				[14] = "Local",
				[15] = "Self",
				[16] = "FunctionName",
				[17] = "Bracket"
			}

			local specialKeywordsTypes = {
				["nil"] = 11,
				["true"] = 12,
				["false"] = 12,
				["function"] = 13,
				["local"] = 14,
				["self"] = 15
			}

			local keywords = {
				["and"] = true,
				["break"] = true, 
				["do"] = true,
				["else"] = true,
				["elseif"] = true,
				["end"] = true,
				["false"] = true,
				["for"] = true,
				["function"] = true,
				["if"] = true,
				["in"] = true,
				["local"] = true,
				["nil"] = true,
				["not"] = true,
				["or"] = true,
				["repeat"] = true,
				["return"] = true,
				["then"] = true,
				["true"] = true,
				["until"] = true,
				["while"] = true,
				["plugin"] = true
			}

			local builtIns = {
				["task"] = true,
				["delay"] = true,
				["elapsedTime"] = true,
				["require"] = true,
				["spawn"] = true,
				["tick"] = true,
				["time"] = true,
				["typeof"] = true,
				["UserSettings"] = true,
				["wait"] = true,
				["warn"] = true,
				["game"] = true,
				["shared"] = true,
				["script"] = true,
				["workspace"] = true,
				["assert"] = true,
				["collectgarbage"] = true,
				["error"] = true,
				["getfenv"] = true,
				["getmetatable"] = true,
				["ipairs"] = true,
				["loadstring"] = true,
				["newproxy"] = true,
				["next"] = true,
				["pairs"] = true,
				["pcall"] = true,
				["print"] = true,
				["rawequal"] = true,
				["rawget"] = true,
				["rawset"] = true,
				["select"] = true,
				["setfenv"] = true,
				["setmetatable"] = true,
				["tonumber"] = true,
				["tostring"] = true,
				["type"] = true,
				["unpack"] = true,
				["xpcall"] = true,
				["_G"] = true,
				["_VERSION"] = true,
				["coroutine"] = true,
				["debug"] = true,
				["math"] = true,
				["os"] = true,
				["string"] = true,
				["table"] = true,
				["bit32"] = true,
				["utf8"] = true,
				["Axes"] = true,
				["BrickColor"] = true,
				["CFrame"] = true,
				["Color3"] = true,
				["ColorSequence"] = true,
				["ColorSequenceKeypoint"] = true,
				["DockWidgetPluginGuiInfo"] = true,
				["Enum"] = true,
				["Faces"] = true,
				["Instance"] = true,
				["NumberRange"] = true,
				["NumberSequence"] = true,
				["NumberSequenceKeypoint"] = true,
				["PathWaypoint"] = true,
				["PhysicalProperties"] = true,
				["Random"] = true,
				["Ray"] = true,
				["Rect"] = true,
				["Region3"] = true,
				["Region3int16"] = true,
				["TweenInfo"] = true,
				["UDim"] = true,
				["UDim2"] = true,
				["Vector2"] = true,
				["Vector2int16"] = true,
				["Vector3"] = true,
				["Vector3int16"] = true,

				--// Libraries
				["Drawing"] = true,
				["syn"] = true, -- For compatability
				["crypt"] = true,
				["cache"] = true,
				["bit"] = true,

				--// Custom Lua Functions
				-- File Functions
				["readfile"] = true,
				["writefile"] = true,
				["isfile"] = true,
				["appendfile"] = true,
				["listfiles"] = true,
				["loadfile"] = true,
				["isfolder"] = true,
				["makefolder"] = true,
				["delfolder"] = true,
				["delfile"] = true,

				-- Misc Functions
				["setclipboard"] = true,
				["setfflag"] = true,
				["getnamecallmethod"] = true,
				["isluau"] = true, -- For compatability
				["setnonreplicatedproperty"] = true,
				["getspecialinfo"] = true,
				["saveinstance"] = true,
				--[=[ ["messagebox"] = true, ]=] -- Disabled for security

				-- Console Functions (for compatability)
				["rconsoleprint"] = true,
				["rconsoleinfo"] = true,
				["rconsolewarn"] = true,
				["rconsoleerr"] = true,
				["rconsoleclear"] = true,
				["rconsolename"] = true,
				["rconsoleinput"] = true,
				["rconsoleinputasync"] = true,
				["printconsole"] = true,

				--- Reflection Functions
				--[=[ ["loadstring"] = true, ]=] -- Disabled, already stated.
				["checkcaller"] = true,
				["islclosure"] = true,
				["iscclosure"] = true,
				["dumpstring"] = true,
				["decompile"] = true,

				-- Hooking Functions
				["hookfunction"] = true,
				["newcclosure"] = true,

				-- KB/M Functions
				["isrbxactive"] = true,
				["keypress"] = true,
				["keyrelease"] = true,

				["mouse1click"] = true,
				["mouse1press"] = true,
				["mouse1release"] = true,

				["mouse2click"] = true,
				["mouse2press"] = true,
				["mouse2release"] = true,

				["mousescroll"] = true,
				["mousemoveabs"] = true,
				["mousemoverel"] = true,

				-- Table Modification Functions
				["getrawmetatable"] = true,
				["setrawmetatable"] = true,
				["setreadonly"] = true,
				["isreadonly"] = true,

				-- Script Env Functions
				["getsenv"] = true,
				["getcallingscript"] = true,

				-- Env Helping Functions
				["getgenv"] = true,
				["getrenv"] = true,
				["getreg"] = true,
				["getgc"] = true,
				["getinstances"] = true,
				["getnilinstances"] = true,
				["getscripts"] = true,
				["getloadedmodules"] = true,
				["getconnections"] = true,
				["firesignal"] = true,
				["fireclickdetector"] = true,
				["firetouchinterest"] = true,
				["fireproximityprompt"] = true
			}

			local builtInInited = false

			local richReplace = {
				["'"] = "&apos;",
				["\""] = "&quot;",
				["<"] = "&lt;",
				[">"] = "&gt;",
				["&"] = "&amp;"
			}

			local tabSub = "\205"
			local tabReplacement = (" %s%s "):format(tabSub,tabSub)

			local tabJumps = {
				[("[^%s] %s"):format(tabSub,tabSub)] = 0,
				[(" %s%s"):format(tabSub,tabSub)] = -1,
				[("%s%s "):format(tabSub,tabSub)] = 2,
				[("%s [^%s]"):format(tabSub,tabSub)] = 1,
			}

			local tweenService = service:GetService('TweenService')
			local lineTweens = {}

			local function initBuiltIn()
				local env = getfenv()
				local type = type
				local tostring = tostring
				for name,_ in next,builtIns do
					local envVal = env[name]
					if type(envVal) == "table" then
						local items = {}
						for i,v in next,envVal do
							items[i] = true
						end
						builtIns[name] = items
					end
				end

				local enumEntries = {}
				local enums = Enum:GetEnums()
				for i = 1,#enums do
					enumEntries[tostring(enums[i])] = true
				end
				builtIns["Enum"] = enumEntries

				builtInInited = true
			end

			local function setupEditBox(obj)
				local editBox = obj.GuiElems.EditBox

				editBox.Focused:Connect(function()
					obj:ConnectEditBoxEvent()
					obj.Editing = true
				end)

				editBox.FocusLost:Connect(function()
					obj:DisconnectEditBoxEvent()
					obj.Editing = false
				end)

				editBox:GetPropertyChangedSignal("Text"):Connect(function()
					local text = editBox.Text
					if #text == 0 or obj.EditBoxCopying then return end

					text = text:gsub("\t", "    ")

					editBox.Text = ""
					obj:AppendText(text)
				end)

			end

			local function setupMouseSelection(obj)
				local mouse = plr:GetMouse()
				local codeFrame = obj.GuiElems.LinesFrame
				local lines = obj.Lines

				codeFrame.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local fontSizeX,fontSizeY = math.ceil(obj.FontSize/2),obj.FontSize

						local relX = mouse.X - codeFrame.AbsolutePosition.X
						local relY = mouse.Y - codeFrame.AbsolutePosition.Y
						local selX = math.round(relX / fontSizeX) + obj.ViewX
						local selY = math.floor(relY / fontSizeY) + obj.ViewY
						local releaseEvent,mouseEvent,scrollEvent
						local scrollPowerV,scrollPowerH = 0,0
						selY = math.min(#lines-1,selY)
						local relativeLine = lines[selY+1] or ""
						selX = math.min(#relativeLine, selX + obj:TabAdjust(selX,selY))

						obj.SelectionRange = {{-1,-1},{-1,-1}}
						obj:MoveCursor(selX,selY)
						obj.FloatCursorX = selX

						local function updateSelection()
							local relX = mouse.X - codeFrame.AbsolutePosition.X
							local relY = mouse.Y - codeFrame.AbsolutePosition.Y
							local sel2X = math.max(0,math.round(relX / fontSizeX) + obj.ViewX)
							local sel2Y = math.max(0,math.floor(relY / fontSizeY) + obj.ViewY)

							sel2Y = math.min(#lines-1,sel2Y)
							local relativeLine = lines[sel2Y+1] or ""
							sel2X = math.min(#relativeLine, sel2X + obj:TabAdjust(sel2X,sel2Y))

							if sel2Y < selY or (sel2Y == selY and sel2X < selX) then
								obj.SelectionRange = {{sel2X,sel2Y},{selX,selY}}
							else						
								obj.SelectionRange = {{selX,selY},{sel2X,sel2Y}}
							end

							obj:MoveCursor(sel2X,sel2Y)
							obj.FloatCursorX = sel2X
							obj:Refresh()
						end

						releaseEvent = service.UserInputService.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								releaseEvent:Disconnect()
								mouseEvent:Disconnect()
								scrollEvent:Disconnect()
								obj:SetCopyableSelection()
								--updateSelection()
							end
						end)

						mouseEvent = service.UserInputService.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								local upDelta = mouse.Y - codeFrame.AbsolutePosition.Y
								local downDelta = mouse.Y - codeFrame.AbsolutePosition.Y - codeFrame.AbsoluteSize.Y
								local leftDelta = mouse.X - codeFrame.AbsolutePosition.X
								local rightDelta = mouse.X - codeFrame.AbsolutePosition.X - codeFrame.AbsoluteSize.X
								scrollPowerV = 0
								scrollPowerH = 0
								if downDelta > 0 then
									scrollPowerV = math.floor(downDelta*0.15) + 1
								elseif upDelta < 0 then
									scrollPowerV = math.ceil(upDelta*0.15) - 1
								end
								if rightDelta > 0 then
									scrollPowerH = math.floor(rightDelta*0.15) + 1
								elseif leftDelta < 0 then
									scrollPowerH = math.ceil(leftDelta*0.15) - 1
								end
								updateSelection()
							end
						end)

						scrollEvent = service:GetService("RunService").RenderStepped:Connect(function()
							if scrollPowerV ~= 0 or scrollPowerH ~= 0 then
								obj:ScrollDelta(scrollPowerH,scrollPowerV)
								updateSelection()
							end
						end)

						obj:Refresh()
					end
				end)
			end

			local cursor = Instance.new("Frame")

			local function makeFrame(obj)
				local frame = Instance.new('Frame')
				frame.BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945);frame.BorderSizePixel=0; frame.Size=UDim2.new(1, 0, 1, 0);frame.Visible=true;
				local elems = {}

				local linesFrame = Instance.new("Frame")
				linesFrame.Name = "Lines"
				linesFrame.BackgroundTransparency = 1
				linesFrame.Size = UDim2.new(1,0,1,0)
				linesFrame.ClipsDescendants = true
				linesFrame.Parent = frame

				local lineNumbersLabel = Instance.new("TextLabel")
				lineNumbersLabel.Name = "LineNumbers"
				lineNumbersLabel.BackgroundTransparency = 1
				lineNumbersLabel.Font = Enum.Font.Code
				lineNumbersLabel.TextXAlignment = Enum.TextXAlignment.Right
				lineNumbersLabel.TextYAlignment = Enum.TextYAlignment.Top
				lineNumbersLabel.ClipsDescendants = true
				lineNumbersLabel.RichText = true
				lineNumbersLabel.Parent = frame

				cursor.Name = "Cursor"
				cursor.BackgroundColor3 = Color3.fromRGB(220,220,220)
				cursor.BorderSizePixel = 0
				cursor.Parent = frame

				local editBox = Instance.new("TextBox")
				editBox.Name = "EditBox"
				editBox.MultiLine = true
				editBox.Visible = false
				editBox.Parent = frame
				editBox.TextSize = obj.FontSize

				lineTweens.Invis = tweenService:Create(cursor,TweenInfo.new(0,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency = 1})
				lineTweens.Vis = tweenService:Create(cursor,TweenInfo.new(0,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency = 0})

				elems.LinesFrame = linesFrame
				elems.LineNumbersLabel = lineNumbersLabel
				elems.Cursor = cursor
				elems.EditBox = editBox
				local scrcfrm = Instance.new('Frame')
				scrcfrm.BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945);scrcfrm.BorderSizePixel=0;scrcfrm.Name="ScrollCorner";scrcfrm.Position=UDim2.new(1,-10,1,-10);scrcfrm.Size=UDim2.new(0,10,0,10);scrcfrm.Visible=false;
				elems.ScrollCorner = scrcfrm

				elems.ScrollCorner.Parent = frame
				linesFrame.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						obj:SetEditing(true,input)
					end
				end)

				obj.Frame = frame
				obj.Gui = frame
				obj.GuiElems = elems
				setupEditBox(obj)
				setupMouseSelection(obj)

				return frame
			end

			funcs.GetSelectionText = function(self)
				if not self:IsValidRange() then return "" end

				local selectionRange = self.SelectionRange
				local selX,selY = selectionRange[1][1], selectionRange[1][2]
				local sel2X,sel2Y = selectionRange[2][1], selectionRange[2][2]
				local deltaLines = sel2Y-selY
				local lines = self.Lines

				if not lines[selY+1] or not lines[sel2Y+1] then return "" end

				if deltaLines == 0 then
					return self:ConvertText(lines[selY+1]:sub(selX+1,sel2X), false)
				end

				local leftSub = lines[selY+1]:sub(selX+1)
				local rightSub = lines[sel2Y+1]:sub(1,sel2X)

				local result = leftSub.."\n" 
				for i = selY+1,sel2Y-1 do
					result = result..lines[i+1].."\n"
				end
				result = result..rightSub

				return self:ConvertText(result,false)
			end

			funcs.SetCopyableSelection = function(self)
				local text = self:GetSelectionText()
				local editBox = self.GuiElems.EditBox

				self.EditBoxCopying = true
				editBox.Text = text
				editBox.SelectionStart = 1
				editBox.CursorPosition = #editBox.Text + 1
				self.EditBoxCopying = false
			end

			funcs.ConnectEditBoxEvent = function(self)
				if self.EditBoxEvent then
					self.EditBoxEvent:Disconnect()
				end

				self.EditBoxEvent = service.UserInputService.InputBegan:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.Keyboard then return end

					local keycodes = Enum.KeyCode
					local keycode = input.KeyCode

					local function setupMove(key,func)
						local endCon,finished
						endCon = service.UserInputService.InputEnded:Connect(function(input)
							if input.KeyCode ~= key then return end
							endCon:Disconnect()
							finished = true
						end)
						func()
						Lib.FastWait(0.5)
						while not finished do func() Lib.FastWait(0.03) end
					end

					if keycode == keycodes.Down and not service.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
						setupMove(keycodes.Down,function()
							self.CursorX = self.FloatCursorX
							self.CursorY = self.CursorY + 1
							self:UpdateCursor()
							self:JumpToCursor()
						end)
					elseif keycode == keycodes.Up and not service.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
						setupMove(keycodes.Up,function()
							self.CursorX = self.FloatCursorX
							self.CursorY = self.CursorY - 1
							self:UpdateCursor()
							self:JumpToCursor()
						end)
					elseif keycode == keycodes.Left and not service.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
						setupMove(keycodes.Left,function()
							local line = self.Lines[self.CursorY+1] or ""
							self.CursorX = self.CursorX - 1 - (line:sub(self.CursorX-3,self.CursorX) == tabReplacement and 3 or 0)
							if self.CursorX < 0 then
								self.CursorY = self.CursorY - 1
								local line2 = self.Lines[self.CursorY+1] or ""
								self.CursorX = #line2
							end
							self.FloatCursorX = self.CursorX
							self:UpdateCursor()
							self:JumpToCursor()
						end)
					elseif keycode == keycodes.Right and not service.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
						setupMove(keycodes.Right,function()
							local line = self.Lines[self.CursorY+1] or ""
							self.CursorX = self.CursorX + 1 + (line:sub(self.CursorX+1,self.CursorX+4) == tabReplacement and 3 or 0)
							if self.CursorX > #line then
								self.CursorY = self.CursorY + 1
								self.CursorX = 0
							end
							self.FloatCursorX = self.CursorX
							self:UpdateCursor()
							self:JumpToCursor()
						end)
					elseif keycode == keycodes.Backspace then
						setupMove(keycodes.Backspace,function()
							local startRange,endRange
							if self:IsValidRange() then
								startRange = self.SelectionRange[1]
								endRange = self.SelectionRange[2]
							else
								endRange = {self.CursorX,self.CursorY}
							end

							if not startRange then
								local line = self.Lines[self.CursorY+1] or ""
								self.CursorX = self.CursorX - 1 - (line:sub(self.CursorX-3,self.CursorX) == tabReplacement and 3 or 0)
								if self.CursorX < 0 then
									self.CursorY = self.CursorY - 1
									local line2 = self.Lines[self.CursorY+1] or ""
									self.CursorX = #line2
								end
								self.FloatCursorX = self.CursorX
								self:UpdateCursor()

								startRange = startRange or {self.CursorX,self.CursorY}
							end

							self:DeleteRange({startRange,endRange},false,true)
							self:ResetSelection(true)
							self:JumpToCursor()
						end)
					elseif keycode == keycodes.Delete then
						setupMove(keycodes.Delete,function()
							local startRange,endRange
							if self:IsValidRange() then
								startRange = self.SelectionRange[1]
								endRange = self.SelectionRange[2]
							else
								startRange = {self.CursorX,self.CursorY}
							end

							if not endRange then
								local line = self.Lines[self.CursorY+1] or ""
								local endCursorX = self.CursorX + 1 + (line:sub(self.CursorX+1,self.CursorX+4) == tabReplacement and 3 or 0)
								local endCursorY = self.CursorY
								if endCursorX > #line then
									endCursorY = endCursorY + 1
									endCursorX = 0
								end
								self:UpdateCursor()

								endRange = endRange or {endCursorX,endCursorY}
							end

							self:DeleteRange({startRange,endRange},false,true)
							self:ResetSelection(true)
							self:JumpToCursor()
						end)
					elseif service.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
						if keycode == keycodes.A then
							self.SelectionRange = {{0,5},{#self.Lines[#self.Lines],#self.Lines-1}}
							self:SetCopyableSelection()
							self:Refresh()
						elseif keycode == keycodes.Up and self.ScaleKeybinds then
							if self.UiScale.Scale >= self.MaxScale then return end
							self.UiScale.Scale += self.ScaleIncrement
							if self.UiScale.Scale > self.MaxScale then
								self.UiScale.Scale = self.MaxScale
							end
							self:Refresh()
						elseif keycode ==  keycodes.Down and self.ScaleKeybinds then
							if self.UiScale.Scale <= self.MinScale then return end
							self.UiScale.Scale -= self.ScaleIncrement
							if self.UiScale.Scale < self.MinScale then
								self.UiScale.Scale = self.MinScale
							end
							self:Refresh()
						elseif keycode == keycodes.Right and self.ScaleKeybinds then
							self.UiScale.Scale = self.MaxScale
							self:Refresh()
						elseif keycode == keycodes.Left and self.ScaleKeybinds then
							self.UiScale.Scale = self.MinScale
							self:Refresh()
						end
					end
				end)
			end

			funcs.DisconnectEditBoxEvent = function(self)
				if self.EditBoxEvent then
					self.EditBoxEvent:Disconnect()
					cursor.BackgroundTransparency = 1
					funcs.CursorAnim(self, false)
				end
			end

			funcs.ResetSelection = function(self,norefresh)
				self.SelectionRange = {{-1,-1},{-1,-1}}
				if not norefresh then self:Refresh() end
			end

			funcs.IsValidRange = function(self,range)
				local selectionRange = range or self.SelectionRange
				local selX,selY = selectionRange[1][1], selectionRange[1][2]
				local sel2X,sel2Y = selectionRange[2][1], selectionRange[2][2]

				if selX == -1 or (selX == sel2X and selY == sel2Y) then return false end

				return true
			end

			funcs.DeleteRange = function(self,range,noprocess,updatemouse)
				range = range or self.SelectionRange
				if not self:IsValidRange(range) then return end

				local lines = self.Lines
				local selX,selY = range[1][1], range[1][2]
				local sel2X,sel2Y = range[2][1], range[2][2]
				local deltaLines = sel2Y-selY

				if not lines[selY+1] or not lines[sel2Y+1] then return end

				local leftSub = lines[selY+1]:sub(1,selX)
				local rightSub = lines[sel2Y+1]:sub(sel2X+1)
				lines[selY+1] = leftSub..rightSub

				local remove = table.remove
				for i = 1,deltaLines do
					remove(lines,selY+2)
				end

				if range == self.SelectionRange then self.SelectionRange = {{-1,-1},{-1,-1}} end
				if updatemouse then
					self.CursorX = selX
					self.CursorY = selY
					self:UpdateCursor()
				end

				if not noprocess then
					self:ProcessTextChange()
				end
			end

			funcs.AppendText = function(self,text)
				self:DeleteRange(nil,true,true)
				local lines,cursorX,cursorY = self.Lines,self.CursorX,self.CursorY
				local line = lines[cursorY+1]
				local before = line:sub(1,cursorX)
				local after = line:sub(cursorX+1)

				text = text:gsub("\r\n","\n")
				text = self:ConvertText(text,true) -- Tab Convert

				local textLines = text:split("\n")
				local insert = table.insert

				for i = 1,#textLines do
					local linePos = cursorY+i
					if i > 1 then insert(lines,linePos,"") end

					local textLine = textLines[i]
					local newBefore = (i == 1 and before or "")
					local newAfter = (i == #textLines and after or "")

					lines[linePos] = newBefore..textLine..newAfter
				end

				if #textLines > 1 then cursorX = 0 end

				self:ProcessTextChange()
				self.CursorX = cursorX + #textLines[#textLines]
				self.CursorY = cursorY + #textLines-1
				self:UpdateCursor()
			end

			funcs.ScrollDelta = function(self,x,y)
				self.ScrollV:ScrollTo(self.ScrollV.Index + y)
				self.ScrollH:ScrollTo(self.ScrollH.Index + x)
			end

			-- x and y starts at 0
			funcs.TabAdjust = function(self,x,y)
				local lines = self.Lines
				local line = lines[y+1]
				x=x+1

				if line then
					local left = line:sub(x-1,x-1)
					local middle = line:sub(x,x)
					local right = line:sub(x+1,x+1)
					local selRange = (#left > 0 and left or " ") .. (#middle > 0 and middle or " ") .. (#right > 0 and right or " ")

					for i,v in pairs(tabJumps) do
						if selRange:find(i) then
							return v
						end
					end
				end
				return 0
			end

			funcs.SetEditing = function(self,on,input)			
				if input then
					self:UpdateCursor(input)
				end

				if on then
					if self.Editable then
						self.GuiElems.EditBox.Text = ""
						self.GuiElems.EditBox:CaptureFocus()
					end
				else
					self.GuiElems.EditBox:ReleaseFocus()
				end
			end

			funcs.CursorAnim = function(self,on)
				local cursor = self.GuiElems.Cursor
				local animTime = tick()
				self.LastAnimTime = animTime

				if not on then return end

				lineTweens.Invis:Cancel()
				lineTweens.Vis:Cancel()
				cursor.BackgroundTransparency = 0

				coroutine.wrap(function()
					while self.Editable do
						Lib.FastWait(self.CursorBlinkSpeed)
						if self.LastAnimTime ~= animTime then return end
						lineTweens.Invis:Play()
						Lib.FastWait(self.CursorBlinkSpeed)
						if self.LastAnimTime ~= animTime then return end
						lineTweens.Vis:Play()
					end
				end)()
			end

			funcs.MoveCursor = function(self,x,y)
				self.CursorX = x
				self.CursorY = y
				self:UpdateCursor()
				self:JumpToCursor()
			end

			funcs.JumpToCursor = function(self)
				self:Refresh()
			end

			funcs.UpdateCursor = function(self,input)
				local linesFrame = self.GuiElems.LinesFrame
				local cursor = self.GuiElems.Cursor			
				local hSize = math.max(0,linesFrame.AbsoluteSize.X)
				local vSize = math.max(0,linesFrame.AbsoluteSize.Y)
				local maxLines = math.ceil(vSize / self.FontSize)
				local maxCols = math.ceil(hSize / math.ceil(self.FontSize/2))
				local viewX,viewY = self.ViewX,self.ViewY
				local totalLinesStr = tostring(#self.Lines)
				local fontWidth = math.ceil(self.FontSize / 2)
				local linesOffset = #totalLinesStr*fontWidth + 4*fontWidth

				if input then
					local linesFrame = self.GuiElems.LinesFrame
					local frameX,frameY = linesFrame.AbsolutePosition.X,linesFrame.AbsolutePosition.Y
					local mouseX,mouseY = input.Position.X,input.Position.Y
					local fontSizeX,fontSizeY = math.ceil(self.FontSize/2),self.FontSize

					self.CursorX = self.ViewX + math.round((mouseX - frameX) / fontSizeX)
					self.CursorY = self.ViewY + math.floor((mouseY - frameY) / fontSizeY)
				end

				local cursorX,cursorY = self.CursorX,self.CursorY

				local line = self.Lines[cursorY+1] or ""
				if cursorX > #line then cursorX = #line
				elseif cursorX < 0 then cursorX = 0 end

				if cursorY >= #self.Lines then
					cursorY = math.max(0,#self.Lines-1)
				elseif cursorY < 0 then
					cursorY = 0
				end

				cursorX = cursorX + self:TabAdjust(cursorX,cursorY)

				-- Update modified
				self.CursorX = cursorX
				self.CursorY = cursorY

				local cursorVisible = (cursorX >= viewX) and (cursorY >= viewY) and (cursorX <= viewX + maxCols) and (cursorY <= viewY + maxLines)
				if cursorVisible then
					local offX = (cursorX - viewX)
					local offY = (cursorY - viewY)
					cursor.Position = UDim2.new(0,linesOffset + offX*math.ceil(self.FontSize/2) - 1,0,offY*self.FontSize)
					cursor.Size = UDim2.new(0,1,0,self.FontSize+2)
					cursor.Visible = true
					self:CursorAnim(true)
				else
					cursor.Visible = false
				end
			end

			funcs.SetCursorBlinkSpeed = function(self, Speed: number)
				self.CursorBlinkSpeed = Speed
			end

			funcs.MapNewLines = function(self)
				local newLines = {}
				local count = 1
				local text = self.Text
				local find = string.find
				local init = 1

				local pos = find(text,"\n",init,true)
				while pos do
					newLines[count] = pos
					count = count + 1
					init = pos + 1
					pos = find(text,"\n",init,true)
				end

				self.NewLines = newLines
			end

			funcs.PreHighlight = function(self)
				local start = tick()
				local text = self.Text:gsub("\\\\","  ")
				--print("BACKSLASH SUB",tick()-start)
				local textLen = #text
				local found = {}
				local foundMap = {}
				local extras = {}
				local find = string.find
				local sub = string.sub
				self.ColoredLines = {}

				local function findAll(str,pattern,typ,raw)
					local count = #found+1
					local init = 1
					local x,y,extra = find(str,pattern,init,raw)
					while x do
						found[count] = x
						foundMap[x] = typ
						if extra then
							extras[x] = extra
						end

						count = count+1
						init = y+1
						x,y,extra = find(str,pattern,init,raw)
					end
				end
				local start = tick()
				findAll(text,'"',1,true)
				findAll(text,"'",2,true)
				findAll(text,"%[(=*)%[",3)
				findAll(text,"--",4,true)
				table.sort(found)

				local newLines = self.NewLines
				local curLine = 0
				local lineTableCount = 1
				local lineStart = 0
				local lineEnd = 0
				local lastEnding = 0
				local foundHighlights = {}

				for i = 1,#found do
					local pos = found[i]
					if pos <= lastEnding then continue end

					local ending = pos
					local typ = foundMap[pos]
					if typ == 1 then
						ending = find(text,'"',pos+1,true)
						while ending and sub(text,ending-1,ending-1) == "\\" do
							ending = find(text,'"',ending+1,true)
						end
						if not ending then ending = textLen end
					elseif typ == 2 then
						ending = find(text,"'",pos+1,true)
						while ending and sub(text,ending-1,ending-1) == "\\" do
							ending = find(text,"'",ending+1,true)
						end
						if not ending then ending = textLen end
					elseif typ == 3 then
						_,ending = find(text,"]"..extras[pos].."]",pos+1,true)
						if not ending then ending = textLen end
					elseif typ == 4 then
						local ahead = foundMap[pos+2]

						if ahead == 3 then
							_,ending = find(text,"]"..extras[pos+2].."]",pos+1,true)
							if not ending then ending = textLen end
						else
							ending = find(text,"\n",pos+1,true) or textLen
						end
					end

					while pos > lineEnd do
						curLine = curLine + 1
						--lineTableCount = 1
						lineEnd = newLines[curLine] or textLen+1
					end
					while true do
						local lineTable = foundHighlights[curLine]
						if not lineTable then lineTable = {} foundHighlights[curLine] = lineTable end
						lineTable[pos] = {typ,ending}
						--lineTableCount = lineTableCount + 1

						if ending > lineEnd then
							curLine = curLine + 1
							lineEnd = newLines[curLine] or textLen+1
						else
							break
						end
					end

					lastEnding = ending
					--if i < 200 then print(curLine) end
				end
				self.PreHighlights = foundHighlights
				--print(tick()-start)
				--print(#found,curLine)
			end

			funcs.HighlightLine = function(self,line)
				local cached = self.ColoredLines[line]
				if cached then return cached end

				local sub = string.sub
				local find = string.find
				local match = string.match
				local highlights = {}
				local preHighlights = self.PreHighlights[line] or {}
				local lineText = self.Lines[line] or ""
				local lineLen = #lineText
				local lastEnding = 0
				local currentType = 0
				local lastWord = nil
				local wordBeginsDotted = false
				local funcStatus = 0
				local lineStart = self.NewLines[line-1] or 0

				local preHighlightMap = {}
				for pos,data in next,preHighlights do
					local relativePos = pos-lineStart
					if relativePos < 1 then
						currentType = data[1]
						lastEnding = data[2] - lineStart
						--warn(pos,data[2])
					else
						preHighlightMap[relativePos] = {data[1],data[2]-lineStart}
					end
				end

				for col = 1,#lineText do
					if col <= lastEnding then highlights[col] = currentType continue end

					local pre = preHighlightMap[col]
					if pre then
						currentType = pre[1]
						lastEnding = pre[2]
						highlights[col] = currentType
						wordBeginsDotted = false
						lastWord = nil
						funcStatus = 0
					else
						local char = sub(lineText,col,col)
						if find(char,"[%a_]") then
							local word = match(lineText,"[%a%d_]+",col)
							local wordType = (keywords[word] and 7) or (builtIns[word] and 8)

							lastEnding = col+#word-1

							if wordType ~= 7 then
								if wordBeginsDotted then
									local prevBuiltIn = lastWord and builtIns[lastWord]
									wordType = (prevBuiltIn and type(prevBuiltIn) == "table" and prevBuiltIn[word] and 8) or 10
								end

								if wordType ~= 8 then
									local x,y,br = find(lineText,"^%s*([%({\"'])",lastEnding+1)
									if x then
										wordType = (funcStatus > 0 and br == "(" and 16) or 9
										funcStatus = 0
									end
								end
							else
								wordType = specialKeywordsTypes[word] or wordType
								funcStatus = (word == "function" and 1 or 0)
							end

							lastWord = word
							wordBeginsDotted = false
							if funcStatus > 0 then funcStatus = 1 end

							if wordType then
								currentType = wordType
								highlights[col] = currentType
							else
								currentType = nil
							end
						elseif find(char,"%p") then
							local isDot = (char == ".")
							local isNum = isDot and find(sub(lineText,col+1,col+1),"%d")
							highlights[col] = (isNum and 6 or 5)

							if not isNum then
								local dotStr = isDot and match(lineText,"%.%.?%.?",col)
								if dotStr and #dotStr > 1 then
									currentType = 5
									lastEnding = col+#dotStr-1
									wordBeginsDotted = false
									lastWord = nil
									funcStatus = 0
								else
									if isDot then
										if wordBeginsDotted then
											lastWord = nil
										else
											wordBeginsDotted = true
										end
									else
										wordBeginsDotted = false
										lastWord = nil
									end

									funcStatus = ((isDot or char == ":") and funcStatus == 1 and 2) or 0
								end
							end
						elseif find(char,"%d") then
							local _,endPos = find(lineText,"%x+",col)
							local endPart = sub(lineText,endPos,endPos+1)
							if (endPart == "e+" or endPart == "e-") and find(sub(lineText,endPos+2,endPos+2),"%d") then
								endPos = endPos + 1
							end
							currentType = 6
							lastEnding = endPos
							highlights[col] = 6
							wordBeginsDotted = false
							lastWord = nil
							funcStatus = 0
						else
							highlights[col] = currentType
							local _,endPos = find(lineText,"%s+",col)
							if endPos then
								lastEnding = endPos
							end
						end
					end
				end

				self.ColoredLines[line] = highlights
				return highlights
			end

			funcs.Refresh = function(self)
				local start = tick()

				local linesFrame = self.Frame.Lines
				local hSize = math.max(0,linesFrame.AbsoluteSize.X)
				local vSize = math.max(0,linesFrame.AbsoluteSize.Y)
				local maxLines = math.ceil(vSize / self.FontSize)
				local maxCols = math.ceil(hSize / math.ceil(self.FontSize/2))
				local gsub = string.gsub
				local sub = string.sub

				local viewX,viewY = self.ViewX,self.ViewY

				local lineNumberStr = ""

				for row = 1,maxLines do
					local lineFrame = self.LineFrames[row]
					if not lineFrame then
						lineFrame = Instance.new("Frame")
						lineFrame.Name = "Line"
						lineFrame.Position = UDim2.new(0,0,0,(row-1)*self.FontSize)
						lineFrame.Size = UDim2.new(1,0,0,self.FontSize)
						lineFrame.BorderSizePixel = 0
						lineFrame.BackgroundTransparency = 1

						local selectionHighlight = Instance.new("Frame")
						selectionHighlight.Name = "SelectionHighlight"
						selectionHighlight.BorderSizePixel = 0
						selectionHighlight.BackgroundColor3 = Settings.Theme.Syntax.SelectionBack
						selectionHighlight.Parent = lineFrame
						selectionHighlight.BackgroundTransparency = 0.7

						local label = Instance.new("TextLabel")
						label.Name = "Label"
						label.BackgroundTransparency = 1
						--label.Font = Enum.Font.Code
						label.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
						label.TextSize = self.FontSize
						label.Size = UDim2.new(1,0,0,self.FontSize)
						label.RichText = true
						label.TextXAlignment = Enum.TextXAlignment.Left
						label.TextColor3 = self.Colors.Text
						label.ZIndex = 2
						label.Parent = lineFrame

						lineFrame.Parent = linesFrame
						self.LineFrames[row] = lineFrame
					end

					local relaY = viewY + row
					local lineText = self.Lines[relaY] or ""
					local resText = ""
					local highlights = self:HighlightLine(relaY)
					local colStart = viewX + 1

					local richTemplates = self.RichTemplates
					local textTemplate = richTemplates.Text
					local selectionTemplate = richTemplates.Selection
					local curType = highlights[colStart]
					local curTemplate = richTemplates[typeMap[curType]] or textTemplate

					-- Selection Highlight
					local selectionRange = self.SelectionRange
					local selPos1 = selectionRange[1]
					local selPos2 = selectionRange[2]
					local selRow,selColumn = selPos1[2],selPos1[1]
					local sel2Row,sel2Column = selPos2[2],selPos2[1]
					local selRelaX,selRelaY = viewX,relaY-1

					if selRelaY >= selPos1[2] and selRelaY <= selPos2[2] then
						local fontSizeX = math.ceil(self.FontSize/2)
						local posX = (selRelaY == selPos1[2] and selPos1[1] or 0) - viewX
						local sizeX = (selRelaY == selPos2[2] and selPos2[1]-posX-viewX or maxCols+viewX)

						lineFrame.SelectionHighlight.Position = UDim2.new(0,posX*fontSizeX,0,0)
						lineFrame.SelectionHighlight.Size = UDim2.new(0,sizeX*fontSizeX,1,0)
						lineFrame.SelectionHighlight.Visible = true
					else
						lineFrame.SelectionHighlight.Visible = false
					end

					-- Selection Text Color for first char
			--[[local inSelection = selRelaY >= selRow and selRelaY <= sel2Row and (selRelaY == selRow and viewX >= selColumn or selRelaY ~= selRow) and (selRelaY == sel2Row and viewX < sel2Column or selRelaY ~= sel2Row)
			if inSelection then
				curType = -999
				curTemplate = selectionTemplate
			end]]

					for col = 2,maxCols do
						local relaX = viewX + col
						local selRelaX = relaX-1
						local posType = highlights[relaX]

						-- Selection Text Color
						local inSelection = selRelaY >= selRow and selRelaY <= sel2Row and (selRelaY == selRow and selRelaX >= selColumn or selRelaY ~= selRow) and (selRelaY == sel2Row and selRelaX < sel2Column or selRelaY ~= sel2Row)

						if posType ~= curType then
							local template = (false and selectionTemplate) or richTemplates[typeMap[posType]] or textTemplate

							if template ~= curTemplate then
								local nextText = gsub(sub(lineText,colStart,relaX-1),"['\"<>&]", richReplace)
								resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. nextText .. "</font>") or nextText)
								colStart = relaX
								curTemplate = template
							end
							curType = posType
						end
					end

					local lastText = gsub(sub(lineText,colStart,viewX+maxCols),"['\"<>&]", richReplace)
					--warn("SUB",colStart,viewX+maxCols-1)
					if #lastText > 0 then
						resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. lastText .. "</font>") or lastText)
					end

					local t = relaY-1

			--[[if t and (t == self.CursorY) and self.LineFrames[relaY] and self.LineFrames[relaY].BackgroundTransparency then
				self.LineFrames[relaY].BackgroundTransparency = Settings.Theme.LineSyntax.CurrentLineTransparency
				self.LineFrames[relaY].BackgroundColor3 = Settings.Theme.LineSyntax.CurrentLineColor
			elseif self.LineFrames[relaY] and self.LineFrames[relaY].BackgroundTransparency then
				self.LineFrames[relaY].BackgroundTransparency = 1
			end
			
			game:GetService("UserInputService").InputChanged:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseWheel and relaY and self.LineFrames[relaY] then
					self.LineFrames[relaY].BackgroundTransparency = 1
				end
			end)]] -- Disabled the line highlighting due to some bugs with scripts that require scrolling

					if self.Lines[relaY] then
						lineNumberStr = lineNumberStr .. (relaY-1 == self.CursorY and ('<b>'..relaY.."</b>\n") or relaY .. "\n")
					end

					lineFrame.Label.Text = resText
				end

				for i = maxLines+1,#self.LineFrames do
					self.LineFrames[i]:Destroy()
					self.LineFrames[i] = nil
				end

				self.Frame.LineNumbers.Text = lineNumberStr
				self:UpdateCursor()

				--print("REFRESH TIME",tick()-start)
			end

			funcs.UpdateView = function(self)
				local totalLinesStr = tostring(#self.Lines)
				local fontWidth = math.ceil(self.FontSize / 2)
				local linesOffset = #totalLinesStr*fontWidth + 4*fontWidth

				local linesFrame = self.Frame.Lines
				local hSize = linesFrame.AbsoluteSize.X
				local vSize = linesFrame.AbsoluteSize.Y
				local maxLines = math.ceil(vSize / self.FontSize)
				local totalWidth = self.MaxTextCols*fontWidth
				local scrollV = self.ScrollV
				local scrollH = self.ScrollH

				scrollV.VisibleSpace = maxLines
				scrollV.TotalSpace = #self.Lines + 1
				scrollH.VisibleSpace = math.ceil(hSize/fontWidth)
				scrollH.TotalSpace = self.MaxTextCols + 1

				scrollV.Gui.Visible = #self.Lines + 1 > maxLines
				scrollH.Gui.Visible = totalWidth > hSize

				local oldOffsets = self.FrameOffsets
				self.FrameOffsets = Vector2.new(scrollV.Gui.Visible and -10 or 0, scrollH.Gui.Visible and -10 or 0)
				if oldOffsets ~= self.FrameOffsets then
					self:UpdateView()
				else
					scrollV:ScrollTo(self.ViewY,true)
					scrollH:ScrollTo(self.ViewX,true)

					if scrollV.Gui.Visible and scrollH.Gui.Visible then
						scrollV.Gui.Size = UDim2.new(0,10,1,-10)
						scrollH.Gui.Size = UDim2.new(1,-10,0,10)
						self.GuiElems.ScrollCorner.Visible = true
					else
						scrollV.Gui.Size = UDim2.new(0,10,1,0)
						scrollH.Gui.Size = UDim2.new(1,0,0,10)
						self.GuiElems.ScrollCorner.Visible = false
					end

					self.ViewY = scrollV.Index
					self.ViewX = scrollH.Index
					self.Frame.Lines.Position = UDim2.new(0,linesOffset,0,0)
					self.Frame.Lines.Size = UDim2.new(1,-linesOffset+oldOffsets.X,1,oldOffsets.Y)
					self.Frame.LineNumbers.Position = UDim2.new(0,fontWidth,0,0)
					self.Frame.LineNumbers.Size = UDim2.new(0,#totalLinesStr*fontWidth,1,oldOffsets.Y)
					self.Frame.LineNumbers.TextSize = self.FontSize
				end
			end

			funcs.ProcessTextChange = function(self)
				local maxCols = 0
				local lines = self.Lines

				for i = 1,#lines do
					local lineLen = #lines[i]
					if lineLen > maxCols then
						maxCols = lineLen
					end
				end

				self.MaxTextCols = maxCols
				self:UpdateView()	
				self.Text = table.concat(self.Lines,"\n")
				self:MapNewLines()
				self:PreHighlight()
				self:Refresh()
				--self.TextChanged:Fire()
			end

			funcs.ConvertText = function(self,text,toEditor)
				if toEditor then
					local new = text:gsub("\t", "    ")
					return new:gsub("\t",(" %s%s "):format(tabSub,tabSub))
				else
					return text:gsub((" %s%s "):format(tabSub,tabSub),"\t")
				end
			end

			funcs.GetText = function(self) -- TODO: better (use new tab format)
				local source = table.concat(self.Lines,"\n")
				return self:ConvertText(source,false) -- Tab Convert
			end

			funcs.SetText = function(self,txt)
				txt = self:ConvertText(txt,true) -- Tab Convert
				local lines = self.Lines
				table.clear(lines)
				local count = 1

				for line in txt:gmatch("([^\n\r]*)[\n\r]?") do
					local len = #line
					lines[count] = line
					count = count + 1
				end

				self:ProcessTextChange()
			end

			funcs.ClearText = function(self)
				local txt = self:ConvertText('',true)
				local lines = self.Lines
				table.clear(lines)
				local count = 1

				for line in txt:gmatch("([^\n\r]*)[\n\r]?") do
					local len = #line
					lines[count] = line
					count = count + 1
				end

				self:ProcessTextChange()
			end

			funcs.MakeRichTemplates = function(self)
				local floor = math.floor
				local templates = {}

				for name,color in pairs(self.Colors) do
					templates[name] = ('<font color="rgb(%s,%s,%s)">'):format(floor(color.r*255),floor(color.g*255),floor(color.b*255))
				end

				self.RichTemplates = templates
			end

			funcs.ApplyTheme = function(self)
				local colors = Settings.Theme.Syntax
				self.Colors = colors
				self.Frame.LineNumbers.TextColor3 = colors.Text
				self.Frame.BackgroundColor3 = colors.Background
			end

			local mt = {__index = funcs}

			local function new()
				if not builtInInited then initBuiltIn() end

				local starttime = tick()

				local scrollV = Lib.ScrollBar.new();
				local scrollH = Lib.ScrollBar.new(true);
				scrollH.Gui.Position = UDim2.new(0,0,1,-10);
				local Modal = Instance.new("ImageButton");
				Modal.BackgroundTransparency = 1;
				Modal.ImageTransparency = 1;
				Modal.Modal = true;
				Modal.Active = false;
				Modal.Size = UDim2.new(1,0,1,0);
				Modal.ZIndex = -5;
				local UIScale = Instance.new("UIScale");
				UIScale.Scale = 1;
				local obj = setmetatable({
					FontSize = 16,
					ViewX = 0,
					ViewY = 0,
					Colors = Settings.Theme.Syntax,
					ColoredLines = {},
					Lines = {""},
					LineFrames = {},
					Editable = true,
					Editing = false,
					CursorX = 0,
					CursorY = 0,
					FloatCursorX = 0,
					CursorBlinkSpeed = 0.5,
					Text = "",
					PreHighlights = {},
					SelectionRange = {{-1,-1},{-1,-1}},
					NewLines = {},
					FrameOffsets = Vector2.new(0,0),
					MaxTextCols = 0,
					ScrollV = scrollV,
					ScrollH = scrollH,
					UiScale = UIScale,
					MaxScale = 5,
					MinScale = 1,
					DefaultScale = 1,
					ScaleIncrement = 0.5,
					ScaleKeybinds = true
				},mt)

				funcs.SetTextMultiplier = (function(arg)
					obj.FontSize = arg
				end)
				funcs.GetTextMultiplier = (function()
					return obj.FontSize
				end)

				scrollV.WheelIncrement = 3
				scrollH.Increment = 2
				scrollH.WheelIncrement = 7

				scrollV.Scrolled:Connect(function()
					obj.ViewY = scrollV.Index
					obj:Refresh()
				end)

				scrollH.Scrolled:Connect(function()
					obj.ViewX = scrollH.Index
					obj:Refresh()
				end)

				makeFrame(obj)
				obj:MakeRichTemplates()
				obj:ApplyTheme()
				scrollV:SetScrollFrame(obj.Frame.Lines)
				scrollV.Gui.Parent = obj.Frame
				scrollH.Gui.Parent = obj.Frame
				Modal.Parent = obj.Frame
				UIScale.Parent = obj.Frame
				UIScale.Scale = obj.DefaultScale

				obj:UpdateView()
				obj.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					obj:UpdateView()
					obj:Refresh()
				end)

				local endtime = tick()
				local loadtime = endtime - starttime

				return obj
			end

			return {new = new}
		end)()

		return Lib
	end;
};
G2L_MODULES[G2L["4a"]] = {
	Closure = function()
		local script = G2L["4a"];local TweenService = game:GetService('TweenService')

		local ButtonTweener = {}

		local TweenSettings = {
			HoverTime = 0.15,
			ClickTime = 0.05,
			Style = Enum.EasingStyle.Linear,
			HoverTransparency2 = 0.95,
			DefaultTransparency2 = 1,
			ClickTransparency2 = 0.96
		}

		local function tweenProperties(instance, time, properties)
			TweenService:Create(instance, TweenInfo.new(time, TweenSettings.Style, Enum.EasingDirection.InOut), properties):Play()
		end

		function ButtonTweener:SetupButton(interactableinstance)
			interactableinstance.MouseEnter:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.HoverTime, {BackgroundTransparency = TweenSettings.HoverTransparency2})
			end)

			interactableinstance.MouseLeave:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.HoverTime, {BackgroundTransparency = TweenSettings.DefaultTransparency2})
			end)

			interactableinstance.MouseButton1Down:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.ClickTime, {BackgroundTransparency = TweenSettings.ClickTransparency2})
			end)

			interactableinstance.MouseButton1Up:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.ClickTime, {BackgroundTransparency = TweenSettings.HoverTransparency2})
			end)
		end

		return ButtonTweener
	end;
};
G2L_MODULES[G2L["5e"]] = {
	Closure = function()
		local script = G2L["5e"];local RS, UIS, CAS = game:GetService("RunService"), game:GetService("UserInputService"), game:GetService("ContextActionService")

		local PlayerGui	= game.Players.LocalPlayer:WaitForChild("PlayerGui")
		local Mouse		= game.Players.LocalPlayer:GetMouse()
		local ipairs,pairs	= ipairs,pairs

		wait()

		local DEFAULT_SENS,DEFAULT_FRICT = Mouse.ViewSizeY/27, 0.78

		local Objects = {}
		local DraggingBar = false

		if not UIS.TouchEnabled then

			RS.Heartbeat:Connect(function()
				for Frame, Info in pairs(Objects) do
					if Info.Velocity > 0.05 or Info.Velocity < -0.05 then
						Info.Velocity = Info.Velocity*Info.Frict				
						if Info.Axis == "X" then
							Frame.CanvasPosition = Vector2.new(Frame.CanvasPosition.X+Info.Velocity,Frame.CanvasPosition.Y)

							if math.abs(Info.LastPos-Frame.CanvasPosition.X) == 0 then
								--Hit end, remove velocity so scrolling back responds instantly
								Info.Velocity = 0
							end
							Info.LastPos = Frame.CanvasPosition.X
						else
							Frame.CanvasPosition = Vector2.new(Frame.CanvasPosition.X,Frame.CanvasPosition.Y+Info.Velocity)

							if math.abs(Info.LastPos-Frame.CanvasPosition.Y) == 0 then
								Info.Velocity = 0
							end
							Info.LastPos = Frame.CanvasPosition.Y
						end
					end
				end
			end)

			UIS.PointerAction:Connect(function(Wheel,Pan,Pinch,GP)
				if not DraggingBar then
					local HoveredObjects = PlayerGui:GetGuiObjectsAtPosition(Mouse.X, Mouse.Y)	
					for i, Frame in ipairs(HoveredObjects) do
						local Info = Objects[Frame]

						if Info and Info.Visibility.Visible == true then
							Info.Velocity = Info.Velocity - (Info.Sens * Pan.Y * (Info.Inverted and -1 or 1))
							break
						end
					end
				end
			end)

			CAS:BindActionAtPriority("SmoothScroll", function(Name,State,Input)

				if DraggingBar then return Enum.ContextActionResult.Pass end

				local Processed = false

				local HoveredObjects = PlayerGui:GetGuiObjectsAtPosition(Mouse.X, Mouse.Y)	
				for i, Frame in ipairs(HoveredObjects) do
					local Info = Objects[Frame]

					if Info and Info.Visibility.Visible == true then
						Info.Velocity = Info.Velocity - (Info.Sens * Input.Position.Z * (Info.Inverted and -1 or 1))
						Processed = true
						break
					end
				end

				return Processed and Enum.ContextActionResult.Sink or Enum.ContextActionResult.Pass

			end, false, 8000, Enum.UserInputType.MouseWheel)

		end

		local OnScreenTracker = {}
		OnScreenTracker.__index = OnScreenTracker

		function OnScreenTracker.new(obj)

			assert(typeof(obj) == "Instance" and obj:IsA("GuiObject"), "Argument #1 expected GuiObject")
			local visibleChanged = Instance.new("BindableEvent")

			local self = setmetatable({
				GuiObject = obj;
				Visible = nil;
				Changed = visibleChanged.Event;
				_path = {};
				_conn = {};
				_root = nil;
				_visibleChanged = visibleChanged;
			}, OnScreenTracker)

			local function CheckVisible()
				local vis = (self._root and self._root.Enabled or false)
				if (vis) then
					local path = self._path
					for i, p in ipairs(path) do
						if (not p.Visible) then
							vis = false
							break
						end
					end
				end
				if (vis ~= self.Visible) then
					self.Visible = vis
					visibleChanged:Fire(vis)
				end
			end

			local function BuildAncestryPath()
				for _,c in ipairs(self._conn) do c:Disconnect() end
				local path = {}
				local conn = {}
				local root = nil
				local parent = obj
				while (parent and (parent:IsA("GuiObject") or parent:IsA("Folder"))) do
					if parent:IsA("GuiObject") then
						conn[#conn + 1] = parent:GetPropertyChangedSignal("Visible"):Connect(CheckVisible)
						path[#path + 1] = parent
					end
					parent = parent.Parent
				end
				if (parent and parent:IsA("LayerCollector")) then
					conn[#conn + 1] = parent:GetPropertyChangedSignal("Enabled"):Connect(CheckVisible)
					root = parent
				end
				self._path = path
				self._conn = conn
				self._root = root
				CheckVisible()
			end

			self._ancestry = obj.AncestryChanged:Connect(function(child, parent)
				BuildAncestryPath()
			end)
			BuildAncestryPath()

			return self

		end

		function OnScreenTracker:Destroy()
			self._visibleChanged:Fire(false)
			self._visibleChanged:Destroy()
			self._ancestry:Disconnect()
			for _,c in ipairs(self._conn) do c:Disconnect() end
		end

		local SmoothScroll = {}

--[[**
    Sets a ScrollingFrame to scroll smoothly
			
    @param Frame [ScrollingFrame] The ScrollingFrame object to apply smoothing to
	@param Sensitivity [Optional Number] How many pixels it scrolls per wheel turn
	@param Friction [Optional Number] What the velocity is multiplied by each frame
	@param Inverted [Optional Bool] Inverts the scrolling direction
	@param Axis [Optional String] "X" or "Y". If left out, will default to whichever Axis is scrollable or "Y" if both are valid
			
    @returns nil		
**--]]
		function SmoothScroll.Enable(Frame, Sensitivity, Friction, Inverted, Axis)
			if not UIS.TouchEnabled then

				--Safety check
				if not (Frame and typeof(Frame) == "Instance" and Frame.ClassName == "ScrollingFrame") then
					warn("Invalid frame to smooth")
					return
				end

				if not Objects[Frame] then
					Frame.ScrollingEnabled = false

					local Actives,Connections = {},{}

					for _,desc in ipairs(Frame:GetDescendants()) do
						if desc:IsA("GuiObject") and not desc:IsA("TextBox") then
							Actives[desc] = desc.Active
							desc.Active = false
							Connections[#Connections+1] = desc:GetPropertyChangedSignal("Active"):Connect(function()
								desc.Active = false
							end)
						end
					end

					local parent = Frame
					while (parent and (parent:IsA("GuiObject") or parent:IsA("Folder"))) do
						if parent:IsA("GuiObject") then
							Actives[parent] = parent.Active
							parent.Active = false
							Connections[#Connections+1] = parent:GetPropertyChangedSignal("Active"):Connect(function()
								parent.Active = false
							end)
						end
						parent = parent.Parent
					end

					Connections[#Connections+1] = Frame.DescendantAdded:Connect(function(desc)
						if desc:IsA("GuiObject") and not desc:IsA("TextBox") then
							Objects[Frame].Actives[desc] = desc.Active
							desc.Active = false
							Objects[Frame].Connections[#Objects[Frame].Connections+1] = desc:GetPropertyChangedSignal("Active"):Connect(function()
								desc.Active = false
							end)
						end
					end)


					if Axis and (Axis == "X" or Axis == "Y") then
						--Leave Axis as defined by param
					else
						Axis = "Y" --Default to Y
						if (Frame.CanvasSize.Y.Offset>0 or Frame.CanvasSize.Y.Scale>0) then
							Axis = "Y"
						elseif (Frame.CanvasSize.X.Offset>0 or Frame.CanvasSize.X.Scale>0) then
							Axis = "X"
						end
					end

					Objects[Frame] = {
						Connections	= Connections;
						Actives		= Actives;

						Velocity	= 0;
						LastPos		= 0;
						Visibility	= OnScreenTracker.new(Frame);

						Inverted	= Inverted;
						Axis		= Axis;
						Frict		= math.clamp(type(Friction)=="number" and Friction or DEFAULT_FRICT,0.2,0.99);
						Sens		= math.clamp(type(Sensitivity)=="number" and Sensitivity or DEFAULT_SENS,0.01,999999999999999);
					}
				else
					--Already enabled, so just update the new settings passed
					Objects[Frame].Sens		= math.clamp(type(Sensitivity)=="number" and Sensitivity or DEFAULT_SENS,0.01,999999999999999);
					Objects[Frame].Frict	= math.clamp(type(Friction)=="number" and Friction or DEFAULT_FRICT,0.2,0.99);
					Objects[Frame].Inverted	= Inverted
				end

			else
				warn("SmoothScroll only works for PC")
			end
		end

--[[**
    Sets a ScrollingFrame to scroll normally
			
    @param Frame [ScrollingFrame] The ScrollingFrame object to remove smoothing from
			
    @returns nil		
**--]]
		function SmoothScroll.Disable(Frame)

			if Objects[Frame] then
				-- Return default behavior
				Frame.ScrollingEnabled = true
				-- Disconnect mouse events and desc events
				for i,c in ipairs(Objects[Frame].Connections) do
					c:Disconnect()
				end
				-- Destroy tracker
				Objects[Frame].Visibility:Destroy()
				-- Return prior Active properties
				for desc,a in pairs(Objects[Frame].Actives) do
					desc.Active = a
				end

				-- Remove from update queue
				Objects[Frame] = nil
			end

		end

		return SmoothScroll
	end;
};
G2L_MODULES[G2L["6a"]] = {
	Closure = function()
		local script = G2L["6a"];local TweenService = game:GetService('TweenService')

		local ButtonTweener = {}

		local TweenSettings = {
			HoverTime = 0.1,
			ClickTime = 0.05,
			Style = Enum.EasingStyle.Sine,
			HoverTransparency2 = 0.97,
			DefaultTransparency2 = 1,
			ClickTransparency2 = 0.99
		}

		local function tweenProperties(instance, time, properties)
			TweenService:Create(instance, TweenInfo.new(time, TweenSettings.Style, Enum.EasingDirection.InOut), properties):Play()
		end

		function ButtonTweener:SetupButton(interactableinstance)
			interactableinstance.MouseEnter:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.HoverTime, {BackgroundTransparency = TweenSettings.HoverTransparency2})
			end)

			interactableinstance.MouseLeave:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.HoverTime, {BackgroundTransparency = TweenSettings.DefaultTransparency2})
			end)

			interactableinstance.MouseButton1Down:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.ClickTime, {BackgroundTransparency = TweenSettings.ClickTransparency2})
			end)

			interactableinstance.MouseButton1Up:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.ClickTime, {BackgroundTransparency = TweenSettings.HoverTransparency2})
			end)
		end

		return ButtonTweener
	end;
};
G2L_MODULES[G2L["de"]] = {
	Closure = function()
		local script = G2L["de"];local TweenService = game:GetService('TweenService')

		local ButtonTweener = {}

		local TweenSettings = {
			HoverTime = 0.15,
			Style = Enum.EasingStyle.Cubic,
			HoverTransparency = 0.25,
			DefaultTransparency = 0.5,
		}

		local function tweenProperties(instance, time, properties)
			if instance.Parent["Toggled"] and not instance.Parent["Toggled"].Value then
				TweenService:Create(instance, TweenInfo.new(time, TweenSettings.Style, Enum.EasingDirection.InOut), properties):Play()
			end
		end

		function ButtonTweener:SetupButton(interactableinstance)
			interactableinstance.MouseEnter:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.HoverTime, {ImageTransparency = TweenSettings.HoverTransparency})
			end)

			interactableinstance.MouseLeave:Connect(function()
				tweenProperties(interactableinstance, TweenSettings.HoverTime, {ImageTransparency = TweenSettings.DefaultTransparency})
			end)
		end

		return ButtonTweener
	end;
};
G2L_MODULES[G2L["e0"]] = {
	Closure = function()
		local script = G2L["e0"];local TweenService = game:GetService('TweenService')

		local TabsFrame = script.Parent
		local Bottom = TabsFrame.Bottom
		local Top = TabsFrame.Top
		local SideBar = TabsFrame.Parent
		local Body = SideBar.Parent
		local Content = Body.Content

		local TabsModule = {}

		local Tabs = {
			["Execution"] = {Switcher = Top["Execution"], CorrespondingTab = Content["Execution"]},
			["Console"] = {Switcher = Top["Console"], CorrespondingTab = Content["Console"]},
			["ScriptHub"] = {Switcher = Top["ScriptHub"], CorrespondingTab = Content["ScriptHub"]},
			["Settings"] = {Switcher = Bottom["Settings"], CorrespondingTab = Content["Settings"]}
		}

		local function tweenProperties(instance, time, properties)
			TweenService:Create(instance, TweenInfo.new(time, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), properties):Play()
		end

		function TabsModule.SwitchTab(tabName)
			for name, tab in pairs(Tabs) do
				tab.CorrespondingTab.Visible = (name == tabName)
				tab.Switcher["Toggled"].Value = (name == tabName)
				tweenProperties(tab.Switcher.Image, 0.15, {ImageTransparency = (name == tabName) and 0 or 0.5})
			end
		end

		for tabName, tab in pairs(Tabs) do
			tab.Switcher.Image.MouseButton1Click:Connect(function()
				TabsModule.SwitchTab(tabName)
			end)
		end

		return TabsModule
	end;
};
-- StarterGui.Proton_IDE.Body.MainHandler
local function C_8()
	local script = G2L["8"];
	--// Services
	local ContentProvider = game:GetService("ContentProvider")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local HTTPService = game:GetService("HttpService")
	local StarterGui = game:GetService("StarterGui")
	local TextChatService = game:GetService("TextChatService")

	--// References
	local Body = script.Parent
	local Gui = Body.Parent
	local SettingsFolder = Body.Settings
	local EventsFolder = Body.Events
	local SideBar = Body.SideBar
	local SideBarTabs = SideBar.Tabs
	local Content = Body.Content
	local Execution = Content.Execution
	local ScriptHub = Content.ScriptHub
	local Console = Content.Console
	local ConsoleLines = Console.Lines
	local ScriptHubScrolling = ScriptHub.ScrollingFrame
	local TabBar = Execution.TabBar
	local Controls = TabBar.Controls
	local AddButton = Controls.Add
	local Tabs = TabBar.Tabs.Scrolling
	local BottomBar = Body.BottomBar
	local Left = BottomBar.Left
	local Indicator = Left.Indicator
	local IndicatorLabel = Left.State
	local Right = BottomBar.Right
	local AttachEvent = EventsFolder.Attach

	--// Modules
	local IDEModule = require(script.IDEModule)
	local TabModule = require(script.TabModule)
	local ScriptModule = require(script.ScriptModule)
	local PresetModule = require(script.PresetScripts)
	local WriteModule = require(script.WriteModule)
	local SwitchModule = require(SideBarTabs.SwitchModule)

	--// Variables
	local Assets = Gui:GetDescendants()
	local TotalAssets = 0

	local ConnectionColors = {
		na = Color3.fromRGB(200,200,200),
		Connected = Color3.fromRGB(65,255,65),
		Not_Connected = Color3.fromRGB(255, 50, 50),
		Error = Color3.fromRGB(255, 125, 25),
	}

	local ConnectionStates = {
		[1] = { Color = ConnectionColors.Connected, State = "Attached" },
		[0] = { Color = ConnectionColors.Not_Connected, State = "Not Attached" },
		[-1] = { Color = ConnectionColors.Error, State = "Attach failed" },
		[-2] = { Color = ConnectionColors.Error, State = "Attaching..." },
		[-3] = { Color = ConnectionColors.na, State = "n/a" },
	}

	local TweenSettings = {
		Style = Enum.EasingStyle.Linear,
		HoverTime = 0.15,
		ClickTime = 0.1,
		ToggledTransparency = 0.95,
		DefaultTransparency = 1,
		HoverTransparency = 0.97
	}

	local Settings = {
		OldMouseAssetID = UserInputService.MouseIcon,
		NewMouseAssetID = "rbxassetid://17568566631",
	}

	--// Functions
	local function tweenProperties(instance, time, properties)
		TweenService:Create(instance, TweenInfo.new(time, TweenSettings.Style, Enum.EasingDirection.InOut), properties):Play()
	end

	local function ChangeConnectionState(state)
		local connection = ConnectionStates[state] or ConnectionStates[-1]
		Indicator.BackgroundColor3 = connection.Color
		IndicatorLabel.Text = connection.State
	end

	local function Attach()
		if AttachEvent.Value ~= 1 then
			ChangeConnectionState(-2)
			local startTime = os.clock()

			WriteModule:WriteLine(ConsoleLines, "[SYSTEM] Attempting Attach...")

			for _ = 1, math.random(52, 118) do
				task.wait()
			end

			if AttachEvent.Value ~= 1 then
				AttachEvent.Value = 1
				local duration = os.clock() - startTime
				WriteModule:WriteLine(ConsoleLines, string.format("<font color=\"rgb(50,230,50)\">[SYSTEM] Successfully attached in %.2fs.</font>", duration))
			end
		end
	end

	local function AttemptAttach(Yield)
		if Yield then
			Attach()
		else
			coroutine.wrap(Attach)()
		end
	end

	local function Execute()
		local Success, Error = pcall(function()
			local attempt = loadstring
			if attempt then
				attempt(NewIDE:GetText())()
			end
		end)

		if not Success then
			WriteModule:WriteLine(ConsoleLines, string.format("<font color=\"rgb(255,50,50)\">[ERROR] %s</font>", Error))
			SwitchModule.SwitchTab("Console")
		end
	end

	local function AttemptExecute()
		coroutine.wrap(function()
			if AttachEvent.Value == 1 then
				Execute()
			else
				AttemptAttach(true)
				Execute()
			end
		end)()
	end

	--// Initialization
	ChangeConnectionState(-3)

	Gui.Parent = (RunService:IsStudio() and game.Players.LocalPlayer.PlayerGui) or game:GetService("CoreGui")
	Gui.Enabled = false
	WriteModule:WriteLine(ConsoleLines, "[SYSTEM] PRELOADING ASSETS")

	ContentProvider:PreloadAsync(Assets, function()
		TotalAssets += 1
	end)

	Gui.Enabled = true

	WriteModule:WriteLine(ConsoleLines, string.format("[SYSTEM] PRELOADED %d ASSET(s)", TotalAssets))

	WriteModule:WriteLine(ConsoleLines, "[SYSTEM] Initializing IDE.")

	NewIDE = IDEModule.CodeFrame.new()
	NewIDE.Gui.Parent = Execution
	NewIDE.UiScale.Scale = SettingsFolder.EditorScale.Value

	local Padding = Instance.new("UIPadding", NewIDE.Gui)
	Padding.PaddingTop = UDim.new(0, 55)
	Padding.PaddingLeft = UDim.new(0, 10)

	TabModule.AddTab(NewIDE, Tabs, "--// Welcome to the Proton IDE.")

	WriteModule:WriteLine(ConsoleLines, "[SYSTEM] Finished Setting up IDE.")

	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://17578049190", "Dex Explorer", "A powerful game explorer GUI. Shows every instance of the game and all their properties. Useful for developers.", PresetModule:GetScript("Dex"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://17600755551", "Infinite Yield", "An all-around command line script hub with over 6 years of development behind it.", PresetModule:GetScript("IY"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://17600836435", "Unnamed ESP", "Player ESP for Roblox, fully undetectable, uses built in drawing API if the exploit supports it.", PresetModule:GetScript("UNESP"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://17640240487", "Simple Spy", "SimpleSpy is a penetration testing tool designed to intercept remote calls from the client to the server.", PresetModule:GetScript("RemoteSpy"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://17640342007", "Owl Hub", "Owl Hub is a free Roblox script hub developed by Google Chrome and CriShoux with over 30+ games.", PresetModule:GetScript("OwlHub"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://17671320863", "Dark Hub", "A quality script hub with over 57 supported games and counting.", PresetModule:GetScript("DarkHub"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://101286374906688", "Hydroxide", "Lua runtime introspection and network capturing tool for games on the Roblox engine.", PresetModule:GetScript("Hydroxide"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, "rbxassetid://116870583444314", "sUNC", "sUNC unveals the true functionality of your executor, this script is preferred rather than the original UNC test.", PresetModule:GetScript("sUNC"))
	ScriptModule.CreateNewScript(ConsoleLines, NewIDE, Tabs, ScriptHubScrolling, nil, "AdonisCries", "Bypass for the adonis anticheat module, you can place this in your auto-execute folder, or execute it before using a script.", PresetModule:GetScript("AdonisCries"))

	for _,v in pairs(Tabs:GetChildren()) do
		if v:IsA("TextButton") and v:FindFirstChild("ToggledIndicator") then
			v:FindFirstChild("ToggledIndicator").BackgroundColor3 = script:GetAttribute("IDEAccent")
		end
	end

	ChangeConnectionState(0)

	Right.Attach.MouseButton1Click:Connect(function() AttemptAttach(false) end)
	Right.Execute.MouseButton1Click:Connect(AttemptExecute)
	Right.Clear.MouseButton1Click:Connect(function() NewIDE:ClearText() end)

	AttachEvent:GetPropertyChangedSignal("Value"):Connect(function()
		ChangeConnectionState(AttachEvent.Value)
	end)

	AddButton.MouseButton1Click:Connect(function()
		TabModule.AddTab(NewIDE, Tabs, 'print("Hello, world!")')
	end)

	SettingsFolder.EditorScale:GetPropertyChangedSignal('Value'):Connect(function()
		NewIDE.UiScale.Scale = SettingsFolder.EditorScale.Value
	end)

	script.AttributeChanged:Connect(function(attribute)
		if attribute == "IDEAccent" then
			for _,v in pairs(Tabs:GetChildren()) do
				if v:IsA("TextButton") and v:FindFirstChild("ToggledIndicator") then
					v:FindFirstChild("ToggledIndicator").BackgroundColor3 = script:GetAttribute("IDEAccent")
				end
			end
		end
	end)

	Tabs.ChildAdded:Connect(function(child)
		if child:IsA("TextButton") and child:FindFirstChild("ToggledIndicator") then
			child:FindFirstChild("ToggledIndicator").BackgroundColor3 = script:GetAttribute("IDEAccent")
		end
	end)

	NewIDE.UiScale:GetPropertyChangedSignal("Scale"):Connect(function()
		SettingsFolder.EditorScale.Value = NewIDE.UiScale.Scale
	end)

	--// Toggle UI
	local Toggled = Gui.Enabled and true or false
	ContentProvider:PreloadAsync({ Settings.NewMouseAssetID })
	UserInputService.MouseIcon = Toggled and Settings.NewMouseAssetID or Settings.OldMouseAssetID
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, not Toggled)

	local function Toggle()
		local focusedTextBox = UserInputService:GetFocusedTextBox()
		if focusedTextBox then
			focusedTextBox:ReleaseFocus()
		end

		Toggled = not Toggled
		UserInputService.MouseIcon = Toggled and Settings.NewMouseAssetID or Settings.OldMouseAssetID
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, not Toggled)

		Gui.Enabled = Toggled
	end

	UserInputService:GetPropertyChangedSignal("MouseIcon"):Connect(function()
		if Toggled and UserInputService.MouseIcon ~= Settings.NewMouseAssetID then
			UserInputService.MouseIcon = Toggled and Settings.NewMouseAssetID or Settings.OldMouseAssetID
		end
	end)

	UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
		if input.KeyCode == Enum.KeyCode[SettingsFolder.MenuKeybind.Value] then
			Toggle()
		end
	end)

	local ToggleCommand = Instance.new("TextChatCommand")

	ToggleCommand.PrimaryAlias = "/internal"
	ToggleCommand.SecondaryAlias = "/menu"

	ToggleCommand.Triggered:Connect(function()
		Toggle()
	end)

	local function ChatCmdVal()
		if SettingsFolder.EnableChatCommand.Value then
			ToggleCommand.Parent = TextChatService
		else
			ToggleCommand.Parent = nil
		end
	end

	ChatCmdVal()

	SettingsFolder.EnableChatCommand:GetPropertyChangedSignal("Value"):Connect(function()
		ChatCmdVal()
	end)

	--// Final Init
	AttemptAttach(true)

	pcall(function() 
		if getgenv().Keybind then
			SettingsFolder.MenuKeybind.Value = getgenv().Keybind
		end
	end)
end;
task.spawn(C_8);
-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Run.Animate
local function C_21()
	local script = G2L["21"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_21);
-- StarterGui.Proton_IDE.Body.MainHandler.ScriptModule.NewScript.Actions.Open.Animate
local function C_25()
	local script = G2L["25"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_25);
-- StarterGui.Proton_IDE.Body.BottomBar.Right.Execute.Animate
local function C_41()
	local script = G2L["41"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_41);
-- StarterGui.Proton_IDE.Body.BottomBar.Right.Clear.Animate
local function C_49()
	local script = G2L["49"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_49);
-- StarterGui.Proton_IDE.Body.BottomBar.Right.Attach.Animate
local function C_52()
	local script = G2L["52"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_52);
-- StarterGui.Proton_IDE.Body.Content.Console.Lines.Scrolling
local function C_5d()
	local script = G2L["5d"];
	local Scroll	= require(script.Scroll)

	local ScrollingFrame = script.Parent

	Scroll.Enable(ScrollingFrame, 200, 0.25)
end;
task.spawn(C_5d);
-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Controls.Add.Animate
local function C_67()
	local script = G2L["67"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_67);
-- StarterGui.Proton_IDE.Body.Content.Execution.TabBar.Tabs.Scrolling.AutoScroll
local function C_6e()
	local script = G2L["6e"];
	local TweenService = game:GetService("TweenService")
	local ScrollingFrame = script.Parent

	local TweenSettings = {
		EasingTime = 0.25,
		EasingStyle = Enum.EasingStyle.Linear,
		EasingDirection = Enum.EasingDirection.InOut
	}

	ScrollingFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
		local newCanvasPositionX = ScrollingFrame.AbsoluteCanvasSize.X
		TweenService:Create(ScrollingFrame, TweenInfo.new(TweenSettings.EasingTime, TweenSettings.EasingStyle, TweenSettings.EasingDirection), {CanvasPosition = Vector2.new(newCanvasPositionX, ScrollingFrame.CanvasPosition.Y)}):Play()
	end)
end;
task.spawn(C_6e);
-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.Keybind.BindHandler
local function C_80()
	local script = G2L["80"];
	--// References
	local UIS = game:GetService("UserInputService")
	local TS = game:GetService("TweenService")

	local Keybind = script.Parent
	local MenuSettings = Keybind.Parent
	local Setting = MenuSettings.Parent.Parent
	local Content = Setting.Parent
	local Body = Content.Parent
	local Settings = Body.Settings
	local Binder = Keybind.Binder
	local Title = Keybind.Title

	--// Initialization
	Binder.Text = Settings.MenuKeybind.Value

	--// Logic
	UIS.InputBegan:Connect(function(input, gameProcessedEvent)
		if Binder:IsFocused() then
			if input.KeyCode ~= Enum.KeyCode.Unknown and input.UserInputType == Enum.UserInputType.Keyboard then
				Binder:ReleaseFocus()
				Binder.Text = input.KeyCode.Name
				Settings.MenuKeybind.Value = input.KeyCode.Name
			end
		end
	end)

	Binder.Focused:Connect(function()
		TS:Create(Binder, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { BackgroundTransparency = 0.9 }):Play()
	end)

	Binder.FocusLost:Connect(function()
		TS:Create(Binder, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { BackgroundTransparency = 1 }):Play()
	end)

	Binder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		Title.UIPadding.PaddingRight = UDim.new(0, Binder.AbsoluteSize.X + 30)
	end)
end;
task.spawn(C_80);
-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.MenuSettings.ToggleChatCommand.ToggleHandler
local function C_88()
	local script = G2L["88"];
	--// References
	local UIS = game:GetService("UserInputService")
	local TS = game:GetService("TweenService")

	local Element = script.Parent
	local MenuSettings = Element.Parent
	local Setting = MenuSettings.Parent.Parent
	local Content = Setting.Parent
	local Body = Content.Parent
	local Settings = Body.Settings
	local Toggle = Element.Toggle
	local State = Toggle.State

	--// Functions
	local function toggleState()
		Settings.EnableChatCommand.Value = not Settings.EnableChatCommand.Value
		local endSize = Settings.EnableChatCommand.Value and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 1, 0)
		local endTransparency = Settings.EnableChatCommand.Value and 0.9 or 1

		local StateTween = TS:Create(State, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { Size = endSize })
		StateTween:Play()

		local ToggleTween = TS:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { BackgroundTransparency = endTransparency })
		ToggleTween:Play()
	end

	--// Initialization
	local initSize = Settings.EnableChatCommand.Value and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 1, 0)
	State.Size = initSize

	--// Logic
	Toggle.MouseButton1Click:Connect(toggleState)
end;
task.spawn(C_88);
-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.Slider.SlideHandler
local function C_9b()
	local script = G2L["9b"];
	repeat wait() until game.Loaded
	--// References
	local UIS = game:GetService("UserInputService")
	local TS = game:GetService("TweenService")
	local Players = game:GetService('Players')

	local Slider = script.Parent
	local IDESettings = Slider.Parent
	local Setting = IDESettings.Parent.Parent
	local Content = Setting.Parent
	local Body = Content.Parent
	local Settings = Body.Settings
	local SliderHolder = Slider.Slider
	local Value = SliderHolder.Value
	local Title = Slider.Title
	local Bar = SliderHolder.Bar
	local Clip = Bar.Clip
	local Mouse = Players.LocalPlayer:GetMouse()

	--// Variables
	local SliderSettings = {
		Max = 5,
		Min = 1,
		DefaultValue = Settings.EditorScale.Value,
		ShowDecimals = {Show = true, DecimalPlace = 2}
	}

	local held = false

	--// Functions
	local function Round(Value, DecimalPlace)
		return tonumber(string.format("%." .. (DecimalPlace or 0) .. "f", Value))
	end

	local function Update(specificValue)
		local slideValue

		if specificValue and type(specificValue) == "number" then
			slideValue = (specificValue - SliderSettings.Min) / (SliderSettings.Max - SliderSettings.Min)
			slideValue = math.clamp(slideValue, 0, 1)
		else
			slideValue = math.clamp((Mouse.X - SliderHolder.AbsolutePosition.X) / SliderHolder.AbsoluteSize.X, 0, 1)
		end

		Bar.Size = UDim2.new(slideValue, 0, 1, 0)

		local value = SliderSettings.Min + (SliderSettings.Max - SliderSettings.Min) * slideValue
		Value.Text = SliderSettings.ShowDecimals.Show and tostring(Round(value, SliderSettings.ShowDecimals.DecimalPlace)) or tostring(math.floor(value))
		Settings.EditorScale.Value = tostring(Round(value, SliderSettings.ShowDecimals.DecimalPlace))

		local difference = SliderHolder.AbsoluteSize.X - Bar.AbsoluteSize.X
		Clip.UICorner.CornerRadius = UDim.new(0, math.max(0, 5 - difference))
	end

	--// Initialization
	Update(SliderSettings.DefaultValue)

	--// Logic
	SliderHolder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		Title.UIPadding.PaddingRight = UDim.new(0, SliderHolder.AbsoluteSize.X + 30)
	end)

	SliderHolder.Interact.MouseButton1Down:Connect(function()
		held = true
		Update()
	end)

	UIS.InputEnded:Connect(function(input, gp)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			held = false
		end
	end)

	Mouse.Move:Connect(function()
		if held then
			Update()
		end
	end)

	Settings.EditorScale:GetPropertyChangedSignal("Value"):Connect(function()
		Update(Settings.EditorScale.Value)
	end)
end;
task.spawn(C_9b);
-- StarterGui.Proton_IDE.Body.Content.Settings.SettingsScroller.IDESettings.ColorPicker.ColorPickerHandler
local function C_c0()
	local script = G2L["c0"];
	--// References
	local ColorPicker = script.Parent
	local IDESettings = ColorPicker.Parent
	local Setting = IDESettings.Parent.Parent
	local Content = Setting.Parent
	local Body = Content.Parent
	local Settings = Body.MainHandler
	local RGBValues = ColorPicker.Values
	local Title = ColorPicker.Title

	--// Variables
	local Values = {R = RGBValues.R, G = RGBValues.G, B = RGBValues.B}

	--// Functions
	local function Clamp(value, min, max)
		return math.max(min, math.min(value, max))
	end

	local function SetColor()
		local newR = tonumber(Values.R.Text)
		local newG = tonumber(Values.G.Text)
		local newB = tonumber(Values.B.Text)

		if newR and newG and newB then
			newR = Clamp(newR, 0, 255)
			newG = Clamp(newG, 0, 255)
			newB = Clamp(newB, 0, 255)
			Settings:SetAttribute("IDEAccent", Color3.fromRGB(newR, newG, newB))
			Values.R.Text = tostring(newR)
			Values.G.Text = tostring(newG)
			Values.B.Text = tostring(newB)
		end
	end

	--// Initialization
	Values.R.Text = tostring(math.floor(Settings:GetAttribute("IDEAccent").R * 255))
	Values.G.Text = tostring(math.floor(Settings:GetAttribute("IDEAccent").G * 255))
	Values.B.Text = tostring(math.floor(Settings:GetAttribute("IDEAccent").B * 255))

	--// Logic
	Values.R.FocusLost:Connect(SetColor)
	Values.G.FocusLost:Connect(SetColor)
	Values.B.FocusLost:Connect(SetColor)
end;
task.spawn(C_c0);
-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.ScriptHub.Image.Animate
local function C_ca()
	local script = G2L["ca"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Parent.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_ca);
-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Execution.Image.Animate
local function C_cf()
	local script = G2L["cf"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Parent.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_cf);
-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Top.Console.Image.Animate
local function C_d4()
	local script = G2L["d4"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Parent.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_d4);
-- StarterGui.Proton_IDE.Body.SideBar.Tabs.Bottom.Settings.Image.Animate
local function C_dc()
	local script = G2L["dc"];
	--// References
	local Interactable = script.Parent

	local Animator = require(Interactable.Parent.Parent.Parent.Animator)

	--// Logic
	Animator:SetupButton(Interactable)
end;
task.spawn(C_dc);
-- StarterGui.Proton_IDE.Body.SideBar.Tabs.SwitchHandler
local function C_df()
	local script = G2L["df"];
	local TabsModule = require(script.Parent.SwitchModule)

	TabsModule.SwitchTab("Execution")
end;
task.spawn(C_df);

return G2L["1"], require;