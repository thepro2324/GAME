local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ori_dev_script"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- הפאנל הראשי
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0.35, 0, 0.68, 0) 
frame.Position = UDim2.new(0.325, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.ClipsDescendants = false

local uiCorner = Instance.new("UICorner")
uiCorner.Parent = frame
uiCorner.CornerRadius = UDim.new(0.05, 0)

local border = Instance.new("UIStroke")
border.Parent = frame
border.Color = Color3.new(1, 1, 1)
border.Thickness = 2
border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- כותרת
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(0.6, 0, 0.1, 0)
title.Position = UDim2.new(0.05, 0, 0.02, 0)
title.Text = "ori_dev_script"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.SourceSansBold
title.BackgroundTransparency = 1
title.TextStrokeTransparency = 0
title.TextStrokeColor3 = Color3.new(0, 0, 0)

-- שורת קרדיט
local creditLabel = Instance.new("TextLabel")
creditLabel.Parent = frame
creditLabel.Size = UDim2.new(1, 0, 0.05, 0)
creditLabel.Position = UDim2.new(0, 0, 0.93, 0)
creditLabel.Text = "Created by ori_dev"
creditLabel.TextColor3 = Color3.new(0.6, 0.6, 0.6)
creditLabel.TextScaled = true
creditLabel.Font = Enum.Font.SourceSansItalic
creditLabel.BackgroundTransparency = 1

---------------------------------------------------------
-- כפתורי הקטנה וסגירה
---------------------------------------------------------
local minimizeButton = Instance.new("TextButton")
minimizeButton.Parent = frame
minimizeButton.Size = UDim2.new(0.08, 0, 0.08, 0)
minimizeButton.Position = UDim2.new(0.78, 0, 0.03, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextScaled = true
Instance.new("UICorner", minimizeButton).CornerRadius = UDim.new(0.3, 0)

local closeButton = Instance.new("TextButton")
closeButton.Parent = frame
closeButton.Size = UDim2.new(0.08, 0, 0.08, 0)
closeButton.Position = UDim2.new(0.88, 0, 0.03, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 0.3, 0.3)
closeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextScaled = true
Instance.new("UICorner", closeButton).CornerRadius = UDim.new(0.3, 0)

---------------------------------------------------------
-- מערכת קטגוריות
---------------------------------------------------------
local targetTabButton = Instance.new("TextButton")
targetTabButton.Parent = frame
targetTabButton.Size = UDim2.new(0.45, 0, 0.08, 0)
targetTabButton.Position = UDim2.new(0.04, 0, 0.15, 0)
targetTabButton.Text = "Target"
targetTabButton.TextColor3 = Color3.new(1, 1, 1)
targetTabButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
targetTabButton.Font = Enum.Font.SourceSansBold
targetTabButton.TextScaled = true
Instance.new("UICorner", targetTabButton).CornerRadius = UDim.new(0.2, 0)

local playerTabButton = Instance.new("TextButton")
playerTabButton.Parent = frame
playerTabButton.Size = UDim2.new(0.45, 0, 0.08, 0)
playerTabButton.Position = UDim2.new(0.51, 0, 0.15, 0)
playerTabButton.Text = "Player"
playerTabButton.TextColor3 = Color3.new(0.7, 0.7, 0.7)
playerTabButton.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
playerTabButton.Font = Enum.Font.SourceSansBold
playerTabButton.TextScaled = true
Instance.new("UICorner", playerTabButton).CornerRadius = UDim.new(0.2, 0)

local targetGroup = Instance.new("Frame")
targetGroup.Parent = frame
targetGroup.Size = UDim2.new(1, 0, 0.65, 0)
targetGroup.Position = UDim2.new(0, 0, 0.25, 0)
targetGroup.BackgroundTransparency = 1

-- פריים גולל (ScrollingFrame)
local playerGroup = Instance.new("ScrollingFrame")
playerGroup.Parent = frame
playerGroup.Size = UDim2.new(1, 0, 0.65, 0)
playerGroup.Position = UDim2.new(0, 0, 0.25, 0)
playerGroup.BackgroundTransparency = 1
playerGroup.Visible = false
playerGroup.ScrollBarThickness = 6
playerGroup.BorderSizePixel = 0
playerGroup.CanvasSize = UDim2.new(0, 0, 1.8, 0)

---------------------------------------------------------
-- אלמנטים TARGET
---------------------------------------------------------
local textBox = Instance.new("TextBox")
textBox.Parent = targetGroup
textBox.Size = UDim2.new(0.8, 0, 0.12, 0)
textBox.Position = UDim2.new(0.1, 0, 0.1, 0)
textBox.PlaceholderText = "Target Nickname"
textBox.Text = ""
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
textBox.BackgroundTransparency = 0.5
textBox.Font = Enum.Font.SourceSans
textBox.TextScaled = true
textBox.ClearTextOnFocus = false
Instance.new("UICorner", textBox).CornerRadius = UDim.new(0.1, 0)

local searchResultsFrame = Instance.new("ScrollingFrame")
searchResultsFrame.Parent = targetGroup
searchResultsFrame.Size = UDim2.new(0.8, 0, 0.35, 0)
searchResultsFrame.Position = UDim2.new(0.1, 0, 0.24, 0)
searchResultsFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
searchResultsFrame.BackgroundTransparency = 0.1
searchResultsFrame.BorderSizePixel = 0
searchResultsFrame.Visible = false
searchResultsFrame.ScrollBarThickness = 5
searchResultsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
Instance.new("UICorner", searchResultsFrame).CornerRadius = UDim.new(0.05, 0)

local searchListLayout = Instance.new("UIListLayout")
searchListLayout.Parent = searchResultsFrame
searchListLayout.SortOrder = Enum.SortOrder.LayoutOrder
searchListLayout.Padding = UDim.new(0, 2)

local startButton = Instance.new("TextButton")
startButton.Parent = targetGroup
startButton.Size = UDim2.new(0.7, 0, 0.18, 0)
startButton.Position = UDim2.new(0.15, 0, 0.68, 0)
startButton.Text = "Start Targeter"
startButton.TextColor3 = Color3.new(1, 1, 1)
startButton.BackgroundColor3 = Color3.new(0.1, 0.5, 0.1)
startButton.BackgroundTransparency = 0.3
startButton.Font = Enum.Font.SourceSansBold
startButton.TextScaled = true
Instance.new("UICorner", startButton).CornerRadius = UDim.new(0.1, 0)

---------------------------------------------------------
-- אלמנטים PLAYER
---------------------------------------------------------
local infiniteJumpEnabled = false
local walkSpeedValue = 16
local jumpPowerValue = 50
local flySpeed = 60 

local function createToggleButton(name, textOn, textOff, posX, posY, sizeX, sizeY)
    local btn = Instance.new("TextButton")
    btn.Parent = playerGroup
    btn.Size = UDim2.new(sizeX, 0, sizeY, 0)
    btn.Position = UDim2.new(posX, 0, posY, 0)
    btn.Text = textOff
    btn.TextColor3 = Color3.new(1, 0.3, 0.3)
    btn.BackgroundColor3 = Color3.new(0.18, 0.18, 0.18)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextScaled = true
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0.15, 0)
    return btn
end

local infJumpButton = createToggleButton("InfJump", "Inf Jump: ON", "Inf Jump: OFF", 0.06, 0.02, 0.42, 0.06)
local flyButton = createToggleButton("Fly", "Fly: ON", "Fly: OFF", 0.52, 0.02, 0.42, 0.06)

local espButton = createToggleButton("ESP", "ESP: ON", "ESP: OFF", 0.06, 0.09, 0.42, 0.06)
local noclipButton = createToggleButton("Noclip", "Noclip: ON", "Noclip: OFF", 0.52, 0.09, 0.42, 0.06)

local oxygenButton = createToggleButton("Oxygen", "Inf Oxygen: ON", "Inf Oxygen: OFF", 0.06, 0.16, 0.42, 0.06)
local invisibleButton = createToggleButton("Invisible", "Invisible: ON", "Invisible: OFF", 0.52, 0.16, 0.42, 0.06)

local ctrlClickButton = createToggleButton("CtrlClick", "Ctrl+Click TP: ON", "Ctrl+Click TP: OFF", 0.06, 0.23, 0.42, 0.06)
local antiRagdollButton = createToggleButton("AntiRagdoll", "Anti-Ragdoll: ON", "Anti-Ragdoll: OFF", 0.52, 0.23, 0.42, 0.06)

---------------------------------------------------------
-- פונקציה לייצור סליידרים
---------------------------------------------------------
local function createSlider(parent, labelText, min, max, default, posY)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.Size = UDim2.new(0.88, 0, 0.04, 0)
    label.Position = UDim2.new(0.06, 0, posY, 0)
    label.Text = labelText .. ": " .. default
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left

    local bgFrame = Instance.new("Frame")
    bgFrame.Parent = parent
    bgFrame.Size = UDim2.new(0.88, 0, 0.018, 0)
    bgFrame.Position = UDim2.new(0.06, 0, posY + 0.045, 0)
    bgFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    bgFrame.BorderSizePixel = 0
    Instance.new("UICorner", bgFrame).CornerRadius = UDim.new(0.5, 0)

    local sliderNode = Instance.new("Frame")
    sliderNode.Parent = bgFrame
    local startPerc = math.clamp((default - min) / (max - min), 0, 1)
    sliderNode.Size = UDim2.new(0.03, 0, 2.5, 0)
    sliderNode.Position = UDim2.new(startPerc, 0, -0.75, 0)
    sliderNode.BackgroundColor3 = Color3.new(1, 1, 1)
    sliderNode.BorderSizePixel = 0
    Instance.new("UICorner", sliderNode).CornerRadius = UDim.new(0.5, 0)

    return label, bgFrame, sliderNode
end

local speedLabel, speedBg, speedSlider = createSlider(playerGroup, "WalkSpeed", 16, 2000, 16, 0.32)
local jumpLabel, jumpBg, jumpSlider = createSlider(playerGroup, "JumpPower", 50, 5000, 50, 0.43)
local flyLabel, flyBg, flySlider = createSlider(playerGroup, "Fly Speed", 10, 2000, 60, 0.54)

---------------------------------------------------------
-- לוגיקה כללית וניהול סגירה
---------------------------------------------------------
local isMinimized = false
local originalSize = frame.Size
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local playerObj = game.Players.LocalPlayer

local function removeAllESP()
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p.Character and p.Character:FindFirstChild("ESPHighlight") then
            p.Character.ESPHighlight:Destroy()
        end
    end
end

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        frame.Size = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, 0, 45) 
        targetGroup.Visible = false
        playerGroup.Visible = false
        targetTabButton.Visible = false
        playerTabButton.Visible = false
        creditLabel.Visible = false
        minimizeButton.Text = "+"
        searchResultsFrame.Visible = false
    else
        frame.Size = originalSize
        minimizeButton.Text = "-"
        targetTabButton.Visible = true
        playerTabButton.Visible = true
        creditLabel.Visible = true
        if targetTabButton.TextColor3 == Color3.new(1, 1, 1) then
            targetGroup.Visible = true
        else
            playerGroup.Visible = true
        end
    end
