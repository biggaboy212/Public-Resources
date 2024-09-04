--[[
    Myriad Raw Source
    Alpha 1.1.2
]]

--// References
local global = getgenv()
local agent = identifyexecutor() or "N/A"

local AnimationFromVideoCreatorService = game:GetService('AnimationFromVideoCreatorService')
local CaptureService = game:GetService('CaptureService')
local InsertService = game:GetService('InsertService')
local SafetyService = game:GetService('SafetyService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local MarketplaceService = game:GetService('MarketplaceService')
local GuiService = game:GetService('GuiService')
local OpenCloudService = game:GetService('OpenCloudService')
local ScriptContext = game:GetService('ScriptContext')
local ScriptProfilerService = game:GetService('ScriptProfilerService')
local BrowserService = game:GetService('BrowserService')
local MessageBusService = game:GetService('MessageBusService')
local AppUpdateService = game:GetService('AppUpdateService')
local UGCValidationService = game:GetService('UGCValidationService')
local ContentProvider = game:GetService('ContentProvider')
local HttpService = game:GetService('HttpService')
local Players = game:GetService('Players')
local CoreGui = game:GetService('CoreGui')
local LinkingService = game:GetService('LinkingService')
local AvatarEditorService = game:GetService('AvatarEditorService')
local OmniRecommendationsService = game:GetService("OmniRecommendationsService")

--// Variables
local validityTrigger = false

local testRates = {
    standardsCheck,
    vulnerabilityCheck
}

local uni = {
    success = "✅",
    fail = "❌",
    bullet = "•",
    section1 = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
    section2 = "----------------------------"
}

local vulnerableFunctions = {
    {func = AnimationFromVideoCreatorService.CreateJob, name = "AnimationFromVideoCreatorService.CreateJob"},
    {func = AnimationFromVideoCreatorService.DownloadJobResult, name = "AnimationFromVideoCreatorService.DownloadJobResult"},
    {func = AnimationFromVideoCreatorService.FullProcess, name = "AnimationFromVideoCreatorService.FullProcess"},
    {func = CaptureService.DeleteCapture, name = "CaptureService.DeleteCapture"},
    {func = CaptureService.GetCaptureFilePathAsync, name = "CaptureService.GetCaptureFilePathAsync"},
    {func = CaptureService.CreatePostAsync, name = "CaptureService.CreatePostAsync"},
    {func = CaptureService.SaveCaptureToExternalStorage, name = "CaptureService.SaveCaptureToExternalStorage"},
    {func = CaptureService.SaveCapturesToExternalStorageAsync, name = "CaptureService.SaveCapturesToExternalStorageAsync"},
    {func = CaptureService.GetCaptureSizeAsync, name = "CaptureService.GetCaptureSizeAsync"},
    {func = CaptureService.GetCaptureStorageSizeAsync, name = "CaptureService.GetCaptureStorageSizeAsync"},
    {func = CaptureService.PromptSaveCapturesToGallery, name = "CaptureService.PromptSaveCapturesToGallery"},
    {func = CaptureService.PromptShareCapture, name = "CaptureService.PromptShareCapture"},
    {func = CaptureService.RetrieveCaptures, name = "CaptureService.RetrieveCaptures"},
    {func = CaptureService.SaveScreenshotCapture, name = "CaptureService.SaveScreenshotCapture"},
    {func = InsertService.GetLocalFileContents, name = "InsertService.GetLocalFileContents"},
    {func = SafetyService.TakeScreenshot, name = "SafetyService.TakeScreenshot"},
    {func = HttpRbxApiService.PostAsync, name = "HttpRbxApiService.PostAsync"},
    {func = HttpRbxApiService.PostAsyncFullUrl, name = "HttpRbxApiService.PostAsyncFullUrl"},
    {func = HttpRbxApiService.GetAsyncFullUrl, name = "HttpRbxApiService.GetAsyncFullUrl"},
    {func = HttpRbxApiService.GetAsync, name = "HttpRbxApiService.GetAsync"},
    {func = HttpRbxApiService.RequestAsync, name = "HttpRbxApiService.RequestAsync"},
    {func = HttpRbxApiService.RequestLimitedAsync, name = "HttpRbxApiService.RequestLimitedAsync"},
    {func = MarketplaceService.PerformPurchaseV2, name = "MarketplaceService.PerformPurchaseV2"},
    {func = MarketplaceService.PromptBundlePurchase, name = "MarketplaceService.PromptBundlePurchase"},
    {func = MarketplaceService.PromptGamePassPurchase, name = "MarketplaceService.PromptGamePassPurchase"},
    {func = MarketplaceService.PromptProductPurchase, name = "MarketplaceService.PromptProductPurchase"},
    {func = MarketplaceService.PromptPurchase, name = "MarketplaceService.PromptPurchase"},
    {func = MarketplaceService.PromptRobloxPurchase, name = "MarketplaceService.PromptRobloxPurchase"},
    {func = MarketplaceService.PromptThirdPartyPurchase, name = "MarketplaceService.PromptThirdPartyPurchase"},
    {func = MarketplaceService.GetRobuxBalance, name = "MarketplaceService.GetRobuxBalance"},
    {func = MarketplaceService.PromptBulkPurchase, name = "MarketplaceService.PromptBulkPurchase"},
    {func = MarketplaceService.PerformBulkPurchase, name = "MarketplaceService.PerformBulkPurchase"},
    {func = MarketplaceService.PerformSubscriptionPurchase, name = "MarketplaceService.PerformSubscriptionPurchase"},
    {func = MarketplaceService.PerformSubscriptionPurchaseV2, name = "MarketplaceService.PerformSubscriptionPurchaseV2"},
    {func = MarketplaceService.PromptCollectiblesPurchase, name = "MarketplaceService.PromptCollectiblesPurchase"},
    {func = MarketplaceService.PromptNativePurchaseWithLocalPlayer, name = "MarketplaceService.PromptNativePurchaseWithLocalPlayer"},
    {func = MarketplaceService.PromptPremiumPurchase, name = "MarketplaceService.PromptPremiumPurchase"},
    {func = MarketplaceService.PromptSubscriptionPurchase, name = "MarketplaceService.PromptSubscriptionPurchase"},
    {func = MarketplaceService.GetUserSubscriptionPaymentHistoryAsync, name = "MarketplaceService.GetUserSubscriptionPaymentHistoryAsync"},
    {func = GuiService.OpenBrowserWindow, name = "GuiService.OpenBrowserWindow"},
    {func = GuiService.OpenNativeOverlay, name = "GuiService.OpenNativeOverlay"},
    {func = GuiService.BroadcastNotification, name = "GuiService.BroadcastNotification"},
    {func = GuiService.SetPurchasePromptIsShown, name = "GuiService.SetPurchasePromptIsShown"},
    {func = OpenCloudService.HttpRequestAsync, name = "OpenCloudService.HttpRequestAsync"},
    {func = OpenCloudService.GetApiV1, name = "OpenCloudService.GetApiV1"},
    {func = OpenCloudService.InvokeAsync, name = "OpenCloudService.InvokeAsync"},
    {func = OpenCloudService.RegisterOpenCloud, name = "OpenCloudService.RegisterOpenCloud"},
    {func = ScriptContext.AddCoreScriptLocal, name = "ScriptContext.AddCoreScriptLocal"},
    {func = ScriptContext.SaveScriptProfilingData, name = "ScriptContext.SaveScriptProfilingData"},
    {func = ScriptProfilerService.SaveScriptProfilingData, name = "ScriptProfilerService.SaveScriptProfilingData"},
    {func = BrowserService.EmitHybridEvent, name = "BrowserService.EmitHybridEvent"},
    {func = BrowserService.ExecuteJavaScript, name = "BrowserService.ExecuteJavaScript"},
    {func = BrowserService.OpenBrowserWindow, name = "BrowserService.OpenBrowserWindow"},
    {func = BrowserService.OpenNativeOverlay, name = "BrowserService.OpenNativeOverlay"},
    {func = BrowserService.ReturnToJavaScript, name = "BrowserService.ReturnToJavaScript"},
    {func = BrowserService.SendCommand, name = "BrowserService.SendCommand"},
    {func = MessageBusService.Call, name = "MessageBusService.Call"},
    {func = MessageBusService.GetLast, name = "MessageBusService.GetLast"},
    {func = MessageBusService.GetMessageId, name = "MessageBusService.GetMessageId"},
    {func = MessageBusService.GetProtocolMethodRequestMessageId, name = "MessageBusService.GetProtocolMethodRequestMessageId"},
    {func = MessageBusService.GetProtocolMethodResponseMessageId, name = "MessageBusService.GetProtocolMethodResponseMessageId"},
    {func = MessageBusService.MakeRequest, name = "MessageBusService.MakeRequest"},
    {func = MessageBusService.Publish, name = "MessageBusService.Publish"},
    {func = MessageBusService.PublishProtocolMethodRequest, name = "MessageBusService.PublishProtocolMethodRequest"},
    {func = MessageBusService.PublishProtocolMethodResponse, name = "MessageBusService.PublishProtocolMethodResponse"},
    {func = MessageBusService.Subscribe, name = "MessageBusService.Subscribe"},
    {func = MessageBusService.SubscribeToProtocolMethodRequest, name = "MessageBusService.SubscribeToProtocolMethodRequest"},
    {func = MessageBusService.SubscribeToProtocolMethodResponse, name = "MessageBusService.SubscribeToProtocolMethodResponse"},
    {func = AppUpdateService.DisableDUARAndOpenSurvey, name = "AppUpdateService.DisableDUARAndOpenSurvey"},
    {func = AppUpdateService.DisableDUAR, name = "AppUpdateService.DisableDUAR"},
    {func = AppUpdateService.PerformManagedUpdate, name = "AppUpdateService.PerformManagedUpdate"},
    {func = UGCValidationService.FetchAssetWithFormat, name = "UGCValidationService.FetchAssetWithFormat"},
    {func = UGCValidationService.RegisterUGCValidationFunction, name = "UGCValidationService.RegisterUGCValidationFunction"},
    {func = ContentProvider.SetBaseUrl, name = "ContentProvider.SetBaseUrl"},
    {func = HttpService.RequestInternal, name = "HttpService.RequestInternal"},
    {func = HttpService.GetAsync, name = "HttpService.GetAsync"},
    {func = HttpService.RequestAsync, name = "HttpService.RequestAsync"},
    {func = HttpService.PostAsync, name = "HttpService.PostAsync"},
    {func = game.Load, name = "game.Load"},
    {func = game.OpenScreenshotsFolder, name = "game.OpenScreenshotsFolder"},
    {func = game.OpenVideosFolder, name = "game.OpenVideosFolder"},
    {func = Players.ReportAbuse, name = "Players.ReportAbuse"},
    {func = Players.ReportAbuseV3, name = "Players.ReportAbuseV3"},
    {func = CoreGui.TakeScreenshot, name = "CoreGui.TakeScreenshot"},
    {func = CoreGui.ToggleRecording, name = "CoreGui.ToggleRecording"},
    {func = LinkingService.DetectUrl, name = "LinkingService.DetectUrl"},
    {func = LinkingService.GetAndClearLastPendingUrl, name = "LinkingService.GetAndClearLastPendingUrl"},
    {func = LinkingService.GetLastLuaUrl, name = "LinkingService.GetLastLuaUrl"},
    {func = LinkingService.IsUrlRegistered, name = "LinkingService.IsUrlRegistered"},
    {func = LinkingService.OpenUrl, name = "LinkingService.OpenUrl"},
    {func = LinkingService.RegisterLuaUrl, name = "LinkingService.RegisterLuaUrl"},
    {func = LinkingService.StartLuaUrlDelivery, name = "LinkingService.StartLuaUrlDelivery"},
    {func = LinkingService.StopLuaUrlDelivery, name = "LinkingService.StopLuaUrlDelivery"},
    {func = LinkingService.SupportsSwitchToSettingsApp, name = "LinkingService.SupportsSwitchToSettingsApp"},
    {func = LinkingService.SwitchToSettingsApp, name = "LinkingService.SwitchToSettingsApp"},
    {func = AvatarEditorService.NoPromptSetFavorite, name = "AvatarEditorService.NoPromptSetFavorite"},
    {func = AvatarEditorService.NoPromptUpdateOutfit, name = "AvatarEditorService.NoPromptUpdateOutfit"},
    {func = AvatarEditorService.PerformCreateOutfitWithDescription, name = "AvatarEditorService.PerformCreateOutfitWithDescription"},
    {func = AvatarEditorService.PerformDeleteOutfit, name = "AvatarEditorService.PerformDeleteOutfit"},
    {func = AvatarEditorService.PerformRenameOutfit, name = "AvatarEditorService.PerformRenameOutfit"},
    {func = AvatarEditorService.PerformSaveAvatarWithDescription, name = "AvatarEditorService.PerformSaveAvatarWithDescription"},
    {func = AvatarEditorService.PerformSetFavorite, name = "AvatarEditorService.PerformSetFavorite"},
    {func = AvatarEditorService.PerformUpdateOutfit, name = "AvatarEditorService.PerformUpdateOutfit"},
    {func = AvatarEditorService.PromptAllowInventoryReadAccess, name = "AvatarEditorService.PromptAllowInventoryReadAccess"},
    {func = AvatarEditorService.PromptCreateOutfit, name = "AvatarEditorService.PromptCreateOutfit"},
    {func = AvatarEditorService.PromptDeleteOutfit, name = "AvatarEditorService.PromptDeleteOutfit"},
    {func = AvatarEditorService.PromptRenameOutfit, name = "AvatarEditorService.PromptRenameOutfit"},
    {func = AvatarEditorService.PromptSaveAvatar, name = "AvatarEditorService.PromptSaveAvatar"},
    {func = AvatarEditorService.PromptSetFavorite, name = "AvatarEditorService.PromptSetFavorite"},
    {func = AvatarEditorService.PromptUpdateOutfit, name = "AvatarEditorService.PromptUpdateOutfit"},
    {func = AvatarEditorService.SetAllowInventoryReadAccess, name = "AvatarEditorService.SetAllowInventoryReadAccess"},
    {func = AvatarEditorService.SignalCreateOutfitFailed, name = "AvatarEditorService.SignalCreateOutfitFailed"},
    {func = AvatarEditorService.SignalCreateOutfitPermissionDenied, name = "AvatarEditorService.SignalCreateOutfitPermissionDenied"},
    {func = AvatarEditorService.SignalDeleteOutfitFailed, name = "AvatarEditorService.SignalDeleteOutfitFailed"},
    {func = AvatarEditorService.SignalDeleteOutfitPermissionDenied, name = "AvatarEditorService.SignalDeleteOutfitPermissionDenied"},
    {func = AvatarEditorService.SignalRenameOutfitFailed, name = "AvatarEditorService.SignalRenameOutfitFailed"},
    {func = AvatarEditorService.SignalRenameOutfitPermissionDenied, name = "AvatarEditorService.SignalRenameOutfitPermissionDenied"},
    {func = AvatarEditorService.SignalSaveAvatarPermissionDenied, name = "AvatarEditorService.SignalSaveAvatarPermissionDenied"},
    {func = AvatarEditorService.SignalSetFavoriteFailed, name = "AvatarEditorService.SignalSetFavoriteFailed"},
    {func = AvatarEditorService.SignalSetFavoritePermissionDenied, name = "AvatarEditorService.SignalSetFavoritePermissionDenied"},
    {func = AvatarEditorService.SignalUpdateOutfitFailed, name = "AvatarEditorService.SignalUpdateOutfitFailed"},
    {func = AvatarEditorService.SignalUpdateOutfitPermissionDenied, name = "AvatarEditorService.SignalUpdateOutfitPermissionDenied"},
    {func = AvatarEditorService.NoPromptSaveAvatarThumbnailCustomization, name = "AvatarEditorService.NoPromptSaveAvatarThumbnailCustomization"},
    {func = AvatarEditorService.NoPromptSaveAvatar, name = "AvatarEditorService.NoPromptSaveAvatar"},
    {func = AvatarEditorService.NoPromptRenameOutfit, name = "AvatarEditorService.NoPromptRenameOutfit"},
    {func = AvatarEditorService.NoPromptDeleteOutfit, name = "AvatarEditorService.NoPromptDeleteOutfit"},
    {func = AvatarEditorService.NoPromptCreateOutfit, name = "AvatarEditorService.NoPromptCreateOutfit"},
    {func = OmniRecommendationsService.ClearSessionId, name = "OmniRecommendationsService.ClearSessionId"},
    {func = OmniRecommendationsService.MakeRequest, name = "OmniRecommendationsService.MakeRequest"},
}

local standards = {
    {
        name = "loadstring",
        aliases = {
            {name = "loadstring", value = (global.loadstring)},
        }
    },

    -- crypt
    {
        name = "crypt.base64encode",
        aliases = {
            {name = "crypt.base64encode", value = (global.crypt and global.crypt.base64encode)},
            {name = "crypt.base64.encode", value = (global.crypt and global.crypt.base64.encode)},
            {name = "base64.encode", value = (global.base64 and global.base64.encode)},
            {name = "base64_encode", value = (global.base64_encode)},
        }
    },
    {
        name = "crypt.base64decode",
        aliases = {
            {name = "crypt.base64decode", value = (global.crypt and global.crypt.base64decode)},
            {name = "crypt.base64.decode", value = (global.crypt and global.crypt.base64.decode)},
            {name = "base64.decode", value = (global.base64 and global.base64.decode)},
            {name = "base64_decode", value = (global.base64_decode)},
        }
    },
    {
        name = "crypt.encrypt",
        aliases = {
            {name = "crypt.encrypt", value = (global.crypt and global.crypt.encrypt)},
        }
    },
    {
        name = "crypt.decrypt",
        aliases = {
            {name = "crypt.decrypt", value = (global.crypt and global.crypt.decrypt)},
        }
    },
    {
        name = "crypt.generatebytes",
        aliases = {
            {name = "crypt.generatebytes", value = (global.crypt and global.crypt.generatebytes)},
        }
    },
    {
        name = "crypt.generatekey",
        aliases = {
            {name = "crypt.generatekey", value = (global.crypt and global.crypt.generatekey)},
        }
    },
    {
        name = "crypt.hash",
        aliases = {
            {name = "crypt.hash", value = (global.crypt and global.crypt.hash)},
        }
    },

    -- input
    {
        name = "isrbxactive",
        aliases = {
            {name = "isrbxactive", value = (global.isrbxactive)},
            {name = "isgameactive", value = (global.isgameactive)},
        }
    },
    {
        name = "mouse1click",
        aliases = {
            {name = "mouse1click", value = (global.mouse1click)},
        }
    },
    {
        name = "mouse1press",
        aliases = {
            {name = "mouse1press", value = (global.mouse1press)},
        }
    },
    {
        name = "mouse1release",
        aliases = {
            {name = "mouse1release", value = (global.mouse1release)},
        }
    },
    {
        name = "mouse2click",
        aliases = {
            {name = "mouse2click", value = (global.mouse2click)},
        }
    },
    {
        name = "mouse2press",
        aliases = {
            {name = "mouse2press", value = (global.mouse2press)},
        }
    },
    {
        name = "mouse2release",
        aliases = {
            {name = "mouse2release", value = (global.mouse2release)},
        }
    },
    {
        name = "mousemoveabs",
        aliases = {
            {name = "mousemoveabs", value = (global.mousemoveabs)},
        }
    },
    {
        name = "mousemoverel",
        aliases = {
            {name = "mousemoverel", value = (global.mousemoverel)},
        }
    },
    {
        name = "mousescroll",
        aliases = {
            {name = "mousescroll", value = (global.mousescroll)},
        }
    },
}

--// Functions
local function isMitigated(func)
   --[[ local success, _ = pcall(function()
        local original = debug.getinfo(func).func
        return func == original
    end)
    return success]]

   local success, _ = pcall(func)
    return success
end

local function gradePercent(percent)
    local rates = {
        {grade = "A+", minPercent = 100},
        {grade = "A", minPercent = 90},
        {grade = "B", minPercent = 80},
        {grade = "C", minPercent = 70},
        {grade = "D", minPercent = 60},
        {grade = "F", minPercent = 59}
    }

    for _, rate in ipairs(rates) do
        if percent >= rate.minPercent then
            return rate.grade
        end
    end
end

local function calculateAverage(tests)
    local sum = 0
    local count = 0

    for _, percent in pairs(tests) do
        sum = sum + percent
        count = count + 1
    end

    return count > 0 and (sum / count) or 0
end

local function checkStandard(standard)
    if standard == "crypt.generatekey" then
        return #crypt.base64decode(crypt.generatekey()) == 32

    elseif standard == "crypt.encrypt" then
        local key = crypt.generatekey()
        local encrypted, iv = crypt.encrypt("Myriad", key, nil, "CBC")
        local decrypted = crypt.decrypt(encrypted, key, iv, "CBC")
        return decrypted == "Myriad"

    elseif standard == "crypt.decrypt" then
        local key, iv = crypt.generatekey(), crypt.generatekey()
        local encrypted = crypt.encrypt("Myriad", key, iv, "CBC")
        local decrypted = crypt.decrypt(encrypted, key, iv, "CBC")
        return decrypted == "Myriad"

    elseif standard == "crypt.base64encode" then
        return crypt.base64encode("Myriad") == "TXlyaWFk"

    elseif standard == "crypt.base64decode" then
        return crypt.base64decode("TXlyaWFk") == "Myriad"

    elseif standard == "crypt.generatebytes" then
        local value = math.random(10, 100)
        return #crypt.base64decode(crypt.generatebytes(value)) == value
    
    elseif standard == "crypt.hash" then
        local bit_algorithims = {'sha1', 'sha384', 'sha512', 'md5', 'sha256', 'sha3-224', 'sha3-256', 'sha3-512'}
        local valid = true
    
        for _, v in ipairs(bit_algorithims) do
            local hashResult = crypt.hash("test", v)
            if not hashResult then
                valid = false
                break
            end
        end
    
        return valid 

    elseif standard == "loadstring" then
        local animate = game:GetService("Players").LocalPlayer.Character.Animate
        local bytecode = getscriptbytecode(animate)
        local func = loadstring(bytecode)
        local failed = 0
        if type(func) ~= "function" then
            failed += 1
        elseif loadstring("return ... + 1")(1) == 2 then
            failed += 1
        elseif select(2, loadstring("f")) == "string" then
            failed += 1
        end

        return failed == 3 and false or true
    end
    return true
end

local function checkAliases(aliases)
    local results = {}
    local found = false
    for _, alias in ipairs(aliases) do
        local result = alias.name .. ": "
        if alias.value then
            result = result .. uni.success
            found = true
        else
            result = result .. uni.fail
        end
        table.insert(results, result)
    end
    return found, results
end

local function initialize()
    print(uni.section1)
    print("Myriad General Validity Test")
    print("Agent: "..agent)
    print(uni.section1)

    --[[ STANDARDS CHECK ]]--
    local totalStandards = #standards
    local passedStandards = 0
    local currentStandard = 0

    print("Standard Validity Test Results: \n")
    for _, standard in pairs(standards) do
        local found, results = checkAliases(standard.aliases)
        local references = table.concat(results, ", ")
        
        if found then
            currentStandard += 1
            if checkStandard(standard.name) then
                passedStandards += 1
                print(uni.success .. " " .. standard.name .. " (Aliases - " .. references .. ") passed" .. (currentStandard == totalStandards and "\n" or ""))
            else
                warn(uni.fail .. " " .. standard.name .. " (Aliases - " .. references .. ") failed (Failed function validity check)" .. (currentStandard == totalStandards and "\n" or ""))
                validityTrigger = true
            end
        else
            warn(uni.fail .. " " .. standard.name .. " (Aliases - " .. references .. ") failed (No global found)" .. (currentStandard == totalStandards and "\n" or ""))
        end
    end
    testRates.standardsCheck = (passedStandards / totalStandards) * 100

    print("Standard Validity Test Summary:")
    print(uni.bullet .. " Tested " .. totalStandards..(totalStandards>1 and " Standards" or " Standard"))
    print(uni.bullet .. " Passed " .. passedStandards .. "/" .. totalStandards.. " ("..string.format("%.2f", testRates.standardsCheck) .. "%"..")" .. " Standards")
    print(uni.bullet .. " Failed " .. totalStandards - passedStandards .. "/" .. totalStandards.. " ("..string.format("%.2f", ((totalStandards - passedStandards) / totalStandards) * 100) .. "%"..")" .. " Standards \n")

    if validityTrigger then
        warn("\nWarning: One or more globals were found but did not function as expected. \n")
    end
    print(uni.section2)

    --[[ SAFETY CHECK ]]
    print("User Safety Test Results: \n")
    local totalVulns = #vulnerableFunctions
    local passedVulns = 0
    local currentVuln = 0

    for _, item in ipairs(vulnerableFunctions) do
        currentVuln += 1
        if not isMitigated(item.func) then
            passedVulns += 1
            print(uni.success .. " " .. item.name .. " is protected (safe)" .. (currentVuln == totalVulns and "\n" or ""))
        else
            warn(uni.fail .. " " .. item.name .. " is not protected (not safe)" .. (currentVuln == totalVulns and "\n" or ""))
        end
    end
    testRates.vulnerabilityCheck = (passedVulns / totalVulns) * 100

    print("User Safety Test Summary:")
    print(uni.bullet .. " Tested " .. totalVulns.." Vulnerabilities")
    print(uni.bullet .. " Blocked " .. passedVulns .. "/" .. totalVulns.. " ("..string.format("%.2f", testRates.vulnerabilityCheck) .. "%"..")" .. " Vulnerabilities")
    print(uni.bullet .. " Failed to Block " .. (totalVulns - passedVulns) .. "/" .. totalVulns.. " ("..string.format("%.2f", ((totalVulns - passedVulns) / totalVulns) * 100) .. "%"..")" .. " Vulnerabilities")
    print(uni.section2)

    --[[ MYRIAD SUMMARY ]]
    local avg = calculateAverage(testRates)
    print("Myriad Test Summary: \n")
    print(uni.bullet .. " Average Test Percentage: " .. avg .. "%")
    print(uni.bullet .. " Executor Grade: " .. gradePercent(avg) .. "\n")
end

--// Initialize
initialize()
