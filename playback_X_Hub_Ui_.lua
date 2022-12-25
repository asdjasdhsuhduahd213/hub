local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("System Key", "GrapeTheme")
local Tab = Window:NewTab("System Key")
local Section = Tab:NewSection("System Key = Key: NoKey")

local SysemKey = {
    "NoKey"
}

Section:NewTextBox("Key", "enter", function(t)
register_key = t
for i,v in pairs(SysemKey) do	
if v == register_key then

shared.LoaderTitle = 'Playback X Hub' -- ใส่ชื่อ
shared.LoaderKeyFrames = {
   [1] = {1, 30}, -- [Time (s), Percentage] 
   [2] = {3, 100} -- [เวลา, เปอร์เซ็น]
}
local Metadata = {
	LoaderData = {
		Name = (shared.LoaderTitle or 'Loader'),
		Colors = shared.LoaderColors or {
			Main = Color3.fromRGB(24, 24, 24),
			Topic = Color3.fromRGB(255, 255, 255),
			Title = Color3.fromRGB(255, 0, 0),
			LoaderBackground = Color3.fromRGB(30, 30, 30),
			LoaderSplash = Color3.fromRGB(255, 0, 0)
		}
	},
	Keyframes = shared.LoaderKeyFrames or {
		[1] = {1, 10}, -- [Time (s), Percentage]
		[2] = {2, 30},
		[3] = {3, 60},
		[4] = {2, 100}
	}
}


local function tweenObject(object, speed, info)
	game.TweenService:Create(object, TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), info):Play()
end
local function createObject(className, properties)
	local instance = Instance.new(className)
	local parent
	for propertyName, propertyValue in pairs(properties) do
		if propertyName ~= "Parent" then
			instance[propertyName] = propertyValue
		else
			parent = propertyValue
		end
	end
	instance.Parent = parent
	return instance
end


local Core = createObject("ScreenGui", {
	Name = "Core",
	Parent = game.CoreGui
})
local Main = createObject("Frame", {
	Name = "Main",
	Parent = Core,
	BackgroundColor3 = Metadata.LoaderData.Colors.Main,
	BorderSizePixel = 0,
	ClipsDescendants = true,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	AnchorPoint = Vector2.new(0.5, 0.5),
	Size = UDim2.new(0, 0, 0, 0),
})
local Top = createObject("TextLabel", {
	Name = "Top",
	TextTransparency = 1,
	Parent = Main,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0, 30, 0, 8),
	Size = UDim2.new(0, 301, 0, 50),
	Font = Enum.Font.Gotham,
	Text = "Loader",
	TextColor3 = Metadata.LoaderData.Colors.Topic,
	TextSize = 10,
	TextXAlignment = Enum.TextXAlignment.Left,
})
local Title = createObject("TextLabel", {
	Name = "Title",
	Parent = Main,
	TextTransparency = 1,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0, 30, 0, 27),
	Size = UDim2.new(0, 301, 0, 46),
	Font = Enum.Font.Gotham,
	RichText = true,
	Text = "<b>" .. Metadata.LoaderData.Name .. "</b>",
	TextColor3 = Metadata.LoaderData.Colors.Title,
	TextSize = 14,
	TextXAlignment = Enum.TextXAlignment.Left,
})
local BG = createObject("Frame", {
	Name = "BG",
	Parent = Main,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Metadata.LoaderData.Colors.LoaderBackground,
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0, 70),
	Size = UDim2.new(0.8500000238418579, 0, 0, 24),
})
local Progress = createObject("Frame", {
	Name = "Progress",
	Parent = BG,
	BackgroundColor3 = Metadata.LoaderData.Colors.LoaderSplash,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Size = UDim2.new(0, 0, 0, 24),
})

local function updatePercentage(percentage)
	tweenObject(Progress, 0.5, {
		Size = UDim2.new((percentage / 100), 0, 0, 24)
	})
end


-- Loader itself
tweenObject(Main, 0.25, {
	Size = UDim2.new(0, 346, 0, 121)
})
wait(0.25)
tweenObject(Top, 0.5, {
	TextTransparency = 0
})
tweenObject(Title, 0.5, {
	TextTransparency = 0
})
tweenObject(BG, 0.5, {
	BackgroundTransparency = 0
})
tweenObject(Progress, 0.5, {
	BackgroundTransparency = 0
})

for i, v in pairs(Metadata.Keyframes) do
	wait(v[1]);
	updatePercentage(v[2])
end
updatePercentage(100)

tweenObject(Top, 0.5, {
	TextTransparency = 1
})
tweenObject(Title, 0.5, {
	TextTransparency = 1
})
tweenObject(BG, 0.5, {
	BackgroundTransparency = 1
})
tweenObject(Progress, 0.5, {
	BackgroundTransparency = 1
})
wait(0.5)
tweenObject(Main, 0.25, {
	Size = UDim2.new(0, 0, 0, 0)
})
wait(0.25);
Core:Destroy()

local StartTab = Instance.new("ScreenGui")
local MainStart = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

StartTab.Name = "StartTab"
StartTab.Parent = game.CoreGui
StartTab.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainStart.Parent = StartTab
MainStart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainStart.Draggable = true
MainStart.AnchorPoint = Vector2.new(0.5,0.5)
MainStart.Position = UDim2.new(0.5, 0, 0.5, 0)
MainStart.Size = UDim2.new(0, 0, 0, 0)

UICorner.Parent = MainStart

MainStart:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.4,true)

local MCNRStart = Instance.new("UICorner")
MCNRStart.Name = "MCNRStart"
MCNRStart.Parent = MainStart


local TopStart = Instance.new("Frame")
TopStart.Name = "TopStart"
TopStart.Parent = MainStart
TopStart.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopStart.Size = UDim2.new(0, 0, 0, 0)

TopStart:TweenSize(UDim2.new(0, 600, 0, 27),"Out","Quad",0.4,true)

local TCNRStart = Instance.new("UICorner")
TCNRStart.Name = "TCNRStart"
TCNRStart.Parent = TopStart

local Name = Instance.new("TextLabel")
Name.Name = "Name"
Name.Parent = TopStart
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0609756112, 0, 0, 0)
Name.Size = UDim2.new(0, 400, 0, 150)
Name.Font = Enum.Font.DenkOne
Name.Text = "Playback X"
Name.TextColor3 = Color3.fromRGB(225, 225, 225)
Name.TextSize = 30.000

local Hub = Instance.new("TextLabel")
Hub.Name = "Hub"
Hub.Parent = TopStart
Hub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Hub.BackgroundTransparency = 1.000
Hub.Position = UDim2.new(0.0609756112, 0, 0, 0)
Hub.Size = UDim2.new(0, 650, 0, 150)
Hub.Font = Enum.Font.DenkOne
Hub.Text = "Hub Start UI"
Hub.TextColor3 = Color3.fromRGB(255, 0, 0)
Hub.TextSize = 30.000

local BTON = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

BTON.Name = "BTON"
BTON.Parent = TopStart
BTON.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BTON.Position = UDim2.new(0, 200, 0, 150)
BTON.Size = UDim2.new(0.3, 0, 3, 0)
BTON.AutoButtonColor = false
BTON.Font = Enum.Font.GothamSemibold
BTON.Text = "Start"
BTON.TextColor3 = Color3.fromRGB(225, 225, 225)
BTON.TextSize = 15.000

UICorner.Parent = BTON

