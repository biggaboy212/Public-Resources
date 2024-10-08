-- Originally written by Autumn
-- Amended by asd & 3dsboy08
-- Fixed by wally - 8/22/19
-- Improved by Pyseph - 1/22/20

local hookfunc = hookfunction or replaceclosure or replace_closure;

spawn(function()
	local cGui = game:GetService'CoreGui';
	local consoleUI = cGui:FindFirstChild('DevConsoleMaster') or cGui:WaitForChild('DevConsoleMaster');
	local clientLog = consoleUI:FindFirstChild('ClientLog', true);
	if not clientLog then
		repeat wait()
		until consoleUI:FindFirstChild('ClientLog', true);
		clientLog = consoleUI:FindFirstChild('ClientLog', true);
	end;
	for i,v in next, clientLog:GetChildren() do
		if v:FindFirstChild'msg' then
			v.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					setclipboard(v.msg.Text);
				end;
			end);
		end;
	end;

	clientLog.ChildAdded:Connect(function(obj)
		if not obj:FindFirstChild'msg' then obj:WaitForChild'msg'; end;
		obj.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				setclipboard(obj.msg.Text);
			end;
		end);
	end);
end);

local enabled = {
	BindableEvent	= false,
	BindableFunction = false,
	RemoteEvent	  = true,
	RemoteFunction   = true
}

local ignore = {
	--[[ -- I'd personally recommend keeping this commented out, as game scripts can name their remotes these
	GetSetting = true,
	GetSelection = true,
	SelectionChanged = true,
	GetAwaiting = true
	--]]
}

local metatable = assert(getrawmetatable, "needs access to function 'getrawmetatable'")(game)
if setreadonly then
	setreadonly(metatable, false)
end

local function CountTable(t)
	local count, key = 0
	repeat
		key = next(t, key)
		if key ~= nil then
			count = count + 1
		end
	until key == nil
	return count
end

local Globals = {
	CFrame = 'CFrame.new(-)';
	Vector3 = 'Vector3.new(-)';
	Vector2 = 'Vector2.new(-)';
	UDim2 = 'UDim2.new(-)';
	Axis = 'Axis.new(-)';
	BrickColor = 'BrickColor.new(-)';
	Color3 = 'Color3.new(-)';
	ColorSequence = 'ColorSequence.new(-)';
	Region3 = 'Region3.new(-)';
	TweenInfo = 'TweenInfo.new(-)';
	NumberSequence = 'NumberSequence.new(-)';
	Random = 'Random.new(-)';
	NumberRange = 'NumberRange.new(-)';
	Axis = 'Axis.new(-)';
};

local PrintTable
local function ParseObject(object, spacing, scope, checkedTables, keyBool)
	spacing = keyBool and spacing .. '[' or spacing;
	local objectType = type(object)
	if Globals[typeof(object)] then
		return spacing .. Globals[typeof(object)]:gsub('-', tostring(object));
	elseif typeof(object) == 'Instance' then
		return spacing .. object:GetFullName();
	elseif objectType == "string" then
		return spacing .. string.format("%q", object)
	elseif objectType == "nil" then
		return spacing .. "nil"
	elseif objectType == "table" then
		if checkedTables[object] then
			return spacing .. tostring(object) .. " [recursive table]"
		else
			checkedTables[object] = true
			return spacing .. PrintTable(object, scope + 1, checkedTables)
		end
	elseif objectType == "userdata" then
		if typeof(object) == "userdata" then
			return spacing .. "userdata"
		else
			return spacing .. tostring(object)
		end
	else -- userdata, function, boolean, thread, number
		return spacing .. tostring(object)
	end
end



