loadstring(game:HttpGet("https://pastebin.com/raw/RgWYXxzL"))()
getgenv().json = { -- for saving ui settings
    encode = function(v) return game:service('HttpService'):JSONEncode(v) end,
    decode = function(v) return game:service('HttpService'):JSONDecode(v) end
};
getgenv().fRGB = function(t) -- for ui settings
    return Color3.new(t.r, t.g, t.b);
end;
getgenv().uiConfig = { -- for ui settings, must have in source code
    AutoTransparency = false,
    ReducedMotion = false,
    BlurColorEffect = true,
    ColorTheme = {r = 0.5, g = 0.5, b = 1}
};
local getlibrary, library;
local tabData = {}; -- important, it keeps your tabs in
xpcall(function()
    getlibrary = getgenv().json.decode(readfile("cv5.3uiconf.json"))
                     .ReducedMotion;
end, function() getlibrary = false; end);
if not getlibrary then
    library = loadstring(game:HttpGet(
                             "https://aesthetics-peace.s-ul.eu/FHxDpmpMRTbFtdb4"))();
end
getgenv().addTab = function(tabName, tabObjects)
    table.insert(tabData, #tabData + 1,
                 {TabName = tabName, TabObjects = tabObjects});
end;
local hue
local RainbowColour
spawn(function()
    while task.wait() do
        hue = tick() % 5 / 5
        RainbowColour = Color3.fromHSV(hue, 1, 1)
    end
end)
function getPlayers()
    local table1 = {}
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(table1, v.Name)
    end
    game.Players.PlayerAdded:Connect(
        function(a) table.insert(table1, a.Name) end)
    game.Players.PlayerRemoving:Connect(function(a)
        for i, v in pairs(table1) do
            if v == a.Name then table.remove(table1, i) end
        end
    end)
    return table1
end
local allparts = {
    [1] = "DragonPrimary",
    [2] = "OceanPrimary",
    [3] = "BackFluff",
    [4] = "TailFluff",
    [5] = "LeftWingStart",
    [6] = "LeftWing2",
    [7] = "LeftWing3",
    [8] = "RightWingStart",
    [9] = "RightWing2",
    [10] = "RightWing3",
    [11] = "EyeLid",
    [12] = "Torso",
    [13] = "Tail1",
    [14] = "Tail2",
    [15] = "Tail3",
    [16] = "Tail5",
    [17] = "Tail6",
    [18] = "RightThigh",
    [19] = "RightEar",
    [20] = "EyeLid",
    [21] = "Head",
    [22] = "Hip",
    [23] = "LeftEar",
    [24] = "LeftThigh",
    [25] = "Muzzle",
    [26] = "Neck",
    [27] = "NeckReal",
    [28] = "Nose",
    [29] = "DragonSecondary",
    [30] = "OceanSecondary",
    [31] = "ChubbyCheeks",
    [32] = "Fat",
    [33] = "EarFluff",
    [34] = "JawFluff",
    [35] = "ChestFluff",
    [36] = "LegFluff",
    [37] = "Eyebrow1",
    [38] = "Eyebrow2",
    [39] = "Secondary",
    [40] = "Jaw",
    [41] = "RightShoulder",
    [42] = "RightLowerLeg",
    [43] = "RightLowerArm",
    [44] = "RightLeg",
    [45] = "RightFootPaw",
    [46] = "LeftArm",
    [47] = "LeftArmPaw",
    [48] = "LeftCarpal",
    [49] = "LeftFootPaw",
    [50] = "LeftLeg",
    [51] = "LeftLowerArm",
    [52] = "LeftLowerLeg",
    [53] = "LeftShoulder",
    [54] = "RightArm",
    [55] = "RightArmPaw",
    [56] = "RightCarpal",
    [57] = "DragonThird",
    [58] = "InsideEars",
    [59] = "Toungue1",
    [60] = "Toungue2",
    [61] = "Tooth",
    [62] = "Gum",
    [63] = "Pupils",
    [64] = "UpperTooth",
    [65] = "Pads",
    [66] = "Claws",
    [67] = "White"
}

local SkeletalParts = {
    [1] = "DragonSecondary",
    [2] = "DragonThird",
    [3] = "LeftWing2",
    [4] = "LeftWing3",
    [5] = "RightWing2",
    [6] = "RightWing3"
}

local Hairs = {
    ["Long"] = '1.1634',
    ["Spiky"] = '0.53845',
    ["Swiped Back"] = '0.71497',
    ["Punk"] = '0.57207',
    ["Lonely Woof"] = '1.0990',
    ["Ewootional"] = '1.0871',
    ["Braided"] = '1.3539',
    ["Scene"] = '0.94984',
    ["Curly"] = '1.1623',
    ["Long Straight"] = '1.1057',
    ["Bed Head"] = '1.2428',
    ["Emo-Punk"] = '0.74069',
    ["Spiky Punk"] = '0.54955',
    ["Short Spiky"] = '1.4760',
    ["Long Spiky"] = '1.4688',
    ["Sidecut"] = '1.2984',
    ["Long Sidecut"] = '0.74951',
    ["Extreme-Edge"] = '1.1373'
}

local Torsos = {
    ["Swords"] = '2.3725',
    ["Cape"] = '1.6089',
    ["Guitar"] = '1.7366',
    ["Medic"] = '0.2127',
    ["Flower"] = '1.1194',
    ["Rope"] = '1.2306',
    ["RippedShirt"] = '1.1532',
    ["Bags"] = '1.2729',
    ["SwordSet1"] = '0.21984',
    ["SwordSet2"] = '3.3593',
    ["Sword1"] = '1.14299',
    ["Sword2"] = '1.17697',
    ["Chains"] = '0.214226',
    ["Leaves"] = '1.473',
    ["Backpack"] = '1.21586',
    ["Scars"] = '0.732797'
}

local Feets = {
    ["SliderBracelets"] = '0.49548',
    ["CrossBracelets"] = '0.48346',
    ["WinterBoots"] = '0.56080',
    ["Leaves"] = '0.6',
    ["DoubleBracelets"] = '0.36447'
}

local itemlist = {
    "Duck", "Ball", "FootBall", "Raw Beef", "Raw Porkchop", "Raw Fish",
    "Raw Chicken Breast", "Raw Venison", "Raw Rabbit", "Stick", "Bone", "Torch",
    "TeddyBear", "Flower", "Potion", "Bunny"
}

local matdropdown = {
    "Concrete", "Grass", "Slate", "Neon", "ForceField", "Plastic", "Wood",
    "CorrodedMetal", "DiamondPlate", "Foil", "Ice", "Marble", "Granite",
    "Brick", "Pebble", "Sand", "Fabric", "SmoothPlastic", "Metal", "WoodPlanks",
    "Cobblestone"
}

local hairdropdown = {
    "Long", "Spiky", "Swiped back", "Punk", "Lonely woof", "Ewooftional",
    "Braided", "Scene", "Curly", "Long straight", "Bed Head", "Emo-Punk",
    "Spiky Punk", "Short Spiky", "Long Spiky", "Sidecut", "Long Sidecut",
    "Extreme-Edge"
}

local torsodropdown = {
    "Swords", "Cape", "Guitar", "Medic", "Flowers", "Rope", "RippedShirt",
    "Bags", "SwordSet1", "SwordSet2", "Sword1", "Sword2", "Chains", "Leaves",
    "Backpack", "Scars"
}

local footdropdown = {
    "Slider Bracelets", "Cross Bracelets", "Winter Boots", "Leaves",
    "Double Bracelets"
}

local Fluffs = {
    "ChestFluff", "BackFluff", "EarFluff", "JawFluff", "LegFluff", "TailFluff",
    "Fat", "ChubbyCheeks"
}

local Extras = {"Wings", "Dragon", "Ocean"}