BTON.MouseButton1Down:connect(function()
	game:GetService('TweenService'):Create(
    BTON,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
    {TextColor3 = Color3.fromRGB(0, 0, 0)}
     ):Play() 
     wait(.5)
	game:GetService('TweenService'):Create(
    BTON,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
    {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
     ):Play() 
	wait(1)
	Name:Destroy()
	Hub:Destroy()
	BTON:Destroy()
	MainStart:TweenSize(UDim2.new(0, 0, 0, 0),"Out","Quad",0.4,true)
	TopStart:TweenSize(UDim2.new(0, 0, 0, 0),"Out","Quad",0.4,true)
	wait(1)
	StartTab:Destroy()
------------- // SCR Add \\ ----------------


	
_G.Setting = {
Config = {
    ["WhiteScreen"] = false,
	----// Autofarm \\ ----
    ["Autofarm"] = false,
    ["AutoFarmFast"] = true,
    ["Select Weapon"] = {},
    
    ["Point Mon"] = 1000,
    
    ----// Settings \\ ----
    ["BringMonster"] = true,
    ["FastAttack"] = true,
    ["Auto_Buso"] = true,
    ["Fast_Delay"] = 2,
    ["DeleteDamageFx"] = true,
    ["Rejoint_Team"] = true,
    ["FastAttackPC"] = false,
    
    ----// Stats \\ ----
    ["PointStats"] = 1,
    ["Kaitun"] = false,
    ["DEFE"] = false,
    ["SWRD"] = false,
    ["GUN"] = false,
    ["DVLF"] = false,
    ["MEELEE"] = false,
    
    ----// Boss \\ ----
    ["AutoFarmBoss"] = false,
    ["AutoFarmBossAll"] = false,
    
    ["AutoFarmOrder"] = false,
    ["AutoFarmOrder(Fully)"] = false,
    
    ["Auto Pole"] = false,
    ["AutoSaber"] = false,
    
    ["Auto Buddy Swords"] = false,
    ["Auto Buddy Swords Hop"] = false,
    ["Auto Farm Boss Hallow"] = false,
    ["Auto Elite Hunter"] = false,
    ["Auto Elite Hunter Hop"] = false,
    
    ----// FarmKen \\ ----
    
    ["Autofarmken"] = false,
    ["AutoFarmKenHob"] = false,
    
    ---- // Bone \\ ----
    
    ["AutoFarmBone"] = false,
    ["RadomBone"] = false,
    
    ---- // ต่างๆ \\ ---
    ["AutoHolyTorch"] = false,
    ["AutoBartilo"] = false,
	["Auto Buy Legendary Sword"] = false,
	["AutoRaceV2"] = false,
	["AutoRengoku"] = false,
	["Auto Buy Enchanment Haki"] = false,
    
    ----// TP \\ ----
    ["SelectIsland"] = {},
    ["TeleportIsland"] = false,
    
    ----- // Fighting \\ ---
    ["AutoFullySuperhuman"] = false,
    ["AutoSuperhuman"] = false,
    ["AutoGodhuman"] = false,
    ["AutoSharkman"] = false,
    ["AutoDeathStep"] = false,
    ["AutoElectricClaw"] = false,
    ["AutoDragonTalon"] = false,
    
    ---- // Aimbot \\ ---
    ["SelectedKillPlayer"] = {},
    ["Skillaimbot"] = false,
    ["AimbotGun"] = false,
},
}

_G.Color = Color3.fromRGB(255, 0, 0)
repeat wait(1) until game:IsLoaded()

do
	local ui = game.CoreGui:FindFirstChild("RippleHUBLIB")
	if ui then
		ui:Destroy()
	end

end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
local LogoButton = ("10729012702")

game.StarterGui:SetCore("SendNotification", {
	Title = "Playback X Hub V4.0", 
	Text = "Playback X Hub V4.0 come with work",
	Icon = "http://www.roblox.com/asset/?id=10729012702",
	Duration = 10
})
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=10729012702"
ImageButton.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
 game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
UICorner.Parent = ImageButton

local function Tween(instance, properties,style,wa)
	if style == nil or "" then
		return Back
	end
	tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local ActualTypes = {
	RoundFrame = "ImageLabel",
	Shadow = "ImageLabel",
	Circle = "ImageLabel",
	CircleButton = "ImageButton",
	Frame = "Frame",
	Label = "TextLabel",
	Button = "TextButton",
	SmoothButton = "ImageButton",
	Box = "TextBox",
	ScrollingFrame = "ScrollingFrame",
	Menu = "ImageButton",
	NavBar = "ImageButton"
}

local Properties = {
	RoundFrame = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	SmoothButton = {
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	Shadow = {
		Name = "Shadow",
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554236805",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(23,23,277,277),
		Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
		Position = UDim2.fromOffset(-15,-15)
	},
	Circle = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	CircleButton = {
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	Frame = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1,1)
	},
	Label = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Button = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Box = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	ScrollingFrame = {
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		CanvasSize = UDim2.fromScale(0,0),
		Size = UDim2.fromScale(1,1)
	},
	Menu = {
		Name = "More",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5555108481",
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
	},
	NavBar = {
		Name = "SheetToggle",
		Image = "http://www.roblox.com/asset/?id=5576439039",
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromOffset(5,5),
		AutoButtonColor = false
	}
}

local Types = {
	"RoundFrame",
	"Shadow",
	"Circle",
	"CircleButton",
	"Frame",
	"Label",
	"Button",
	"SmoothButton",
	"Box",
	"ScrollingFrame",
	"Menu",
	"NavBar"
}

function FindType(String)
	for _, Type in next, Types do
		if Type:sub(1, #String):lower() == String:lower() then
			return Type
		end
	end
	return false
end

local Objects = {}

function Objects.new(Type)
	local TargetType = FindType(Type)
	if TargetType then
		local NewImage = Instance.new(ActualTypes[TargetType])
		if Properties[TargetType] then
			for Property, Value in next, Properties[TargetType] do
				NewImage[Property] = Value
			end
		end
		return NewImage
	else
		return Instance.new(Type)
	end
end

local function GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

local function CircleAnim(GuiObject, EndColour, StartColour)
	local PX, PY = GetXY(GuiObject)
	local Circle = Objects.new("Circle")
	Circle.Size = UDim2.fromScale(0,0)
	Circle.Position = UDim2.fromScale(PX,PY)
	Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
	Circle.ZIndex = 200
	Circle.Parent = GuiObject
	local Size = GuiObject.AbsoluteSize.X
	TweenService:Create(Circle, TweenInfo.new(0.5), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
	spawn(function()
		wait(0.5)
		Circle:Destroy()
	end)
end


local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local library = {}

function library:Window(text,text2,text3,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 0
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local RippleHUBLIB = Instance.new("ScreenGui")
	RippleHUBLIB.Name = "RippleHUBLIB"
	RippleHUBLIB.Parent = game.CoreGui
	RippleHUBLIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = RippleHUBLIB
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = _G.Color
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)

	local MCNR = Instance.new("UICorner")
	MCNR.Name = "MCNR"
	MCNR.Parent = Main


	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Top.Size = UDim2.new(0, 656, 0, 27)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Top

	local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Top
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 10, 0, 1)
	Logo.Size = UDim2.new(0, 25, 0, 25)
	Logo.Image = "rbxassetid://10729012702"

	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, 0, 0, 0)
	Name.Size = UDim2.new(0, 75, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 110, 0, 0)
	Hub.Size = UDim2.new(0, 110, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = text2
	Hub.TextColor3 = _G.Color
	Hub.TextSize = 17.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left

	local Ver = Instance.new("TextLabel")
	Ver.Name = "Ver"
	Ver.Parent = Top
	Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ver.BackgroundTransparency = 1.000
	Ver.Position = UDim2.new(0.847561002, 0, 0, 0)
	Ver.Size = UDim2.new(0, 100, 0, 27)
	Ver.Font = Enum.Font.GothamSemibold
	Ver.Text = text3
	Ver.TextColor3 = Color3.fromRGB(0, 255, 0)
	Ver.TextSize = 15.000


	local BindButton = Instance.new("TextButton")
	BindButton.Name = "BindButton"
	BindButton.Parent = Top
	BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BindButton.BackgroundTransparency = 1.000
	BindButton.Position = UDim2.new(0.227561002, 0, 0, 0)
	BindButton.Size = UDim2.new(0, 120, 0, 27)
	BindButton.Font = Enum.Font.GothamSemibold
	BindButton.Text = "[ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
	BindButton.TextColor3 = Color3.fromRGB(100, 100, 100)
	BindButton.TextSize = 11.000
	
	BindButton.MouseButton1Click:Connect(function ()
		BindButton.Text = "[ ... ]"
		local inputwait = game:GetService("UserInputService").InputBegan:wait()
		local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

		if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
			BindButton.Text = "[ "..shiba.." ]"
			yoo = shiba.Name
		end
	end)

	do  local ui =  game:GetService("CoreGui"):FindFirstChild("Ripple")  if ui then ui:Destroy() end end


	local Luna = Instance.new("ScreenGui")
	local ToggleFrameUi = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ToggleImgUi = Instance.new("ImageLabel")
	local Uitoggle = Instance.new("TextLabel")
	local Yedhee = Instance.new("TextLabel")
	local SearchStroke = Instance.new("UIStroke")
	
	
	Luna.Name = "Ripple"
	Luna.Parent = game.CoreGui
	Luna.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	ToggleFrameUi.Name = "ToggleFrameUi"
	ToggleFrameUi.Parent = Luna
	ToggleFrameUi.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	ToggleFrameUi.Position = UDim2.new(0.883, 0,0.282, 0)
	ToggleFrameUi.Size = UDim2.new(0, 198, 0, 48)
	
	SearchStroke.Thickness = 1
	SearchStroke.Name = ""
	SearchStroke.Parent = ToggleFrameUi
	SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke.Color = _G.Color
	SearchStroke.Transparency = 0
	
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = ToggleFrameUi
	
	ToggleImgUi.Name = "ToggleImgUi"
	ToggleImgUi.Parent = ToggleFrameUi
	ToggleImgUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleImgUi.BackgroundTransparency = 1.000
	ToggleImgUi.Position = UDim2.new(0.0454545468, 0, 0.125000313, 0)
	ToggleImgUi.Size = UDim2.new(0, 35, 0, 35)
	ToggleImgUi.Image = "rbxassetid://10729012702"
	
	Uitoggle.Name = "Uitoggle"
	Uitoggle.Parent = ToggleFrameUi
	Uitoggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Uitoggle.BackgroundTransparency = 1.000
	Uitoggle.Position = UDim2.new(0.25757575, 0, 0, 0)
	Uitoggle.Size = UDim2.new(0, 137, 0, 25)
	Uitoggle.Font = Enum.Font.GothamSemibold
	Uitoggle.Text = "Ui Toggle :"
	Uitoggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Uitoggle.TextSize = 12.000
	
	Yedhee.Name = "Yedhee"
	Yedhee.Parent = ToggleFrameUi
	Yedhee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Yedhee.BackgroundTransparency = 1.000
	Yedhee.Position = UDim2.new(0.25757575, 0, 0.479166657, 0)
	Yedhee.Size = UDim2.new(0, 137, 0, 25)
	Yedhee.Font = Enum.Font.GothamSemibold
	Yedhee.Text = "Lable"
	Yedhee.TextColor3 = Color3.fromRGB(255, 255, 255)
	Yedhee.TextSize = 12.000
	spawn(function()
		while wait() do
			Yedhee.Text = '['..yoo..']'
		end
	end)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
				Top:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Top:TweenSize(UDim2.new(0, 656, 0, 27),"In","Quad",0.4,true)
				wait(.23)
				Main:TweenSize(UDim2.new(0, 656, 0, 0),"Out","Quad",0.4,true)
				wait(.23)
				Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
				wait(.23)
				Top:TweenSize(UDim2.new(0, 656, 0, 10),"In","Quad",0.4,true)
				wait(0.23)
				Top:TweenSize(UDim2.new(0, 656, 0, 27),"In","Quad",0.4,true)
			end
		end
	end)

	MakeDraggable(ToggleFrameUi,ToggleFrameUi)





	local Tab = Instance.new("Frame")  --xd
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Tab.Position = UDim2.new(0, 5, 0, 30)
	Tab.Size = UDim2.new(0, 150, 0, 365)

	local Tab1 = Instance.new("Frame")  --xd
	Tab1.Name = "Tab"
	Tab1.Parent = Main
	Tab1.BackgroundTransparency = 0.500
	Tab1.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
	Tab1.Position = UDim2.new(0, 5, 0, 30)
	Tab1.Size = UDim2.new(0, 150, 0, 150)

	local IMGNAME = Instance.new("ImageLabel")
    IMGNAME.Name = "IMGDATA"
    IMGNAME.Parent = Tab1
    IMGNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    IMGNAME.Position = UDim2.new(0, 0, 0, 0)
    IMGNAME.Size = UDim2.new(0, 150, 0, 150)
    IMGNAME.Image = "rbxassetid://10729012702"

	local TCNR11 = Instance.new("UICorner")
	TCNR11.Name = "TCNR"
	TCNR11.Parent = IMGNAME

	local TCNR1 = Instance.new("UICorner")
	TCNR1.Name = "TCNR"
	TCNR1.Parent = Tab1

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Tab

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 200)
	ScrollTab.Position = UDim2.new(0, 0, 0.43, 0)
	ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollTab.ScrollBarThickness = 0

	local PLL = Instance.new("UIListLayout")
	PLL.Name = "PLL"
	PLL.Parent = ScrollTab
	PLL.SortOrder = Enum.SortOrder.LayoutOrder
	PLL.Padding = UDim.new(0, 13)

	local PPD = Instance.new("UIPadding")
	PPD.Name = "PPD"
	PPD.Parent = ScrollTab
	PPD.PaddingLeft = UDim.new(0, 10)
	PPD.PaddingTop = UDim.new(0, 10)

	local Page = Instance.new("Frame")
	Page.Name = "Page"
	Page.Parent = Main
	Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
	Page.Size = UDim2.new(0, 490, 0, 365)

	local PCNR = Instance.new("UICorner")
	PCNR.Name = "PCNR"
	PCNR.Parent = Page

	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 365)

	local IM10GNAME = Instance.new("ImageLabel")
    IM10GNAME.Name = "IMGDATA"
    IM10GNAME.Parent = MainPage
    IM10GNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IM10GNAME.BackgroundTransparency = 1.000
	IM10GNAME.ImageTransparency = 0.750
    IM10GNAME.Position = UDim2.new(0, 0, 0, 0)
    IM10GNAME.Size = UDim2.new(0, 490, 0, 365)
    IM10GNAME.Image = "rbxassetid://10729012702"

	local PageList = Instance.new("Folder")
	PageList.Name = "PageList"
	PageList.Parent = MainPage

	local UIPageLayout = Instance.new("UIPageLayout")

	UIPageLayout.Parent = PageList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.Padding = UDim.new(0, 15)
	UIPageLayout.TweenTime = 0.400
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	
	MakeDraggable(Top,Main)

	
	local uitab = {}
	
	function uitab:Tab(text,logo1)
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 130, 0, 23)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.Position = UDim2.new(0, 0, 0, 0)
		TabButton.TextColor3 = Color3.fromRGB( 255, 225, 225)
		TabButton.TextSize = 15.000
		TabButton.TextTransparency = 0.500
		
		local IDK = Instance.new("ImageLabel")
		IDK.Name = "LogoIDK"
		IDK.Parent = TabButton
		IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		IDK.BackgroundTransparency = 1.000
		IDK.Position = UDim2.new(0, 0, 0, 1)
		IDK.Size = UDim2.new(0, 20, 0, 20)
		IDK.Image = "rbxassetid://"..tostring(logo1)
		
		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		MainFramePage.BackgroundTransparency = 0.700
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 490, 0, 365)
		MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainFramePage.ScrollBarThickness = 0
		
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		
		UIPadding.Parent = MainFramePage
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Padding = UDim.new(0,15)
		UIListLayout.Parent = MainFramePage
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			for i,v in next, PageList:GetChildren() do
				currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
				if v.Name == currentpage then
					UIPageLayout:JumpTo(v)
				end
			end
		end)

		if abc == false then
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			UIPageLayout:JumpToIndex(1)
			abc = true
		end
		
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
				ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
			end)
		end)

		
		local main = {}
		function main:Button(text,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local IMGBUTTON = Instance.new("ImageLabel")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = _G.Color
			Button.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			

			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = _G.Color
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 468, 0, 29)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.GothamSemibold
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 15.000
			TextBtn.ClipsDescendants = true

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn

			IMGBUTTON.Name = "IconB"
            IMGBUTTON.Parent = TextBtn
            IMGBUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            IMGBUTTON.BackgroundTransparency = 1.000
            IMGBUTTON.Position = UDim2.new(0, 430, 0, 5)
            IMGBUTTON.Size = UDim2.new(0, 20, 0, 20)
            IMGBUTTON.Image = "http://www.roblox.com/asset/?id="..LogoButton


			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 468, 0, 29)
			
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				CircleAnim(TextBtn, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				TextBtn.TextSize = 1
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end
		function main:Toggle(text,Imgidicon,config,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local imgLabelIcon = Instance.new("ImageLabel")


			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 46, 46)
			Toggle.Size = UDim2.new(0, 470, 0, 31)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Button.Position = UDim2.new(0, 1, 0, 1)
			Button.Size = UDim2.new(0, 468, 0, 29)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Position = UDim2.new(0, 1, 0, 1)
			Label.Size = UDim2.new(0, 468, 0, 29)
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 15.000

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			ToggleImage.Position = UDim2.new(0, 415, 0, 5)
			ToggleImage.Size = UDim2.new(0, 45, 0, 20)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = Color3.fromRGB(255, 46, 46)
			Circle.Position = UDim2.new(0, 2, 0, 2)
			Circle.Size = UDim2.new(0, 16, 0, 16)

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = Circle

            imgLabelIcon.Name = "Icon"
            imgLabelIcon.Parent = Toggle
            imgLabelIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imgLabelIcon.BackgroundTransparency = 1.000
            imgLabelIcon.Position = UDim2.new(0, 10, 0, 5)
            imgLabelIcon.Size = UDim2.new(0, 20, 0, 20)
            imgLabelIcon.Image = "http://www.roblox.com/asset/?id="..Imgidicon

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Toggle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.Color}
					):Play()
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.Color}
					):Play()
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Toggle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(255, 46, 46)}
					):Play()
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(255, 46, 46)}
					):Play()
				end
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
				TweenService:Create(
                    Toggle,
                    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {BackgroundColor3 = _G.Color}
                ):Play()
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = _G.Color}
				):Play()
				pcall(callback,toggled)
			end
		end
		function main:Dropdown(text,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			local DropImagee = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 470, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1.000
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 31)
			DropScroll.Size = UDim2.new(0, 470, 0, 100)
			DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
			DropScroll.ScrollBarThickness = 3
			
			UIListLayout.Parent = DropScroll
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			UIPadding.Parent = DropScroll
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingTop = UDim.new(0, 5)
			
			DropImage.Name = "DropImage"
			DropImage.Parent = Dropdown
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1.000
			DropImage.Position = UDim2.new(0, 445, 0, 6)
			DropImage.Rotation = -90
			DropImage.Size = UDim2.new(0, 20, 0, 20)
			DropImage.Image = "rbxassetid://6031090990"
			
			DropImagee.Name = "DropImage"
			DropImagee.Parent = Dropdown
			DropImagee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImagee.BackgroundTransparency = 1.000
			DropImagee.Position = UDim2.new(0, 420, 0, 6)
			DropImagee.Size = UDim2.new(0, 20, 0, 20)
			DropImagee.Image = "rbxassetid://"..LogoButton
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 470, 0, 31)
			DropButton.Font = Enum.Font.SourceSans
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 14.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")
				local Itemlogo = Instance.new("ImageLabel")
				
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 460, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500
				Item.ClipsDescendants = true
				
				Itemlogo.Name = "Itemlogo"
				Itemlogo.Parent = Item
				Itemlogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Itemlogo.BackgroundTransparency = 1.000
				Itemlogo.Position = UDim2.new(0, 460, 0, 26)
				Itemlogo.Size = UDim2.new(0, 20, 0, 20)
				Itemlogo.Image = "rbxassetid://6031090990"

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = -90}
					):Play()
					DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = -90}
					):Play()
					DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
				end
			end)

			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 470, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500
				Item.ClipsDescendants = true

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = -90}
					):Play()
					DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = -90}
				):Play()
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end

		function main:Slider(text,min,max,set,callback)
			local Slider = Instance.new("Frame")
			local slidercorner = Instance.new("UICorner")
			local sliderr = Instance.new("Frame")
			local sliderrcorner = Instance.new("UICorner")
			local SliderLabel = Instance.new("TextLabel")
			local HAHA = Instance.new("Frame")
			local AHEHE = Instance.new("TextButton")
			local bar = Instance.new("Frame")
			local bar1 = Instance.new("Frame")
			local bar1corner = Instance.new("UICorner")
			local barcorner = Instance.new("UICorner")
			local circlebar = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("Frame")
			local valuecorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = _G.Color
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 470, 0, 51)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 468, 0, 49)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderLabel.BackgroundTransparency = 1.000
			SliderLabel.Position = UDim2.new(0, 15, 0, 0)
			SliderLabel.Size = UDim2.new(0, 180, 0, 26)
			SliderLabel.Font = Enum.Font.GothamSemibold
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 16.000
			SliderLabel.TextTransparency = 0
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 468, 0, 29)

			AHEHE.Name = "AHEHE"
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 35)
			AHEHE.Size = UDim2.new(0, 448, 0, 5)
			AHEHE.Font = Enum.Font.SourceSans
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 14.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			bar.Size = UDim2.new(0, 448, 0, 5)

			bar1.Name = "bar1"
			bar1.Parent = bar
			bar1.BackgroundColor3 = _G.Color
			bar1.BackgroundTransparency = 0
			bar1.Size = UDim2.new(set/max, 0, 0, 5)

			bar1corner.CornerRadius = UDim.new(0, 5)
			bar1corner.Name = "bar1corner"
			bar1corner.Parent = bar1

			barcorner.CornerRadius = UDim.new(0, 5)
			barcorner.Name = "barcorner"
			barcorner.Parent = bar

			circlebar.Name = "circlebar"
			circlebar.Parent = bar1
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = _G.Color
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 395, 0, 5)
			slidervalue.Size = UDim2.new(0, 65, 0, 18)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue
			TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 63, 0, 16)
			TextBox.Font = Enum.Font.GothamSemibold
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBox

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")

			if Value == nil then
				Value = set
				pcall(function()
					callback(Value)
				end)
			end
			
			AHEHE.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				TweenService:Create(
					bar1,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				--bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
				TweenService:Create(
					circlebar,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				--circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					TweenService:Create(
						bar1,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					--bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					TweenService:Create(
						circlebar,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					--circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						TweenService:Create(
							bar1,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						--bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						TweenService:Create(
							circlebar,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						--circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:Textbox(text,disappear,callback)
			local Textbox = Instance.new("Frame")
			local TextboxCorner = Instance.new("UICorner")
			local Textboxx = Instance.new("Frame")
			local TextboxxCorner = Instance.new("UICorner")
			local TextboxLabel = Instance.new("TextLabel")
			local txtbtn = Instance.new("TextButton")
			local RealTextbox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = MainFramePage
			Textbox.BackgroundColor3 = _G.Color
			Textbox.BackgroundTransparency = 0
			Textbox.Size = UDim2.new(0, 470, 0, 31)

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			Textboxx.Name = "Textboxx"
			Textboxx.Parent = Textbox
			Textboxx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Textboxx.Position = UDim2.new(0, 1, 0, 1)
			Textboxx.Size = UDim2.new(0, 468, 0, 29)

			TextboxxCorner.CornerRadius = UDim.new(0, 5)
			TextboxxCorner.Name = "TextboxxCorner"
			TextboxxCorner.Parent = Textboxx

			TextboxLabel.Name = "TextboxLabel"
			TextboxLabel.Parent = Textbox
			TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxLabel.BackgroundTransparency = 1.000
			TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
			TextboxLabel.Text = text
			TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
			TextboxLabel.Font = Enum.Font.GothamSemibold
			TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextboxLabel.TextSize = 16.000
			TextboxLabel.TextTransparency = 0
			TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

			txtbtn.Name = "txtbtn"
			txtbtn.Parent = Textbox
			txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			txtbtn.BackgroundTransparency = 1.000
			txtbtn.Position = UDim2.new(0, 1, 0, 1)
			txtbtn.Size = UDim2.new(0, 468, 0, 29)
			txtbtn.Font = Enum.Font.SourceSans
			txtbtn.Text = ""
			txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			txtbtn.TextSize = 14.000

			RealTextbox.Name = "RealTextbox"
			RealTextbox.Parent = Textbox
			RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			RealTextbox.BackgroundTransparency = 0
			RealTextbox.Position = UDim2.new(0, 360, 0, 4)
			RealTextbox.Size = UDim2.new(0, 100, 0, 24)
			RealTextbox.Font = Enum.Font.GothamSemibold
			RealTextbox.Text = ""
			RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
			RealTextbox.TextSize = 11.000
			RealTextbox.TextTransparency = 0

			RealTextbox.FocusLost:Connect(function()
				callback(RealTextbox.Text)
				if disappear then
					RealTextbox.Text = ""
				end
			end)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = RealTextbox
		end
		function main:Label(text)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labell = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 470, 0, 20)
			Label.Font = Enum.Font.GothamSemibold
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 16.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labell:Set(newtext)
				Label.Text = newtext
			end

			return labell
		end
		function main:Seperator(text)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 470, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = _G.Color
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 80, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 185, 0, 0)
			Sep2.Size = UDim2.new(0, 100, 0, 20)
			Sep2.Font = Enum.Font.GothamSemibold
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 14.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = _G.Color
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 390, 0, 10)
			Sep3.Size = UDim2.new(0, 80, 0, 1)
		end

		function main:Line()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 470, 0, 20)
			
			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = _G.Color
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 470, 0, 1)
		end
		return main
	end
	return uitab
end


-------------->> // FN Main \\ <<-------------
function CheckQuest() 
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if game.PlaceId == 2753915549 then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
		Mon = "Bandit [Lv. 5]"
		NameQuest = "BanditQuest1"
		LevelQuest = 1
		NameMon = "Bandit"
		CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
		CFrameMon = CFrame.new(1057.55151, 27.1278248, 1564.76013, -0.16377756, -1.13282092e-10, -0.986497283, 3.48445752e-08, 1, -5.89970339e-09, 0.986497283, -3.53403173e-08, -0.16377756)
	elseif MyLevel == 10 or MyLevel <= 14 then -- Bandit
	   Mon = "Monkey [Lv. 14]"
	   NameQuest = "JungleQuest"
		LevelQuest = 1
		NameMon = "Monkey"
		CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameMon = CFrame.new(-1449.94617, 67.9777908, 12.3050404, -0.643440843, 2.02988506e-08, 0.765495837, 2.12389017e-09, 1, -2.4732012e-08, -0.765495837, -1.42877576e-08, -0.643440843)
	elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
		Mon = "Gorilla [Lv. 20]"
		NameQuest = "JungleQuest"
		LevelQuest = 2
		NameMon = "Gorilla"
		CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameMon = CFrame.new(-1142.0293, 40.5877495, -516.118103, 0.55559355, 7.58965513e-08, 0.831454039, 1.24594361e-08, 1, -9.96073553e-08, -0.831454039, 6.57006538e-08, 0.55559355)
	elseif MyLevel == 30 or MyLevel <= 39 then -- Pirat
		Mon = "Pirate [Lv. 35]"
		NameQuest = "BuggyQuest1"
		LevelQuest = 1
		NameMon = "Pirate"
		CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameMon = CFrame.new(-1151.29663, 44.207077, 3873.34937, -0.879714787, 3.81559784e-10, 0.475501686, -2.18363772e-09, 1, -4.84233453e-09, -0.475501686, -5.29819655e-09, -0.879714787)
	elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
		Mon = "Brute [Lv. 45]"
		NameQuest = "BuggyQuest1"
		LevelQuest = 2
		NameMon = "Brute"
		CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameMon = CFrame.new(-1131.66699, 14.3651161, 4191.79199, -0.968309462, -1.36864942e-09, 0.24975352, -9.80991288e-09, 1, -3.25536256e-08, -0.24975352, -3.3972043e-08, -0.968309462)
	elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
		Mon = "Desert Bandit [Lv. 60]"
		NameQuest = "DesertQuest"
		LevelQuest = 1
		NameMon = "Desert Bandit"
		CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
		CFrameMon = CFrame.new(1054.79053, 52.5889473, 4490.35693, 0.280815929, -6.18912255e-09, 0.95976162, 4.50181625e-09, 1, 5.13142062e-09, -0.95976162, 2.87968605e-09, 0.280815929)
	elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
		Mon = "Desert Officer [Lv. 70]"
		NameQuest = "DesertQuest"
		LevelQuest = 2
		NameMon = "Desert Officer"
		CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
		CFrameMon = CFrame.new(1658.0708, 10.0252256, 4452.83154, 0.826960921, -2.71145932e-08, 0.562259436, -9.74775904e-09, 1, 6.25611705e-08, -0.562259436, -5.72164147e-08, 0.826960921)
	elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
		Mon = "Snow Bandit [Lv. 90]"
		NameQuest = "SnowQuest"
		LevelQuest = 1
		NameMon = "Snow Bandits"
		CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
		CFrameMon = CFrame.new(1381.81982, 88.3774796, -1395.56738, -0.0662302524, 5.15531262e-08, 0.997804344, 3.78975749e-08, 1, -4.91510797e-08, -0.997804344, 3.45590756e-08, -0.0662302524)
	elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
		Mon = "Snowman [Lv. 100]"
		NameQuest = "SnowQuest"
		LevelQuest = 2
		NameMon = "Snowman"
		CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
		CFrameMon = CFrame.new(1171.65784, 106.437271, -1514.53918, -0.726554573, 7.11920691e-08, -0.687108815, 6.82555807e-08, 1, 3.14370361e-08, 0.687108815, -2.40582896e-08, -0.726554573)
	elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
		Mon = "Chief Petty Officer [Lv. 120]"
		NameQuest = "MarineQuest2"
		LevelQuest = 1
		NameMon = "Chief Petty Officer"
		CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
		CFrameMon = CFrame.new(-4908.62207, 51.0889473, 4296.17578, 0.851993144, 6.76871537e-08, -0.523552954, -6.00756422e-08, 1, 3.15213882e-08, 0.523552954, 4.59677496e-09, 0.851993144)
	elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
		Mon = "Sky Bandit [Lv. 150]"
		NameQuest = "SkyQuest"
		LevelQuest = 1
		NameMon = "Sky Bandit"
		CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
		CFrameMon = CFrame.new(-4971.60254, 364.723907, -2860.88965, -0.967084885, 8.0616207e-09, 0.254453957, 1.28277495e-08, 1, 1.7071466e-08, -0.254453957, 1.97736281e-08, -0.967084885)
	elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
		Mon = "Dark Master [Lv. 175]"
		NameQuest = "SkyQuest"
		LevelQuest = 2
		NameMon = "Dark Master"
		CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
		CFrameMon = CFrame.new(-5234.49463, 472.219452, -2260.2998, 0.0978341922, 4.7624173e-08, -0.99520272, 1.3983859e-07, 1, 6.16006801e-08, 0.99520272, -1.45194406e-07, 0.0978341922)
	elseif MyLevel == 190 or MyLevel <= 209 then
		Mon = "Prisoner [Lv. 190]"
		NameQuest = "PrisonerQuest"
		LevelQuest = 1
		NameMon = "Prisoner"
		CFrameQuest = CFrame.new(5308.5595703125, 1.655185341835022, 475.2810363769531 )
		CFrameMon = CFrame.new(5282.37548828125, 15.651934623718262, 356.1692810058594)
	elseif MyLevel == 210 or MyLevel <= 249 then
		Mon = "Dangerous Prisoner [Lv. 210]"
		NameQuest = "PrisonerQuest"
		LevelQuest = 2
		NameMon = "Dangerous Prisoner"
		CFrameQuest = CFrame.new(5308.5595703125, 1.655185341835022, 475.2810363769531 )
		CFrameMon = CFrame.new(5549.43359375, 15.635162353515625, 868.7542724609375)
	elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
		Mon = "Toga Warrior [Lv. 250]"
		NameQuest = "ColosseumQuest"
		LevelQuest = 1
		NameMon = "Toga Warrior"
		CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
		CFrameMon = CFrame.new(-1716.77588, 105.825844, -2809.25977, -0.188207448, 2.83339467e-08, 0.982129276, 1.10813891e-08, 1, -2.67259583e-08, -0.982129276, 5.85333249e-09, -0.188207448)
	elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
		Mon = "Gladiator [Lv. 275]"
		NameQuest = "ColosseumQuest"
		LevelQuest = 2
		NameMon = "Gladiato"
		CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
		CFrameMon = CFrame.new(-1440.1282958984375, 7.567874431610107, -3171.48388671875)
	elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier
		Mon = "Military Soldier [Lv. 300]"
		NameQuest = "MagmaQuest"
		LevelQuest = 1
		NameMon = "Military Soldier"
		CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
		CFrameMon = CFrame.new(-5334.42627, 50.9436913, 8647.35156, -0.54487282, 0, 0.838518679, 0, 1, 0, -0.838518679, 0, -0.54487282)
	elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
		Mon = "Military Spy [Lv. 325]"
		NameQuest = "MagmaQuest"
		LevelQuest = 2
		NameMon = "Military Spy"
		CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
		CFrameMon = CFrame.new(-5772.66113, 81.4496155, 8722.71973, 0.0485868454, 5.5336308e-08, 0.998818934, 6.85331543e-08, 1, -5.8735484e-08, -0.998818934, 7.13059833e-08, 0.0485868454)
	elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
		FM = true
		Mon = "Fishman Warrior [Lv. 375]"
		NameQuest = "FishmanQuest"
		LevelQuest = 1
		NameMon = "Fishman Warrior"
		CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		CFrameMon = CFrame.new(60955.0625, 48.7988472, 1543.7168, -0.831178129, 6.20639318e-09, -0.556006253, 7.20035302e-08, 1, -9.64761853e-08, 0.556006253, -1.20223305e-07, -0.831178129)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
		FM = true
		Mon = "Fishman Commando [Lv. 400]"
		NameQuest = "FishmanQuest"
		LevelQuest = 2
		NameMon = "Fishman Commando"
		CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		CFrameMon = CFrame.new(61872.3008, 75.5976562, 1394.83484, -0.922134459, 4.36911973e-09, -0.38686946, -2.54707899e-08, 1, 7.20052e-08, 0.38686946, 7.62523484e-08, -0.922134459)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
		FM = false
		Mon = "God's Guard [Lv. 450]"
		NameQuest = "SkyExp1Quest"
		LevelQuest = 1
		NameMon = "God's Guards"
		CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
		CFrameMon = CFrame.new(-4719.61719, 853.174927, -1935.9231, 0.871468067, -2.79222032e-08, 0.49045223, 3.73774967e-08, 1, -9.48327372e-09, -0.49045223, 2.6596247e-08, 0.871468067)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		end
	elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
		sky = false
		Mon = "Shanda [Lv. 475]"
		NameQuest = "SkyExp1Quest"
		LevelQuest = 2
		NameMon = "Shandas"
		CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
		CFrameMon = CFrame.new(-7661.34229, 5548.00732, -506.59787, 0.0389961377, 4.86564531e-08, 0.999239385, -1.10884022e-08, 1, -4.82607554e-08, -0.999239385, -9.1979846e-09, 0.0389961377)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
	elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
		sky = true
		Mon = "Royal Squad [Lv. 525]"
		NameQuest = "SkyExp2Quest"
		LevelQuest = 1
		NameMon = "Royal Squad"
		CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
		CFrameMon = CFrame.new(-7646.49707, 5608.40625, -1422.51074, 0.901955545, 9.02816666e-08, 0.431828916, -7.36900176e-08, 1, -5.51527428e-08, -0.431828916, 1.7923842e-08, 0.901955545)
	elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
		Dis = 240
		sky = true
		Mon = "Royal Soldier [Lv. 550]"
		NameQuest = "SkyExp2Quest"
		LevelQuest = 2
		NameMon = "Royal Soldier"
		CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
		CFrameMon = CFrame.new(-8004.89062, 5645.15723, -1960.63599, 0.805200279, 3.47631635e-09, 0.593002975, -2.96576697e-09, 1, -1.83520144e-09, -0.593002975, -2.8100397e-10, 0.805200279)
	elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
		Dis = 240
		sky = false
		Mon = "Galley Pirate [Lv. 625]"
		NameQuest = "FountainQuest"
		LevelQuest = 1
		NameMon = "Galley Pirate"
		CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
		CFrameMon = CFrame.new(5618.82129, 152.426666, 3994.08472, 0.926358402, 2.57817536e-08, 0.3766433, 1.30540767e-09, 1, -7.16620505e-08, -0.3766433, 6.68764102e-08, 0.926358402)
	elseif MyLevel >= 650 then -- Galley Captain
		Dis = 240
		Mon = "Galley Captain [Lv. 650]"
		NameQuest = "FountainQuest"
		LevelQuest = 2
		NameMon = "Galley Captain"
		CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
		CFrameMon = CFrame.new(5804.62451, 54.212822, 4895.91602, -0.889353693, -2.71176837e-09, -0.457219929, 2.99581409e-08, 1, -6.42035687e-08, 0.457219929, -7.07971424e-08, -0.889353693)
	end
	elseif game.PlaceId == 4442272183 then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
		Mon = "Raider [Lv. 700]"
		NameQuest = "Area1Quest"
		LevelQuest = 1
		NameMon = "Raider"
		CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
	elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
		Mon = "Mercenary [Lv. 725]"
		NameQuest = "Area1Quest"
		LevelQuest = 2
		NameMon = "Mercenary"
		CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
	elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
		Mon = "Swan Pirate [Lv. 775]"
		NameQuest = "Area2Quest"
		LevelQuest = 1
		NameMon = "Swan Pirate"
		CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
	elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
		Mon = "Factory Staff [Lv. 800]"
		NameQuest = "Area2Quest"
		LevelQuest = 2
		NameMon = "Factory Staff"
		CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
	elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
		Mon = "Marine Lieutenant [Lv. 875]"
		NameQuest = "MarineQuest3"
		LevelQuest = 1
		NameMon = "Marine Lieutenant"
		CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
	elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
		Mon = "Marine Captain [Lv. 900]"
		NameQuest = "MarineQuest3"
		LevelQuest = 2
		NameMon = "Marine Captain"
		CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
	elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
		Mon = "Zombie [Lv. 950]"
		NameQuest = "ZombieQuest"
		LevelQuest = 1
		NameMon = "Zombie"
		CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
		CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
	elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
		Mon = "Vampire [Lv. 975]"
		NameQuest = "ZombieQuest"
		LevelQuest = 2
		NameMon = "Vampire"
		CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
		CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
	elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
		Mon = "Snow Trooper [Lv. 1000]"
		NameQuest = "SnowMountainQuest"
		LevelQuest = 1
		NameMon = "Snow Trooper"
		CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
		CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
	elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
		Mon = "Winter Warrior [Lv. 1050]"
		NameQuest = "SnowMountainQuest"
		LevelQuest = 2
		NameMon = "Winter Warrior"
		CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
		CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
	elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
		Mon = "Lab Subordinate [Lv. 1100]"
		NameQuest = "IceSideQuest"
		LevelQuest = 1
		NameMon = "Lab Subordinate"
		CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
		CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
	elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
		Mon = "Horned Warrior [Lv. 1125]"
		NameQuest = "IceSideQuest"
		LevelQuest = 2
		NameMon = "Horned Warrior"
		CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
		CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
	elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
		Mon = "Magma Ninja [Lv. 1175]"
		NameQuest = "FireSideQuest"
		LevelQuest = 1
		NameMon = "Magma Ninja"
		CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
		CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
	elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
		Mon = "Lava Pirate [Lv. 1200]"
		NameQuest = "FireSideQuest"
		LevelQuest = 2
		NameMon = "Lava Pirate"
		CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
		CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
	elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
		Mon = "Ship Deckhand [Lv. 1250]"
		NameQuest = "ShipQuest1"
		LevelQuest = 1
		NameMon = "Ship Deckhand"
		CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
		CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
		Mon = "Ship Engineer [Lv. 1275]"
		NameQuest = "ShipQuest1"
		LevelQuest = 2
		NameMon = "Ship Engineer"
		CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
		CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
		Mon = "Ship Steward [Lv. 1300]"
		NameQuest = "ShipQuest2"
		LevelQuest = 1
		NameMon = "Ship Steward"
		CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
		CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
		Mon = "Ship Officer [Lv. 1325]"
		NameQuest = "ShipQuest2"
		LevelQuest = 2
		NameMon = "Ship Officer"
		CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
		CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
		Mon = "Arctic Warrior [Lv. 1350]"
		NameQuest = "FrostQuest"
		LevelQuest = 1
		NameMon = "Arctic Warrior"
		CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
		if _G.Setting.Config["Autofarm"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
	elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
		Mon = "Snow Lurker [Lv. 1375]"
		NameQuest = "FrostQuest"
		LevelQuest = 2
		NameMon = "Snow Lurker"
		CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
	elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
		Mon = "Sea Soldier [Lv. 1425]"
		NameQuest = "ForgottenQuest"
		LevelQuest = 1
		NameMon = "Sea Soldier"
		CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
		CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
	elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
		Mon = "Water Fighter [Lv. 1450]"
		NameQuest = "ForgottenQuest"
		LevelQuest = 2
		NameMon = "Water Fighter"
		CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
		CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
	end
	elseif game.PlaceId == 7449423635 then
		if MyLevel == 1500 or MyLevel <= 1524 then
		Mon = "Pirate Millionaire [Lv. 1500]"
		NameQuest = "PiratePortQuest"
		LevelQuest = 1
		NameMon = "Pirate Millionaire"
		CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
		CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
	elseif MyLevel == 1525 or MyLevel <= 1574 then
		Mon = "Pistol Billionaire [Lv. 1525]"
		NameQuest = "PiratePortQuest"
		LevelQuest = 2
		NameMon = "Pistol Billionaire"
		CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
		CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
	elseif MyLevel == 1575 or MyLevel <= 1599 then
		Mon = "Dragon Crew Warrior [Lv. 1575]"
		NameQuest = "AmazonQuest"
		LevelQuest = 1
		NameMon = "Dragon Crew Warrior"
		CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
		CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
	elseif MyLevel == 1600 or MyLevel <= 1624 then
		Mon = "Dragon Crew Archer [Lv. 1600]"
		NameQuest = "AmazonQuest"
		LevelQuest = 2
		NameMon = "Dragon Crew Archer"
		CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
		CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
	elseif MyLevel == 1625 or MyLevel <= 1649 then
		Mon = "Female Islander [Lv. 1625]"
		NameQuest = "AmazonQuest2"
		LevelQuest = 1
		NameMon = "Female Islander"
		CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
	elseif MyLevel == 1650 or MyLevel <= 1699 then
		Mon = "Giant Islander [Lv. 1650]"
		NameQuest = "AmazonQuest2"
		LevelQuest = 2
		NameMon = "Giant Islander"
		CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
	elseif MyLevel == 1700 or MyLevel <= 1724 then
		Mon = "Marine Commodore [Lv. 1700]"
		NameQuest = "MarineTreeIsland"
		LevelQuest = 1
		NameMon = "Marine Commodore"
		CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
		CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
	elseif MyLevel == 1725 or MyLevel <= 1774 then
		Mon = "Marine Rear Admiral [Lv. 1725]"
		NameQuest = "MarineTreeIsland"
		LevelQuest = 2
		NameMon = "Marine Rear Admiral"
		CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
		CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
	elseif MyLevel == 1775 or MyLevel <= 1799 then
		Mon = "Fishman Raider [Lv. 1775]"
		NameQuest = "DeepForestIsland3"
		LevelQuest = 1
		NameMon = "Fishman Raider"
		CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
	elseif MyLevel == 1800 or MyLevel <= 1824 then
		Mon = "Fishman Captain [Lv. 1800]"
		NameQuest = "DeepForestIsland3"
		LevelQuest = 2
		NameMon = "Fishman Captain"
		CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
	elseif MyLevel == 1825 or MyLevel <= 1849 then
		Mon = "Forest Pirate [Lv. 1825]"
		NameQuest = "DeepForestIsland"
		LevelQuest = 1
		NameMon = "Forest Pirate"
		CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
		CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
	elseif MyLevel == 1850 or MyLevel <= 1899 then
		Mon = "Mythological Pirate [Lv. 1850]"
		NameQuest = "DeepForestIsland"
		LevelQuest = 2
		NameMon = "Mythological Pirate"
		CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
		CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
	elseif MyLevel == 1900 or MyLevel <= 1924 then
		Mon = "Jungle Pirate [Lv. 1900]"
		NameQuest = "DeepForestIsland2"
		LevelQuest = 1
		NameMon = "Jungle Pirate"
		CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
	elseif MyLevel == 1925 or MyLevel <= 1974 then
		Mon = "Musketeer Pirate [Lv. 1925]"
		NameQuest = "DeepForestIsland2"
		LevelQuest = 2
		NameMon = "Musketeer Pirate"
		CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
	elseif MyLevel == 1975 or MyLevel <= 1999 then
		Mon = "Reborn Skeleton [Lv. 1975]"
		NameQuest = "HauntedQuest1"
		LevelQuest = 1
		NameMon = "Reborn Skeleton"
		CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
	elseif MyLevel == 2000 or MyLevel <= 2024 then
		Mon = "Living Zombie [Lv. 2000]"
		NameQuest = "HauntedQuest1"
		LevelQuest = 2
		NameMon = "Living Zombie"
		CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
	elseif MyLevel == 2025 or MyLevel <= 2049 then
		Mon = "DeMonic Soul [Lv. 2025]"
		NameQuest = "HauntedQuest2"
		LevelQuest = 1
		NameMon = "DeMonic Soul"
		CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
		CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
	elseif MyLevel == 2050 or MyLevel <= 2074 then
		Mon = "Posessed Mummy [Lv. 2050]" 
		NameQuest = "HauntedQuest2"
		LevelQuest = 2
		NameMon = "Posessed Mummy"
		CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
		CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
	elseif MyLevel == 2075 or MyLevel <= 2099 then
		Mon = "Peanut Scout [Lv. 2075]"
		NameQuest = "NutsIslandQuest"
		LevelQuest = 1
		NameMon = "Peanut Scout"
		CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
		CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
	elseif MyLevel == 2100 or MyLevel <= 2124 then
		Mon = "Peanut President [Lv. 2100]"
		NameQuest = "NutsIslandQuest"
		LevelQuest = 2
		NameMon = "Peanut President"
		CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
		CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
	elseif MyLevel == 2125 or MyLevel <= 2149 then
		Mon = "Ice Cream Chef [Lv. 2125]"
		NameQuest = "IceCreamIslandQuest"
		LevelQuest = 1
		NameMon = "Ice Cream Chef"
		CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
		CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
	elseif MyLevel == 2150 or MyLevel <= 2199 then
		Mon = "Ice Cream Commander [Lv. 2150]"
		NameQuest = "IceCreamIslandQuest"
		LevelQuest = 2
		NameMon = "Ice Cream Commander"
		CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
		CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
	elseif MyLevel == 2200 or MyLevel <= 2224 then
		Mon = "Cookie Crafter [Lv. 2200]"
		NameQuest = "CakeQuest1"
		LevelQuest = 1
		NameMon = "Cookie Crafter"
		CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
		CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
	elseif MyLevel == 2225 or MyLevel <= 2249 then
		Mon = "Cake Guard [Lv. 2225]"
		NameQuest = "CakeQuest1"
		LevelQuest = 2
		NameMon = "Cake Guard"
		CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
		CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
	elseif MyLevel == 2250 or MyLevel <= 2274 then
		Mon = "Baking Staff [Lv. 2250]"
		NameQuest = "CakeQuest2"
		LevelQuest = 1
		NameMon = "Baking Staff"
		CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
		CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
	elseif MyLevel == 2275 or MyLevel <= 2299 then
		Mon = "Head Baker [Lv. 2275]"
		LevelQuest = 2
		NameQuest = "CakeQuest2"
		NameMon = "Head Baker"
		CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
		CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
	elseif MyLevel == 2300 or MyLevel <= 2324 then
		Mon = "Cocoa Warrior [Lv. 2300]"
		LevelQuest = 1
		NameQuest = "ChocQuest1"
		NameMon = "Cocoa Warrior"
		CFrameQuest = CFrame.new(-237.279648, 24.760088, -12194.0879, 0.37110126, 0, -0.928592443, -0, 1.00000012, -0, 0.928592443, 0, 0.37110126)
		CFrameMon = CFrame.new(4.03491974, 68.286705, -12170.5713, 4.76837158e-05, -0.996190667, 0.0872024298, -1, -4.76837158e-05, 2.08243728e-06, 2.08243728e-06, -0.0872024298, -0.996190667)
	elseif MyLevel == 2325 or MyLevel <= 2349 then
		Mon = "Chocolate Bar Battler [Lv. 2325]"
		LevelQuest = 2
		NameQuest = "ChocQuest1"
		NameMon = "Chocolate Bar Battler"
		CFrameQuest = CFrame.new(149.342697, 24.8196201, -12775.0957, -0.344634354, -2.06621564e-08, -0.938736975, 5.85849484e-08, 1, -4.35186216e-08, 0.938736975, -6.99938667e-08, -0.344634354)
		CFrameMon = CFrame.new(4.03491974, 68.286705, -12170.5713, 4.76837158e-05, -0.996190667, 0.0872024298, -1, -4.76837158e-05, 2.08243728e-06, 2.08243728e-06, -0.0872024298, -0.996190667)
	elseif MyLevel == 2350 or MyLevel <= 2374 then
		Mon = "Sweet Thief [Lv. 2350]"
		LevelQuest = 1
		NameQuest =   "ChocQuest2"
	    NameMon = "Sweet Thief"
		CFrameQuest = CFrame.new(149.814438, 24.8196201, -12775.6064, -0.329403073, -1.39752903e-08, -0.94418937, -1.07108015e-07, 1, 2.25658319e-08, 0.94418937, 1.08563505e-07, -0.329403073)
		CFrameMon = CFrame.new(-13.8405685, 13.8881378, -12845.4707, 0.819155693, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, 0.819155693)
	elseif MyLevel >= 2375 then
		Mon = "Candy Rebel [Lv. 2375]"
		LevelQuest = 2
		NameQuest = "ChocQuest2"
	    NameMon = "Candy Rebel"
		CFrameQuest = CFrame.new(149.814438, 24.8196201, -12775.6064, -0.329403073, -1.39752903e-08, -0.94418937, -1.07108015e-07, 1, 2.25658319e-08, 0.94418937, 1.08563505e-07, -0.329403073)
		CFrameMon = CFrame.new(-244.225952, 77.8919601, -13067.8477, 0.642763317, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, 0.642763317)
		end
	end
end

function ByPass(Position)
game.Players.LocalPlayer.Character.Head:Destroy()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position 
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5555,5555,5555)
end

function Haki()
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end

function  Click()
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

if game:IsLoaded() then
    pcall(function()
        repeat wait()
        	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
        until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") or not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn")
    end)
