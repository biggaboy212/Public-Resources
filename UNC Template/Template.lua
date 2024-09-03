--// References
local global = getgenv()

--// Variables
local fakingUNC = false -- This will be triggered if a global is named, but does not function as it should.

local states = { -- State emojis.
    success = "✅",
    fail = "❌"
}

local standards = { -- Every global you want to check.
    {
        name = "crypt.generatekey",  -- The common name of the global, this will be used to define what global is being checked.
        aliases = {global.crypt and global.crypt.generatekey} -- all aliases of the standard, you can have multiple.
    },
    {
        name = "Test",
        aliases = {global.Test}
    }
}

--// Functions
local function checkStandard(standard) -- This is where you hold valid function checks, even if a global is available, it might not actually work as intended so you need to check here.
    if standard == "crypt.generatekey" then 
        return crypt.base64encode("UNC Template") == "VU5DIFRlbXBsYXRl" -- Here we check if the return value of crypt.base64encode returns the expected value.
    end
    -- If there are more standards, add them here.
    return true -- Return true for standards without specific checks.
end

local function checkAliases(aliases) -- This will go through the aliases to make sure they are not nil and return detailed results.
    local results = {}
    local found = false
    for _, alias in ipairs(aliases) do
        if alias then
            table.insert(results, states.success) -- If the alias is not nil, add a success checkmark.
            found = true
        else
            table.insert(results, states.fail) -- If the alias is nil, add a fail checkmark.
        end
    end
    return found, results -- Return whether any alias was found and the list of checkmarks.
end

local function initialize() -- This starts the test.
    local total = #standards
    local passedCount = 0
    
    print("Test Results:")
    for _, standard in pairs(standards) do
        local found, results = checkAliases(standard.aliases)
        local references = table.concat(results, ", ")
        
        if found then
            if checkStandard(standard.name) then
                print(states.success .. " " .. standard.name .. " (Aliases: " .. references .. ") passed") -- Passed this check, print result.
                passedCount += 1 -- Increase pass count.
            else
                print(states.fail .. " " .. standard.name .. " (Aliases: " .. references .. ") failed (Failed function validity check.)") -- Failed function check, print result.
                fakingUNC = true -- Set fakingUNC to true since the function check failed.
            end
        else
            print(states.fail .. " " .. standard.name .. " (Aliases: " .. references .. ") failed (No global found.)") -- Failed this check, print result.
        end
    end

    -- Print summary details.
    print("")
    print("Summary:")
    print("Tested | " .. total) -- Amount of tested globals.
    print("Passed | " .. passedCount .. "/" .. total) -- Amount of passed tests.
    print("Percent Passed | " .. string.format("%.2f", (passedCount / total) * 100) .. "%") -- Percent of passed tests.

    -- If fakingUNC was triggered, print a special warning.
    if fakingUNC then
        print("\nWarning: One or more globals were found but did not function as expected.")
    end
end

--// Initialize
initialize()