end)

closeButton.MouseButton1Click:Connect(function()
    _G.Flying = false 
    isTeleporting = false
    _G.ESP_Enabled = false
    _G.Noclip = false
    _G.InfOxygen = false
    _G.CtrlClickTP = false
    _G.AntiRagdoll = false
    removeAllESP()
    screenGui:Destroy()
end)

targetTabButton.MouseButton1Click:Connect(function()
    if isMinimized then return end
    targetGroup.Visible = true
    playerGroup.Visible = false
    targetTabButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
    targetTabButton.TextColor3 = Color3.new(1, 1, 1)
    playerTabButton.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    playerTabButton.TextColor3 = Color3.new(0.7, 0.7, 0.7)
end)

playerTabButton.MouseButton1Click:Connect(function()
    if isMinimized then return end
    playerGroup.Visible = true
    targetGroup.Visible = false
    playerTabButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
    playerTabButton.TextColor3 = Color3.new(1, 1, 1)
    targetTabButton.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    targetTabButton.TextColor3 = Color3.new(0.7, 0.7, 0.7)
    searchResultsFrame.Visible = false
end)

local function updateSearchResults()
    for _, child in ipairs(searchResultsFrame:GetChildren()) do
        if child:IsA("TextButton") then child:Destroy() end
    end
    local text = textBox.Text
    if text == "" then searchResultsFrame.Visible = false return end
    local matches = {}
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Name:lower():find(text:lower()) then
            table.insert(matches, p.Name)
        end
    end
    if #matches > 0 then
        searchResultsFrame.Visible = true
        searchResultsFrame.CanvasSize = UDim2.new(0, 0, 0, #matches * 25)
        for i, name in ipairs(matches) do
            local btn = Instance.new("TextButton")
            btn.Parent = searchResultsFrame
            btn.Size = UDim2.new(1, 0, 0, 23)
            btn.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
            btn.BorderSizePixel = 0
            btn.Text = " " .. name
            btn.TextColor3 = Color3.new(1, 1, 1)
            btn.TextXAlignment = Enum.TextXAlignment.Left
            btn.Font = Enum.Font.SourceSans
            btn.TextSize = 14
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 4)
            btn.MouseButton1Click:Connect(function()
                textBox.Text = name
                searchResultsFrame.Visible = false
            end)
        end
    else
        searchResultsFrame.Visible = false
    end