end

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end


function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
    end
    
   


function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end

 function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

  getgenv().ToTarget=function(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/350, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.Setting.Config["BypassTP"] and Distance >= 3000 then
        	game.Players.LocalPlayer.Character.Humanoid.Health =- math.huge
   		 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5555,5555,5555)
    		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
     end
     
     getgenv().BypassTP=function()
     if _G.Setting.Config["BypassTP"] == true then
     	print("ByPassTP No")
     else
	 	print("ByPassTP false")
		end
     end
     
     getgenv().ToTarget=function(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/350, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
     end
    
    
 spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Setting.Config["Autofarm"] or _G.Setting.Config["Auto Farm Material"] or _G.Setting.Config["Mob Aura"] or _G.Setting.Config["AutoSaber"] or _G.Setting.Config["AutoSea2"] or _G.Setting.Config["AutoElectricClaw"] or _G.Setting.Config["AutoSharkman"] or _G.Setting.Config["AutoHolyTorch"] or _G.Setting.Config["AutoBartilo"] or _G.Setting.Config["LegebdarySword"] or _G.Setting.Config["AutoRaceV2"] or  _G.Setting.Config["AutoRengoku"] or _G.Setting.Config["AutoFarmBone"] or _G.Setting.Config["AutoFarmBossAll"] or _G.Setting.Config["AutoFarmBoss"] or _G.Setting.Config["Autofarmken"] or _G.Setting.Config["AutoFarmKenHob"] or _G.Setting.Config["AutoFarmOrder(Fully)"] or _G.Setting.Config["AutoFarmOrder"] then
            if not game:GetService("Workspace"):FindFirstChild("Part") then
                local Part = Instance.new("Part")
                Part.Name = "Part"
                Part.Parent = game.Workspace
                Part.Anchored = true
				Part.Color = Color3.fromRGB(255, 255, 0)
                Part.Transparency = 1
                Part.Size = Vector3.new(40,40,40)
            elseif game:GetService("Workspace"):FindFirstChild("Part") then
                game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("Part") then
                game:GetService("Workspace"):FindFirstChild("Part"):Destroy()
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.Setting.Config["Autofarm"] or _G.Setting.Config["Auto Farm Material"] or _G.Setting.Config["Mob Aura"] or _G.Setting.Config["AutoSaber"] or _G.Setting.Config["AutoSea2"] or _G.Setting.Config["AutoElectricClaw"] or  _G.Setting.Config["AutoHolyTorch"] or _G.Setting.Config["AutoBartilo"] or _G.Setting.Config["LegebdarySword"] or _G.Setting.Config["AutoRaceV2"] or  _G.Setting.Config["AutoRengoku"] or _G.Setting.Config["AutoFarmBone"] or _G.Setting.Config["AutoFarmBossAll"] or _G.Setting.Config["AutoFarmBoss"] or _G.Setting.Config["Autofarmken"] or _G.Setting.Config["AutoFarmKenHob"] or _G.Setting.Config["AutoFarmOrder(Fully)"] or _G.Setting.Config["AutoFarmOrder"] then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        end
    end)