function PrintTable(t, scope, checkedTables)
	local mt = getrawmetatable(t)
	local backup = {}
	if mt and mt ~= t then
		for i, v in pairs(mt) do
			rawset(backup, i, v)
			rawset(mt, i, nil)
		end
	end

	checkedTables = checkedTables or {}
	scope = scope or 1
	local result = (checkedTables and "{" or "") .. "\n"
	local spacing = string.rep("    ", scope)
	local function parse(index, value)
		result = result .. ParseObject(index, spacing, scope, checkedTables, true) .. "] = " .. ParseObject(value, "", scope, checkedTables) .. "\n"
	end

	if CountTable(t) ~= #t then
		table.foreach(t, parse) -- I'm very aware this is a deprecated function
	else
		for index = 1, select("#", unpack(t)) do
			parse(index, t[index])
		end
	end

	if mt and mt ~= t then
		for i, v in pairs(mt) do
			rawset(mt, rawget(backup, i), v)
		end
	end

	return result .. string.sub(spacing, 4, #spacing - 1) .. (checkedTables and "}" or "")
end

local methods = {
	BindableEvent = "Fire",
	BindableFunction = "Invoke",
	RemoteEvent = "FireServer",
	RemoteFunction = "InvokeServer"
}


local __namecall = __namecall or metatable.__namecall
local __index = __index or metatable.__index
if getgenv then
	if removeSpy then
		removeSpy()
	end
	getgenv().__namecall = __namecall
	getgenv().__index = __index
	getgenv().removeSpy = function()
		getgenv().removeSpy = nil
		metatable.__namecall = __namecall
		metatable.__index = __index
	end
end

local function LocalizedRemoteCallback(class)
	return newcclosure(function(self, ...)
		if typeof(self) ~= "Instance" then
			error(select(2, pcall(methods[class], self)), 0)
		end

		if self.ClassName ~= class then
			error(select(2, pcall(methods[class], self)), 0)
		end

		local arguments = {...};
		local result	= {};

		local callerScript = rawget(getfenv(0), "script")
		callerScript = typeof(callerScript) == "Instance" and callerScript or nil

		if enabled[self.ClassName] and (not ignore[self.Name]) then
			print(string.format(
				"%s called!\nFrom Script: %s\nPath: %s\nArguments: %s\nReturn: %s",
				self.ClassName,
				tostring(not callerScript and "Not Found" or callerScript:GetFullName()),
				(not self.Parent and "[NIL]: " or "") .. self:GetFullName(),
				CountTable(arguments) == 0 and "None!" or PrintTable(arguments),
				CountTable(result) == 0 and "None!" or PrintTable(result)
			))
		end

		return unpack({methods[class](self, ...)})
	end)
end

LocalizedRemoteCallback  = newcclosure(LocalizedRemoteCallback)

for className, func in next, methods do
	methods[className] = hookfunc(Instance.new(className)[func], LocalizedRemoteCallback(className))
end

local function IsAuthorized(self, index)
	local map = {
		BindableEvent = "Fire",
		BindableFunction = "Invoke",
		RemoteEvent = "FireServer",
		RemoteFunction = "InvokeServer"
	}


	if (not map[self.ClassName]) then
		return false
	end

	if (not rawequal(map[self.ClassName], index)) then
		return false;
	end  

	if (ignore[self.Name]) or (not enabled[self.ClassName]) then
		return false
	end

	return true;
end

local LuaU = true

local RemoteCallback = newcclosure(function(self, ...)
	if typeof(self) ~= "Instance" then
		return error(select(2, pcall(__index, self))) -- magic
	end

	local arguments = {...}	
	local result = {}
	local callerScript = rawget(getfenv(0), "script")
	callerScript = typeof(callerScript) == "Instance" and callerScript or nil
	print(string.format(
		"%s called!\nFrom Script: %s\nPath: %s\nArguments: %s\nReturn: %s",
		self.ClassName,
		tostring(not callerScript and "Not Found" or callerScript:GetFullName()),
		(not self.Parent and "[NIL]: " or "") .. self:GetFullName(),
		CountTable(arguments) == 0 and "None!" or PrintTable(arguments),
		CountTable(result) == 0 and "None!" or PrintTable(result)
	))
	return unpack({methods[self.ClassName](self, ...)})
end)

function metatable:__namecall(...)
	local arguments = {...}
	local index = LuaU and getnamecallmethod() or table.remove(arguments)
	if IsAuthorized(self, index) then
		return RemoteCallback(self, unpack(arguments))
	end
	return __namecall(self, ...)
end

metatable.__namecall = newcclosure(metatable.__namecall)