end
textBox:GetPropertyChangedSignal("Text"):Connect(updateSearchResults)

---------------------------------------------------------
-- TARGET LOGIC (ANTI-JITTER FIXED)
---------------------------------------------------------
local isTeleporting = false
local targetPlayer = nil
local targetConnection = nil

local function stopTargeting()
    isTeleporting = false
    if targetConnection then targetConnection:Disconnect() targetConnection = nil end
    startButton.Text = "Start Targeter"
    startButton.BackgroundColor3 = Color3.new(0.1, 0.5, 0.1)
    
    local localChar = game.Players.LocalPlayer.Character
    if localChar then
        local localRootPart = localChar:FindFirstChild("HumanoidRootPart")
        local humanoid = localChar:FindFirstChildOfClass("Humanoid")
        if localRootPart then
            localRootPart.Anchored = true
            localRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            localRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
            if humanoid then humanoid:ChangeState(Enum.HumanoidStateType.Running) end
            task.wait(0.05)
            localRootPart.Anchored = false
        end
    end
end

startButton.MouseButton1Click:Connect(function()
    if isTeleporting then
        stopTargeting()
    else
        local targetName = textBox.Text
        targetPlayer = game.Players:FindFirstChild(targetName)
        if not targetPlayer then
            for _, p in ipairs(game.Players:GetPlayers()) do
                if p.Name:lower():find(targetName:lower()) and p ~= game.Players.LocalPlayer then
                    targetPlayer = p break
                end
            end
        end
        if targetPlayer then
            isTeleporting = true
            searchResultsFrame.Visible = false
            startButton.Text = "Stop Targeter"
            startButton.BackgroundColor3 = Color3.new(0.6, 0.1, 0.1)
            
            targetConnection = RunService.Heartbeat:Connect(function()
                if not isTeleporting or not targetPlayer or not game.Players:FindFirstChild(targetPlayer.Name) then
                    stopTargeting() return
                end
                local localChar = game.Players.LocalPlayer.Character
                local targetChar = targetPlayer.Character
                if localChar and targetChar then
                    local targetRootPart = targetChar:FindFirstChild("HumanoidRootPart")
                    local localRootPart = localChar:FindFirstChild("HumanoidRootPart")
                    local humanoid = localChar:FindFirstChildOfClass("Humanoid")
                    
                    if targetRootPart and localRootPart then
                        localRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        localRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                        if humanoid then humanoid:ChangeState(Enum.HumanoidStateType.Physics) end
                        for _, myPart in ipairs(localChar:GetDescendants()) do
                            if myPart:IsA("BasePart") then myPart.CanCollide = false end
                        end
                        localRootPart.CFrame = targetRootPart.CFrame * CFrame.new(0, 0, 3.5)
                    end
                end
            end)
        else
            startButton.Text = "Player Not Found"
            task.wait(1)
            if not isTeleporting then startButton.Text = "Start Targeter" end
        end
    end
end)