end)
function changestate()
    game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.Config["Autofarm"] or _G.Setting.Config["Auto Farm Material"] or _G.Setting.Config["Mob Aura"]  or _G.Setting.Config["AutoSaber"] or _G.Setting.Config["AutoSea2"] or _G.Setting.Config["AutoElectricClaw"] or _G.Setting.Config["AutoSharkman"] or _G.Setting.Config["AutoHolyTorch"] or _G.Setting.Config["AutoBartilo"] or _G.Setting.Config["LegebdarySword"] or _G.Setting.Config["AutoRaceV2"] or  _G.Setting.Config["AutoRengoku"] or _G.Setting.Config["AutoFarmBone"] or _G.Setting.Config["AutoFarmBossAll"] or _G.Setting.Config["AutoFarmBoss"] or _G.Setting.Config["Autofarmken"] or _G.Setting.Config["AutoFarmKenHob"] or _G.Setting.Config["AutoFarmOrder(Fully)"] or _G.Setting.Config["AutoFarmOrder"] then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 110 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
     end

	function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


function TPP(Pos)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function TPPlayer(Pos)
    repeat wait()
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/200, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 350 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if Distance >= 3000 then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
              game.Players.LocalPlayer.Character.Humanoid.Health =- math.huge
              game:GetService("ReplicatedStorage").Remotes.CommF_:invokeServer("SetSpawnPoint")
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5555,5555,5555)
          end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    until Distance <= 3000