local rnn = false;
local rnd = false;
local rbf = false;
local rbwolf = false;
local RWings = false;
local rbeyes = false;
local rbname = false;
local rbspace = false;
local matchange = false;
local ColourPart = nil;
local MaterialPart = nil;
local spamballs = nil;
local spamfballs = nil;
local spambeef = nil;
local spampork = nil;
local spamducks = nil;
local spamfish = nil;
local spamcbreast = nil;
local spamcleg = nil;
local spamrabbit = nil;
local spambunnies = nil;
local spamsticks = nil;
local spamtorches = nil;
local spamteddies = nil;
local spambones = nil;
local spamflowers = nil;
local hairFcolour = nil;
local hairFmaterial = nil;
local torsoFcolour = nil;
local torsoFmaterial = nil;
local feetFcolour = nil;
local feetFmaterial = nil
_G.SpamLights = false
getgenv().addTab("Main Features", {
    {
        type = "button",
        text = "Crash Server",
        callback = function()
            local MasterKey = game.ReplicatedStorage:FindFirstChild('MasterKey')
            while task.wait() do
                for i = 1, 4 do
                    MasterKey:FireServer('Age', 'Adult')
                    MasterKey:FireServer('Age', 'Pup')
                    MasterKey:FireServer('Age', 'Newborn')
                end
            end
        end
    },
    {
        type = "button",
        text = "VIW Tag",
        callback = function()
            game.ReplicatedStorage.MasterKey:FireServer("AddVIWTag", nil,
                                                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
        end
    },
 {
    type = 'dropdown',
    text = 'Bring Player',
    options = getPlayers(),
    default = getPlayers()[1],
    callback = function(a)
        local playerToBring = game.Players:FindFirstChild(a) -- find the selected player by their name
        if playerToBring then
            game:GetService("ReplicatedStorage").CarryNewborn:FireServer(playerToBring)
			task.wait(0.1)
        game:GetService("ReplicatedStorage").MasterKey:FireServer("Spawn", "Volcano")
            game:GetService("ReplicatedStorage").CarryNewborn:FireServer("Kick Eggs")
        end
    end,
},
    {
        type = 'textbox',
        placeholder = '[CURRENCY AMOUNT]',
        text = 'Give Currency',
        numbersOnly = true,
        callback = function(v)
            game:GetService("ReplicatedStorage").MasterKey:FireServer(
                "\67\111\105\110\115", tonumber(v),
                "\226\135\154\225\155\157\105\220\176\219\173\230\155\157\117")
        end
    },
    {
        type = 'toggle',
        text = 'Random Number Name',
        state = false,
        callback = function(s)
            rnn = s
            RandomName()
        end
    },
    {
        type = 'toggle',
        text = 'Random Number Description',
        state = false,
        callback = function(s)
            rnd = s
            RandomDescription()
        end
    },
	{
    type = "toggle",
    text = "Spam Lights!",
    callback = function()
        _G.SpamLights = not _G.SpamLights
        while _G.SpamLights do
            for _, L in next, workspace.Models:GetDescendants() do
                if L:IsA("ClickDetector") then
                    fireclickdetector(L)
                end
            end
            task.wait(0.1)
        end
    end
},
    {
        type = "button",
        text = "Ring Schoolbell",
        callback = function()
            fireclickdetector(game:GetService("Workspace").Models.Extra
                                  .BellStand.Bell.ClickDetector)
        end
    },
    {
        type = 'dropdown',
        text = 'Copy Wolf',
        options = getPlayers(),
        default = getPlayers()[1],
        callback = function(a)
            game:GetService("ReplicatedStorage").Accessories:FireServer("remove", "HairF")
            game:GetService("ReplicatedStorage").Accessories:FireServer("remove", "TorsoF")
            game:GetService("ReplicatedStorage").Accessories:FireServer("remove", "FeetF")
            for i, v in pairs(Fluffs) do
                game:GetService("ReplicatedStorage").MasterKey:FireServer(
                    "Fluff", v, 1)
            end

            for i, v in pairs(Extras) do
                game:GetService("ReplicatedStorage").MasterKey:FireServer(v, 1,
                                                                          "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
            end

            local A_1 = "LeavePack"
            local Event = game:GetService("ReplicatedStorage").MasterKey2
            Event:FireServer(A_1)

            local cooltable = {}
            local cooltable2 = {}
            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("UnionOperation") then
                    table.insert(cooltable,
                                 {Name = {[1] = v.Name}, Color = v.Color})
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("UnionOperation") then
                    table.insert(cooltable2,
                                 {Name = {[1] = v.Name}, Material = v.Material})
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if string.find(v.Name, "Fluff") then
                    if v.Name == "Humanoid" then end
                    if v.Transparency == 0 then
                        game:GetService("ReplicatedStorage").MasterKey:FireServer(
                            "Fluff", v.Name, 0)
                    end
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if string.find(v.Name, "Chubby") then
                    if v.Name == "Humanoid" then end
                    if v.Transparency == 0 then
                        game:GetService("ReplicatedStorage").MasterKey:FireServer(
                            "Fluff", v.Name, 0)
                    end
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if string.find(v.Name, "Fat") then
                    if v.Name == "Humanoid" then end
                    if v.Transparency == 0 then
                        game:GetService("ReplicatedStorage").MasterKey:FireServer(
                            "Fluff", v.Name, 0)
                    end
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if string.find(v.Name, "Dragon") then
                    if v.Name == "Humanoid" then end
                    if v.Transparency == 0 then
                        game:GetService("ReplicatedStorage").MasterKey:FireServer(
                            "Dragon", 0,
                            "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
                    end
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if string.find(v.Name, "Ocean") then
                    if v.Name == "Humanoid" then end
                    if v.Transparency == 0 then
                        game:GetService("ReplicatedStorage").MasterKey:FireServer(
                            "Ocean", 0,
                            "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
                    end
                end
            end

            for i, v in pairs(game.workspace:FindFirstChild(a):GetChildren()) do
                if string.find(v.Name, "Wing") then
                    if v.Name == "Humanoid" then end
                    if v.Transparency == 0 then
                        game:GetService("ReplicatedStorage").MasterKey:FireServer(
                            "Wings", 0,
                            "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
                    end
                end
            end

            if game.workspace:FindFirstChild(a):FindFirstChild('HairF') then
                do
                    for __, h in next, game.workspace:FindFirstChild(a)
                                     .HairF:children() do
                        if h:IsA('MeshPart') then
                            hairFcolour = h.Color
                            hairFmaterial = h.Material
                            for _, a in next, Hairs do
                                if tostring(h.Size.X):sub(1, #a) == a then
                                    game:GetService("ReplicatedStorage").Accessories:FireServer(
                                        "HairF", _)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                                        "Accessories", hairFcolour)
                                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                                        "AccessoryMaterial", hairFmaterial,
                                        "HairF")
                                end
                            end
                        end
                    end
                end
            end

            if game.workspace:FindFirstChild(a):FindFirstChild(
                'TorsoF') then
                do
                    for __, h in next, game.workspace:FindFirstChild(a)
                                     .TorsoF:children() do
                        if h:IsA('MeshPart') or h:IsA('UnionOperator') or
                            h.Name:find('Color1') then
                            torsoFcolour = h.Color
                            torsoFmaterial = h.Material
                            for _, a in next, Torsos do
                                if tostring(h.Size.X):sub(1, #a) == a then
                                    game:GetService("ReplicatedStorage").Accessories:FireServer(
                                        "TorsoF", _)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                                        "Accessories", torsoFcolour)
                                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                                        "AccessoryMaterial", torsoFmaterial,
                                        "TorsoF")
                                end
                            end
                        end
                    end
                end
            end

            if game.workspace:FindFirstChild(a):FindFirstChild('FeetF') then
                do
                    for __, h in next, game.workspace:FindFirstChild(a)
                                     .FeetF:children() do
                        if h:IsA('MeshPart') or h:IsA('UnionOperator') or
                            h.Name:find('Hat') then
                            feetFcolour = h.Color
                            feetFmaterial = h.Material
                            for _, a in next, Feets do
                                if tostring(h.Size.X):sub(1, #a) == a then
                                    game:GetService("ReplicatedStorage").Accessories:FireServer(
                                        "FeetF", _)
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                                        "Accessories", feetFcolour)
                                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                                        "AccessoryMaterial", feetFmaterial,
                                        "FeetF")
                                end
                            end
                        end
                    end
                end
            end

            for i, v in pairs(cooltable) do
                local AA_1 = "customize"
                local AA_2 = v.Name
                local AA_3 = v.Color
                local AA_4 = "Body"
                local Event = game:GetService("ReplicatedStorage").MasterKey
                Event:FireServer(AA_1, AA_2, AA_3, AA_4)
            end

            for i, v in pairs(cooltable2) do
                local AAA_1 = "Material"
                local AAA_2 = v.Material
                local AAA_3 = v.Name
                local Event = game:GetService("ReplicatedStorage").MasterKey
                Event:FireServer(AAA_1, AAA_2, AAA_3)
            end

            for i, v in pairs(game.Players[a].leaderstats:GetChildren()) do
                if v:IsA("StringValue") and v.Name == "Roleplay Name" then
                    local NameValue = v.value
                    local A_1 = "\67\104\97\110\103\101\78\97\109\101"
                    local A_2 = "" .. NameValue .. ""
                    local A_3 =
                        "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
                    local Event = game:GetService("ReplicatedStorage").MasterKey
                    Event:FireServer(A_1, A_2, A_3)
                end
            end

            for i, v in pairs(
                            game:GetService("Workspace")[a].Head.NameTag.Main:GetChildren()) do
                if v:IsA("TextLabel") and v.Name == "Description" then
                    local A_1 = "\67\104\97\110\103\101\68\101\115\99"
                    local A_2 = "" .. v.Text .. ""
                    local A_3 =
                        "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
                    local Event = game:GetService("ReplicatedStorage").MasterKey
                    Event:FireServer(A_1, A_2, A_3)
                end
            end

            for i, v in pairs(
                            game:GetService("Workspace")[a].Head.NameTag.Main:GetChildren()) do
                if v:IsA("TextLabel") and v.Name == "Pack" and v.Text ~=
                    "No Pack" then
                    local FirstName = string.gsub(v.Text, "[ALPHA]", "")
                    local ActualName = string.gsub(FirstName, "%[]", "")
                    local AC_1 = "CreatePack"
                    local AC_2 = "" .. ActualName .. ""
                    local Event =
                        game:GetService("ReplicatedStorage").MasterKey2
                    Event:FireServer(AC_1, AC_2)
                end
            end

            local function colorToTable(color3)
                return {[1] = color3.R, [2] = color3.G, [3] = color3.B}
            end

            for i, v in pairs(
                            game:GetService("Workspace")[a].Head.NameTag.Main:GetChildren()) do
                if v:IsA("TextLabel") and v.Name == "Description" then
                    local A_1 = "ChangeColor"
                    local A_2 = colorToTable(v.TextColor3)
                    local A_3 =
                        "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
                    local Event = game:GetService("ReplicatedStorage").MasterKey
                    Event:FireServer(A_1, A_2, A_3)
                end
            end
        end
    },
    {
        type = "button",
        text = "Skeleton Wings",
        callback = function()
            local AAA_1 = "Material"
            local AAA_2 = "ForceField"
            local AAA_3 = SkeletalParts
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(AAA_1, AAA_2, AAA_3)
        end
    },
    Size = {400, 377}
});
getgenv().addTab("General", {
    {
        type = "button",
        text = "Random Flower",
        callback = function()
            local flowerCnts = #game.Workspace.Vegetation.Flowers:GetChildren();
            local rand = math.random(1, flowerCnts)
            for i, v in pairs(game.Workspace.Vegetation.Flowers:GetChildren()) do
                if i == rand then
                    for _, flower in pairs(v:GetChildren()) do
                        if string.find(flower.Name, 'Flower') and
                            flower:FindFirstChild('ClickDetector') then
                            fireclickdetector(flower.ClickDetector)
                        end
                    end
                end
            end
        end
    },
    {
        type = "button",
        text = "Infinite Jump",
        callback = function()
            local Player = game:GetService "Players".LocalPlayer
            local UIS = game:GetService "UserInputService"

            _G.JumpHeight = 50

            function Action(Object, Function)
                if Object ~= nil then Function(Object) end
            end

            UIS.InputBegan:connect(function(UserInput)
                if UserInput.UserInputType == Enum.UserInputType.Keyboard and
                    UserInput.KeyCode == Enum.KeyCode.Space then
                    Action(Player.Character.Humanoid, function(self)
                        if self:GetState() == Enum.HumanoidStateType.Jumping or
                            self:GetState() == Enum.HumanoidStateType.Freefall then
                            Action(self.Parent.HumanoidRootPart, function(self)
                                self.Velocity = Vector3.new(0, _G.JumpHeight, 0)
                            end)
                        end
                    end)
                end
            end)
        end
    },
	 {
        type = "button",
        text = "RTX",
        callback = function()
            -- Get references to the SunRays, DepthOfFieldEffect, and Atmosphere objects
            local sunrays = game.Lighting.SunRays
            local depthOfField = Instance.new("DepthOfFieldEffect")
            local atmosphere = game.Lighting.Atmosphere

            -- Set the lighting properties
            game.Lighting.OutdoorAmbient = Color3.fromRGB(50, 50, 50)
            game.Lighting.Ambient = Color3.fromRGB(20, 20, 20)

            -- Set the SunRays properties
            sunrays.Intensity = 0.1

            -- Set the DepthOfField properties
            depthOfField.FarIntensity = 0.20
            depthOfField.FocusDistance = 0.05
            depthOfField.InFocusRadius = 15
            depthOfField.NearIntensity = 0.75

            -- Set the parent of the DepthOfField and SunRays objects to the Lighting service
            depthOfField.Parent = game.Lighting
            sunrays.Parent = game.Lighting

            -- Set the Atmosphere properties
            atmosphere.Density = .1
            atmosphere.Haze = 0
            atmosphere.Glare = 1
            atmosphere.Offset = 0
            atmosphere.Decay = Color3.fromRGB(159, 43, 104)

            print("RTX Enabled")
        end
    },
	 {
        type = "button",
        text = "Fps Booster",
        callback = function()
			 local decalsyeeted = true
    local game = game
    local workspace = game.Workspace
    local lighting = game.Lighting
    local terrain = workspace.Terrain
    terrain.WaterWaveSize = 0
    terrain.WaterWaveSpeed = 0
    terrain.WaterReflectance = 0
    terrain.WaterTransparency = 0
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for _, object in pairs(game:GetDescendants()) do
        if object:IsA("Part") or object:IsA("Union") or object:IsA("MeshPart") then
            object.Material = "Plastic"
            object.Reflectance = 0
        elseif object:IsA("Decal") and decalsyeeted then
            object.Transparency = 1
        elseif object:IsA("ParticleEmitter") or object:IsA("Trail") then
            object.Lifetime = NumberRange.new(0)
        end
    end
		end
	
	},
    {
        type = "button",
        text = "Ctrl TP",
        callback = function()
            clicktps = true
            local hotkeyctp = "LeftControl"
            local Mouses = game:GetService("Players").LocalPlayer:GetMouse()
            cmdm = Mouses
            local Imput = game:GetService("UserInputService")
            hum = game:GetService("Players").LocalPlayer.Character
                      .HumanoidRootPart
            if hotkeyctp == "LeftControl" then
                Imput.InputBegan:Connect(function(input)
                    if Imput:IsKeyDown(Enum.KeyCode.LeftControl) and clicktps ==
                        true then
                        if cmdm.Target then
                            hum.CFrame =
                                CFrame.new(cmdm.Hit.x, cmdm.Hit.y + 5,
                                           cmdm.Hit.z)
                        end
                    end
                end)
            else
                mouse.KeyDown:connect(function(key)
                    if key == hotkeyctp and clicktps == true then
                        if cmdm.Target then
                            hum.CFrame =
                                CFrame.new(cmdm.Hit.x, cmdm.Hit.y + 5,
                                           cmdm.Hit.z)
                        end
                    end
                end)
            end
        end
    },
    {
        type = "button",
        text = "Server Hop",
        callback = function()
            local HttpService, TPService = game:GetService("HttpService"),
                                           game:GetService("TeleportService")
            local ServersToTP = HttpService:JSONDecode(game:HttpGet(
                                                           "https://games.roblox.com/v1/games/" ..
                                                               game.PlaceId ..
                                                               "/servers/Public?sortOrder=Asc&limit=100"))
            for _, s in pairs(ServersToTP.data) do
                if s.playing ~= s.maxPlayers then
                    TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
                end
            end
        end
    },
    {
        type = "button",
        text = "Invisible Pack, Name, Description",
        callback = function()
            local A_1 = "\67\104\97\110\103\101\78\97\109\101"
            local A_2 = ""
            local A_3 =
                "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)

            local A_11 = "\67\104\97\110\103\101\68\101\115\99"
            local A_22 = ""
            local A_33 =
                "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
            local Event2 = game:GetService("ReplicatedStorage").MasterKey
            Event2:FireServer(A_11, A_22, A_33)

            local AC_1 = "CreatePack"
            local AC_2 = "\n\n\n\n\ne"
            local Event = game:GetService("ReplicatedStorage").MasterKey2
            Event:FireServer(AC_1, AC_2)
        end
    },
    {
        type = 'dropdown',
        text = 'Teleport To Player',
        options = getPlayers(),
        default = getPlayers()[1],
        callback = function(a)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[a].Character.HumanoidRootPart.CFrame
        end
    },
    Size = {400, 312}
});
_G.autoaudiomute = false
getgenv().addTab("Music", {
    {
        type = 'toggle',
        text = 'Mute VIW Audio SS',
        state = false,
        callback = function(s)
            _G.autoaudiomute = not _G.autoaudiomute
            while _G.autoaudiomute do
                task.wait()
                for _, v in next, game:GetService('Players'):GetPlayers() do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character.Parent ~= nil and v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM') then
                        v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM'):Stop()
                        v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM').Playing = false
                    end
                end
            end
        end
    },
    {
        type = 'textbox',
        placeholder = '[SONG ID]',
        text = 'Enter Song ID',
        numbersOnly = true,
        callback = function(v)
            if tonumber(v) then
                game.ReplicatedStorage.MasterKey:FireServer("PlayMusic",
                                                            tonumber(v),
                                                            "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
            end
        end
    },
    {
        type = "button",
        text = "Stop Music",
        callback = function()
            game.ReplicatedStorage.MasterKey:FireServer("StopMusic", nil,
                                                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
        end
},
    {
        type = "button",
        text = "Ear Rape",
        callback = function()
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v:IsA("Sound") then v:Play() end
            end
        end
    },
    {
        type = "button",
        text = "Sad Russian Music",
        callback = function()
            game.ReplicatedStorage.MasterKey:FireServer("PlayMusic",
                                                        "3375859027",
                                                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
        end
    },
    {
        type = "button",
        text = "Chill LoFi Music",
        callback = function()
            game.ReplicatedStorage.MasterKey:FireServer("PlayMusic",
                                                        "4509807932",
                                                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
        end
    },
    {
        type = "button",
        text = "Chill Vaporwave",
        callback = function()
            game.ReplicatedStorage.MasterKey:FireServer("PlayMusic",
                                                        "3694981522",
                                                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
        end
    },
    Size = {400, 249}
});
getgenv().addTab("Forest Teleports", {
    {
        type = "button",
        text = "Adoption Center",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1040.74316, 23.7099648, -182.204315)
        end
    },
    {
        type = "button",
        text = "Forest",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1022.59399, 23.6440201, -14.1941719)
        end
    },
    {
        type = "button",
        text = "Café",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(839.234497, 23.7435608, -42.4828339)
        end
    },
    {
        type = "button",
        text = "Shop",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(932.176941, 39.7435493, 193.428528)
        end
    },
    {
        type = "button",
        text = "School",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1084.82654, 47.5220184, 228.530624)
        end
    },
    {
        type = "button",
        text = "Jail",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(745.524658, 55.7435532, 210.495987)
        end
    },
    {
        type = "button",
        text = "Medicine Den",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1101.03943, 19.9545212, -118.842155)
        end
    },
    {
        type = "button",
        text = "Camp",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(683.079651, 47.7435532, -73.141304)
        end
    },
    Size = {400, 313}
});
getgenv().addTab("Snow Teleports", {
    {
        type = "button",
        text = "Entrance",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(939.857788, 76.8110657, 337.547638)
        end
    },
    {
        type = "button",
        text = "Frozen Lake",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1027.71997, 77.3434677, 523.883545)
        end
    },
    {
        type = "button",
        text = "Second Frozen Lake",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1010.83203, 38.7547188, 783.778198)
        end
    },
    {
        type = "button",
        text = "Medicine Den",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1128.41162, 43.8240013, 785.003357)
        end
    },
    {
        type = "button",
        text = "Camp",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(834.710449, 87.7435379, 754.766541)
        end
    },
    {
        type = "button",
        text = "Cave Ridge",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1222.71082, 48.2097702, 668.268738)
        end
    },
    Size = {400, 249}
});
getgenv().addTab("Redwood Teleports", {
    {
        type = "button",
        text = "Entrance",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(771.792664, 79.0568237, 570.739319)
        end
    },
    {
        type = "button",
        text = "Café",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(725.06427, 87.7435303, 674.091187)
        end
    },
    {
        type = "button",
        text = "Medicine Den",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(653.720459, 55.7435532, 587.24469)
        end
    },
    {
        type = "button",
        text = "Jail",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(431.461548, 47.7887611, 503.845184)
        end
    },
    {
        type = "button",
        text = "Sail Boat",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(405.667908, 39.0833054, 565.601318)
        end
    },
    {
        type = "button",
        text = "Best Den (Peace's Opinion)",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(255.685226, 43.9005508, 564.84436)
        end
    },
    Size = {400, 249}
});
getgenv().addTab("Beach Teleports", {
    {
        type = "button",
        text = "Entrance",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(477.819305, 41.6828766, 0.768472195)
        end
    },
    {
        type = "button",
        text = "Island 1",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(144.590988, 39.7435532, 148.088028)
        end
    },
    {
        type = "button",
        text = "Island 2",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(167.633942, 40.7593384, 282.919281)
        end
    },
    {
        type = "button",
        text = "Secret Cave",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(253.271591, 39.7489281, 338.808594)
        end
    },
    {
        type = "button",
        text = "Portal Cave",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(249.173813, 59.4407349, -87.999054)
        end
    },
    {
        type = "button",
        text = "Volcano Entrance",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(337.044495, 43.4084358, 234.256149)
        end
    },
    {
        type = "button",
        text = "Volcano",
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(615.430664, 231.483734, 343.467804)
        end
    },
    Size = {400, 281}
});
getgenv().addTab("Colour Customisation", {
    {
        type = 'toggle',
        text = 'Rainbow Wolf',
        state = false,
        callback = function(s)
            rbwolf = s
            RainbowWolf()
        end
    },
{
    type = 'toggle',
    text = 'Rainbow Wings',
    state = false,
    callback = function(s)
         RWings = s
            RainbowWings()
        end
	},
{
        type = 'toggle',
        text = 'Rainbow Eyes',
        state = false,
        callback = function(s)
            rbeye = s
            RainbowEyes()
        end
    },
    {
        type = 'toggle',
        text = 'Rainbow Name',
        state = false,
        callback = function(s)
            rbname = s
            RainbowName()
        end
    },
    {
        type = 'toggle',
        text = 'Rainbow Particles',
        state = false,
        callback = function(s)
            rbspace = s
            RainbowParticles()
        end
    },
    {
        type = 'colorpicker',
        text = 'Eye Colour',
        default = Color3.new(1, 1, 1),
        callback = function(c)
            local A_1 = "customize"
            local A_2 = {[1] = "EyeColor"}
            local A_3 = c
            local A_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3, A_4)
        end
    },
    {
        type = 'colorpicker',
        text = 'Name Colour',
        default = Color3.new(1, 1, 1),
        callback = function(c)
            local A_1 = "ChangeColor"
            local key =
                "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
            game:GetService("ReplicatedStorage").MasterKey:FireServer(A_1, {
                c.R, c.G, c.B
            }, key)
        end
    },
    {
        type = 'colorpicker',
        text = 'Primary Colour',
        default = Color3.new(1, 1, 1),
        callback = function(c)
            local A_1 = "customize"
            local A_2 = {
                [1] = "DragonPrimary",
                [2] = "OceanPrimary",
                [3] = "BackFluff",
                [4] = "TailFluff",
                [5] = "LeftWingStart",
                [6] = "LeftWing2",
                [7] = "LeftWing3",
                [8] = "RightWingStart",
                [9] = "RightWing2",
                [10] = "RightWing3",
                [11] = "EyeLid",
                [12] = "Torso",
                [13] = "Tail1",
                [14] = "Tail2",
                [15] = "Tail3",
                [16] = "Tail5",
                [17] = "Tail6",
                [18] = "RightThigh",
                [19] = "RightEar",
                [20] = "EyeLid",
                [21] = "Head",
                [22] = "Hip",
                [23] = "LeftEar",
                [24] = "LeftThigh",
                [25] = "Muzzle",
                [26] = "Neck",
                [27] = "NeckReal",
                [28] = "Nose",
                [29] = "Toungue1",
                [30] = "Toungue2",
                [31] = "Tooth",
                [32] = "Gum",
                [33] = "Pupils",
                [34] = "UpperTooth",
                [35] = "Pads",
                [36] = "Claws",
                [37] = "White",
                [38] = "InsideEars"
            }
            local A_3 = c
            local A_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3, A_4)
        end
    },
    {
        type = 'colorpicker',
        text = 'Secondary Colour',
        default = Color3.new(1, 1, 1),
        callback = function(c)
            local A_1 = "customize"
            local A_2 = {
                [1] = "DragonSecondary",
                [2] = "OceanSecondary",
                [3] = "ChubbyCheeks",
                [4] = "Fat",
                [5] = "EarFluff",
                [6] = "JawFluff",
                [7] = "ChestFluff",
                [8] = "LegFluff",
                [9] = "Eyebrow1",
                [10] = "Eyebrow2",
                [11] = "Secondary",
                [12] = "Jaw",
                [13] = "RightShoulder",
                [14] = "RightLowerLeg",
                [15] = "RightLowerArm",
                [16] = "RightLeg",
                [17] = "RightFootPaw",
                [18] = "LeftArm",
                [19] = "LeftArmPaw",
                [20] = "LeftCarpal",
                [21] = "LeftFootPaw",
                [22] = "LeftLeg",
                [23] = "LeftLowerArm",
                [24] = "LeftLowerLeg",
                [25] = "LeftShoulder",
                [26] = "RightArm",
                [27] = "RightArmPaw",
                [28] = "RightCarpal",
                [29] = "DragonThird"
            }
            local A_3 = c
            local A_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3, A_4)
        end
    },
    {
        type = 'dropdown',
        text = 'Specific Part',
        options = allparts,
        default = allparts[1],
        callback = function(v) ColourPart = v end
    },
    {
        type = 'colorpicker',
        text = 'Specific Part Colour',
        default = Color3.new(1, 1, 1),
        callback = function(c)
            local A_1 = "customize"
            local A_2 = {[1] = ColourPart}
            local A_3 = c
            local A_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3, A_4)
        end
    },

    Size = {400, 410}
});
getgenv().addTab("Material Customisation | Presets", {
	{
		type = 'button',
		text = 'Ghost Wolf',
		callback = function()
		local char = game:GetService('Players').LocalPlayer.Character
    		for i, v in pairs(char:GetChildren()) do
        if (v.Name == 'HumanoidRootPart' or v:IsA('Seat') or v.Name:find 'Tooth' or v.Name == 'JawWeldPart' or v.Name:find 'Toungue') then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
        elseif v:IsA('BasePart') and v.Transparency == 0 then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, .8)
       			 end
    		end
		end
	
	},
	{
		type = 'button',
		text = 'Scary Face',
		callback = function()
		    local args = { [1] = "remove", [2] = "HairF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "remove", [2] = "TorsoF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "remove", [2] = "PiercingsF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "remove", [2] = "FeetF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Back", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightCarpal", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftCarpal", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "NeckReal", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "BackFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "ChestFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Claws", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonClaws", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonPrimary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonSecondary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonThird", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EarFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EyeColor", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EyeLid", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Fat", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Gum", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Head", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Hip", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "HumanoidRootPart", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "InsideEars", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Jaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "JawFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftArmPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftEar", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftFootPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Leftleg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftLowerArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftLowerLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftShoulder", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftThigh", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftWing2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftWing3", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftWingStart", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LegFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Muzzle", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Neck", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Nose", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "OceanPrimary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "OceanSecondary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Pads", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Pupils", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightArmPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightEar", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightFootPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightLowerArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightLowerLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightShoulder", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightThigh", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightWing2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightWing3", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightWingStart", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Secondary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail5", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail6", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "TailFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Torso", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "White", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "lash", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail1", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail3", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail5", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "ChubbyCheeks", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue1", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Eyebrow2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Eyebrow1", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tooth", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "UpperTooth", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "White", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EyeColor", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Pupils", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue1", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue2", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Nose", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "UpperTooth", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tooth", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    task.wait(0.1)
	end
	},
{
	type = 'button',
	text = 'Big Dady Cock',
	callback = function()
		 for _, part in next, game.Players.LocalPlayer.Character:children() do
        if part:IsA 'BasePart' and part.Name ~= 'HumanoidRootPart' then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", part.Name, 1)
        end
    end
    game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Torso", 0)
    game.ReplicatedStorage.MasterKey:FireServer("Fluff", "LeftThigh", 0)
    game.ReplicatedStorage.MasterKey:FireServer("Fluff", "RightThigh", 0)
    removeAccessory("HairF")
    local torsoColor = Color3.new(0.866667, 0.737255, 0.627451)
    fireMasterKey("Torso", torsoColor, "Advanced")
    local thighColor = Color3.new(0.866667, 0.737255, 0.627451)
    fireMasterKey("LeftThigh", thighColor, "Advanced")
    fireMasterKey("RightThigh", thighColor, "Advanced")
    local neckColor = Color3.new(0.600, 0, 0)
    fireMasterKey("NeckReal", neckColor, "Advanced")
	end
},
	{
		type = 'button',
		text = 'White Eyes',
		callback = function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MasterKey = ReplicatedStorage.MasterKey
local function customize(part, color)
	local args = {"customize",{part},color,"Body"}
	MasterKey:FireServer(unpack(args))
end
customize("Pupils", Color3.new(1, 1, 1))
customize("EyeColor", Color3.new(1, 1, 1))
		end
	},
    {
        type = 'dropdown',
        text = 'Primary Material',
        options = matdropdown,
        default = matdropdown[1],
        callback = function(v)
            local A_1 = "Material"
            local A_2 = v
            local A_3 = {
                [1] = "DragonPrimary",
                [2] = "OceanPrimary",
                [3] = "BackFluff",
                [4] = "TailFluff",
                [5] = "LeftWingStart",
                [6] = "LeftWing2",
                [7] = "LeftWing3",
                [8] = "RightWingStart",
                [9] = "RightWing2",
                [10] = "RightWing3",
                [11] = "EyeLid",
                [12] = "Torso",
                [13] = "Tail1",
                [14] = "Tail2",
                [15] = "Tail3",
                [16] = "Tail5",
                [17] = "Tail6",
                [18] = "RightThigh",
                [19] = "RightEar",
                [20] = "EyeLid",
                [21] = "Head",
                [22] = "Hip",
                [23] = "LeftEar",
                [24] = "LeftThigh",
                [25] = "Muzzle",
                [26] = "Neck",
                [27] = "NeckReal",
                [28] = "Nose",
                [29] = "Toungue1",
                [30] = "Toungue2",
                [31] = "Gum",
                [32] = "Pupils",
                [33] = "Pads",
                [34] = "Claws",
                [35] = "Tail4"
            }
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    },
    {
        type = 'dropdown',
        text = 'Secondary Material',
        options = matdropdown,
        default = matdropdown[1],
        callback = function(v)
            local A_1 = "Material"
            local A_2 = v
            local A_3 = {
                [1] = "DragonSecondary",
                [2] = "OceanSecondary",
                [3] = "ChubbyCheeks",
                [4] = "Fat",
                [5] = "EarFluff",
                [6] = "JawFluff",
                [7] = "ChestFluff",
                [8] = "LegFluff",
                [9] = "Eyebrow1",
                [10] = "Eyebrow2",
                [11] = "Secondary",
                [12] = "Jaw",
                [13] = "RightShoulder",
                [14] = "RightLowerLeg",
                [15] = "RightLowerArm",
                [16] = "RightLeg",
                [17] = "RightFootPaw",
                [18] = "LeftArm",
                [19] = "LeftArmPaw",
                [20] = "LeftCarpal",
                [21] = "LeftFootPaw",
                [22] = "LeftLeg",
                [23] = "LeftLowerArm",
                [24] = "LeftLowerLeg",
                [25] = "LeftShoulder",
                [26] = "RightArm",
                [27] = "RightArmPaw",
                [28] = "RightCarpal",
                [29] = "DragonThird"
            }
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    },
    {
        type = 'toggle',
        text = 'Material Loop',
        state = false,
        callback = function(s)
            matchange = s
            MaterialChange()
        end
    },
    {
        type = 'dropdown',
        text = 'Specific Part',
        options = allparts,
        default = allparts[1],
        callback = function(v) MaterialPart = v end
    },
    {
        type = 'dropdown',
        text = 'Specific Part Material',
        options = matdropdown,
        default = matdropdown[1],
        callback = function(v)
            local A_1 = "Material"
            local A_2 = v
            local A_3 = {[1] = MaterialPart}
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    },
    Size = {400, 345}
});
getgenv().addTab("Accessories", {
    {
        type = 'dropdown',
        text = 'Hair Style',
        options = hairdropdown,
        default = hairdropdown[1],
        callback = function(v)
            local A_1 = "HairF"
            local A_2 = v
            local Event = game:GetService("ReplicatedStorage").Accessories
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = 'dropdown',
        text = 'Torso Accessory',
        options = torsodropdown,
        default = torsodropdown[1],
        callback = function(v)
            local A_1 = "TorsoF"
            local A_2 = v
            local Event = game:GetService("ReplicatedStorage").Accessories
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = 'dropdown',
        text = 'Foot Accessory',
        options = footdropdown,
        default = footdropdown[1],
        callback = function(v)
            local A_1 = "FeetF"
            local A_2 = v
            local Event = game:GetService("ReplicatedStorage").Accessories
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = 'colorpicker',
        text = 'Accessory Colour',
        default = Color3.new(1, 1, 1),
        callback = function(c)
            local A_1 = "Accessories"
            local A_2 = c
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = "button",
        text = "Remove Hair",
        callback = function()
            local A_1 = "remove"
            local A_2 = "HairF"
            local Event = game:GetService("ReplicatedStorage").Accessories
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = "button",
        text = "Remove Torso Accessory",
        callback = function()
            local A_1 = "remove"
            local A_2 = "TorsoF"
            local Event = game:GetService("ReplicatedStorage").Accessories
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = "button",
        text = "Remove Foot Accessory",
        callback = function()
            local A_1 = "remove"
            local A_2 = "FeetF"
            local Event = game:GetService("ReplicatedStorage").Accessories
            Event:FireServer(A_1, A_2)
        end
    },
    {
        type = 'dropdown',
        text = 'Hair Material',
        options = matdropdown,
        default = matdropdown[1],
        callback = function(v)
            local A_1 = "AccessoryMaterial"
            local A_2 = v
            local A_3 = "HairF"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    },
    {
        type = 'dropdown',
        text = 'Torso Accessory Material',
        options = matdropdown,
        default = matdropdown[1],
        callback = function(v)
            local A_1 = "AccessoryMaterial"
            local A_2 = v
            local A_3 = "TorsoF"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    },
    {
        type = 'dropdown',
        text = 'Foot Accessory Material',
        options = matdropdown,
        default = matdropdown[1],
        callback = function(v)
            local A_1 = "AccessoryMaterial"
            local A_2 = v
            local A_3 = "FeetF"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    },
    Size = {400, 377}
});
getgenv().addTab("Wolf Utilities (Exporting/Saving/Loading)", {
    {
        type = 'toggle',
        text = 'Wings',
        state = false,
        callback = function(s)
            if s == true then
                game:GetService("ReplicatedStorage").MasterKey:FireServer(
                    "Wings", 0,
                    "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
            elseif s == false then
                do
                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                        "Wings", 1,
                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
                end
            end
        end
    },
    {
        type = 'toggle',
        text = 'Dragon',
        state = false,
        callback = function(s)
            if s == true then
                game:GetService("ReplicatedStorage").MasterKey:FireServer(
                    "Dragon", 0,
                    "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
            elseif s == false then
                do
                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                        "Dragon", 1,
                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
                end
            end
        end
    },
    {
        type = 'toggle',
        text = 'Ocean',
        state = false,
        callback = function(s)
            if s == true then
                game:GetService("ReplicatedStorage").MasterKey:FireServer(
                    "Ocean", 0,
                    "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
            elseif s == false then
                do
                    game:GetService("ReplicatedStorage").MasterKey:FireServer(
                        "Ocean", 1,
                        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
                end
            end
        end
    },
	{
		type = "button",
		text = "Female",
		callback = function ()
			local args = {[1]="Female"}
			game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args))
		end
	},
	{
		type = "button",
		text = "Male",
		callback = function ()
						local args = {[1]="Male"}
			game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args))		
		end
	},
    {
        type = "button",
        text = "Save | Slot 1",
        callback = function()
            local A_1 = "SaveFile1Colours"
            local A_2 = "1"
            local A_3 =
                "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"
            local Event = game:GetService("ReplicatedStorage").Save
            Event:InvokeServer(A_1, A_2, A_3)
        end
    },
    {
        type = "button",
        text = "Save | Slot 2",
        callback = function()
            local A_1 = "SaveFile1Colours"
            local A_2 = "2"
            local A_3 =
                "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"
            local Event = game:GetService("ReplicatedStorage").Save
            Event:InvokeServer(A_1, A_2, A_3)
        end
    },
    {
        type = "button",
        text = "Save | Slot 3",
        callback = function()
            local A_1 = "SaveFile1Colours"
            local A_2 = "3"
            local A_3 =
                "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"
            local Event = game:GetService("ReplicatedStorage").Save
            Event:InvokeServer(A_1, A_2, A_3)
        end
    },
    {
        type = "button",
        text = "Load | Slot 1",
        callback = function()
            local A_1 = "LoadFile1Colours"
            local A_2 = "1"
            local A_3 =
                "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"
            local Event = game:GetService("ReplicatedStorage").Save
            Event:InvokeServer(A_1, A_2, A_3)
        end
    },
    {
        type = "button",
        text = "Load | Slot 2",
        callback = function()
            local A_1 = "LoadFile1Colours"
            local A_2 = "2"
            local A_3 =
                "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"
            local Event = game:GetService("ReplicatedStorage").Save
            Event:InvokeServer(A_1, A_2, A_3)
        end
    },
    {
        type = "button",
        text = "Load | Slot 3",
        callback = function()
            local A_1 = "LoadFile1Colours"
            local A_2 = "3"
            local A_3 =
                "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"
            local Event = game:GetService("ReplicatedStorage").Save
            Event:InvokeServer(A_1, A_2, A_3)
        end
    },
    Size = {400, 410}
});
getgenv().addTab("Fade toggles", {
     {
        type = "toggle",
        text = "RGB Wings Flash",
        callback = function(bool)
            _G.Rainbowwingsflash = not _G.Rainbowwingsflash
            if _G.Rainbowwingsflash then
                local Mat = "Neon"
                local SecondaryArgs = { [1] = "Material", [2] = Mat,
                    [3] = { [1] = "DragonThird", [2] = "DragonPrimary", [3] = "OceanPrimary", [4] = "Nose", [5] = "EyeColor", } }
                game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
                local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
                -- Define the colors to fade between
                local colors = { Color3.new(1, 0, 0), Color3.new(0, 1, 0), Color3.new(0, 0, 1) }
                local colorIndex = 1
                while _G.Rainbowwingsflash do
                    -- Get the current and next color
                    local currentColor = colors[colorIndex]
                    local nextColorIndex = colorIndex % #colors + 1
                    local nextColor = colors[nextColorIndex]
                    -- Interpolate between the current and next color
                    for i = 0, 1, 1 do
                        local color = currentColor:lerp(nextColor, i)
                        mk1:FireServer("customize",
                            { [1] = "EyeColor", [2] = "Nose", [3] = "DragonPrimary", [4] = "DragonThird", [5] = "OceanPrimary", },
                            color, "Body")
                        task.wait(0.02) -- Increase the wait time to slow down the color change
                    end
                    -- Move to the next color
                    colorIndex = nextColorIndex
                end
            end 
        end,
        defaultState = false,
    },
    {
        type = "toggle",
        text = "Rainbow Name Tag Fade",
        callback = function(bool)
            if _G.faderbw then
                _G.faderbw = false
                return
            else
                _G.faderbw = true
            end
            local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
            local spd = 4
            while _G.faderbw do
                for i = 0, 1, 0.001 * spd do
                    if _G.faderbw == false then return end
                    col = Color3.fromHSV(i, 1, 1)
                    local args = { [1] = "ChangeColor", [2] = { col.G, col.B, col.B },
                        [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
                    mk1:FireServer(unpack(args))
                    task.wait()
                end
                for i = 0, 1, 0.001 * spd do
                    if _G.faderbw == false then return end
                    col = Color3.fromHSV(i, 1, 1)
                    local args = { [1] = "ChangeColor", [2] = { col.B, col.B, col.G },
                        [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
                    mk1:FireServer(unpack(args))
                    task.wait()
                end
                for i = 0, 1, 0.001 * spd do
                    if _G.faderbw == false then return end
                    col = Color3.fromHSV(i, 1, 1)
                    local args = { [1] = "ChangeColor", [2] = { col.r, col.B, col.R },
                        [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
                    mk1:FireServer(unpack(args))
                    task.wait()
                end
			end
		end
	},
	  {
        type = "toggle",
        text = "MonoChrome Wings Fade",
        callback = function(bool)
            _G.MonoChromeWingsFade = not _G.MonoChromeWingsFade
            if _G.MonoChromeWingsFade then
                local Mat = "Neon"
                local SecondaryArgs = { [1] = "Material", [2] = Mat,
                    [3] = { [1] = "DragonThird", [2] = "DragonPrimary", [3] = "OceanPrimary", [4] = "Nose", [5] = "EyeColor", } }
                game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
                local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
                -- Define the colors to fade between
                local colors = { Color3.new(1, 1, 1), Color3.new(0, 0, 0), Color3.new(1, 1, 1) }
                local colorIndex = 1
                while _G.MonoChromeWingsFade do
                    -- Get the current and next color
                    local currentColor = colors[colorIndex]
                    local nextColorIndex = colorIndex % #colors + 1
                    local nextColor = colors[nextColorIndex]
                    -- Interpolate between the current and next color
                    for i = 0, 1, 0.01 do
                        local color = currentColor:lerp(nextColor, i)
                        mk1:FireServer("customize",
                            { [1] = "EyeColor", [2] = "Nose", [3] = "DragonPrimary", [4] = "DragonThird", [5] = "OceanPrimary", },
                            color, "Body")
                        task.wait(0.01) -- Increase the wait time to slow down the color change
                    end
                    -- Move to the next color
                    colorIndex = nextColorIndex
                end
            end 
        end,
        defaultState = false,
    },
	{
        type = "toggle",
        text = "Mono Fade tag",
        callback = function(bool)
            if _G.MonoChromeFade then
                _G.MonoChromeFade = false
                return
            else
                _G.MonoChromeFade = true
            end
            local RS = game:service('ReplicatedStorage')
            local mk1 = RS:FindFirstChild('MasterKey')
            local spd = 6
            while _G.MonoChromeFade do
                for i = 0, 1, 0.001 * spd do
                    col = Color3.fromHSV(i, 1, 1)
                    local args = { [1] = "ChangeColor", [2] = { col.R, col.R, col.R },
                        [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
                    mk1:FireServer(unpack(args))
                    task.wait()
                end
            end
        end,
        defaultState = false,
    },
    {
        type = "toggle",
        text = "Mono Chrome Particle Fade",
        callback = function(bool)
            _G.MonoChromeparticlefade = not _G.MonoChromeparticlefade
            while _G.MonoChromeparticlefade do
                task.wait()
                local nextColor = current_color.Value == second_color.Value and first_color.Value or second_color.Value
                TweenService:Create(current_color, TweenInfo.new(SPEED, Enum.EasingStyle.Linear), { Value = nextColor }):Play()
                Remote:FireServer("ColorParticle", current_color.Value)
            end
        end,
        defaultState = false,
    },
	    Size = {400, 220}
});

getgenv().addTab("Objects | Spamming", {
    {
        type = "button",
        text = "Bring Items On Ground",
        callback = function()
            for i, v in pairs(
                            game:GetService("Workspace").ItemsOnGround:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    task.wait()
                    fireclickdetector(v)
                    local A_1 = "Drop"
                    local Event =
                        game:GetService("ReplicatedStorage").MasterKey2
                    Event:FireServer(A_1)
                end
            end
        end
    },
    {
        type = "button",
        text = "Delete Items On Ground",
        callback = function()
            for i, v in pairs(
                            game:GetService("Workspace").ItemsOnGround:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    task.wait(0.01)
                    fireclickdetector(v)
                    local A_1 = "Destroy"
                    local Event =
                        game:GetService("ReplicatedStorage").MasterKey2
                    Event:FireServer(A_1)
                    task.wait(0.01)
                    fireclickdetector(v)
                    Event:FireServer(A_1)
                    task.wait(0.01)
                    fireclickdetector(v)
                    Event:FireServer(A_1)
                end
            end
        end
    },
    {
        type = 'dropdown',
        text = 'Give Item',
        options = itemlist,
        default = itemlist[1],
        callback = function(v) giveItem(v) end
    },
    {
        type = 'toggle',
        text = "Lot O' Ducks",
        state = false,
        callback = function(s)
            spamducks = s
            SpamDucks()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Balls",
        state = false,
        callback = function(s)
            spamballs = s
            SpamBalls()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' FootBalls",
        state = false,
        callback = function(s)
            spamfballs = s
            SpamFootBalls()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Beef",
        state = false,
        callback = function(s)
            spambeef = s
            SpamBeef()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Pork",
        state = false,
        callback = function(s)
            spampork = s
            SpamPork()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Fish",
        state = false,
        callback = function(s)
            spamfish = s
            SpamFish()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' FootBalls",
        state = false,
        callback = function(s)
            spamfballs = s
            SpamFootBalls()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Chicken Breast",
        state = false,
        callback = function(s)
            spamcbreast = s
            SpamChickenBreast()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Chicken Leg",
        state = false,
        callback = function(s)
            spamcleg = s
            SpamChickenLeg()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Venison",
        state = false,
        callback = function(s)
            spamvenison = s
            SpamVenison()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Rabbit",
        state = false,
        callback = function(s)
            spamrabbit = s
            SpamRabbit()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Bunnies",
        state = false,
        callback = function(s)
            spambunnies = s
            SpamBunnies()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Sticks",
        state = false,
        callback = function(s)
            spamsticks = s
            SpamSticks()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Bones",
        state = false,
        callback = function(s)
            spambones = s
            SpamBones()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Teddies",
        state = false,
        callback = function(s)
            spamteddies = s
            SpamTeddies()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Torches",
        state = false,
        callback = function(s)
            spamtorches = s
            SpamTorches()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Flowers",
        state = false,
        callback = function(s)
            spamflowers = s
            SpamFlowers()
        end
    },
    {
        type = 'toggle',
        text = "Lot O' Potions",
        state = false,
        callback = function(s)
            spampotions = s
            SpamPotions()
        end
    },
    Size = {400, 517}
});
local buttons = {
    { "fates admin", "https://pastebin.com/raw/Hqxxt9He" },
    { "Homebrew Admin", 'https://pastebin.com/raw/BrqBdJ4Y' },
    { "Server Browser GUI", 'https://pastebin.com/raw/MrXyrHzK' },}
table.sort(buttons, function(a, b) return #a[1] < #b[1] end)
local tab = {
    {
        type = "button",
        text = "Infinite Yiff",
        callback = function()
            loadstring(game:HttpGet(
                           "https://pastebin.com/raw/XCbyzc1n"))()
        end
    },
    {
        type = "button",
        text = "Audio Logger",
        callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/FJJZWs8r"))()
        end
    },
	{
		type = "button",
		text = "Chat Logger",
		callback = function()
       -- Version: 2.82
    local ChatGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local LogPanel = Instance.new("ScrollingFrame")
    local Close = Instance.new("TextButton")
    local Mini = Instance.new("TextButton")
    local Log = Instance.new("TextButton")
    local title = Instance.new("TextLabel")
    local UIListLayoutt = Instance.new("UIListLayout", LogPanel)
    UIListLayoutt.VerticalAlignment = "Bottom"
    ChatGui.Name = "ChatGui"
    ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
    ChatGui.ResetOnSpawn = false
    Frame.Parent = ChatGui
    Frame.BackgroundColor3 = Color3.new(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
    Frame.Size = UDim2.new(0, 392, 0, 25)
    Frame.Active = true
    Frame.Draggable = true
    LogPanel.Name = "LogPanel"
    LogPanel.Parent = Frame
    LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
    LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
    LogPanel.Position = UDim2.new(-0.000221580267, 0, 0.968695641, 0)
    LogPanel.Size = UDim2.new(0, 392, 0, 203)
    LogPanel.ScrollBarThickness = 5
    LogPanel.ScrollingEnabled = true
    LogPanel.CanvasSize = UDim2.new(2, 0, 100, 0)
    Close.Name = "Close"
    Close.Parent = Frame
    Close.BackgroundColor3 = Color3.new(1, 1, 1)
    Close.BackgroundTransparency = 1
    Close.Position = UDim2.new(0.823979557, 0, 0.0399999991, 0)
    Close.Size = UDim2.new(0, 69, 0, 24)
    Close.Font = Enum.Font.SourceSans
    Close.Text = "Close"
    Close.TextColor3 = Color3.new(1, 1, 1)
    Close.TextSize = 14
    Mini.Name = "Mini"
    Mini.Parent = Frame
    Mini.BackgroundColor3 = Color3.new(1, 1, 1)
    Mini.BackgroundTransparency = 1
    Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
    Mini.Size = UDim2.new(0, 69, 0, 24)
    Mini.Font = Enum.Font.SourceSans
    Mini.Text = "Minimize"
    Mini.TextColor3 = Color3.new(1, 1, 1)
    Mini.TextSize = 14
    Log.Name = "Log"
    Log.Parent = Frame
    Log.BackgroundColor3 = Color3.new(1, 1, 1)
    Log.BackgroundTransparency = 1
    Log.Position = UDim2.new(0.293367326, 0, 0, 0)
    Log.Size = UDim2.new(0, 69, 0, 24)
    Log.Font = Enum.Font.SourceSans
    Log.Text = "Log Chat [ON]"
    Log.TextColor3 = Color3.new(1, 1, 1)
    Log.TextSize = 14
    title.Name = "title"
    title.Parent = Frame
    title.BackgroundColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0, 115, 0, 24)
    title.Font = Enum.Font.SourceSans
    title.Text = "Chat GUI"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left
    local logging = true
    local minimized = false
    Log.MouseButton1Down:Connect(function()
        logging = not logging
        if logging then Log.Text = "Log Chat [ON]" else Log.Text = "Log Chat [OFF]" end
    end)
    Mini.MouseButton1Down:Connect(function()
        if minimized then
            LogPanel:TweenSize(UDim2.new(0, 392, 0, 203), "InOut", "Sine", 0.5, false, nil)
        else
            LogPanel:TweenSize(UDim2.new(0, 392, 0, 0), "InOut", "Sine", 0.5, false, nil)
        end
        minimized = not minimized
    end)
    Close.MouseButton1Down:Connect(function()
        ChatGui:Destroy()
    end)
    local prevOutputPos = 0
    function output(plr, msg)
        if not logging then return end
        local colour = Color3.fromRGB(255, 255, 255)
        if string.sub(msg, 1, 1) == ":" or string.sub(msg, 1, 1) == ";" then colour = Color3.fromRGB(255, 0, 0) elseif string.sub(msg, 1, 2) == "/w" or string.sub(msg, 1, 7) == "/whisper" or string.sub(msg, 1, 5) == "/team" or string.sub(msg, 1, 2) == "/t" then colour =
            Color3.fromRGB(0, 0, 255) else colour = Color3.fromRGB(255, 255, 255) end
        local o = Instance.new("TextLabel", LogPanel)
        o.Text = plr.Name .. ": " .. msg
        o.Size = UDim2.new(0.5, 0, .006, 0)
        o.Position = UDim2.new(0, 0, .007 + prevOutputPos, 0)
        o.Font = Enum.Font.SourceSansSemibold
        o.TextColor3 = colour
        o.TextStrokeTransparency = 0
        o.BackgroundTransparency = 0
        o.BackgroundColor3 = Color3.new(0, 0, 0)
        o.BorderSizePixel = 0
        o.BorderColor3 = Color3.new(0, 0, 0)
        o.FontSize = "Size14"
        o.TextXAlignment = Enum.TextXAlignment.Left
        o.ClipsDescendants = true
        prevOutputPos = prevOutputPos + 0.007
    end

    for i, v in pairs(game.Players:GetChildren()) do
        v.Chatted:Connect(function(msg)
            output(v, msg)
        end)
    end
    game.Players.ChildAdded:Connect(function(plr)
        if plr:IsA("Player") then
            plr.Chatted:Connect(function(msg)
                output(plr, msg)
            end)
        end
    end)	
		end
	},
	{
		type = "Button",
		text = "Teleport all",
		callback = function()
		local replicatedStorage = game:GetService("ReplicatedStorage")
    local carryNewborn = replicatedStorage.CarryNewborn
    local masterKey = replicatedStorage.MasterKey
    local players = game.Players:GetChildren()
    for i, v in ipairs(players) do
        carryNewborn:FireServer(v)
        wait(0.2)
        masterKey:FireServer("Spawn", "Adoption")
        wait(0.2)
        carryNewborn:FireServer("Kick Eggs")
        wait(0.2)
    end			
		end
	},
}
for _, button in pairs(buttons) do
    table.insert(tab, {
        type = "button",
        text = button[1],
        callback = function()
            loadstring(game:HttpGet(button[2]))()
        end
    })
end
getgenv().addTab("External Scripts | Admin", tab)
local antiFlingEnabled = false
local antiFlingConnection = nil
local antiVoidEnabled = false
local antiPickUpEnabled = false
local antiAFKEnabled = false
local antiAFKConnection = nil
local antiVoidConnection = nil
getgenv().addTab("Online Protection ", {
    {
        type = "toggle",
        text = "Anti Fling",
        callback = function(value)
            antiFlingEnabled = value
            local character = game.Players.LocalPlayer.Character
            local humanoid = character:WaitForChild("Humanoid")
            if value then
                for _, part in pairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end

                antiFlingConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    for _, part in pairs(character:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end)

                local seat1 = character:FindFirstChild("Seat1")
                if seat1 then seat1:Destroy() end

                local seat2 = character:FindFirstChild("Seat2")
                if seat2 then seat2:Destroy() end

                humanoid.RigType = Enum.HumanoidRigType.R15
            else
                if antiFlingConnection then
                    antiFlingConnection:Disconnect()
                    antiFlingConnection = nil
                end

                for _, part in pairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end

                humanoid.RigType = Enum.HumanoidRigType.R6
            end
        end
    },
    {
        type = "toggle",
        text = "Anti Void",
        callback = function(value)
            antiVoidEnabled = value
            if value then
                local character = game.Players.LocalPlayer.Character
                local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                local originalPosition = humanoidRootPart.CFrame

                antiVoidConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    if humanoidRootPart.Position.Y < -100 then
                        humanoidRootPart.CFrame = originalPosition
                    end
                end)
            else
                if antiVoidConnection then
                    antiVoidConnection:Disconnect()
                    antiVoidConnection = nil
                end
            end
        end
    },
    {
        type = "toggle",
        text = "Anti pick up",
        callback = function(value)
            antiPickUpEnabled = value
            if value then
                game.Players.LocalPlayer.Character.Request.Disabled = true;
            else
                game.Players.LocalPlayer.Character.Request.Disabled = false;
            end
        end
    },
    {
        type = "toggle",
        text = "Anti AFK",
        callback = function(value)
            antiAFKEnabled = value
            if value then
                local VirtualUser = game:GetService("VirtualUser")
                antiAFKConnection = game:GetService("Players").LocalPlayer.Idled:connect(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new())
                end)
            else
                if antiAFKConnection then
                    antiAFKConnection:Disconnect()
                    antiAFKConnection = nil
                end
            end
        end
    },
});
getgenv().addTab("UI configuration", {
    {
        type = 'toggle',
        text = 'Change unfocused tabs transparency',
        state = getgenv().uiConfig.AutoTransparency,
        callback = function(s) getgenv().uiConfig.AutoTransparency = s; end
    },
    {
        type = 'toggle',
        text = 'Blur and color effects',
        state = getgenv().uiConfig.BlurColorEffect,
        callback = function(s) getgenv().uiConfig.BlurColorEffect = s; end
    },
    {
        type = 'colorpicker',
        text = 'Theme color',
        default = getgenv().fRGB(getgenv().uiConfig.ColorTheme),
        callback = function(c)
            local oldColor = theme.accent;
            getgenv().uiConfig.ColorTheme = {r = c.r, g = c.g, b = c.b};
            theme.accent = getgenv().fRGB(getgenv().uiConfig.ColorTheme);
            for _, v in next, getgenv().sGui:GetDescendants() do
                pcall(function()
                    if v.BackgroundColor3 == oldColor then
                        v.BackgroundColor3 =
                            getgenv().fRGB(getgenv().uiConfig.ColorTheme);
                    end
                end);
                pcall(function()
                    if v.BorderColor3 == oldColor then
                        v.BorderColor3 =
                            getgenv().fRGB(getgenv().uiConfig.ColorTheme);
                    end
                end);
            end
        end
    },
    Size = {400, 153}
});
library:New({Title = "syr0nix5257 Wolf Life 3.0", Tabs = tabData});
function giveItem(name)
    if name == nil then return end
    local item
    for i, v in pairs(game:GetService("Workspace").ItemOnes:GetDescendants()) do
        if v.Name == name then item = v end
    end
    if item ~= nil then return fireclickdetector(item.ClickDetector) end
    if name == "Flower" then
        return fireclickdetector(game:GetService("Workspace").Vegetation.Flowers
                                     .Flower.Flower.ClickDetector)
    elseif name == "Potion" then
        fireclickdetector(game:GetService("Workspace").Potions.Potion["HP_2"]
                              .ClickDetector)
    elseif name == "TeddyBear" then
        fireclickdetector(game:GetService("Workspace").GroupedItems.TeddyBear
                              .ClickDetector)
    elseif name == "Stick" then
        fireclickdetector(game:GetService("Workspace").GroupedItems.Stick
                              .ClickDetector)
    elseif name == "Bone" then
        fireclickdetector(game:GetService("Workspace").GroupedItems.Bone
                              .ClickDetector)
    elseif name == "Torch" then
        fireclickdetector(game:GetService("Workspace").GroupedItems.Torch.Handle
                              .ClickDetector)
    elseif name == "Bunny" then
        fireclickdetector(game:GetService("Workspace").Bunnies.Bunny.Hit
                              .ClickDetector)
    end
end
function RandomName()
    spawn(function()
        while task.wait() do
            if not rnn then break end
            wait(0.1)
            local str = math.random(1, 100)
            local A_1 = "\67\104\97\110\103\101\78\97\109\101"
            local A_2 = "aa" .. tostring(math.sqrt(str) ^ 20) .. "aa"
            local A_3 =
                "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    end)
end
function RandomDescription()
    spawn(function()
        while task.wait() do
            if not rnd then break end
            wait(0.1)
            local str = math.random(1, 100)
            local A_1 = "\67\104\97\110\103\101\68\101\115\99"
            local A_2 = "aa" .. tostring(math.sqrt(str) ^ 20) .. "aa"
            local A_3 =
                "\226\128\153\98\37\53\109\226\128\176\125\48\195\138\51\116\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3)
        end
    end)
end
function RainbowWolf()
    spawn(function()
        while task.wait(.01) do
            if not rbwolf then break end
            local AA_1 = "customize"
            local AA_2 = allparts
            local AA_3 = RainbowColour
            local AA_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(AA_1, AA_2, AA_3, AA_4)
        end
    end)
end
function RainbowWings()
    spawn(function()
		while task.wait(.01) do
			if not RWings then break end
			local A_1 = "customize"
			local A_2 = {[1] = "DragonThird", [2] = "DragonPrimary", [3] = "OceanPrimary", [4] = "EyeColor",}
			local A_3 = RainbowColour
			local A_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3, A_4)
        end
	end)
end
function RainbowEyes()
    spawn(function()
        while task.wait(.01) do
            if not rbeye then break end
            local A_1 = "customize"
            local A_2 = {[1] = "EyeColor"}
            local A_3 = RainbowColour
            local A_4 = "Body"
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2, A_3, A_4)
        end
    end)
end
function RainbowParticles()
    spawn(function()
        while task.wait(.01) do
            if not rbspace then break end
            local A_1 = "ColorParticle"
            local A_2 = RainbowColour
            local Event = game:GetService("ReplicatedStorage").MasterKey
            Event:FireServer(A_1, A_2)
        end
    end)
end
function RainbowName()
    spawn(function()
        while task.wait(.01) do
            if not rbname then break end
            local Final = RainbowColour
            local A_1 = "ChangeColor"
            local key =
                "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"
            game:GetService("ReplicatedStorage").MasterKey:FireServer(A_1, {
                Final.R, Final.G, Final.B
            }, key)
        end
    end)
end
function MaterialChange()
    spawn(function()
        while task.wait() do
            if not matchange then break end
            wait(1)
            for i, v in pairs(matdropdown) do
                wait(1)
                local A_1 = "Material"
                local A_2 = v
                local A_3 = allparts
                local Event = game:GetService("ReplicatedStorage").MasterKey
                Event:FireServer(A_1, A_2, A_3)
            end
        end
    end)
end
function SpamPotions()
    spawn(function()
        while task.wait() do
            if not spampotions then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            task.wait(0.1)
            local potionCnts = #game.Workspace.Potions:GetChildren();
            local rand = math.random(1, potionCnts)
            for i, v in pairs(game.Workspace.Potions:GetChildren()) do
                if i == rand then
                    for _, potion in pairs(v:GetChildren()) do
                        if string.find(potion.Name, 'HP') and
                            potion:FindFirstChild('ClickDetector') then
                            fireclickdetector(potion.ClickDetector)
                        end
                    end
                end
            end
        end
    end)
end
function SpamLights()
    spawn(function()
        while task.wait() do
            if not spamlight then break end
            task.wait(0.5)
            for i, v in pairs(
                            game:GetService("Workspace").Models.Campfires:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                end
            end
            for i, e in pairs(
                            game:GetService("Workspace").Models.CandlesSticks:GetDescendants()) do
                if e:IsA("ClickDetector") then
                    fireclickdetector(e)
                end
            end
            for i, r in pairs(
                            game:GetService("Workspace").Models.Lanterns:GetDescendants()) do
                if r:IsA("ClickDetector") then
                    fireclickdetector(r)
                end
            end
        end
    end)
end
function SpamFlowers()
    spawn(function()
        while task.wait() do
            if not spamflowers then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            task.wait(0.1)
            local flowerCnts = #game.Workspace.Vegetation.Flowers:GetChildren();
            local rand = math.random(1, flowerCnts)
            for i, v in pairs(game.Workspace.Vegetation.Flowers:GetChildren()) do
                if i == rand then
                    for _, flower in pairs(v:GetChildren()) do
                        if string.find(flower.Name, 'Flower') and
                            flower:FindFirstChild('ClickDetector') then
                            fireclickdetector(flower.ClickDetector)
                        end
                    end
                end
            end
        end
    end)
end
function SpamTorches()
    spawn(function()
        while task.wait() do
            if not spamtorches then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").GroupedItems.Torch
                                  .Handle.ClickDetector)
        end
    end)
end
function SpamBunnies()
    spawn(function()
        while task.wait() do
            if not spambunnies then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").Bunnies.Bunny.Hit
                                  .ClickDetector)
        end
    end)
end
function SpamTeddies()
    spawn(function()
        while task.wait() do
            if not spamteddies then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").GroupedItems
                                  .TeddyBear.ClickDetector)
        end
    end)
end
function SpamBones()
    spawn(function()
        while task.wait() do
            if not spambones then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").GroupedItems.Bone
                                  .ClickDetector)
        end
    end)
end
function SpamSticks()
    spawn(function()
        while task.wait() do
            if not spamsticks then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").GroupedItems.Stick
                                  .ClickDetector)
        end
    end)
end
function SpamRabbit()
    spawn(function()
        while task.wait() do
            if not spamrabbit then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(
                game:GetService("Workspace").ItemOnes["Raw Rabbit"]
                    .ClickDetector)
        end
    end)
end
function SpamVenison()
    spawn(function()
        while task.wait() do
            if not spamvenison then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(
                game:GetService("Workspace").ItemOnes["Raw Venison"]
                    .ClickDetector)
        end
    end)
end
function SpamChickenLeg()
    spawn(function()
        while task.wait() do
            if not spamcleg then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(
                game:GetService("Workspace").ItemOnes["Raw Chicken Leg"]
                    .ClickDetector)
        end
    end)
end
function SpamChickenBreast()
    spawn(function()
        while task.wait() do
            if not spamcbreast then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(
                game:GetService("Workspace").ItemOnes["Raw Chicken Breast"]
                    .ClickDetector)
        end
    end)
end
function SpamFish()
    spawn(function()
        while task.wait() do
            if not spamfish then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").ItemOnes["Raw Fish"]
                                  .ClickDetector)
        end
    end)
end
function SpamPork()
    spawn(function()
        while task.wait() do
            if not spampork then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(
                game:GetService("Workspace").ItemOnes["Raw Porkchop"]
                    .ClickDetector)
        end
    end)
end
function SpamBeef()
    spawn(function()
        while task.wait() do
            if not spambeef then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").ItemOnes["Raw Beef"]
                                  .ClickDetector)
        end
    end)
end
function SpamFootBalls()
    spawn(function()
        while task.wait() do
            if not spamfballs then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").ItemOnes.Football
                                  .ClickDetector)
        end
    end)
end
function SpamBalls()
    spawn(function()
        while task.wait() do
            if not spamballs then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            wait(0.1)
            fireclickdetector(game:GetService("Workspace").ItemOnes.Ball
                                  .ClickDetector)
        end
    end)
end
function SpamDucks()
    spawn(function()
        while task.wait() do
            if not spamducks then break end
            local A_1 = "Drop"
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            task.wait(0.01)
            fireclickdetector(game:GetService("Workspace").ItemOnes.Duck
                                  .ClickDetector)
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            task.wait(0.01)
            fireclickdetector(game:GetService("Workspace").ItemOnes.Duck
                                  .ClickDetector)
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            task.wait(0.01)
            fireclickdetector(game:GetService("Workspace").ItemOnes.Duck
                                  .ClickDetector)
            game:GetService("ReplicatedStorage").MasterKey2:FireServer(A_1)
            task.wait(0.01)
            fireclickdetector(game:GetService("Workspace").ItemOnes.Duck
                                  .ClickDetector)
        end
    end)
end