---------------------------------------------------------
-- לוגיקת סליידרים משולבת (Speed, Jump, Fly)
---------------------------------------------------------
local activeSlider = nil
local activeSliderType = nil

local function updateSliderPosition(input, bgFrame, sliderNode, min, max, labelText)
    local percentage = math.clamp((input.Position.X - bgFrame.AbsolutePosition.X) / bgFrame.AbsoluteSize.X, 0, 1)
    sliderNode.Position = UDim2.new(percentage, -sliderNode.AbsoluteSize.X/2, -0.75, 0)
    local finalVal = math.round(min + (percentage * (max - min)))
    
    if activeSliderType == "Speed" then
        walkSpeedValue = finalVal
        speedLabel.Text = labelText .. ": " .. walkSpeedValue
        if playerObj.Character and playerObj.Character:FindFirstChildOfClass("Humanoid") then
            playerObj.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = walkSpeedValue
        end
    elseif activeSliderType == "Jump" then
        jumpPowerValue = finalVal
        jumpLabel.Text = labelText .. ": " .. jumpPowerValue
        if playerObj.Character and playerObj.Character:FindFirstChildOfClass("Humanoid") then
            local humanoid = playerObj.Character:FindFirstChildOfClass("Humanoid")
            humanoid.UseJumpPower = true
            humanoid.JumpPower = jumpPowerValue
        end
    elseif activeSliderType == "Fly" then
        flySpeed = finalVal
        flyLabel.Text = labelText .. ": " .. flySpeed
    end