end

function CheckMaterial(v)
	if game.PlaceId == 7449423635  then 
		if (v=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon=CFrame.new( -5815,84,8820);
		elseif ((v=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"};
			CFrameMon=CFrame.new( -1145,15,4350);
		elseif (v =="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"};
			CFrameMon=CFrame.new( -4698,845, -1912);
		elseif (v =="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon=CFrame.new(61123,19,1569);
		end 
	end 
	if game.PlaceId == 4442272183 then 
		if (v =="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"};
			CFrameMon=CFrame.new( -5428,78, -5959);
		elseif (v =="Scrap Metal") then
			MaterialMob={"Swan Pirate [Lv. 775]"};
			CFrameMon=CFrame.new(878,122,1235);
		elseif (v =="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"};
			CFrameMon=CFrame.new(295,73, -56);
		elseif (v =="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"};
			CFrameMon=CFrame.new( -6033,7, -1317);
		elseif (v =="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon=CFrame.new( -3385,239, -10542);
		end 
	end 
	if game.PlaceId == 2753915549  then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"};
			CFrameMon=CFrame.new( -13545,470, -6917);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon=CFrame.new( -10993,332, -8940);
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"};
			CFrameMon=CFrame.new( -12107,332, -10549);
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon=CFrame.new(6594,383,139);
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
			CFrameMon=CFrame.new( -9507,172,6158);
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			CFrameMon=CFrame.new( -469,74,5904);
		end 
	end 
end
	
local function CustomFindFirstChild(tablename)
	for i,v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end

function GetFightingStyle(Style)
	ReturnText = ""
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end


-------------->> // TAP \\ <<-------------
local win = library:Window("   Playback X",[[     Hub]],[[BF]],"6022668898",Enum.KeyCode.RightControl)
local MainTab = win:Tab("Farm",[[7040391851]])
local Fighting = win:Tab("Fighting",[[9606626034]])
local Stats = win:Tab("Auto Stats",[[7040410130]])
local Combat = win:Tab("Combat",[[9606626034]])
local Shop = win:Tab("Shop",[[7294901968]])
local TP = win:Tab("Teleport",[[9606628205]])
local Dungeon = win:Tab("Dungeon",[[9606629300]])
local Settings = win:Tab("Settings",[[9606644121]])
-------------->> // TAP \\ <<-------------

MainTab:Toggle("WhiteScreen","6022668898",_G.Setting.Config["WhiteScreen"],function(a)
    _G.Setting.Config["WhiteScreen"] = a
if _G.Setting.Config["WhiteScreen"] == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.Setting.Config["WhiteScreen"] == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end)

MainTab:Toggle("BackScreen","6022668898",_G.Setting.Config["BlackScreen"],function(a)
    _G.Setting.Config["BlackScreen"] = a
local BlackScreen = game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen
getgenv().DefaultSize = BlackScreen.Size
getgenv().NewSize = UDim2.new(500, 0, 500, 500)
getgenv().StartBlackScreen = false
if _G.Setting.Config["BlackScreen"] then
    BlackScreen.Size = NewSize
	game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.Setting.Config["BlackScreen"] == false then
    BlackScreen.Size = UDim2.new(DefaultSize)
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end)

MainTab:Seperator("Autofarm")

MainTab:Toggle("AutoFarm","6022668898",_G.Setting.Config["Autofarm"],function(a)
	_G.Setting.Config["Autofarm"] = a
	_G.Setting.Config["FarmLv"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

MainTab:Toggle("AutoFarmFast","6022668898",_G.Setting.Config["AutoFarmFast"],function(a)
	_G.Setting.Config["AutoFarmFast"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        pcall(function()
        if _G.Setting.Config["Autofarm"]  then
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
            if _G.Setting.Config["AutoFarmFast"] and (MyLevel >= 30 and MyLevel <= 300) then
          	if MyLevel >= 30 and MyLevel <= 69 then
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
				BringMobFarm = false
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "God's Guard [Lv. 450]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                Click()
                                _G.Setting.Config["FarmLv"] = false
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
								BringMobFarm = true
								PosMon = v.HumanoidRootPart.CFrame
								if _G.Setting.Config["BypassTP"] then
								getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["AutoFarmFast"]  or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "God's Guard [Lv. 450]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
                     	_G.Setting.Config["FarmLv"] = false
                     	BringMobFarm = false
						CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
						getgenv().ToTarget(CFrameMon)
						if _G.Setting.Config["AutoFarmFast"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
							end
						end
                   end
   			elseif MyLevel >= 70 and MyLevel <= 310 then
   			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
           	    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            	end
   			if QuestC.Visible == false then
   			CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
				BringMobFarm = false
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "God's Guard [Lv. 450]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                Click()
                                _G.Setting.Config["FarmLv"] = false
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
								BringMobFarm = true
								PosMon = v.HumanoidRootPart.CFrame
								if _G.Setting.Config["BypassTP"] then
								getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["AutoFarmFast"]  or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "God's Guard [Lv. 450]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
                     	_G.Setting.Config["FarmLv"] = false
                     	BringMobFarm = false
						CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
						getgenv().ToTarget(CFrameMon)
						if _G.Setting.Config["AutoFarmFast"] and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
							end
						end
                   end
              elseif QuestC.Visible == true then
                local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
  			  local Player = string.split(quest," ")[2]
     			getgenv().SelectPly = string.split(quest," ")[2]
     			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
           		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
           	 	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
           	 	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
   		     end
     			if string.find(quest,"Defeat") then
     	 		  repeat task.wait()
        	  	    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            	 		   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        	    		end
						game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                       end
						 EquipWeapon(Weapon)
             		    TPPlayer(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame*CFrame.new(0,0,5))
             		    game:GetService("VirtualUser"):CaptureController()
            	   	  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
     	  		      game.Players:FindFirstChild(Player).Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
             			game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
						 game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
      			  until game.Players:FindFirstChild(Player).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(Player) or not FastFarm()
        				if not game.Players:FindFirstChild(Player) then
         		  		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
        				end   
     			  else
            			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
     			end
		   end
				elseif MyLevel >= 300 and MyLevel <= 2400 then
			  if QuestC.Visible == false then
				_G.Setting.Config["FarmLv"] = true
				else
				_G.Setting.Config["FarmLv"] = true
				end
			   else
					_G.Setting.Config["FarmLv"] = true
           	end
     	 end
		 if _G.Setting.Config["FarmLv"] then
                CheckQuest()
                if QuestC.Visible == false then
                    CheckQuest()
                    repeat wait() getgenv().ToTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30000 or not _G.Setting.Config["Autofarm"]
                    if (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30000 then
						wait(.2)
						BringMobFarm = false
                        wait(.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.5)
                        getgenv().ToTarget(CFrameMon)
                    end
                elseif QuestC.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat game.RunService.Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if _G.Setting.Config["BypassTP"] then
												getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
											end
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                            v.HumanoidRootPart.CanCollide = false
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.Humanoid.WalkSpeed = 20
                                            v.Head.CanCollide = false
											BringMobFarm = true
                                            v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.Setting.Config["Autofarm"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
										CheckQuest()
                                        getgenv().ToTarget(CFrameMon)
                                    end
                                end
                                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                   				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
               				 end
                            end
                        end
                    else
                        BringMobFarm = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                               else
                                     getgenv().ToTarget(CFrameMon)
                                    end
                     	      end
                	      end
         		    end
				end
           end)
     end
 end)
 
MainTab:Button("Stop Tween",function(vu)
       _G.StopTween = true
      wait()
      getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
      wait()
      if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
      end
     _G.StopTween = false
    _G.Clip = false
end)

Waspon = {}

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Waspon ,v.Name)
    end
end
local SelectWeapona = MainTab:Dropdown("Select Weapon",Waspon,function(vu)
    Weapon = vu
end)

Main:Button("Refresh Weapon",function()
    SelectWeapona:Clear()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
        SelectWeapona:Add(v.Name)
    end
end)

local x2Code = {
	"Enyu_is_Pro",
	"Magicbus",
	"Sub2Fer999",
	"Starcodeheo",
	"JCWK",
	"KittGaming",
	"Bluxxy",
	"Sub2OfficialNoobie",
	"TheGreatAce",
	"Axiore",
	"Sub2Daigrock",
	"Sub2NoobMaster123",
	"TantaiGaming",
	"StrawHatMaine",
	"SUB2GAMERROBOT_EXP1",
	"Bignews"
}

MainTab:Button("Redeem All Codes",function()
	function RedeemCode(value)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
	end
	for i,v in pairs(x2Code) do
		RedeemCode(v)
	end
end)

MainTab:Seperator("MysticIsland")

MainTab:Toggle("Auto MysticIsland","6022668898",_G.Setting.Config["AutoMysticIsland"],function(a)
	_G.Setting.Config["AutoMysticIsland"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)
	spawn(function()
        while wait() do
            if _G.Setting.Config["AutoMysticIsland"] then
                pcall(function()
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        getgenv().ToTarget(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
                    end
                end)
            end
        end
    end)

MainTab:Seperator("The World")

MainTab:Toggle("Auto New World","6022668898",_G.Setting.Config["AutoSea2"],function(a)
	_G.Setting.Config["AutoSea2"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)


		spawn(function()
				while wait() do
					pcall(function()
						if _G.Setting.Config["AutoSea2"] then
							if game.Players.LocalPlayer.Data.Level.Value >= 700 then
								if _G.Setting.Config["Autofarm"] then
									_G.Setting.Config["FarmLv"] = false
								end
								if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
									wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
									EquipWeapon("Key")
									repeat wait() getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto New World"]
									wait(3)
								elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
												repeat wait()
													EquipWeapon(Weapon)
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
												until v.Humanoid.Health <= 0 or not v.Parent
												game:GetService("ReplicatedStorage"):InvokeServer("TravelDressrosa")
											end
										end
									else
										getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								end
							end
						end
					end)
				end
			end)
MainTab:Seperator("AllMaterial")
local AllMaterial
if game.PlaceId == 7449423635 then
	AllMaterial = {
		"Magma Ore",
		"Leather",
		"Scrap Metal",
		"Angel Wings",
		"Fish Tail"
	}
elseif game.PlaceId == 4442272183 then
	AllMaterial = {
		"Magma Ore",
		"Scrap Metal",
		"Radioactive Material",
		"Vampire Fang",
		"Mystic Droplet",
	}
elseif game.PlaceId == 7449423635 then
	AllMaterial = {
		"Mini Tusk",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Conjured Cocoa",
		"Demonic Wisp",
		"Gunpowder",
	}
end
table.sort(AllMaterial)

MainTab:Dropdown("Select Material",AllMaterial,function(vu)
	AllMaterialV1 = vu
end)

MainTab:Toggle("Auto Farm Material","6022668898",_G.Setting.Config["Auto Farm Material"],function(a)
	_G.Setting.Config["Auto Farm Material"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["Auto Farm Material"] then
            pcall(function()
            CheckMaterial(AllMaterialV1)
            if CustomFindFirstChild(MaterialMob) then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if _G.Setting.Config["Auto Farm Material"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
								PosMon = v.HumanoidRootPart.CFrame
								BringMobFarm = true
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["Auto Farm Material"] or v.Humanoid.Health <= 0 or not v.Parent
                        end
                    end
                else
                CheckMaterial(AllMaterialV1)
            	getgenv().ToTarget(CFrameMon)
                end
            end)
        end
    end
end)

MainTab:Seperator("Mob Aura")

MainTab:Toggle("Auto Mob Aura","6022668898",_G.Setting.Config["Mob Aura"],function(a)
	_G.Setting.Config["Mob Aura"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

     spawn(function()
			while wait() do
				pcall(function()
					if _G.Setting.Config["Mob Aura"] then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.Setting.Config["Mob Aura"] and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= _G.Setting.Config["Point Mon"] then
								repeat wait()
									EquipWeapon(Weapon)
                             	   v.HumanoidRootPart.CanCollide = false
                           	     v.Humanoid.WalkSpeed = 0
                          	      v.Head.CanCollide = false
                          	  	StartMagnet = true
                          		  PosMon = v.HumanoidRootPart.CFrame
                          		  v.HumanoidRootPart.Transparency = 1
                            	    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            	    game:GetService'VirtualUser':CaptureController()
                         	       game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									if delay then
										delay(1,function()
											StartMagnet = true
											Bring()
										end)
									end 
								until not _G.Setting.Config["Mob Aura"] or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
							end
						end
					end
				end)
			end
		end)
		
		_G.Setting.Config["Point Mon"] = 1000
MainTab:Slider("Select Point Mon",1,5000,_G.Setting.Config["Point Mon"],function(value)
    _G.Setting.Config["Point Mon"] = value
end)
MainTab:Seperator("FarmBoss")

local Boss = {}

for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
            else
            table.insert(Boss, v.Name)
        end
    end
end

local BossName = MainTab:Dropdown("Select Boss",Boss,function(value)
    SelectBoss = value
end)

MainTab:Button("Refresh Boss",function()
    BossName:Clear()
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            BossName:Add(v.Name) 
        end
    end
end)

MainTab:Toggle("AutoFarmBoss","6022668898",_G.Setting.Config["AutoFarmBoss"],function(a)
	_G.Setting.Config["AutoFarmBoss"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["AutoFarmBoss"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == SelectBoss then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["AutoFarmBoss"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == SelectBoss then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						end
                    end
            end)
        end
    end
end)

MainTab:Toggle("AutoFarmBossAll","6022668898",_G.Setting.Config["AutoFarmBossAll"],function(a)
	_G.Setting.Config["AutoFarmBossAll"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["AutoFarmBossAll"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name,"Boss") then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["AutoFarmBossAll"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if string.find(v.Name,"Boss") then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						end
                    end
            end)
        end
    end
end)

MainTab:Seperator("World 1")
MainTab:Toggle("AutoSaber","6022668898",_G.Setting.Config["AutoSaber"],function(a)
	_G.Setting.Config["AutoSaber"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)
		spawn(function()
		    while wait() do
					pcall(function()
						if _G.Setting.Config["AutoSaber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
							if _G.Setting.Config["Autofarm"] then
								_G.Setting.Config["Autofarm"] = false
							end
							if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
								if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
									if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
										wait(1) 
									else
										getgenv().ToTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
									end
								else
									if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
										if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
											EquipWeapon("Torch")
											getgenv().ToTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
										else
											getgenv().ToTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                 
										end
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
											wait(0.5)
											EquipWeapon("Cup")
											wait(0.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
											wait(0)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
										else
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
											elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
												if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
													    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    										if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                      										  if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            											repeat task.wait()
                               											 EquipWeapon(Weapon)
                                											v.HumanoidRootPart.CanCollide = false
                               											 v.Humanoid.WalkSpeed = 0
                                											v.Head.CanCollide = false
                                											getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                											game:GetService'VirtualUser':CaptureController()
                                											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            										until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Saber"] == false
                        										end
                    										end
															for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                   								   		 if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                   							    	    		getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
															   end
                   						      		end
												    end
              							    end
											elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
												wait(0.5)
												EquipWeapon("Relic")
												wait(0.5)
												getgenv().ToTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
											end
										end
									end
								end
							else
								if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Saber Expert [Lv. 200] [Boss]" then
											repeat wait()
												EquipWeapon(Weapon)
                                    			getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                  		      game:GetService'VirtualUser':CaptureController()
                                    			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Saber"] == false
											if v.Humanoid.Health <= 0 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
											end
											_G.Setting.Config["Autofarm"] = true
										end
									end
								end
							end
						end
					end)
				end
			end)
			
MainTab:Toggle("Auto Pole","6022668898",_G.Setting.Config["Auto Pole"],function(a)
	_G.Setting.Config["Auto Pole"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)
			
spawn(function()
    while task.wait() do
        if _G.Setting.Config["Auto Pole"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Thunder God [Lv. 575] [Boss]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["AutoFarmBoss"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Thunder God [Lv. 575] [Boss]"  then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						end
                    end
            end)
        end
    end
end)

MainTab:Seperator("FarmKen")
MainTab:Toggle("AutoFarmKen","6022668898",_G.Setting.Config["Autofarmken"],function(a)
	_G.Setting.Config["Autofarmken"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["Autofarmken"] then
            pcall(function()
            CheckQuest()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Mon then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,1,5))
                                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                            until not _G.Setting.Config["Autofarmken"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == Mon then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,1,5))
                       else      
	                        getgenv().ToTarget(CFrameMon)
						end
                    end
            end)
        end
    end
end)
 
 MainTab:Toggle("AutoFarmKenHob","6022668898",_G.Setting.Config["AutoFarmKenHob"],function(a)
	_G.Setting.Config["AutoFarmKenHob"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["AutoFarmKenHob"] then
            pcall(function()
            CheckQuest()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Mon then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,1,5))
                                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                                wait(20)
                    		    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
                            until not _G.Setting.Config["AutoFarmKenHob"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == Mon then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,1,5))
                    	wait(20)
                        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
                       else      
	                        getgenv().ToTarget(CFrameMon)
						end
                    end
            end)
        end
    end
end)

MainTab:Seperator("World3")

MainTab:Toggle("Auto Buddy Swords","6022668898",_G.Setting.Config["Auto Buddy Swords"],function(a)
_G.Setting.Config["Auto Buddy Swords"] = a
if a == false then
wait()
  getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
  wait()
end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["Auto Buddy Swords"] then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								EquipWeapon(Weapon)
                         			 v.HumanoidRootPart.CanCollide = false
                         			 v.Humanoid.WalkSpeed = 0
                          			v.Head.CanCollide = false
                          			PosMon = v.HumanoidRootPart.CFrame
                       			   v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        			  BringMobFarm = true
                          			if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
								end
                         			 getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                          			game:GetService'VirtualUser':CaptureController()
                         			 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Setting.Config["Auto Buddy Swords"] or v.Humanoid.Health <= 0
						end
					end
				end
			end
		end)
	end
end)

MainTab:Toggle("Auto Buddy Swords Hop","6022668898",_G.Setting.Config["Auto Buddy Swords Hop"],function(a)
_G.Setting.Config["Auto Buddy Swords Hop"] = a
if a == false then
wait()
  getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
  wait()
end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["Auto Buddy Swords Hop"] then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								EquipWeapon(Weapon)
                        	    v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                            	v.Head.CanCollide = false
                            	PosMon = v.HumanoidRootPart.CFrame
                       	     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        	    BringMobFarm = true
                            	if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							    end
                               getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                           	game:GetService'VirtualUser':CaptureController()
                          	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Setting.Config["Auto Buddy Swords"] or v.Humanoid.Health <= 0
							end
						end
					else
					  Hop()
				end
			end
		end)
	end
end)

MainTab:Toggle("Auto Farm Boss Hallow","6022668898",_G.Setting.Config["Auto Farm Boss Hallow"],function(a)
_G.Setting.Config["Auto Farm Boss Hallow"] = a
if a == false then
wait()
  	getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["Auto Farm Boss Hallow"] then
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name , "Soul Reaper") then
							repeat wait()
								EquipWeapon(Weapon)
                        	    v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                            	v.Head.CanCollide = false
                            	PosMon = v.HumanoidRootPart.CFrame
                       	     v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        	    BringMobFarm = true
                            	if _G.Setting.Config["BypassTP"] then
									getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
							    end
                               getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                           	game:GetService'VirtualUser':CaptureController()
                          	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until v.Humanoid.Health <= 0 or not _G.Setting.Config["Auto Farm Boss Hallow"]
						end
					end
				else
					getgenv().ToTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
				end
			end
		end)
	end
end)

MainTab:Toggle("Auto Elite Hunter","6022668898",_G.Setting.Config["Auto Elite Hunter"],function(a)
_G.Setting.Config["Auto Elite Hunter"] = a
if a == false then
wait()
  	getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
end)

MainTab:Toggle("Auto Elite Hunter Hop","6022668898",_G.Setting.Config["Auto Elite Hunter Hop"],function(a)
_G.Setting.Config["Auto Elite Hunter Hop"] = a
if a == false then
wait()
  	getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
end)

  spawn(function()
      while wait() do
          if _G.Setting.Config["Auto Elite Hunter"] then
              pcall(function()
                  if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                      if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                          if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                  if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                          repeat wait()
                                              EquipWeapon(Weapon)
                                              v.HumanoidRootPart.CanCollide = false
                                              v.Humanoid.WalkSpeed = 0
                                              v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                              getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Select_Distance,0))
                                              game:GetService("VirtualUser"):CaptureController()
                                              game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                              sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                          until _G.Setting.Config["Auto Elite Hunter"]  == false or v.Humanoid.Health <= 0 or not v.Parent
                                      end
                                  end
                              end
                          else
                              if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                  getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,_G.Select_Distance,0))
                              elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                  getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,_G.Select_Distance,0))
                              elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                  getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,_G.Select_Distance,0))
                              end
                          end                    
                      end
                  else
                      if _G.Setting.Config["Auto Elite Hunter Hop"]  and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
                          Hop()
                      else
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                      end
                  end
              end)
          end
      end
  end)

MainTab:Seperator("BoneFarm")

 MainTab:Toggle("AutoFarmBone","6022668898",_G.Setting.Config["AutoFarmBone"],function(a)
	_G.Setting.Config["AutoFarmBone"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["AutoFarmBone"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name =="Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                BringMobFarm = true
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Setting.Config["AutoFarmBone"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                BringMobFarm = false
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Reborn Skeleton [Lv. 1975]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Living Zombie [Lv. 2000]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Demonic Soul [Lv. 2025]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Posessed Mummy [Lv. 2050]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    getgenv().ToTarget(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625))
						end
                    end
            end)
        end
    end
end)

MainTab:Toggle("AutoRadomBone","6022668898",_G.Setting.Config["RadomBone"],function(a)
	_G.Setting.Config["RadomBone"] = a
end)

spawn(function()
	while wait(0.1) do
		if _G.Setting.Config["RadomBone"] then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end)
		end
	end
end)

MainTab:Seperator("Order")

MainTab:Toggle("AutoFarmOrder (Kill)","6022668898",_G.Setting.Config["AutoFarmOrder"],function(a)
	_G.Setting.Config["AutoFarmOrder"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
        while wait() do
            if  _G.Setting.Config["AutoFarmOrder"] then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order [Lv. 1250] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        if _G.Setting.Config["BypassTP"] then
											getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
										end
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Setting.Config["AutoFarmOrder"] or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                  end)
              end
          end
     end)

MainTab:Toggle("AutoFarmOrder (Fully)","6022668898",_G.Setting.Config["AutoFarmOrder(Fully)"],function(a)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
	wait(.8)
	fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
	wait(.1)
	_G.Setting.Config["AutoFarmOrder(Fully)"] = a
	_G.Setting.Config["AutoFarmOrder"] = a
	if a == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)

spawn(function()
    while task.wait() do
        if _G.Setting.Config["AutoFarmOrder(Fully)"] then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Order [Lv. 1250] [Raid Boss]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until not _G.Setting.Config["AutoFarmBoss"] or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Order [Lv. 1250] [Raid Boss]" then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						end
                    end
            end)
        end
    end
end)

MainTab:Button("Buy Chip (Order [Lv. 1250] [Raid Boss])",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
end)

MainTab:Button("Start (Order [Lv. 1250] [Raid Boss])",function()
fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
end)

MainTab:Seperator("Other")

MainTab:Toggle("AutoRaceV2","6022668898",_G.Setting.Config["AutoRaceV2"],function(value)
  _G.Setting.Config["AutoRaceV2"] = value
  if value == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
end)
    
    spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.Config["AutoRaceV2"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and Back:FindFirstChild("Flower 1") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Zombie [Lv. 950]" then
                            repeat task.wait()
                                if v:FindFirstChild("HumanoidRootPart") then
                                    EquipWeapon(Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									game:GetService'VirtualUser':CaptureController()
                             	   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3")
                        end
                    end
                end
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
                    getgenv().ToTarget(game.Workspace["Flower2"].CFrame)
                end
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") then
                    getgenv().ToTarget(game.Workspace["Flower1"].CFrame)
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") and Back:FindFirstChild("Flower 3") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                end
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Flower1" or v.Name == "Flower2" then
                        v.Size = Vector3.new(50,50,50)
                    end
                end
            end
        end)
    end
end)
    MainTab:Toggle("AutoRengoku","6022668898",_G.Setting.Config["AutoRengoku"],function(value)
 	   _G.Setting.Config["AutoRengoku"] = value
 	  BringMobFarm = false
 	  if value == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
    end)
    
 spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.Config["AutoRengoku"] then
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
                    getgenv().ToTarget(CFrame.new(5733.30615234375, 28.366647720336914, -6400.83837890625))
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Arctic Warrior [Lv. 1350]" or v.Name == "Snow Lurker [Lv. 1375]" then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))													
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    BringMobFarm = true
                                until not _G.Setting.Config["AutoRengoku"] or not v.Parent or v.Humanoid.Health <= 0
                                BringMobFarm = false
                            end
                        end
                    end
                else
					BringMobFarm = false
                    getgenv().ToTarget(CFrame.new(6571.9853515625, 297.16973876953125, -6965.3515625))
                end
            end
        end)
    end
end)
    
    MainTab:Toggle("AutoBartilo","6022668898",_G.Setting.Config["AutoBartilo"],function(value)
        _G.Setting.Config["AutoBartilo"] = value
        if value == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
    end)
      spawn(function()
            pcall(function()
                while wait() do
                    if _G.Setting.Config["AutoBartilo"] then
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate [Lv. 775]" then
                                            pcall(function()
                                                repeat wait()
                                                    EquipWeapon(Weapon)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))													
                                                    PosMon =  v.HumanoidRootPart.CFrame
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    BringMobFarm = true
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.Setting.Config["AutoBartilo"] == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                BringMobFarm = false
                                            end)
                                        end
                                    end
                                else
                                    repeat getgenv().ToTarget(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                                end
                            else
                                repeat getgenv().ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end 
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                        OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                        repeat wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(Weapon)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.Setting.Config["AutoBartilo"] == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                repeat getgenv().ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                wait(2)
                            else
                                repeat getgenv().ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            end
                        		elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                      			  getgenv().ToTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                        			wait(3)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                  				 end
             				end 
        				end
    				end)
			   end)

    
    MainTab:Toggle("Auto Holy Torch","6022668898",_G.Setting.Config["AutoHolyTorch"],function(value)
        _G.Setting.Config["AutoHolyTorch"] = value
        if value == false then
		wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.Setting.Config["AutoHolyTorch"] then
                pcall(function()
                    wait(1)
                    getgenv().ToTarget(CFrame.new(-10752, 417, -9366))
                    wait(1)
                    getgenv().ToTarget(CFrame.new(-11672, 334, -9474))
                    wait(1)
                    getgenv().ToTarget(CFrame.new(-12132, 521, -10655))
                    wait(1)
                    getgenv().ToTarget(CFrame.new(-13336, 486, -6985))
                    wait(1)
                    getgenv().ToTarget(CFrame.new(-13489, 332, -7925))
                end)
            end
        end
    end)

-------------->> // Auto Fighting \\ <<-------------
Fighting:Seperator("Fighting")
Fighting:Toggle("      AutoFullySuperhuman","6022668898",_G.Setting.Config["AutoFullySuperhuman"],function(a)
    _G.Setting.Config["AutoFullySuperhuman"] = a
end)

spawn(function()
    pcall(function()
        while task.wait() do 
            if _G.Setting.Config["AutoFullySuperhuman"] then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    Weapon = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        Weapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        Weapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        Weapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        Weapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                    else
                        local Fragment = game:GetService("Players")["Localplayer"].Data.Fragments.Value
                        if Fragment <=1499 then
                            _G.Setting.Config["AutoFullySuperhuman"] = true 
                        else
                            _G.Setting.Config["AutoFullySuperhuman"] = false
                        end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)

Fighting:Toggle("    AutoSuperhuman","6022668898",_G.Setting.Config["AutoSuperhuman"],function(a)
    _G.Setting.Config["AutoSuperhuman"] = a
end)

spawn(function()
    pcall(function()
        while task.wait() do 
            if _G.Setting.Config["AutoSuperhuman"] then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    Weapon = "Superhuman"
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then 
						local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        Weapon = "Black Leg"
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					    end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        Weapon = "Electro"
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					    end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        Weapon = "Fishman Karate"
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					    end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        Weapon = "Dragon Claw"
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					    end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                    else
                        local Fragment = game:GetService("Players")["Localplayer"].Data.Fragments.Value
                        if Fragment <=1499 then
                            Toggles.FullAutoRaid.Value = true 
                        else
                            Toggles.FullAutoRaid.Value = false
                        end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)

Fighting:Toggle("AutoGodhuman","6022668898",_G.Setting.Config["AutoGodhuman"],function(a)
    _G.Setting.Config["AutoGodhuman"] = a
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.Config["AutoGodhuman"]  then
                if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                    Weapon = "Godhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 then
                        Weapon = "Death Step"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 then
                        Weapon = "Electric Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 then
                        Weapon = "Sharkman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
                        Weapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    end 
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:Character("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                    end
                end
            end
        end)
    end
end)

Fighting:Toggle("AutoDeathStep","6022668898",_G.Setting.Config["AutoDeathStep"],function(a)
    _G.Setting.Config["AutoDeathStep"] = a
end)

spawn(function()
    while wait() do wait()
        if _G.Setting.Config["AutoDeathStep"] then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    Weapon = "Death Step"
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") then 
						local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    Weapon = "Death Step"
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") then 
						local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                    Weapon = "Black Leg"
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") then 
						local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
        end
    end
end)
Fighting:Toggle("AutoSharkman","6022668898",_G.Setting.Config["AutoSharkman"],function(a)
_G.Setting.Config["AutoSharkman"] = a
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Setting.Config["AutoSharkman"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                        getgenv().ToTarget(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                    else 
                        Ms = "Tide Keeper [Lv. 1475] [Boss]"
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then    
                                    OldCFrameShark = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(Weapon)
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameShark
                                        if _G.Setting.Config["BypassTP"] then
											getgenv().BypassTP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
										end
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                            wait(3)
                        end
                    end
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            end
        end
    end)
end)

Fighting:Toggle("AutoElectricClaw","6022668898",_G.Setting.Config["AutoElectricClaw"],function(a)
_G.Setting.Config["AutoElectricClaw"] = a
end)

spawn(function()
    pcall(function()
        while wait() do 
            if _G.Setting.Config["AutoElectricClaw"] then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
						end
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
						end
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                        wait(.5)
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") then 
							local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") 
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
						end
                    end 
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                end
            end
            if _G.AutoElectricClaw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        if AutoFarm == false then
                            getgenv().ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))           
                            wait(1.1)                
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(.5)
                            getgenv().ToTarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))                            
                            wait(.5)
                            getgenv().ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))                           
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        elseif _G.AutoFarm == true then
                            _G.AutoFarm = false
                            wait(.5)
                            getgenv().ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))           
                            wait(1.1)                
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(.5)
                            getgenv().ToTarget(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))                            
                            wait(.5)
                            getgenv().ToTarget(CFrame.new(-10371.4717, 330.764496, -10131.4199))                           
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            wait(.5)
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then 
								local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") 
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
							end
                            _G.AutoFarm = true
                        end
                    end
                end
            end
        end
    end)    
