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

local playerGroup = Instance.new("Frame")
playerGroup.Parent = frame
playerGroup.Size = UDim2.new(1, 0, 0.65, 0)
playerGroup.Position = UDim2.new(0, 0, 0.25, 0)
playerGroup.BackgroundTransparency = 1
playerGroup.Visible = false

---------------------------------------------------------
-- אלמנטים TARGET
---------------------------------------------------------
local textBox = Instance.new("TextBox")
textBox.Parent = targetGroup
textBox.Size = UDim2.new(0.8, 0, 0.15, 0)
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
searchResultsFrame.Position = UDim2.new(0.1, 0, 0.26, 0)
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
local speedBox = Instance.new("TextBox")
speedBox.Parent = playerGroup
speedBox.Size = UDim2.new(0.8, 0, 0.12, 0)
speedBox.Position = UDim2.new(0.1, 0, 0.02, 0)
speedBox.PlaceholderText = "WalkSpeed (Default: 16)"
speedBox.Text = ""
speedBox.TextColor3 = Color3.new(1, 1, 1)
speedBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
speedBox.BackgroundTransparency = 0.5
speedBox.Font = Enum.Font.SourceSans
speedBox.TextScaled = true
Instance.new("UICorner", speedBox).CornerRadius = UDim.new(0.1, 0)

local jumpBox = Instance.new("TextBox")
jumpBox.Parent = playerGroup
jumpBox.Size = UDim2.new(0.8, 0, 0.12, 0)
jumpBox.Position = UDim2.new(0.1, 0, 0.16, 0)
jumpBox.PlaceholderText = "JumpPower (Default: 50)"
jumpBox.Text = ""
jumpBox.TextColor3 = Color3.new(1, 1, 1)
jumpBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
jumpBox.BackgroundTransparency = 0.5
jumpBox.Font = Enum.Font.SourceSans
jumpBox.TextScaled = true
Instance.new("UICorner", jumpBox).CornerRadius = UDim.new(0.1, 0)

local infJumpButton = Instance.new("TextButton")
infJumpButton.Parent = playerGroup
infJumpButton.Size = UDim2.new(0.8, 0, 0.12, 0)
infJumpButton.Position = UDim2.new(0.1, 0, 0.30, 0)
infJumpButton.Text = "Infinite Jump: OFF"
infJumpButton.TextColor3 = Color3.new(1, 0.3, 0.3)
infJumpButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
infJumpButton.BackgroundTransparency = 0.5
infJumpButton.Font = Enum.Font.SourceSansBold
infJumpButton.TextScaled = true
Instance.new("UICorner", infJumpButton).CornerRadius = UDim.new(0.1, 0)

local flyButton = Instance.new("TextButton")
flyButton.Parent = playerGroup
flyButton.Size = UDim2.new(0.8, 0, 0.12, 0)
flyButton.Position = UDim2.new(0.1, 0, 0.44, 0)
flyButton.Text = "Fly: OFF"
flyButton.TextColor3 = Color3.new(1, 0.3, 0.3)
flyButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
flyButton.BackgroundTransparency = 0.5
flyButton.Font = Enum.Font.SourceSansBold
flyButton.TextScaled = true
Instance.new("UICorner", flyButton).CornerRadius = UDim.new(0.1, 0)

-- Slider
local sliderLabel = Instance.new("TextLabel")
sliderLabel.Parent = playerGroup
sliderLabel.Size = UDim2.new(0.8, 0, 0.08, 0)
sliderLabel.Position = UDim2.new(0.1, 0, 0.58, 0)
sliderLabel.Text = "Fly Speed: 60"
sliderLabel.TextColor3 = Color3.new(1, 1, 1)
sliderLabel.TextScaled = true
sliderLabel.Font = Enum.Font.SourceSansBold
sliderLabel.BackgroundTransparency = 1

local sliderFrame = Instance.new("Frame")
sliderFrame.Parent = playerGroup
sliderFrame.Size = UDim2.new(0.8, 0, 0.04, 0)
sliderFrame.Position = UDim2.new(0.1, 0, 0.68, 0)
sliderFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
sliderFrame.BorderSizePixel = 0
Instance.new("UICorner", sliderFrame).CornerRadius = UDim.new(0.5, 0)