end

speedBg.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        activeSlider = speedBg activeSliderType = "Speed"
        updateSliderPosition(input, speedBg, speedSlider, 16, 2000, "WalkSpeed")
    end
end)

jumpBg.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        activeSlider = jumpBg activeSliderType = "Jump"
        updateSliderPosition(input, jumpBg, jumpSlider, 50, 5000, "JumpPower")
    end
end)

flyBg.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        activeSlider = flyBg activeSliderType = "Fly"
        updateSliderPosition(input, flyBg, flySlider, 10, 2000, "Fly Speed")
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if activeSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        if activeSliderType == "Speed" then updateSliderPosition(input, speedBg, speedSlider, 16, 2000, "WalkSpeed")
        elseif activeSliderType == "Jump" then updateSliderPosition(input, jumpBg, jumpSlider, 50, 5000, "JumpPower")
        elseif activeSliderType == "Fly" then updateSliderPosition(input, flyBg, flySlider, 10, 2000, "Fly Speed") end
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        activeSlider = nil activeSliderType = nil
    end
end)

playerObj.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = walkSpeedValue
    humanoid.UseJumpPower = true
    humanoid.JumpPower = jumpPowerValue
end)

---------------------------------------------------------
-- פיצ'רים מתקדמים - ביצועים והפעלות (ON/OFF)
---------------------------------------------------------