end)

Fighting:Toggle("AutoDragonTalon","6022668898",_G.Setting.Config["AutoDragonTalon"],function(a)
_G.Setting.Config["AutoDragonTalon"] = a
end)

spawn(function()
    while wait() do
        if _G.Setting.Config["AutoDragonTalon"] then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then 
					local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then 
					local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") then 
					local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") 
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
					end
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
            end
        end
    end
end)

Fighting:Seperator("BuyFighting")

Fighting:Button("Buy Black Leg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

Fighting:Button("Buy Electro",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

Fighting:Button("Buy Fishman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

Fighting:Button("Buy Dragon Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Fighting:Button("Buy Superhuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

Fighting:Button("Buy Godhuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)

Fighting:Button("Buy Death Step",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

Fighting:Button("Buy Sharkman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

Fighting:Button("Buy Electric Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

Fighting:Button("Buy Dragon Talon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

-------------->> // Auto Stats \\ <<-------------
Stats:Seperator("Auto Stats")

local Pointstat = Stats:Label("Stat Points")

spawn(function()
    while wait() do
        pcall(function()
            Pointstat:Set("Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
        end)
    end
end)

Stats:Toggle("Autokaitun","7040410130",_G.Setting.Config["MEELEE"],function(value)
    _G.Setting.Config["Kaitun"] = value
end)

Stats:Toggle("Auto Melee","7040410130",_G.Setting.Config["MEELEE"],function(value)
    _G.Setting.Config["MEELEE"] = value
end)

Stats:Toggle("Auto Defense","7040410130",_G.Setting.Config["DEFE"],function(value)
    _G.Setting.Config["DEFE"] = value
end)

Stats:Toggle("Auto Sword","7040410130",_G.Setting.Config["SWRD"],function(value)
    _G.Setting.Config["SWRD"] = value
end)

Stats:Toggle("Auto Gun","6022668898",_G.Setting.Config["GUN"],function(value)
    _G.Setting.Config["GUN"] = value
end)

Stats:Toggle("Auto Devil Fruits","7040410130",_G.Setting.Config["DVLF"],function(value)
    _G.Setting.Config["DVLF"] = value
end)

_G.Setting.Config["PointStats"] = 1
Stats:Slider("Select Point",1,100,_G.Setting.Config["PointStats"],function(value)
    _G.PointStats = value
end)

spawn(function()
	while wait(.1) do
		if _G.Setting.Config["Kaitun"] then
			if game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value >= 2400 then
				if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
				end
				else
				if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["MEELEE"] then
				if _G.Setting.Config["Kaitun"] == true then
					if game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value >= 2400 then
					if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
						end
					else
						if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
						end
					end
					else
					if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
					end
				end
			end
		end)
	end
end)


spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["DEFE"] then
				if _G.Setting.Config["Kaitun"] == true then
					if game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value >= 2400 then
					if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
						end
					else
						if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
						end
					end
					else
					if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
					end
				end
			end
		end)
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["SWRD"] then
				if _G.Setting.Config["Kaitun"] == true then
					if game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value >= 2400 then
					if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
						end
					else
						if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
						end
					end
					else
					if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
					end
				end
			end
		end)
	end
end)


spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["GUN"] then
				if _G.Setting.Config["Kaitun"] == true then
					if game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value >= 2400 then
					if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
						end
					else
						if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
						end
					end
					else
					if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
					end
				end
			end
		end)
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Setting.Config["DVLF"] then
				if _G.Setting.Config["Kaitun"] == true then
					if game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value >= 2400 then
					if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
						end
					else
						if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.PointStats)
						end
					end
					else
					if  game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.PointStats)
					end
				end
			end
		end)
	end
end)

Stats:Seperator("Fake Deta")

Stats:Textbox("Fake Bali","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Beli.Value = vu
end)

Stats:Textbox("Fake Fragments","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = vu
end)
Stats:Textbox("Fake Points","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Points.Value = vu
end)

Stats:Textbox("Fake Lv","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Level.Value = vu
end)

Stats:Textbox("Fake Exp","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Exp.Value = vu
end)

Stats:Textbox("Fake Point Demon Fruit","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Stats["Demon Fruit"].Level.Value = vu
end)

Stats:Textbox("Fake Point Defense","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Stats.Defense.Level.Value = vu
end)

Stats:Textbox("Fake Point Melee","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value = vu
end)

Stats:Textbox("Fake Point Sword","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Stats.Sword.Level.Value = vu
end)

Stats:Textbox("Fake Point Gun","",function(vu)
	game:GetService("Players")["LocalPlayer"].Data.Stats.Gun.Level.Value = vu
end)

-------------->> // Combat \\ <<-------------

Combat:Seperator("Combat")
local plyserv = Combat:Label("Players")
spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if i == 12 then
                    plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                elseif i == 1 then
                    plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
                else
                    plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
                end
            end
        end)
    end