local sliderSlider = Instance.new("Frame")
sliderSlider.Parent = sliderFrame
sliderSlider.Size = UDim2.new(0.025, 0, 2.5, 0)
sliderSlider.Position = UDim2.new(0.025, 0, -0.75, 0)
sliderSlider.BackgroundColor3 = Color3.new(1, 1, 1)
sliderSlider.BorderSizePixel = 0
Instance.new("UICorner", sliderSlider).CornerRadius = UDim.new(0.5, 0)

---------------------------------------------------------
-- לוגיקה כללית
---------------------------------------------------------
local isMinimized = false
local originalSize = frame.Size
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

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
-- TARGET LOGIC (ANTI-JITTER 100% FIXED)
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
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            end
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
                        -- מניעת רעידות: כפיית מצב פיזיקה קשיח ואיפוס מהירויות בכל פריים
                        localRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        localRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                        
                        if humanoid then
                            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
                        end
                        
                        -- מניעת התנגשויות (NoClip) מול המטרה כדי שלא ירעד כשנוגעים בה
                        for _, myPart in ipairs(localChar:GetDescendants()) do
                            if myPart:IsA("BasePart") then 
                                myPart.CanCollide = false 
                            end
                        end
                        
                        -- מיקום מחדש חלק ומדויק מאחורי המטרה
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
-- PLAYER LOGIC (SPEED/JUMP)
---------------------------------------------------------
local player = game.Players.LocalPlayer
local infiniteJumpEnabled = false

speedBox.FocusLost:Connect(function()
    local numericSpeed = tonumber(speedBox.Text)
    if numericSpeed and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = numericSpeed
    end
end)

jumpBox.FocusLost:Connect(function()
    local numericJump = tonumber(jumpBox.Text)
    if numericJump and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        humanoid.UseJumpPower = true
        humanoid.JumpPower = numericJump
    end
end)

player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    local numericSpeed = tonumber(speedBox.Text)
    if numericSpeed then humanoid.WalkSpeed = numericSpeed end
    local numericJump = tonumber(jumpBox.Text)
    if numericJump then humanoid.UseJumpPower = true; humanoid.JumpPower = numericJump end
end)

infJumpButton.MouseButton1Click:Connect(function()
    infiniteJumpEnabled = not infiniteJumpEnabled
    if infiniteJumpEnabled then
        infJumpButton.Text = "Infinite Jump: ON"
        infJumpButton.TextColor3 = Color3.new(0.3, 1, 0.3)
    else
        infJumpButton.Text = "Infinite Jump: OFF"
        infJumpButton.TextColor3 = Color3.new(1, 0.3, 0.3)
    end
end)

UserInputService.JumpRequest:Connect(function()
    if infiniteJumpEnabled and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

---------------------------------------------------------
-- FLY LOGIC (ANTI-JITTER FIXED)
---------------------------------------------------------
_G.Flying = false
local flySpeed = 60 
local minSpeed = 10
local maxSpeed = 2000
local sliderDragging = false

local function updateSlider(input)
    local percentage = math.clamp((input.Position.X - sliderFrame.AbsolutePosition.X) / sliderFrame.AbsoluteSize.X, 0, 1)
    sliderSlider.Position = UDim2.new(percentage, -sliderSlider.AbsoluteSize.X/2, -0.75, 0)
    flySpeed = math.round(minSpeed + (percentage * (maxSpeed - minSpeed)))
    sliderLabel.Text = "Fly Speed: " .. flySpeed
end

sliderFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        sliderDragging = true
        updateSlider(input)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if sliderDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateSlider(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        sliderDragging = false
    end
end)

flyButton.MouseButton1Click:Connect(function()
    _G.Flying = not _G.Flying
    if _G.Flying then
        flyButton.Text = "Fly: ON"
        flyButton.TextColor3 = Color3.new(0.3, 1, 0.3)
        task.spawn(function()
            local character = player.Character or player.CharacterAdded:Wait()
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
            
            con1:Disconnect()
            con2:Disconnect()
            
            if bv then bv:Destroy() end
            if bg then bg:Destroy() end
            
            if root then
                root.Anchored = true
                root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                root.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                
                if humanoid then
                    humanoid.PlatformStand = false
                    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
                
                task.wait(0.05) 
                root.Anchored = false
            end
        end)
    else
        flyButton.Text = "Fly: OFF"
        flyButton.TextColor3 = Color3.new(1, 0.3, 0.3)
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
    if input.Position.Y > sliderFrame.AbsolutePosition.Y - 20 and input.Position.Y < sliderFrame.AbsolutePosition.Y + 20 and playerGroup.Visible then return end
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