-- 1. Inf Jump
infJumpButton.MouseButton1Click:Connect(function()
    infiniteJumpEnabled = not infiniteJumpEnabled
    infJumpButton.Text = infiniteJumpEnabled and "Inf Jump: ON" or "Inf Jump: OFF"
    infJumpButton.TextColor3 = infiniteJumpEnabled and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
end)
UserInputService.JumpRequest:Connect(function()
    if infiniteJumpEnabled and playerObj.Character and playerObj.Character:FindFirstChildOfClass("Humanoid") then
        playerObj.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- 2. NOCLIP
_G.Noclip = false
noclipButton.MouseButton1Click:Connect(function()
    _G.Noclip = not _G.Noclip
    noclipButton.Text = _G.Noclip and "Noclip: ON" or "Noclip: OFF"
    noclipButton.TextColor3 = _G.Noclip and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
end)
RunService.Stepped:Connect(function()
    if _G.Noclip and playerObj.Character then
        for _, part in ipairs(playerObj.Character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end)

-- 3. INF OXYGEN
_G.InfOxygen = false
oxygenButton.MouseButton1Click:Connect(function()
    _G.InfOxygen = not _G.InfOxygen
    oxygenButton.Text = _G.InfOxygen and "Inf Oxygen: ON" or "Inf Oxygen: OFF"
    oxygenButton.TextColor3 = _G.InfOxygen and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
end)
task.spawn(function()
    while true do
        if _G.InfOxygen and playerObj.Character then
            local hum = playerObj.Character:FindFirstChildOfClass("Humanoid")
            if hum and hum:GetAttribute("Oxygen") then hum:SetAttribute("Oxygen", 100) end
        end
        task.wait(0.5)
    end
end)

-- 4. CHARACTER CLONE INVISIBLE SYSTEM (שיטת אינפיניט יילד - חלקה לחלוטין)
local invisibleActive = false
local charClone = nil
local invisibleLoop = nil

invisibleButton.MouseButton1Click:Connect(function()
    invisibleActive = not invisibleActive
    invisibleButton.Text = invisibleActive and "Invisible: ON" or "Invisible: OFF"
    invisibleButton.TextColor3 = invisibleActive and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
    
    local player = game.Players.LocalPlayer
    local realChar = player.Character
    if not realChar then return end
    
    local realRoot = realChar:FindFirstChild("HumanoidRootPart")
    local realHum = realChar:FindFirstChildOfClass("Humanoid")
    local camera = workspace.CurrentCamera
    
    if invisibleActive then
        if realRoot and realHum then
            realChar.Archivable = true
            charClone = realChar:Clone()
            charClone.Name = "ori_invisible_clone"
            charClone.Parent = workspace
            
            -- הגדרת קלון מקומי נראה לעין השחקן בלבד
            for _, part in ipairs(charClone:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                    part.Transparency = 0.3 -- שקיפות קלה כדי שתדע שאתה בלתי נראה
                end
            end
            
            -- העלמת הדמות האמיתית מהשרת ושיגור למטה
            for _, part in ipairs(realChar:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 1
                    part.CanCollide = false
                elseif part:IsA("Decal") then
                    part.Transparency = 1
                end
            end
            
            camera.CameraSubject = charClone:FindFirstChildOfClass("Humanoid")
            realHum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            
            -- לולאת סנכרון תנועה חלקה (ללא רעידות בכלל)
            invisibleLoop = RunService.Heartbeat:Connect(function()
                if not invisibleActive or not realChar or not realRoot or not charClone then
                    if invisibleLoop then invisibleLoop:Disconnect() end
                    return
                end
                
                -- הדמות האמיתית עוקבת אחרי המיקום של הקלון הפיזיקלי אך נמצאת עמוק מתחתיו
                local cloneRoot = charClone:FindFirstChild("HumanoidRootPart")
                if cloneRoot then
                    realRoot.AssemblyLinearVelocity = Vector3.new(0,0,0)
                    realRoot.AssemblyAngularVelocity = Vector3.new(0,0,0)
                    realRoot.CFrame = cloneRoot.CFrame * CFrame.new(0, -500, 0)
                    
                    -- קריאת כיוון התנועה מהמקלדת והעברה לקלון
                    local moveDirection = realHum.MoveDirection
                    local cloneHum = charClone:FindFirstChildOfClass("Humanoid")
                    if cloneHum then
                        cloneHum:Move(moveDirection, false)
                        if UserInputService:IsKeyDown(Enum.KeyCode.Space) and cloneRoot.Position.Y < 500 then
                            cloneHum.Jump = true
                        end
                    end
                end
            end)
        end
    else
        -- ביטול הציט וחזרה חלקה למפה
        if invisibleLoop then invisibleLoop:Disconnect() invisibleLoop = nil end
        
        if charClone then
            local cloneRoot = charClone:FindFirstChild("HumanoidRootPart")
            if cloneRoot and realRoot then
                realChar:PivotTo(cloneRoot.CFrame)
            end
            charClone:Destroy()
            charClone = nil
        end
        
        if realChar and realRoot and realHum then
            realRoot.AssemblyLinearVelocity = Vector3.new(0,0,0)
            realRoot.AssemblyAngularVelocity = Vector3.new(0,0,0)
            
            for _, part in ipairs(realChar:GetDescendants()) do
                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                    part.CanCollide = true
                    part.Transparency = 0
                elseif part:IsA("Decal") then
                    part.Transparency = 0
                end
            end
            
            camera.CameraSubject = realHum
            realHum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
            realHum:ChangeState(Enum.HumanoidStateType.Running)
        end
    end
end)

-- 5. CTRL + CLICK TELEPORT
_G.CtrlClickTP = false
ctrlClickButton.MouseButton1Click:Connect(function()
    _G.CtrlClickTP = not _G.CtrlClickTP
    ctrlClickButton.Text = _G.CtrlClickTP and "Ctrl+Click TP: ON" or "Ctrl+Click TP: OFF"
    ctrlClickButton.TextColor3 = _G.CtrlClickTP and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
end)
local mouse = playerObj:GetMouse()
mouse.Button1Down:Connect(function()
    if _G.CtrlClickTP and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and mouse.Target then
        local char = playerObj.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            local targetPos = mouse.Hit.Position + Vector3.new(0, 3, 0)
            if invisibleActive and charClone then
                local cloneRoot = charClone:FindFirstChild("HumanoidRootPart")
                if cloneRoot then cloneRoot.CFrame = CFrame.new(targetPos) end
            else
                char.HumanoidRootPart.CFrame = CFrame.new(targetPos)
            end
        end
    end
end)

-- 6. ANTI-RAGDOLL
_G.AntiRagdoll = false
antiRagdollButton.MouseButton1Click:Connect(function()
    _G.AntiRagdoll = not _G.AntiRagdoll
    antiRagdollButton.Text = _G.AntiRagdoll and "Anti-Ragdoll: ON" or "Anti-Ragdoll: OFF"
    antiRagdollButton.TextColor3 = _G.AntiRagdoll and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
end)
task.spawn(function()
    while true do
        if _G.AntiRagdoll and playerObj.Character then
            local hum = playerObj.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
                hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            end
        end
        task.wait(0.5)
    end
end)

-- 7. SUPER FAST RESPAWN
game:GetService("Players").LocalPlayer.CharacterRemoving:Connect(function()
    if playerObj then
        task.defer(function()
            playerObj:SetAttribute("RespawnTime", 0.1)
        end)
    end
end)

---------------------------------------------------------
-- מערכת ESP HIGHLIGHT
---------------------------------------------------------
_G.ESP_Enabled = false
local function addESP(p)
    if p == game.Players.LocalPlayer then return end
    local function applyHighlight(character)
        if not _G.ESP_Enabled then return end
        if character:FindFirstChild("ESPHighlight") then return end
        local highlight = Instance.new("Highlight")
        highlight.Name = "ESPHighlight"
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
        highlight.FillTransparency = 0.5
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.Adornee = character
        highlight.Parent = character
    end
    if p.Character then applyHighlight(p.Character) end
    p.CharacterAdded:Connect(applyHighlight)
end

espButton.MouseButton1Click:Connect(function()
    _G.ESP_Enabled = not _G.ESP_Enabled
    espButton.Text = _G.ESP_Enabled and "ESP: ON" or "ESP: OFF"
    espButton.TextColor3 = _G.ESP_Enabled and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
    if _G.ESP_Enabled then
        for _, p in ipairs(game.Players:GetPlayers()) do addESP(p) end
    else
        removeAllESP()
    end
end)
game.Players.PlayerAdded:Connect(function(p) if _G.ESP_Enabled then addESP(p) end end)

---------------------------------------------------------
-- FLY LOGIC
---------------------------------------------------------
_G.Flying = false
flyButton.MouseButton1Click:Connect(function()
    _G.Flying = not _G.Flying
    flyButton.Text = _G.Flying and "Fly: ON" or "Fly: OFF"
    flyButton.TextColor3 = _G.Flying and Color3.new(0.3, 1, 0.3) or Color3.new(1, 0.3, 0.3)
    
    if _G.Flying then
        task.spawn(function()
            local character = playerObj.Character or playerObj.CharacterAdded:Wait()
            local root = character:WaitForChild("HumanoidRootPart")
            local humanoid = character:WaitForChild("Humanoid")
            local camera = workspace.CurrentCamera
            local bv = Instance.new("BodyVelocity")
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.Velocity = Vector3.new(0, 0, 0)
            bv.Parent = root
            local bg = Instance.new("BodyGyro")
            bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            bg.CFrame = root.CFrame
            bg.Parent = root
            humanoid.PlatformStand = true
            
            local keys = {W = false, S = false, A = false, D = false, Space = false, LeftShift = false}
            local con1 = UserInputService.InputBegan:Connect(function(input, gpe)
                if gpe then return end
                if input.KeyCode == Enum.KeyCode.W then keys.W = true
                elseif input.KeyCode == Enum.KeyCode.S then keys.S = true
                elseif input.KeyCode == Enum.KeyCode.A then keys.A = true
                elseif input.KeyCode == Enum.KeyCode.D then keys.D = true
                elseif input.KeyCode == Enum.KeyCode.Space then keys.Space = true
                elseif input.KeyCode == Enum.KeyCode.LeftShift then keys.LeftShift = true end
            end)
            local con2 = UserInputService.InputEnded:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.W then keys.W = false
                elseif input.KeyCode == Enum.KeyCode.S then keys.S = false
                elseif input.KeyCode == Enum.KeyCode.A then keys.A = false
                elseif input.KeyCode == Enum.KeyCode.D then keys.D = false
                elseif input.KeyCode == Enum.KeyCode.Space then keys.Space = false
                elseif input.KeyCode == Enum.KeyCode.LeftShift then keys.LeftShift = false end
            end)
            
            while _G.Flying and root and root.Parent and humanoid and humanoid.Parent do
                local dir = Vector3.new(0, 0, 0)
                if keys.W then dir = dir + camera.CFrame.LookVector end
                if keys.S then dir = dir - camera.CFrame.LookVector end
                if keys.A then dir = dir - camera.CFrame.RightVector end
                if keys.D then dir = dir + camera.CFrame.RightVector end
                if keys.Space then dir = dir + Vector3.new(0, 1, 0) end
                if keys.LeftShift then dir = dir - Vector3.new(0, 1, 0) end
                if dir.Magnitude == 0 and humanoid.MoveDirection.Magnitude > 0 then
                    dir = camera.CFrame:VectorToWorldSpace(Vector3.new(humanoid.MoveDirection.X, 0, humanoid.MoveDirection.Z).Unit)
                end
                if dir.Magnitude > 0 then bv.Velocity = dir.Unit * flySpeed else bv.Velocity = Vector3.new(0, 0, 0) end
                bg.CFrame = camera.CFrame
                task.wait()
            end
            
            con1:Disconnect()con2:Disconnect()
            if bv then bv:Destroy() end
            if bg then bg:Destroy() end
            if root then
                root.Anchored = true
                root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                root.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                if humanoid then humanoid.PlatformStand = false humanoid:ChangeState(Enum.HumanoidStateType.Running) end
                task.wait(0.05)root.Anchored = false
            end
        end)
    end
end)

---------------------------------------------------------
-- DRAGGING
---------------------------------------------------------
local dragging = false
local dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
frame.InputBegan:Connect(function(input)
    if UserInputService:GetFocusedTextBox() then return end
    if playerGroup.Visible and input.Position.Y > playerGroup.AbsolutePosition.Y then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true dragStart = input.Position startPos = frame.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then update(input) end
end)