end)

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = Combat:Dropdown("Select Players",Playerslist,function(value)
    SelectedKillPlayer = value
end)

Combat:Button("Refresh Player",function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        SelectedPly:Add(v.Name)
    end
end)
Combat:Toggle("Skillaimbot","6022668898",false,function(vu)
    Skillaimbot = vu
		if Skillaimbot then
			if game.Players:FindFirstChild(SelectedKillPlayer) and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectedKillPlayer).Character.Humanoid.Health > 0 then
				AimBotSkillPosition = game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart").Position
			end
		end
	end)
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectedKillPlayer) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
		end
end)
spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit then
							args[2] = PositionSkillMasteryDevilFruit
							return old(unpack(args))
						elseif Skillaimbot then
							args[2] = AimBotSkillPosition
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	
	
Combat:Toggle("Gunaimbot","6022668898",false,function(vu)
AimbotGun = vu
		if vu then
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
end)

-------------->> // Shop \\ <<-------------

Shop:Seperator("AutoBuy")

Shop:Toggle("Auto Buy Enchanment Haki","7294901968",_G.Setting.Config["Auto Buy Enchanment Haki"],function(a)
_G.Setting.Config["Auto Buy Enchanment Haki"] = a
while _G.Setting.Config["Auto Buy Enchanment Haki"] do wait(.1)
	local args = {
		[1] = "ColorsDealer",
		[2] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

Shop:Toggle("Auto Buy Legendary Sword","7294901968",_G.Setting.Config["Auto Buy Legendary Sword"],function(a)
_G.Setting.Config["Auto Buy Legendary Sword"] = a
while _G.Setting.Config["Auto Buy Legendary Sword"] do wait(.1)
	local args = {
		[1] = "LegendarySwordDealer",
		[2] = "1"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "LegendarySwordDealer",
		[2] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
		[1] = "LegendarySwordDealer",
		[2] = "3"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end 
end)

Shop:Seperator("Fragment")

Shop:Button("Refund Stat",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

Shop:Button("Reroll Race",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

Shop:Seperator("Buy Abilities")

Shop:Button("Buy Haki",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

Shop:Button("Buy Geppo",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)

Shop:Button("Buy Soru",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)

Shop:Button("Buy Ken",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

Shop:Seperator("Buy Sword")

Shop:Button("Buy Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

Shop:Button("Buy Cutlass",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

Shop:Button("Buy Duel Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

Shop:Button("Buy Iron Mace",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

Shop:Button("Buy Pipe",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

Shop:Button("Buy Triple Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

Shop:Button("Buy Dual Headed Blade",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

Shop:Button("Buy Bisento",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

Shop:Button("Buy Soul Cane",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

Shop:Seperator("Buy Gun")

Shop:Button("Buy Slingshot",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

Shop:Button("Buy Musket",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

Shop:Button("Buy Flintlock",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

Shop:Button("Buy Refined Flintlock",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

Shop:Button("Buy Cannon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

Shop:Button("Buy Kabucha",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)

Shop:Seperator("Buy Accessory")

Shop:Button("Buy Black Cape",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)

Shop:Button("Buy Toemo Ring",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)

Shop:Button("Buy Swordsman Hat",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)

-------------->> // Teleport \\ <<-------------

TP:Seperator("World - Monster")

TP:Button("Teleport To Old World",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

TP:Button("Teleport To Second Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

TP:Button("Teleport To Third Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)


TP:Seperator("Island")

if game.PlaceId == 2753915549 then
    TP:Dropdown("Select Island",{
        "WindMill",
        "Marine",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Snow Island",
        "MarineFord",
        "Colosseum",
        "Sky Island 1",
        "Sky Island 2",
        "Sky Island 3",
        "Prison",
        "Magma Village",
        "Under Water Island",
        "Fountain City",
        "Shank Room",
        "Mob Island"
        },function(value)
        _G.Setting.Config["SelectIsland"] = value
    end)
end

if game.PlaceId == 4442272183 then
    TP:Dropdown("Select Island",{
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island"
        },function(value)
        _G.Setting.Config["SelectIsland"] = value
    end)
end

if game.PlaceId == 7449423635 then
    TP:Dropdown("Select Island",{
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Noname Island(New)"
        },function(value)
        _G.Setting.Config["SelectIsland"] = value
    end)
end

TP:Toggle("Teleport","88",_G.T,function(value)
    _G.Setting.Config["TeleportIsland"] = value
    if _G.Setting.Config["TeleportIsland"] == true then
    while _G.Setting.Config["TeleportIsland"] do wait()
        repeat wait()
            if _G.Setting.Config["SelectIsland"] == "WindMill" then
                ByPass(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.Setting.Config["SelectIsland"] == "Marine" then
                ByPass(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.Setting.Config["SelectIsland"] == "Middle Town" then
                ByPass(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.Setting.Config["SelectIsland"] == "Jungle" then
                ByPass(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.Setting.Config["SelectIsland"] == "Pirate Village" then
                ByPass(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.Setting.Config["SelectIsland"] == "Desert" then
                ByPass(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.Setting.Config["SelectIsland"] == "Snow Island" then
                ByPass(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.Setting.Config["SelectIsland"] == "MarineFord" then
                ByPass(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.Setting.Config["SelectIsland"] == "Colosseum" then
                ByPass( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.Setting.Config["SelectIsland"] == "Sky Island 1" then
                ByPass(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.Setting.Config["SelectIsland"] == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.Setting.Config["SelectIsland"] == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.Setting.Config["SelectIsland"] == "Prison" then
                ByPass( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.Setting.Config["SelectIsland"] == "Magma Village" then
                ByPass(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.Setting.Config["SelectIsland"] == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.Setting.Config["SelectIsland"] == "Fountain City" then
                ByPass(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.Setting.Config["SelectIsland"] == "Shank Room" then
				ByPass(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
				wait(.1)
                getgenv().ToTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.Setting.Config["SelectIsland"] == "Mob Island" then
                getgenv().ToTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.Setting.Config["SelectIsland"] == "The Cafe" then
                ByPass(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.Setting.Config["SelectIsland"] == "Frist Spot" then
                getgenv().ToTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.Setting.Config["SelectIsland"] == "Dark Area" then
                getgenv().ToTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.Setting.Config["SelectIsland"] == "Flamingo Mansion" then
                getgenv().ToTarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
            elseif _G.Setting.Config["SelectIsland"] == "Flamingo Room" then
                getgenv().ToTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
            elseif _G.Setting.Config["SelectIsland"] == "Green Zone" then
                ByPass( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.Setting.Config["SelectIsland"] == "Factory" then
                getgenv().ToTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.Setting.Config["SelectIsland"] == "Colossuim" then
                getgenv().ToTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.Setting.Config["SelectIsland"] == "Zombie Island" then
                ByPass(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.Setting.Config["SelectIsland"] == "Two Snow Mountain" then
                getgenv().ToTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.Setting.Config["SelectIsland"] == "Punk Hazard" then
                ByPass(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.Setting.Config["SelectIsland"] == "Cursed Ship" then
                getgenv().ToTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.Setting.Config["SelectIsland"] == "Ice Castle" then
                ByPass(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.Setting.Config["SelectIsland"] == "Forgotten Island" then
                ByPass(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.Setting.Config["SelectIsland"] == "Ussop Island" then
                ByPass(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.Setting.Config["SelectIsland"] == "Mini Sky Island" then
                getgenv().ToTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.Setting.Config["SelectIsland"] == "Great Tree" then
                ByPass(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.Setting.Config["SelectIsland"] == "Castle On The Sea" then
                ByPass(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
            elseif _G.Setting.Config["SelectIsland"] == "MiniSky" then
                getgenv().ToTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.Setting.Config["SelectIsland"] == "Port Town" then
                ByPass(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.Setting.Config["SelectIsland"] == "Hydra Island" then
                ByPass(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
            elseif _G.Setting.Config["SelectIsland"] == "Floating Turtle" then
                ByPass(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.Setting.Config["SelectIsland"] == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
            elseif _G.Setting.Config["SelectIsland"] == "Haunted Castle" then
                ByPass(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.Setting.Config["SelectIsland"] == "Ice Cream Island" then
                ByPass(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.Setting.Config["SelectIsland"] == "Peanut Island" then
                ByPass(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.Setting.Config["SelectIsland"] == "Cake Island" then
                ByPass(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
             elseif _G.Setting.Config["SelectIsland"] == "Chocolate Island" then
                ByPass(CFrame.new(53.0000267, 58.6640739, -12851.6777, -0.203585744, 0, 0.979057133, 0, 1, 0, -0.979057133, 0, -0.203585744))
            end
        until not _G.TeleportIsland
    end
    StopTween(_G.TeleportIsland)
 end
end)

-------------->> // Dungeon \\ <<-------------

if game.PlaceId == 2753915549 then
Dungeon:Line()
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Seperator("World 2-3")
Dungeon:Line()
end

if game.PlaceId == 4442272183  or game.PlaceId == 7449423635 then
Dungeon:Seperator("Welcome to Auto Dungeon")

Dungeon:Dropdown("Select Chips",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},function(value)
     _G.SelectChip = value
end)

Dungeon:Toggle("AutoSelectDungeon","9606629300",_G.Setting.Config["AutoSelectDungeon"],function(a)
_G.Setting.Config["AutoSelectDungeon"] = a
end)
    
    spawn(function()
        while wait() do
            if _G.Setting.Config["AutoSelectDungeon"] then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        _G.SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        _G.SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        _G.SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        _G.SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        _G.SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        _G.SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        _G.SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        _G.SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        _G.SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        _G.SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        _G.SelectChip = "Bird: Phoenix"
                    else
                        _G.SelectChip = "Flame"
                    end
                end)
            end
        end
    end)


Dungeon:Toggle("Kill Aura","9606629300",_G.Setting.Config["Kill Aura"],function(a)
_G.Setting.Config["Kill Aura"] = a
end)
task.spawn(function()
    while task.wait() do
        if _G.Setting.Config["Kill Aura"]  then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat task.wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(500,500,500)
                            v.HumanoidRootPart.Transparency = 1
                        until not _G.Setting.Config["Kill Aura"] or v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end) 

Dungeon:Toggle("Next Island","9606629300",_G.Setting.Config["Next Island"],function(a)
_G.Setting.Config["Next Island"] = a
end)

    task.spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Setting.Config["Next Island"] then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,25,0))
                        end
                    end
                end
            end
        end)
    end)
    
Dungeon:Toggle("Auto Awakened","9606629300",_G.Setting.Config["Auto Awakened"],function(a)
_G.Auto_Awakener = a
end)

	spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
    
Dungeon:Toggle("Auto Buy Chip Select","9606629300",_G.Setting.Config["Auto Buy Chip Select"],function(a)
_G.Setting.Config["Auto Buy Chip Select"] = a
while _G.Setting.Config["Auto Buy Chip Select"] do wait()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
end
end)
Dungeon:Button("Start Go To Dungeon",function()
   if game.PlaceId == 4442272183 then
      fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
   elseif game.PlaceId == 7449423635 then
       fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
    end
end)
end
-------------->> // Settings \\ <<-------------

Settings:Button("ตัดรูปไก่ตัน",function()
		local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
		local RaityColor =  {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] =  Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228) ,
			["Mythical"] =  Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k,v in pairs(RaityColor) do 
				if v==color then return k end
			end
		end

		for k,v in pairs(Inventory) do 
			Items[v.Name] = v
		end

		local total = #getupvalue(cac.UpdateRender,4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2<total do 
			local i = 0
			while i < 25000 and total2<total do 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
				for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do 
					if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then 
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
							print("Rac")
							if not allitem[vaihuhu] then 
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu],v:Clone())
						end
						total2=total2+1
						rac[v.ItemName.Text] = true
					end
				end
				i=i+20
			end
			wait()
		end
		function GetXY(vec) 
			return vec*100
		end

		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0,10)

		local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5,0,1,0) 
		tvk.Parent = Left

		local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5,0,1,0) 
		Right.Position = UDim2.new(.6,0,0,0)
		tvk:Clone().Parent = Right
		for k,v in pairs(allitem) do 
			local cac = Instance.new("Frame",Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1,0,0,0) 
			cac.LayoutOrder = table.find(RaityLevel,k)

			local cac2 = Instance.new("Frame",Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1,0,0,0) 
			cac2.LayoutOrder = table.find(RaityLevel,k)

			local tvk = Instance.new("UIGridLayout",cac)
			tvk.CellPadding = UDim2.new(.005,0,.005,0)
			tvk.CellSize =  UDim2.new(0,70,0,70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal

			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k,v in pairs(v) do 
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then 
					if v.ItemLine2.Text~="Accessory" then 
						local bucac = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize = 10
						bucac.TextXAlignment  = 2
						bucac.TextYAlignment  = 2
						bucac.ZIndex  = 5
						bucac.Text = Items[v.ItemName.Text].Mastery
						bucac.Size = UDim2.new(.5,0,.5,0)
						bucac.Position = UDim2.new(.5,0,.5,0)
						bucac.Parent = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then 
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3,2),
			["DeathStep"] = Vector2.new(4,3),
			["ElectricClaw"] = Vector2.new(2,0),
			["SharkmanKarate"] = Vector2.new(0,0),
			["DragonTalon"] = Vector2.new(1,5)
		}
		local MeleeG = Instance.new("Frame",Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1,0,0,0) 
		MeleeG.LayoutOrder = table.find(RaityLevel,k)
		MeleeG.AutomaticSize=2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout",MeleeG)
		tvk.CellPadding = UDim2.new(.005,0,.005,0)
		tvk.CellSize =  UDim2.new(0,70,0,70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal

		local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
		for k,v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then 
				local huhu = Instance.new("ImageLabel",MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100,100)
				huhu.ImageRectOffset = ListHuhu[v]*100
			end
		end
		function formatNumber(v)
			return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,500)

		local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
		thieunang.Position = UDim2.new(0,800,0.63,0)
		local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
		thieunang.Text = "ƒ"..n
		local Money = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Clone()
		Money.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
		Money.Position = UDim2.new(0,800,0.73,0)
		local m = formatNumber(game.Players.LocalPlayer.Data.Beli.Value)
		Money.Text = "$"..m
		print("Done")
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Destroy()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
		end)
		for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do 
			if v:IsA("ImageButton") then 
				v:Destroy()
			end
		end
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
		end)
end)

Settings:Toggle("FastAttack","9606644121",_G.Setting.Config["FastAttack"],function(a)
	_G.Setting.Config["FastAttack"] = a
end)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Setting.Config["FastAttack"] then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = 0.1
                    y.activeController.timeToNextAttack = tick()
                    y.activeController.hitboxMagnitude = 50
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = tick()
                    y.activeController.focusStart = tick()
                    y.activeController.increment = tick()
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
					game:GetService("ReplicatedStorage").Util.Sound.Storage.Swing:Destroy()
                end)
            end
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Setting.Config["FastAttack"] == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

Settings:Toggle("BringMonster","9606644121",_G.Setting.Config["BringMonster"],function(a)
	_G.Setting.Config["BringMonster"] = a
end)

	spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Setting.Config["BringMonster"] then
				CheckQuest()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Setting.Config["Autofarm"] and BringMobFarm and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Prisoner [Lv. 190]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 190 then
						v.HumanoidRootPart.Size = Vector3.new(500,500,500)
						v.HumanoidRootPart.Transparency = 1
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.Setting.Config["Autofarm"] and BringMobFarm and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 190 then
						v.HumanoidRootPart.Size = Vector3.new(500,500,500)
						v.HumanoidRootPart.Transparency = 1
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.Setting.Config["AutoFarmBone"] and StartBoneMagnet and v.Name == Ms and (Ms == "Reborn Skeleton [Lv. 1975]" or Ms == "Living Zombie [Lv. 2000]" or Ms == "Demonic Soul [Lv. 2025]" or Ms == "Posessed Mummy [Lv. 2050]" ) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 190 then
						v.HumanoidRootPart.Size = Vector3.new(500,500,500)
						v.HumanoidRootPart.Transparency = 1
						v.HumanoidRootPart.CFrame = PosBone
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.Setting.Config["AutoFarmFast"] and FarmFastBing and v.Name == Mon and (Mon == "God's Guard [Lv. 450]" or Mon == "Desert Officer [Lv. 70]" ) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 190 then
						v.HumanoidRootPart.Size = Vector3.new(500,500,500)
						v.HumanoidRootPart.Transparency = 1
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)
   task.spawn(function()
      while task.wait() do
            pcall(function()
                if _G.Setting.Config["BringMonster"] and BringMobFarm then
                   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                       if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                           if InMyNetWork(v.HumanoidRootPart) then
                               v.HumanoidRootPart.CFrame = PosMon
                               v.Humanoid.JumpPower = 0
                               v.Humanoid.WalkSpeed = 0
                               v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                               v.HumanoidRootPart.Transparency = 1
                               v.HumanoidRootPart.CanCollide = false
                               v.Head.CanCollide = false
                               if v.Humanoid:FindFirstChild("Animator") then
                                   v.Humanoid.Animator:Destroy()
                               end
                                  v.Humanoid:ChangeState(11)
                                  v.Humanoid:ChangeState(14)
                              end
                          end
                      end
                 end
            end)
       end
 end)
                
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

Settings:Toggle("Auto Buso Haki","9606644121",_G.Setting.Config["Auto_Buso"],function(vu)
	_G.Setting.Config["Auto_Buso"] = vu
end)
spawn(function()
    while wait(1) do
		pcall(function()
			if _G.Setting.Config["Auto_Buso"] then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				else
					wait(3)
				end
			end
		end)
    end
end)
Settings:Toggle("Auto Ken Haki","9606644121",_G.Setting.Config["Auto_Ken"],function(vu)
	_G.Setting.Config["Auto_Ken"] = vu
end)
spawn(function()
	while wait(2) do
		pcall(function()
			if _G.Setting.Config["Auto_Ken"] then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
				wait(7)
			end
		end)
	end
end)

Settings:Toggle("BypassTP","9606644121",_G.Setting.Config["BypassTP"],function(vu)
 _G.Setting.Config["BypassTP"] = vu
end)

Settings:Toggle("Rejoint Team","9606644121",_G.Setting.Config["Rejoint_Team"],function(vu)
	_G.Setting.Config["Rejoint_Team"] = uv
end)
spawn(function()
		while task.wait() do
			if game.Players.LocalPlayer.Team == nil then
				pcall(function()
					if _G.Setting.Config["Rejoint_Team"] then
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
						game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
						wait(.5)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(730,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(730,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
					end
				end)
			end
		end
	end)

Settings:Toggle("DeleteDamageFx","9606644121",_G.Setting.Config["DeleteDamageFx"],function(vu)
	_G.Setting.Config["DeleteDamageFx"] = vu
	if _G.Setting.Config["DeleteDamageFx"] == true then
	while _G.Setting.Config["DeleteDamageFx"] do wait()
		for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
			if v.Name == "CurvedRing" or v.Name == "DamageCounter" or v.Name == "SwordSlash" or v.Name == "Damage" or v.Name == "Sounds" then
				v:Destroy() 
			end
		end
	end
	end
end)

	
	
	
end)

        else
            game.StarterGui:SetCore("SendNotification", {
				Title = "invalid key", 
				Text = "invalid key",
				 Icon = "http://www.roblox.com/asset/?id=10729012702",
				 Duration = 10
				})
        end 
    end
end)

Section:NewButton("GetKey", "GetKey", function()
    setclipboard("https://direct-link.net/458085/c1")
   	 game.StarterGui:SetCore("SendNotification", {
				Title = "Copy link", 
				Text = "Copy link",
				 Icon = "http://www.roblox.com/asset/?id=10729012702",
				 Duration = 10
		})
end)
--55