local cv = "v8.1"
local dbgmode = true
local forcewl = true   
local isancestor = false
local loadcnt = 0
local canDupe = false
local cf = nil
local connection = nil
local cantp = false
local method = 0
local disable_save = false
local abmethod = 1
local wlmethod = 2
local isteleporting = false
local gkey = math.random(-10000000, 10000000)
local bcs = loadstring(game:HttpGet("https://raw.githubusercontent.com/ashwagspetdogz/BarkSource/main/Dependencies/bconsole.lua",true))()
local b64l = loadstring(game:HttpGet("https://raw.githubusercontent.com/ashwagspetdogz/BarkSource/main/Dependencies/b64.lua",true))()
local emojil = loadstring(game:HttpGet("https://raw.githubusercontent.com/ashwagspetdogz/BarkSource/main/Dependencies/emojilib.lua",true))()
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ashwagspetdogz/BarkSource/main/Dependencies/library.lua",true))()
local valid = false

if dbgmode then cv = cv .. "-dv" end

getgenv().setsimulationradius = setsimulationradius or set_simulation_radius
getgenv().sethiddenproperty = sethiddenproperty or set_hidden_prop
getgenv().getconnections = getconnections or get_signal_cons
if PROTOSMASHER_LOADED then
    getgenv().firetouchinterest = nil
end

if game.Players.LocalPlayer.Name == "Bye_Zye" then
    game.ReplicatedStorage.Interaction.Ban:FireServer("Fuck off human trash.")
end

function crash() return end

function isdev(name)
    return true
end
function isdevdiscord(id)
    return true
end
local function notify(t,t1,t2)
	game.StarterGui:SetCore("SendNotification", {
		Title = t;
		Text = t1;
		Icon = nil;
		Duration = t2
	})
end
local function hashii(b)local function c(b,d,e,...)b=b%2^32;d=d%2^32;local b=(b%0x00000002>=0x00000001 and d%0x00000002>=0x00000001 and 0x00000001 or 0)+(b%0x00000004>=0x00000002 and d%0x00000004>=0x00000002 and 0x00000002 or 0)+(b%0x00000008>=0x00000004 and d%0x00000008>=0x00000004 and 0x00000004 or 0)+(b%0x00000010>=0x00000008 and d%0x00000010>=0x00000008 and 0x00000008 or 0)+(b%0x00000020>=0x00000010 and d%0x00000020>=0x00000010 and 0x00000010 or 0)+(b%0x00000040>=0x00000020 and d%0x00000040>=0x00000020 and 0x00000020 or 0)+(b%0x00000080>=0x00000040 and d%0x00000080>=0x00000040 and 0x00000040 or 0)+(b%0x00000100>=0x00000080 and d%0x00000100>=0x00000080 and 0x00000080 or 0)+(b%0x00000200>=0x00000100 and d%0x00000200>=0x00000100 and 0x00000100 or 0)+(b%0x00000400>=0x00000200 and d%0x00000400>=0x00000200 and 0x00000200 or 0)+(b%0x00000800>=0x00000400 and d%0x00000800>=0x00000400 and 0x00000400 or 0)+(b%0x00001000>=0x00000800 and d%0x00001000>=0x00000800 and 0x00000800 or 0)+(b%0x00002000>=0x00001000 and d%0x00002000>=0x00001000 and 0x00001000 or 0)+(b%0x00004000>=0x00002000 and d%0x00004000>=0x00002000 and 0x00002000 or 0)+(b%0x00008000>=0x00004000 and d%0x00008000>=0x00004000 and 0x00004000 or 0)+(b%0x00010000>=0x00008000 and d%0x00010000>=0x00008000 and 0x00008000 or 0)+(b%0x00020000>=0x00010000 and d%0x00020000>=0x00010000 and 0x00010000 or 0)+(b%0x00040000>=0x00020000 and d%0x00040000>=0x00020000 and 0x00020000 or 0)+(b%0x00080000>=0x00040000 and d%0x00080000>=0x00040000 and 0x00040000 or 0)+(b%0x00100000>=0x00080000 and d%0x00100000>=0x00080000 and 0x00080000 or 0)+(b%0x00200000>=0x00100000 and d%0x00200000>=0x00100000 and 0x00100000 or 0)+(b%0x00400000>=0x00200000 and d%0x00400000>=0x00200000 and 0x00200000 or 0)+(b%0x00800000>=0x00400000 and d%0x00800000>=0x00400000 and 0x00400000 or 0)+(b%0x01000000>=0x00800000 and d%0x01000000>=0x00800000 and 0x00800000 or 0)+(b%0x02000000>=0x01000000 and d%0x02000000>=0x01000000 and 0x01000000 or 0)+(b%0x04000000>=0x02000000 and d%0x04000000>=0x02000000 and 0x02000000 or 0)+(b%0x08000000>=0x04000000 and d%0x08000000>=0x04000000 and 0x04000000 or 0)+(b%0x10000000>=0x08000000 and d%0x10000000>=0x08000000 and 0x08000000 or 0)+(b%0x20000000>=0x10000000 and d%0x20000000>=0x10000000 and 0x10000000 or 0)+(b%0x40000000>=0x20000000 and d%0x40000000>=0x20000000 and 0x20000000 or 0)+(b%0x80000000>=0x40000000 and d%0x80000000>=0x40000000 and 0x40000000 or 0)+(b>=0x80000000 and d>=0x80000000 and 0x80000000 or 0)return e and c(b,e,...)or b end;local function d(b,c,e,...)local b=(b%0x00000002>=0x00000001~=(c%0x00000002>=0x00000001)and 0x00000001 or 0)+(b%0x00000004>=0x00000002~=(c%0x00000004>=0x00000002)and 0x00000002 or 0)+(b%0x00000008>=0x00000004~=(c%0x00000008>=0x00000004)and 0x00000004 or 0)+(b%0x00000010>=0x00000008~=(c%0x00000010>=0x00000008)and 0x00000008 or 0)+(b%0x00000020>=0x00000010~=(c%0x00000020>=0x00000010)and 0x00000010 or 0)+(b%0x00000040>=0x00000020~=(c%0x00000040>=0x00000020)and 0x00000020 or 0)+(b%0x00000080>=0x00000040~=(c%0x00000080>=0x00000040)and 0x00000040 or 0)+(b%0x00000100>=0x00000080~=(c%0x00000100>=0x00000080)and 0x00000080 or 0)+(b%0x00000200>=0x00000100~=(c%0x00000200>=0x00000100)and 0x00000100 or 0)+(b%0x00000400>=0x00000200~=(c%0x00000400>=0x00000200)and 0x00000200 or 0)+(b%0x00000800>=0x00000400~=(c%0x00000800>=0x00000400)and 0x00000400 or 0)+(b%0x00001000>=0x00000800~=(c%0x00001000>=0x00000800)and 0x00000800 or 0)+(b%0x00002000>=0x00001000~=(c%0x00002000>=0x00001000)and 0x00001000 or 0)+(b%0x00004000>=0x00002000~=(c%0x00004000>=0x00002000)and 0x00002000 or 0)+(b%0x00008000>=0x00004000~=(c%0x00008000>=0x00004000)and 0x00004000 or 0)+(b%0x00010000>=0x00008000~=(c%0x00010000>=0x00008000)and 0x00008000 or 0)+(b%0x00020000>=0x00010000~=(c%0x00020000>=0x00010000)and 0x00010000 or 0)+(b%0x00040000>=0x00020000~=(c%0x00040000>=0x00020000)and 0x00020000 or 0)+(b%0x00080000>=0x00040000~=(c%0x00080000>=0x00040000)and 0x00040000 or 0)+(b%0x00100000>=0x00080000~=(c%0x00100000>=0x00080000)and 0x00080000 or 0)+(b%0x00200000>=0x00100000~=(c%0x00200000>=0x00100000)and 0x00100000 or 0)+(b%0x00400000>=0x00200000~=(c%0x00400000>=0x00200000)and 0x00200000 or 0)+(b%0x00800000>=0x00400000~=(c%0x00800000>=0x00400000)and 0x00400000 or 0)+(b%0x01000000>=0x00800000~=(c%0x01000000>=0x00800000)and 0x00800000 or 0)+(b%0x02000000>=0x01000000~=(c%0x02000000>=0x01000000)and 0x01000000 or 0)+(b%0x04000000>=0x02000000~=(c%0x04000000>=0x02000000)and 0x02000000 or 0)+(b%0x08000000>=0x04000000~=(c%0x08000000>=0x04000000)and 0x04000000 or 0)+(b%0x10000000>=0x08000000~=(c%0x10000000>=0x08000000)and 0x08000000 or 0)+(b%0x20000000>=0x10000000~=(c%0x20000000>=0x10000000)and 0x10000000 or 0)+(b%0x40000000>=0x20000000~=(c%0x40000000>=0x20000000)and 0x20000000 or 0)+(b%0x80000000>=0x40000000~=(c%0x80000000>=0x40000000)and 0x40000000 or 0)+(b>=0x80000000~=(c>=0x80000000)and 0x80000000 or 0)return e and d(b,e,...)or b end;local function e(b)return 4294967295-b end;local function f(b,c)b=b%2^32;local b=b/2^c;return b-b%1 end;local function g(b,c)b=b%2^32;local b=b/2^c;local c=b%1;return b-c+c*2^32 end;local h={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}local function i(b)local b=string.gsub(b,".",function(b)return string.format("%02x",string.byte(b))end)return b end;local function j(b,c)local d=""for c=1,c do local c=b%256;d=string.char(c)..d;b=(b-c)/256 end;return d end;local function k(b,c)local d=0;for c=c,c+3 do d=d*256+string.byte(b,c)end;return d end;local function l(b,c)local d=64-(c+1+8)%64;c=j(8*c,8)b=b.."\128"..string.rep("\0",d)..c;return b end;local function m(b)b[1]=0x6a09e667;b[2]=0xbb67ae85;b[3]=0x3c6ef372;b[4]=0xa54ff53a;b[5]=0x510e527f;b[6]=0x9b05688c;b[7]=0x1f83d9ab;b[8]=0x5be0cd19;return b end;local function n(b,i,j)local l={}for c=1,16 do l[c]=k(b,i+(c-1)*4)end;for b=17,64 do local c=l[b-15]local e=d(g(c,7),g(c,18),f(c,3))c=l[b-2]local c=d(g(c,17),g(c,19),f(c,10))l[b]=l[b-16]+e+l[b-7]+c end;local b,f,i,k,m,n,o,p=j[1],j[2],j[3],j[4],j[5],j[6],j[7],j[8]for j=1,64 do local q=d(g(b,2),g(b,13),g(b,22))local r=d(c(b,f),c(b,i),c(f,i))local q=q+r;local g=d(g(m,6),g(m,11),g(m,25))local c=d(c(m,n),c(e(m),o))local c=p+g+c+h[j]+l[j]p,o,n,m,k,i,f,b=o,n,m,k+c,i,f,b,c+q end;j[1]=(j[1]+b)%2^32;j[2]=(j[2]+f)%2^32;j[3]=(j[3]+i)%2^32;j[4]=(j[4]+k)%2^32;j[5]=(j[5]+m)%2^32;j[6]=(j[6]+n)%2^32;j[7]=(j[7]+o)%2^32;j[8]=(j[8]+p)%2^32 end;b=l(b,#b)local c=m({})for d=1,#b,64 do n(b,d,c)end;return i(j(c[1],4)..j(c[2],4)..j(c[3],4)..j(c[4],4)..j(c[5],4)..j(c[6],4)..j(c[7],4)..j(c[8],4))end
function hashi(msg)
    if PROTOSMASHER_LOADED then
        return Hash.Sha256(msg)
    elseif syn then
        return syn.crypt.custom.hash("sha256",msg)
    else
        return hashii(msg)
    end
end
if isdevdiscord(_G["▒░►▲◄░▒"]) then
    dbgmode = true
end
function hash(m)return string.lower(hashi(m))end
function b64(data)
    return b64l.encode(data)
end
if _G.DogixLT2Lib then
    selectedList = {}
    _G.ferryUpdate:Disconnect()
    _G.ferryUpdate = nil
    _G.CurrentBarkUI.Parent = nil
    method = _G.DogixLT2Method("get")
    gkey = _G.DogixLT2GetKey("anti_know")
    _G.disconnect_ctp()
    _G.nc_toggle = false
    _G.bomb_toggle = false
    _G.nofog_toggle = false
    _G.spook_toggle = false
    game.Lighting.FogStart = 0
    game.Lighting.FogEnd = 2400
    _G.alwaysday_toggle = false
    _G.alwaysnight_toggle = false
    _G.CarNC = false
    _G.CarNCTable = {}
    if _G.CFCloop ~= nil then
        _G.CFCloop:Disconnect()
        _G.CFCloop = nil
    end
    if _G.BarkCommandLine then
        _G.BarkCommandLine:Destroy()
    end
    _G.DiscardFly()
    if _G.lava_toggle then
        for i,v in pairs (game.Lighting:children()) do
            if v.Name == "Lava" then
                v.Parent = workspace["Region_Volcano"]
                workspace["Region_Volcano"].BasePlate:Destroy()
            end
        end
    end
    if _G.nsr_toggle then
        for i,v in pairs (game.Lighting:children()) do
            if v.Name == "PartSpawner" then
                v.Parent = workspace["Region_Snow"]
            end
        end
    end
    if _G.nsr_toggle then
        for i,v in pairs (game.Lighting:children()) do
            if v.Name == "PartSpawner" then
                v.Parent = workspace["Region_Snow"]
            end
        end
    end
    if _G.nlvb_toggle then
        for i,v in pairs (game.Lighting:children()) do
            if v.Name == "PartSpawner" then
                v.Parent = workspace["Region_Volcano"]
            end
        end
    end
    if _G.nmw_toggle then
        for i,v in pairs (game.Lighting:children()) do
            if v.Name == "Blockade" then
                v.Parent = workspace["Region_MazeCave"]
            end
        end
    end
    _G.nlvb_toggle = false
    _G.nmw_toggle = false
    _G.nsr_toggle = false
    _G.fnc_toggle = false
    _G.lava_toggle = false
    _G.shop_disable = false
    _G.Nokick = false
    _G.HardDraggerS = false
    _G.CurrentLooping:Disconnect()
    _G.CurrentLooping = nil
    if _G.Noclipping ~= nil then
        _G.Noclipping:Disconnect()
        _G.Noclipping = nil
    end
    if _G.HardDrag ~= nil then
        _G.HardDrag:Disconnect()
        _G.HardDrag = nil
    end
    if _G.OldNoclipping ~= nil then
        _G.OldNoclipping:Disconnect()
        _G.OldNoclipping = nil
    end
    if _G.FNoclipping ~= nil then
        _G.FNoclipping:Disconnect()
        _G.FNoclipping = nil
    end
    if _G.Blacklist ~= nil then
        _G.Blacklist:Disconnect()
        _G.Blacklist = nil
    end
    if _G.Whitelist ~= nil then
        _G.Whitelist:Disconnect()
        _G.Whitelist = nil
    end
    if _G.Nokicking ~= nil then
        _G.Nokicking:Disconnect()
        _G.Nokicking = nil
    end
    _G.ijp_toggle = false
    local lift = workspace.Bridge.VerticalLiftBridge.Lift
    if _G.bdg_toggle then
        lift.Base.CFrame = lift.Base.CFrame + Vector3.new(0,26,0)
    end
    _G.bdg_toggle = false
    for i,v in pairs (workspace.Water:children()) do if v.Name == "Water" then v.CanCollide = false end end
    for i,v in pairs (workspace.Bridge.VerticalLiftBridge.WaterModel:children()) do if v.Name == "Water" then v.CanCollide = false end end
else
    local p = Instance.new("Part", workspace)
    p.Size = Vector3.new(20,1,20)
    p.Position = Vector3.new(531,-19,-1727)
    p.Anchored = true
    p = nil
    if _G.DarkModeDisable ~= "I'm an uncultured swine that hates all things dark mode, please disable dark mode." then
        function hasi(v,p)
            local x = v[p]
        end
        function has(v,p)
            return pcall(function() hasi(v, p) end)
        end
        local pgu = game.Players.LocalPlayer.PlayerGui
        local oldText = game:GetService("Players").LocalPlayer.PlayerGui.InteractionGUI.Prompt.PlatformButton.KeyLabel.TextColor3
        for i,v1 in pairs (pgu:children()) do
            if v1.Name ~= "Chat" and v1:IsA("ScreenGui") then
                for i,v in pairs (v1:GetDescendants()) do
                    if has(v,"TextColor3") then
                        v.TextColor3 = Color3.new(220/255,220/255,220/255)
                    end
                    if has(v,"BackgroundColor3") then
                        if v.Name == "DropShadow" and v.Parent.ClassName ~= "TextLabel" then
                            v.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
                        elseif v.Name == "DropShadow" and v.Parent.ClassName == "TextLabel" then
                            v:Destroy()
                        elseif v.ClassName == "TextLabel" then
                            v.BackgroundColor3 = Color3.new(15/255,15/255,15/255)
                        elseif v.ClassName == "TextButton" then
                            v.BackgroundColor3 = Color3.new(15/255,15/255,15/255)
                        else
                            v.BackgroundColor3 = Color3.new(20/255,20/255,20/255)
                        end
                    end
                end
            end
        end
        game:GetService("Players").LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.InteractionGUI.Prompt.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.StructureDraggingGUI.Turn.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.StructureDraggingGUI.Confirm.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.StructureDraggingGUI.Quit.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.StructureDraggingGUI.Rotate.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.WireDraggingGUI.Confirm.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.WireDraggingGUI.Back.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.WireDraggingGUI.Confirm.PlatformButton.KeyLabel.TextColor3 = oldText
        game:GetService("Players").LocalPlayer.PlayerGui.ChatGUI.PromptChat.PlatformButton.KeyLabel.TextColor3 = oldText
    end
    local a = "crash_script_users"
    function plrcheck(player)
        if isdev(player.Name) and not isdev(game.Players.LocalPlayer.Name) then
            player.Chatted:Connect(function(msg)
                if msg == a then
                    crash()
                end
            end)
        end
    end
    for i,v in pairs (game:GetService'Players':children()) do
        plrcheck(v)
    end
    game.Players.PlayerAdded:Connect(function(player)
        plrcheck(player)
    end)
    --game:GetService("Players").LocalPlayer.PlayerGui.Scripts.SitPermissions.Disabled = false
    if game.ReplicatedStorage.Transactions:FindFirstChild("AddLog") then
        game.ReplicatedStorage.Transactions.AddLog:Destroy()
    end
    if not dbgmode then
        repeat until not _G.SimpleSpyExecuted and not getgenv().FrostHookSpy
        _G.SimpleSpyExecuted = true
        getgenv().FrostHookSpy = true
        _G.SimpleSpyShutdown = function()repeat until nil end
    end
    if sentinelbuy then
        game.StarterGui:SetCore("SendNotification", {
        	Title = "Bark "..cv;
        	Text = "Using Sentinel may result in reduced performance. Synapse or KRNL is recommended.";
        	Icon = nil;
        	Duration = 9e9;
        	Button1 = "OK";
        })
        if game.ReplicatedStorage.Interaction:FindFirstChild("Ban") then
            game.ReplicatedStorage.Interaction.Ban.Name = "FUCK_SENTINEL_"..game:GetService("HttpService"):GenerateGUID(false)
        end
    elseif newcclosure or protect_function and getrawmetatable and setreadonly and getnamecallmethod and getsenv then
        while game.CoreGui:FindFirstChild("RemoteSpy",true) do end
    	local mt = getrawmetatable(game)
    	local old_namecall = mt.__namecall
    	local old_index = mt.__index
    	local protectedPart = Instance.new("IntValue", workspace)
    	protectedPart.Name = game:GetService("HttpService"):GenerateGUID(false)
    	local protectedRem = Instance.new("RemoteEvent", game.ReplicatedStorage)
    	protectedRem.Name = game:GetService("HttpService"):GenerateGUID(false)
    	function isProtected(v) return false end --v == protectedRem or v == protectedPart end
    	setreadonly(mt, false)
    	mt.__namecall = function(self, ...)
            local method = getnamecallmethod()
    	    if isProtected(self) and not dbgmode then
                if method:lower() ~= "isa" and method:lower() ~= "findfirstchild" and method:lower() ~= "fireserver" then
                    repeat until nil
                end
            end
            if method == "InvokeServer" and tostring(self) == "RequestSave" and disable_save then
                return {true}
            elseif method == "Kick" then
                wait(9e9)
                return
            else
                return old_namecall(self, ...)
            end
    	end
    	mt.__index = function(self, indexing, ...)
            if isProtected(self) and not dbgmode then
                if indexing ~= "Parent" and (indexing ~= "Name" and self == protectedPart) then
                    repeat until nil
                end
            end
            return old_index(self, indexing, ...)
    	end
        spawn(function()
            while wait(1) and not dbgmode do
                protectedRem:FireServer(game:GetService("HttpService"):GenerateGUID(false))
                repeat until not game.CoreGui:FindFirstChild("Hydroxide C")
            end
        end)
        local print_orig = print
        print = function(...)
            repeat until table.concat({...}, ""):find(protectedRem.Name,1,true) == nil
            return print_orig(...)
        end
        getgenv().print = print
        getfenv().print = print
        getrenv().print = print
    	local remlist = {
    	    game.ReplicatedStorage.Interaction:FindFirstChild("Ban"),
    	    game.ReplicatedStorage.Transactions:FindFirstChild("SetMod"),
    	    game.ReplicatedStorage.OwnershipDebug:FindFirstChild("BedRegionDebug")
    	}
    	for i,v in pairs (remlist) do
    	    if v ~= nil then
                v.Name = game:GetService("HttpService"):GenerateGUID(false)
                v:Destroy()
            end
        end
        print"Loaded Ban Function Disabler + Anti-Kick"
    elseif getsenv then
        getsenv(game.Players.LocalPlayer.PlayerGui.LoadSaveGUI.LoadSaveClient.LocalScript).ban = function() wait(9e9) end
        print"Loaded Basic Ban Function Disabler"
    else
        Instance.new("Message",workspace).Text = "This exploit does not support Bark."
        wait(3)
        crash()
    end
    game.Players.LocalPlayer.CameraMaxZoomDistance = 400
    _G.DogixLT2Lib = true
end
function canUse(ownerVal)
    return game:GetService("ReplicatedStorage").Interaction.ClientIsWhitelisted:InvokeServer(ownerVal) == true or ownerVal == game.Players.LocalPlayer or ownerVal == nil
end

-- Initiate Functions
function rstepqueue(func)
    local qcd = false
    local cmd = game:GetService'RunService'.RenderStepped:connect(
    function()
        qcd = true
        func()
    end)
    repeat
        wait()
    until qcd
    cmd:Disconnect()
    cmd = nil
end
local function detectFly()
    return game:GetService'Players'.LocalPlayer.Character.Humanoid.FloorMaterial.Name == "Air"
end
function simrad()
	if setsimulationradius then
        setsimulationradius(math.huge, math.huge)
    elseif sethiddenproperty then
	    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    end
end
function spoofCamera(cfr)
    workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
    workspace.CurrentCamera.CFrame = cfr+game:GetService'Players'.LocalPlayer.Character.Humanoid.CameraOffset
end
function unspoofCamera()
    for i,v in pairs (game.Lighting:children()) do
        if v.Name == "CameraSpoof" then
            v:Destroy()
        end
    end
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    workspace.CurrentCamera.CameraSubject = game:GetService'Players'.LocalPlayer.Character.Humanoid
end
function userparse(part)
    new = part
    if new ~= "" and new ~= nil then
        for _, v in pairs(game:GetService('Players'):GetPlayers()) do
            if v.Name:lower() == new:lower() then
                return v
            end
            if v.Name:lower():find(new:lower()) then
                return v
            end
        end
    end
    return nil
end
function userparse_string(part)
    return (userparse(part) and userparse(part).Name) or nil
end
function delmodel(x,y)
    if y == nil then
        game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(x:FindFirstChildOfClass("Part"))
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(x)
    end
    game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(x)
end
local TreeConversionTable = {
    ["Cherry"] = "Cherry",
    ["Gold"] = "GoldSwampy",
    ["Cavecrawler"] = "CaveCrawler",
    ["Oak"] = "Generic",
    ["Frost"] = "Frost",
    ["Lava"] = "Volcano",
    ["Elm"] = "Oak",
    ["Walnut"] = "Walnut",
    ["Birch"] = "Birch",
    ["Snowglow"] = "SnowGlow",
    ["Pine"] = "GreenSwampy",
    ["Zombie"] = "Cherry",
    ["Koa"] = "Koa",
    ["Palm"] = "Palm",
    ["Spook"] = "Spooky",
    ["Sinister"] = "SpookyNeon",
    ["End Times"] = "LoneCave",
    ["Gray"] = nil,
}
local emain = nil
function confirm(x)
    if not _G.ForceConfirm and not x then return true end
    emain.Screengui.Enabled = false
    local tlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Peak7550/Bark-Source/main/Dependencies/wally.lua", true))()
    tlib.options.underlinecolor = Color3.new(255,0,0)
    local w = tlib:CreateWindow("Confirmation")
    local confirmed = nil
    local Box = nil
    local array = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
    local rnum = ""
    for i=1,5 do
        rnum = rnum..array[math.random(1,#array)]
    end
    w:Section("To continue, type:")
    Box = w:Box(rnum, {flag = "confirming"; type = 'text';}, function(new, old, enter)
        if new == rnum then
            confirmed = true
        end
    end)
    local Cancel = w:Button("Cancel",function()
        confirmed = false
    end)
    repeat wait() until confirmed ~= nil
    Box.Parent.Parent.Parent.Parent.Parent.Parent.Container.Visible = false
    emain.Screengui.Enabled = true
    return confirmed
end
function ftouch(p1,p2,t,b)
    if firetouchinterest or b then
        local x = 0
        if not t then x = 1 end
        if not PROTOSMASHER_LOADED then
            firetouchinterest(p1,p2,x)
        else
            firetouchinterest(p1,p2,t)
            wait(0.5)
        end
    else
        local op2c = p2.CFrame
        local op2s = p2.Size
        p2.Size = Vector3.new(.5,.5,.5)
        p2.CFrame = p1.CFrame
        wait()
        p2.Size = op2s
        p2.CFrame = op2c
    end
end
-- Bypasses
--> stupidBypass1
function stupidBypass1()
    local plrc = game:GetService'Players'.LocalPlayer.Character
    if cantp then
        plrc.HumanoidRootPart.CFrame = cf
    else
        connection = plrc.HumanoidRootPart:GetPropertyChangedSignal('CFrame'):connect(stupidBypass1_b)
        ftouch(plrc.HumanoidRootPart,workspace["Region_Underbridge"]["Teleporter"]:children()[2],true)
        ftouch(plrc.HumanoidRootPart,workspace["Region_Underbridge"]["Teleporter"]:children()[2],false)
    end
end
function stupidBypass1_b()
    local plrc = game:GetService'Players'.LocalPlayer.Character
    plrc.HumanoidRootPart.CFrame = cf
    if connection ~= nil then
        connection:Disconnect()
        connection = nil
    end
    repeat cantp = true until wait(9.5)
    cantp = false
end
--> BodyPos normal
function bodypos()
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local b = Instance.new("BodyPosition",plrc.Torso)
    b.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    b.Position = cf.p
    b.P = 85000
    local nc = game:GetService'RunService'.RenderStepped:connect(nocliprun)
    repeat
        wait()
    until (plrc.Torso.CFrame.p-cf.p).Magnitude < 65
    nc:Disconnect()
    nc = nil
    b:Destroy()
    for i=1,2 do
        plrc.HumanoidRootPart.CFrame = cf
        plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
        plrc.Humanoid:ChangeState(8)
        wait()
    end
end
function bodypos_mod()
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local b = Instance.new("BodyPosition",plrc.Torso)
    b.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    b.Position = cf.p
    b.P = 85000
    local nc = game:GetService'RunService'.RenderStepped:connect(nocliprun)
    repeat
        wait()
    until (plrc.Torso.CFrame.p-cf.p).Magnitude < 10
    nc:Disconnect()
    nc = nil
    b:Destroy()
end
--> Void Bypass
function voided()
    local plrc = game:GetService'Players'.LocalPlayer.Character
    plrc.Humanoid:ChangeState(5)
	local f = Instance.new("BodyPosition", plrc.Torso)
	f.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	f.Position = Vector3.new(0,400000,0)
	wait(.12)
	f:Destroy()
	wait()
	plrc.HumanoidRootPart.CFrame = cf
	plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
	plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
    plrc.Humanoid:ChangeState(8)
end
--> flingling
function flingling()
    wait(0.2)
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local b = Instance.new("BodyGyro",plrc.HumanoidRootPart)
    local q = math.huge
    b.MaxTorque = Vector3.new(8500,8500,8500)
    b.P = 10000
    b.D = 2e2
    plrc.Humanoid.PlatformStand = true
    plrc.Humanoid:ChangeState(3)
    plrc.HumanoidRootPart.CFrame = plrc.HumanoidRootPart.CFrame + Vector3.new(0,15,0)
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(0,q,0))
    local rst = game:GetService'RunService'.Stepped:wait()
    if 0.15 < 3/rst then wait(0.15) else wait(3/rst) end
    plrc.HumanoidRootPart.CFrame = cf + Vector3.new(0,4,0)
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(0,q,0))
    rst = game:GetService'RunService'.Stepped:wait()
    if 0.15 < 3/rst then
        wait(0.15)
    else
        if 3/rst > 0.07 then
            wait(3/rst)
        else
            wait(0.09)
        end
    end
    b:Destroy()
    plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.CFrame = cf
    plrc.Humanoid.PlatformStand = false
    plrc.Humanoid:ChangeState(8)
end
--> jumpBypass
function jumpBypass()
    local plrc = game.Players.LocalPlayer.Character
    local wasj = plrc.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping
    if wasj then
        plrc.HumanoidRootPart.Velocity = Vector3.new(0,-500,0)
        wait(0.1)
        plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        wait(0.1)
    end
    local FREEZE_ACTION = "freezeMovement"
    game:GetService("ContextActionService"):BindAction(
        FREEZE_ACTION,
        function() return Enum.ContextActionResult.Sink end,
        false,
        unpack(Enum.PlayerActions:GetEnumItems())
    )
    wait(.1)
    plrc.Humanoid.Jump = true
    wait(.1)
    plrc.HumanoidRootPart.CFrame = cf
    game:GetService("ContextActionService"):UnbindAction(FREEZE_ACTION)
end
--> stupidBypass2
function stupidBypass2()
    local x = 900000
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local gyro = Instance.new("BodyVelocity", plrc.HumanoidRootPart)
    gyro.MaxForce = Vector3.new(0,x,0)
    gyro.Velocity = Vector3.new(0,-x,0)
    gyro.P = x
    plrc.Humanoid:ChangeState(8)
    wait(0.12)
    gyro:Destroy()
    plrc.HumanoidRootPart.CFrame = cf
    plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
    wait(0.12)
    plrc.HumanoidRootPart.CFrame = cf
end
--> safetp
function safetp()
    wait(0.2)
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local b = Instance.new("BodyGyro",plrc.HumanoidRootPart)
    local v = 90000
    b.MaxTorque = Vector3.new(8500,8500,8500)
    b.P = 100000
    b.D = 2e2
    plrc.Humanoid.PlatformStand = true
    plrc.Humanoid:ChangeState(3)
    plrc.HumanoidRootPart.CFrame = plrc.HumanoidRootPart.CFrame + Vector3.new(0,30,0)
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(0,math.huge,0))
    plrc.HumanoidRootPart.Velocity = Vector3.new(v,v,v)
    plrc.HumanoidRootPart.RotVelocity = Vector3.new(v,v,v)
    wait(0.6)
    plrc.HumanoidRootPart.CFrame = cf + Vector3.new(0,4,0)
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(0,math.huge,0))
    wait(0.3)
    b:Destroy()
    plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.CFrame = cf
    plrc.Humanoid.PlatformStand = false
    plrc.Humanoid:ChangeState(8)
end
--> carman
function carMan()
    local plr = game:GetService'Players'.LocalPlayer
    local plrc = plr.Character
    local mdl = plrc.Humanoid.SeatPart.Parent
    if plrc.Humanoid.SeatPart.Name ~= "DriveSeat" then return end
    if (cf.p-plrc.HumanoidRootPart.CFrame.p).Magnitude >= 175 then
        local ocf = mdl.PrimaryPart.CFrame + Vector3.new(0,5,0)
        local intensity = 20
        if mdl.Seat:FindFirstChild'SeatWeld' then intensity = 30 end
        local rotmag = intensity
        for i = 1,intensity do
            rotmag = rotmag * 1.05
            game:GetService'RunService'.RenderStepped:wait()
            mdl:SetPrimaryPartCFrame(ocf*CFrame.Angles(0, math.rad(rotmag*i), 0))
        end
        for i=1,0.8*intensity do
            game:GetService'RunService'.RenderStepped:wait()
            mdl:SetPrimaryPartCFrame(cf)
        end
    else
        mdl:SetPrimaryPartCFrame(cf)
    end
end
--> optimizedTween
function optimizedTween(magnitude)
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local og = workspace.Gravity
    workspace.Gravity = 0
    wait(0.2)
    local tp = game:GetService("TweenService"):Create(plrc.HumanoidRootPart,TweenInfo.new(magnitude/1600,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame = cf})
    tp:Play()
    tp.Completed:Wait()
    workspace.Gravity = og
	plrc.HumanoidRootPart.CFrame = cf
end
--> beta_mode
function beta_mode()

end
function getTieredAxe()
    return {
        ['Beesaxe']= 13;
        ['AxeAmber']= 12;
        ['ManyAxe']= 15;
        ['BasicHatchet']= 0;
        ['RustyAxe']= -1;
        ['Axe1']= 2;
        ['Axe2']= 3;
        ['AxeAlphaTesters']= 9;
        ['Rukiryaxe']= 8;
        ['Axe3']= 4;
        ['AxeBetaTesters']= 10;
        ['FireAxe']= 11;
        ['SilverAxe']= 5;
        ['EndTimesAxe']= 16;
        ['AxeChicken']= 6;
        ['CandyCaneAxe']= 1;
        ['AxeTwitter']= 7;
        ['CandyCornAxe']= 14;
    }
end
function getAxeList()
    local axes = {}
    for i,v in pairs (game.Players.LocalPlayer.Backpack:GetChildren()) do
        table.insert(axes,v)
    end
    local pc = game.Players.LocalPlayer.Character
    if pc:FindFirstChildOfClass"Tool" then
        table.insert(axes,pc:FindFirstChildOfClass("Tool"))
    end
    return axes
end
function getWorstAxe()
    local pc = game.Players.LocalPlayer.Character
    if pc:FindFirstChildOfClass"Tool" then
        local t = pc:FindFirstChildOfClass"Tool"
        if t:FindFirstChild("ToolName") then
            return t
        end
    end
    local worst = 9999;
    local worst_tool = nil;
    local tier_list = getTieredAxe()
    for i,v in pairs (getAxeList()) do
        if v:FindFirstChild("ToolName") then
            if tier_list[v.ToolName.Value] < worst then
                worst_tool = v
                worst = tier_list[v.ToolName.Value]
            end
        end
    end
    return worst_tool
end
function getBestAxe()
    local pc = game.Players.LocalPlayer.Character
    if pc:FindFirstChildOfClass"Tool" then
        local t = pc:FindFirstChildOfClass"Tool"
        if t:FindFirstChild("ToolName") then
            return t
        end
    end
    local best = -1;
    local best_tool = nil;
    local tier_list = getTieredAxe()
    for i,v in pairs (getAxeList()) do
        if v:FindFirstChild("ToolName") then
            if tier_list[v.ToolName.Value] > best then
                best_tool = v
                best = tier_list[v.ToolName.Value]
            end
        end
    end
    return best_tool
end
local override_sawmill = nil
function getBestSawmill()
    local best = nil
    for i,v in pairs (workspace.PlayerModels:GetChildren()) do
        if v:FindFirstChild("Owner") and v:FindFirstChild("ItemName") and v.Owner.Value == game.Players.LocalPlayer and v.ItemName.Value:sub(1,7) == "Sawmill" then
            if not best then best = v
            else
                if #v.ItemName.Value > #best.ItemName.Value then
                    best = v
                elseif tonumber(v.ItemName.Value:sub(8,8)) > tonumber(best.ItemName.Value:sub(8,8)) then
                    best = v
                end
            end
        end
    end
    return best
end
----- Click Actions
local m = game:GetService'Players'.LocalPlayer:GetMouse()
local can = false
local spam_jp = false
local toggle = true
local plank = nil
local bp = nil
local cmds_run = false

function getMouseTarget()
	local cursorPosition = game:GetService("UserInputService"):GetMouseLocation()
	return workspace:FindPartOnRayWithIgnoreList(Ray.new(workspace.CurrentCamera.CFrame.p,(workspace.CurrentCamera:ViewportPointToRay(cursorPosition.x, cursorPosition.y, 0).Direction * 1000)),game.Players.LocalPlayer.Character:GetDescendants())
end
local codemaningame = false
for i,v in pairs (game.Players:GetPlayers()) do
    if v.Name == "codeprime8" then
        codemaningame = true
    end
end
function _G.disconnect_ctp()
    toggle = false
    cmds_run = false
end
function dobypass(input)
    local chara = "ۥֹ"
    return input:gsub('.',function(c)
	    if c == " " then
	        return c
        end
	    return c..chara
	end)
end
m.Button1Down:connect(function()
    if not toggle then return end
    if can and toggle then
        _G.DogixLT2TPC(CFrame.new(m.Hit.p)+Vector3.new(0,3,0),gkey)
    end
end)
local sprinting = false
local doclick = true
game:GetService('UserInputService').InputBegan:connect(function(ip, n)
    if ip.UserInputType == Enum.UserInputType.Keyboard and toggle then
        if ip.KeyCode == _G.ClickTPKey then
            if doclick == true then
                can = true
            else
                _G.DogixLT2TPC(CFrame.new(m.Hit.p)+Vector3.new(0,3,0),gkey)
            end
        end
        if ip.KeyCode == Enum.KeyCode.Space and _G.ijp_toggle then
            spam_jp = true
        end
        if ip.KeyCode == _G.SprintKey then
            sprinting = true
        end
        if ip.KeyCode == _G.ZoomKey then
            zoom = true
        end
    end
end)
game:GetService('UserInputService').InputEnded:connect(function(ip, n)
    if ip.UserInputType == Enum.UserInputType.Keyboard and toggle then
        if ip.KeyCode == Enum.KeyCode.LeftControl then
            can = false
        end
        if ip.KeyCode == _G.GuiToggleKey then
            for i,v in pairs(game:GetService'CoreGui':children()) do
                if v.Name == "BarkUI" then
                    v.Enabled = not v.Enabled
                end
            end
        end
        if ip.KeyCode == Enum.KeyCode.Space and _G.ijp_toggle then
            spam_jp = false
        end
        if ip.KeyCode == _G.SprintKey then
            sprinting = false
        end
        if ip.KeyCode == _G.ZoomKey then
            zoom = false
            workspace.CurrentCamera.FieldOfView = _G.SetStats[8]
        end
    end
end)
function Action(Object, Function) if Object ~= nil then Function(Object); end end
----- API Functions
--> Get Key
function _G.DogixLT2GetKey(st)
    return gkey
end
local custom = ""
local _itpocfa = nil
local _itpocf = nil
--> Teleport Function Tree
function _G.DogixLT2TP(x,y,z,key)
    local isdbg = false
    if key ~= gkey and key ~= gkey + 1 then
        send(" ! global key not detected! script denied access.\n")
        game.GlobalKeyNotDetected.GlobalKeyNotDetected = nil
    elseif key == gkey + 1 then
        isdbg = true
    end
    local plrc = game:GetService'Players'.LocalPlayer.Character
    local magnitude = (Vector3.new(x,y,z) - plrc.HumanoidRootPart.CFrame.p).Magnitude
    if magnitude > 9000 and not isdbg then
        error'tp distance too long!'
        game.TPDistanceTooLong.TPDistanceTooLong = true
    end
    cf = CFrame.new(x,y,z)
    if magnitude < 230 and (not plrc.Humanoid.Seated or plrc.Humanoid.SeatPart == nil) and method ~= -1 then
    	plrc.HumanoidRootPart.CFrame = cf
    elseif isnotcustom() then
        if method == -1 then
            if not plrc.Humanoid.Seated or plrc.Humanoid.SeatPart == nil then
                if magnitude < 150 then
                    plrc.HumanoidRootPart.CFrame = cf
                else
                    queued = cf
                end
            else
                carMan()
            end
        end
        if method == 0 then
            if plrc.Humanoid.Seated and plrc.Humanoid.SeatPart ~= nil then
                carMan()
            elseif (detectFly() or cantp) and firetouchinterest then
                stupidBypass1()
            else
                voided()
            end
        end
        if method == 1 then
            if plrc.Humanoid.Seated and plrc.Humanoid.SeatPart ~= nil then
                carMan()
            else
                stupidBypass1()
            end
        end
        if method == 2 then
            flingling()
        end
        if method == 3 then
            jumpBypass()
        end
        if method == 4 then
            optimizedTween(magnitude)
        end
        if method == 5 then
            carMan()
        end
        if method == 6 then
            safetp()
        end
        if method == 7 then
            bodypos()
        end
        if method == 8 then
            voided()
        end
        if method == 3564 and dbgmode then
            beta_mode()
        end
    else
        _G.OtherPos = cf
        loadstring(custom)()
        _G.OtherPos = nil
    end
end
--> TP to CFrame
function _G.DogixLT2TPC(cf,gkey)
    _G.DogixLT2TP(cf.X,cf.Y,cf.Z,gkey)
end
--> Change Method
function _G.DogixLT2Method(int)
    if tostring(int) ~= "get" then
        if int < -2 and int > 8 and int ~= 3564 then
            game.InvalidMethodNumber.InvalidMethodNumber = true
        else
            if int ~= 3564 then
                method = int
            elseif dbgmode then
                method = int
            end
        end
    else return method end
end
local Times = 0
--> Drag
function _G.DogixLT2DragAlt(part,cfq)
    if (part.CFrame.p-game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame.p).Magnitude > 50 then
        local offset = Vector3.new(5,5,5)
        if part.Name ~= "WoodSection" then offset = Vector3.new(0,0,0)end
        _G.DogixLT2TPC(part.CFrame + offset, gkey)
    end
	for i = 1, 5 do
	    spawn(function()
            game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(part.Parent)
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(part.Parent)
            game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(part.Parent)
    		part.CFrame = cfq
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(part.Parent)
		end)
        game:GetService'RunService'.RenderStepped:wait()
	end
	Times = Times + 1
	if Times == 6 then
		Times = 0
		wait(0.3)
	end
end
function tocf(part, cFrame, partCount)
	if partCount > 1 then
		part.Parent:MoveTo(cFrame.p)
	else
		part.CFrame = cFrame
	end
end;
function _G.DogixLT2Drag(part,cfq)
    local parts = 0
	for _, v in pairs(part.Parent:GetDescendants()) do
		if v:IsA("Part") then
			parts = parts + 1
		end
	end;
    spawn(function()
        repeat
			game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(part.Parent)
			game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(part.Parent)
			game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(part.Parent)
			wait()
			tocf(part, cfq, parts)
			game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(part.Parent)
		until isnetworkowner(part) or wait(2)
    	part.Parent:MoveTo(cfq.p)
    	part.CFrame = cfq
	end)
end
--> AutoBuy
function price_of(ia)
    for i,v in pairs(game:GetService("ReplicatedStorage").Purchasables:GetDescendants()) do
        if v:IsA("Folder") and v.Name == ia and v:findFirstChild'Price' then
            return v.Price.Value
        end
    end
    return nil
end
function sellLandSign(penis)
    local con = workspace.Stores.WoodRUs.Furnace.Rollers
    con.Parent = game.Lighting
    local ocf = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i,v in pairs (workspace.PlayerModels:children()) do
        if v.Name == "Model" and v:FindFirstChild("Settings") and v.Settings:FindFirstChild("PropertySoldSign") and v:FindFirstChild("Post") and v.Post.Anchored then
            _G.DogixLT2TPC(v.Main.CFrame,gkey)
            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v, "Take down sold sign")
        end
    end
    wait(1)
    for i,v in pairs (workspace.PlayerModels:children()) do
        if v.Name == "Model" and v:FindFirstChild("ItemName") and tostring(v.ItemName.Value) == "PropertySoldSign" and v:FindFirstChild("WoodSection") and v.Owner.Value == game:GetService'Players'.LocalPlayer then
            _G.DogixLT2Drag(v.Main,CFrame.new(314.240784, -2.65742993, 92.957222, 0.999394894, 0.0342548452, -0.00604006927, 5.92512439e-09, 0.173648447, 0.98480773, 0.0347832851, -0.984211802, 0.173543364))
            break
        end
    end
    con.Parent = workspace.Stores.WoodRUs.Furnace
    if penis ~= true then
        _G.DogixLT2TPC(ocf,gkey)
    end
end
function autobuy(i,q,c,xt)
    if abmethod == 1 then
        item = autobuy_v2(i,q,c,xt)
    elseif abmethod == 2 then
        item = rapid_autobuy(i,q,c,xt)
    elseif abmethod == 4 then
        item = legacy_autobuy(i,q,c,xt)
    end
    return item
end
local cashierIds = {
    ["Corey"] = 10,
    ["Thom"] = 11,
    ["Jenny"] = 12,
    ["Bob"] = 13,
    ["Timothy"] = 14,
    ["Lincoln"] = 15
}
function updateCashierIds()
    local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local promptchatrem = game.ReplicatedStorage.NPCDialog.PromptChat
    local prompted = 0
    local customevent = promptchatrem.OnClientEvent:connect(function(istrue, tbl)
        if istrue then
            prompted = 1
        else
            cashierIds[tbl.Name] = tbl.ID
            prompted = 2
        end
    end)
    _G.DogixLT2TPC(CFrame.new(263.228699, 3.20000005, 61.1448021, -0.99557817, -6.25616758e-06, 0.0939370543, -5.9900317e-06, 1, 3.11507779e-06, -0.0939370543, 2.53861617e-06, -0.99557817), gkey)
    repeat wait() until prompted == 1
    notify("Auto-Update", "Part 1 completed.",3)
    _G.DogixLT2TPC(cf,gkey)
    repeat wait() until prompted == 2
    notify("Auto-Update", "Part 2 completed.",3)
    wait(5)
    notify("Auto-Update", "Completed update.",3)
    customevent:Disconnect()
    customevent = nil
end
function getItemInfo(BItem)
    local NameStore,Cashier,CID,StoreItems
    for _,fldr in pairs (workspace.Stores:children()) do
	    if fldr:FindFirstChild(BItem) then
	        if fldr:FindFirstChild("Bed1") or fldr:FindFirstChild("Seat_Couch") then
	            NameStore = 'FurnitureStore'
    			Cashier = workspace.Stores.FurnitureStore.Corey
    		    StoreItems = fldr
    		elseif fldr:FindFirstChild("Sawmill") or fldr:FindFirstChild("Sawmill2") then
    		    NameStore = 'WoodRUs'
    			Cashier = workspace.Stores.WoodRUs.Thom
    		    StoreItems = fldr
    		elseif fldr:FindFirstChild("Trailer2") or fldr:FindFirstChild("UtilityTruck2") then
    		    NameStore = 'CarStore'
    			Cashier = workspace.Stores.CarStore.Jenny
    		    StoreItems = fldr
    		elseif fldr:FindFirstChild("CanOfWorms") or fldr:FindFirstChild("Dynamite") then
    		    NameStore = 'ShackShop'
    			Cashier = workspace.Stores.ShackShop.Bob
    		    StoreItems = fldr
    		elseif fldr:FindFirstChild("Painting1") or fldr:FindFirstChild("Painting2") then
    		    NameStore = 'FineArt'
    			Cashier = workspace.Stores.FineArt.Timothy
    		    StoreItems = fldr
    		elseif fldr:FindFirstChild("GateXOR") or fldr:FindFirstChild("NeonWireOrange") then
    		    NameStore = 'LogicStore'
    			Cashier = workspace.Stores.LogicStore.Lincoln
    		    StoreItems = fldr
    		else
    		    return false
    		end
    	elseif BItem == "ManyAxe" then
    	    if fldr:FindFirstChild("Bed1") or fldr:FindFirstChild("Seat_Couch") then
	            NameStore = 'FurnitureStore'
    			Cashier = workspace.Stores.FurnitureStore.Corey
    		    StoreItems = fldr
    		end
	    end
    end
    return{NameStore,Cashier,cashierIds[Cashier.Name],StoreItems}
end
function autobuy_v2(item, count, overrided_cframe, tp_back)
    local ItemInfo = getItemInfo(item)
    local StoreName = ItemInfo[1]
    local Cashier = ItemInfo[2]
    local CID = ItemInfo[3]
    local StoreItems = ItemInfo[4]
    local ChatEvent = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
    local OriginalPos = overrided_cframe or game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local ItemList = {}
    local FirstTp = true
    if StoreItems == nil then
        notify("Auto-Buy", "Couldn't determine item's store.", 3)
        return
    end
    for i=1,count do
        local itemModel = StoreItems:FindFirstChild(item) or StoreItems:WaitForChild(item, 8)
        if not itemModel then
            notify("Auto-Buy", "Item not in stock after 8 seconds, stopping Auto-Buy.", 3)
            return
        end
        local counter = workspace.Stores[StoreName].Counter
        local itemTargetPos = CFrame.new(counter.Position+Vector3.new(0,0.24,0))*CFrame.Angles(0,math.rad(math.random(-3,3)),0)
        local talk = {["Character"] = Cashier, ["Name"] = Cashier.Name, ["ID"] = CID, ["Dialog"] = nil}
        local finishedPurchasing = false
        local touchedCounter = false
        local newItemChecker = workspace.PlayerModels.ChildAdded:connect(function(v)
            v:WaitForChild("Owner")
            if v.Owner.Value == game.Players.LocalPlayer and v:FindFirstChild("PurchasedBoxItemName") and v.PurchasedBoxItemName.Value == item then
                for i=1,5 do
                    if tp_back ~= false then
                        v:MoveTo(OriginalPos.p)
                    else
                        v.PrimaryPart.CFrame = OriginalPos
                    end
                    v.PrimaryPart.Rotation = Vector3.new(0,0,0)
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                end
                notify("Auto-Buy", "Purchased item, "..count-i.." remain.", 0.5)
                table.insert(ItemList,v)
                finishedPurchasing = true
            end
        end)
        local counterTouchedChecker = counter.Touched:connect(function(v)
			for i,v in pairs (itemModel.PrimaryPart:GetTouchingParts()) do
			    if v.Name == "Counter" then
			        touchedCounter = true
			        return
		        end
		    end
        end)
        _G.DogixLT2TPC(itemModel.PrimaryPart.CFrame+Vector3.new(5,2,5),gkey)
        repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p-itemModel.PrimaryPart.CFrame.p).Magnitude < 30
        if FirstTp then
            wait(0.2)
            FirstTp = false
        end
        game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(itemModel)
        for i=1,1000 do
            if touchedCounter then break end
            if abortbuy then
                counterTouchedChecker:Disconnect()
                counterTouchedChecker = nil
                _G.DogixLT2TPC(OriginalPos,gkey)
                return
            end
            itemModel:SetPrimaryPartCFrame(itemTargetPos)
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(itemModel)
            wait()
        end
        touchedCounter = false
        counterTouchedChecker:Disconnect()
        counterTouchedChecker = nil
        _G.DogixLT2TPC(counter.CFrame+Vector3.new(5,2,5),gkey)
        for i=1,80 do
            if finishedPurchasing then break end
            if abortbuy then
                newItemChecker:Disconnect()
                newItemChecker = nil
                _G.DogixLT2TPC(OriginalPos,gkey)
                return
            end
            wait()
            for i,v in pairs ({"Initiate", "ConfirmPurchase", "EndChat"}) do
                ChatEvent:InvokeServer(talk, v)
            end
        end
        repeat
            wait()
        until finishedPurchasing or wait(3) or abortbuy
        if not finishedPurchasing then
            notify("Auto-Buy", "Failed item.", 0.5)
        end
        finishedPurchasing = false
        newItemChecker:Disconnect()
        newItemChecker = nil
        if abortbuy then
            _G.DogixLT2TPC(OriginalPos,gkey)
            return
        end
    end
    if tp_back ~= false then
        _G.DogixLT2TPC(OriginalPos,gkey)
    end
    notify("Auto-Buy", "Finished all items.", 1)
    return (count == 1 and ItemList[1]) or ItemList
end
function legacy_autobuy(i,q,c,xt)
    local BItem = i
    local Amount = tonumber(q)
    local plr = game:GetService'Players'.LocalPlayer
    local repst = game:GetService'ReplicatedStorage'
    local chatrmt = repst.NPCDialog.PlayerChatted
    local last = nil
    local dragrmt = repst.Interaction.ClientIsDragging
	local cf_ = nil
	local ftr = true
	if c ~= nil then cf_ = c
	else cf_ = plr.Character.HumanoidRootPart.CFrame end
	if not InBuy then
	    local started = tick()
		ctr = 0
		InBuy = true
		local list = getItemInfo(BItem)
		if not list then
		    InBuy = false
		    return
		end
		NameStore = list[1]
		Cashier = list[2]
		CID = list[3]
		StoreItems = list[4]
	    notify("Auto-Buy", "Started buying items.", .5)
		wait(0.3)
		local returning = {}
		local ftr = 0.3
		for i=1,Amount do
		    if StoreItems == nil then
		        notify("Auto-Buy", "A critical error occured, please notify dogix the item you were trying to purchase.",3)
		        InBuy = false
		    end
		    local needwait = StoreItems:FindFirstChild(BItem)
		    if needwait == nil then ftr = 0.4 end
		    if StoreItems:WaitForChild(BItem) or needwait then
		        local done = 0
		        local add = workspace.PlayerModels.ChildAdded:connect(function(new)
        			if new:WaitForChild("Owner").Value == plr and new:FindFirstChild("PurchasedBoxItemName") and new.PurchasedBoxItemName.Value == BItem then
    	                if not _G.InfRanges then
    	                    _G.DogixLT2TPC(workspace.Stores[NameStore].Counter.CFrame + Vector3.new(5,2,5), gkey)
	                    end
        				for i = 1,3 do
        				    for i=1,2 do
            				    dragrmt:FireServer(new)
            				    new.PrimaryPart.Rotation = Vector3.new(0,0,0)
                				new:MoveTo(cf_.p)
            				    dragrmt:FireServer(new)
            				end
            				done = 1
        				end
    			        notify("Auto-Buy", "Purchased "..BItem..". ("..tostring(Amount-ctr-1).." remain)", .5)
    			        if Amount == 1 then
    			            returning = new
    			        else
    			            table.insert(returning,new)
    			        end
        			end
		        end)
	            local item = StoreItems[BItem]
	            item:WaitForChild("Owner")
	            wait()
	            local touched = false
		        local ctoucher = workspace.Stores[NameStore].Counter.Touched:connect(function(new)
        			for i,v in pairs (item.PrimaryPart:GetTouchingParts()) do
        			    if v.Name == "Counter" then
        			        touched = true
        			        return
    			        end
    			    end
		        end)
		        if not _G.InfRanges then
	                _G.DogixLT2TPC(item.PrimaryPart.CFrame + Vector3.new(5,2,5), gkey)
    	            wait(ftr)
    	            ftr = 0.05
	            end
			    game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(item)
                local pos = CFrame.new(workspace.Stores[NameStore].Counter.Position+Vector3.new(0,0.24,0))*CFrame.Angles(0,math.rad(math.random(-3,3)),0)
	            if not _G.InfRanges and method == -1 then
    	            repeat wait() until cantp
	            end
	            for i = 1, 800 do
	                if not touched then
    	                dragrmt:FireServer(item)
        				item:SetPrimaryPartCFrame(pos)
    	                dragrmt:FireServer(item)
        				wait()
    			    else
                        break
                    end
	            end
			    if ctoucher ~= nil then
			        ctoucher:Disconnect()
			        ctoucher = nil
			    end
    			local dialog = Cashier:FindFirstChild'Dialog' or {BuyItem={BuyPrompt={ConfirmPurchase={ItWorked={Thanks={}},NoThanks={NoThanks={}}},AbortPurchase={}}}}
    			for i=1,50 do
    			    if done <= 0 then
    			        chatrmt:InvokeServer({Character = Cashier, Name = Cashier.Name, ID = CID, Dialog = dialog}, 'Initiate')
        				chatrmt:InvokeServer({Character = Cashier, Name = Cashier.Name, ID = CID, Dialog = dialog}, 'ConfirmPurchase')
        				chatrmt:InvokeServer({Character = Cashier, Name = Cashier.Name, ID = CID, Dialog = dialog}, 'EndChat')
        			end
    			end
    			repeat wait() until done == 1 or wait(1) or abortbuy
    			if abortbuy then
        			InBuy = false
        			notify("Auto-Buy", "Completed buying items. Took "..tick()-started.."s", .75)
        			if xt == nil then _G.DogixLT2TPC(cf_, gkey) end
        			abortbuy = false
        			return returning
    			end
    			if done == 0 then
    			    notify("Auto-Buy", "Failed "..BItem..".", .5)
    			end
    			if add ~= nil then
    			    add:Disconnect()
    		        add = nil
    		    end
		    end
		    ctr = ctr + 1
    		wait(.02)
    		if Amount - ctr == 0 then
    			InBuy = false
    			notify("Auto-Buy", "Completed buying items. Took "..tick()-started.."s", .75)
    			if xt == nil then _G.DogixLT2TPC(cf_, gkey) end
    			return returning
    		end
		end
	else
	    notify("Auto-Buy", "Currently buying items.", 2)
	end
end
function rapid_autobuy(i,q,c,xt)
    local BItem = i
    local Amount = tonumber(q)
    local plr = game:GetService'Players'.LocalPlayer
    local repst = game:GetService'ReplicatedStorage'
    local chatrmt = repst.NPCDialog.PlayerChatted
    local last = nil
    local dragrmt = repst.Interaction.ClientIsDragging
	local cf_ = nil
	local ftr = true
	if c ~= nil then cf_ = c
	else cf_ = plr.Character.HumanoidRootPart.CFrame end
	if not InBuy then
	    local started = tick()
		ctr = 0
		InBuy = true
		local list = getItemInfo(BItem)
		if not list then
		    InBuy = false
		    return
		end
		local NameStore = list[1]
		local Cashier = list[2]
		local CID = list[3]
		local StoreItems = list[4]
	    notify("Auto-Buy", "Started buying items.", .5)
		wait(0.3)
		local returning = {}
		local done = 0
        local counter = 0
		local add = workspace.PlayerModels.ChildAdded:connect(function(new)
			if new:WaitForChild("Owner").Value == plr and new:FindFirstChild("PurchasedBoxItemName") and new.PurchasedBoxItemName.Value == BItem then
                local tploops = 20
                if not _G.InfRanges and ((workspace.Stores[NameStore].Counter.CFrame + Vector3.new(5,2,5)).p-game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).Magnitude < 20 then
                    _G.DogixLT2TPC(workspace.Stores[NameStore].Counter.CFrame + Vector3.new(5,2,5), gkey)
                end
                if _G.InfRanges then tploops = 3 end
				for i = 1,20 do
				    dragrmt:FireServer(new)
				    new.PrimaryPart.Rotation = Vector3.new(0,0,0)
    				new:MoveTo(cf_.p)
				    dragrmt:FireServer(new)
				    wait()
				end
		        notify("Auto-Buy", "Purchased "..BItem..". ("..Amount-counter.." remain)", .5)
		        counter = counter + 1
		        if Amount == 1 then
		            returning = new
		        else
		            table.insert(returning,new)
		        end
			end
		end)
		repeat
		    local sale = {}
		    for i,v in pairs (StoreItems:children()) do
		        if v.Name == BItem then
		            table.insert(sale,v)
		        end
    		end
	        for i =1,#sale do
	            local item = sale[i]
	            if not _G.InfRanges and (item.PrimaryPart.CFrame.p-game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).Magnitude > 25 then
	                _G.DogixLT2TPC(item.PrimaryPart.CFrame + Vector3.new(5,2,5), gkey)
	            end
	            item:WaitForChild("Owner")
			    game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(item)
                local pos = CFrame.new(workspace.Stores[NameStore].Counter.Position+Vector3.new(0,0.24,0))
    			local dialog = Cashier:FindFirstChild'Dialog' or {BuyItem={BuyPrompt={ConfirmPurchase={ItWorked={Thanks={}},NoThanks={NoThanks={}}},AbortPurchase={}}}}
	            local touched = false
		        local ctoucher = workspace.Stores[NameStore].Counter.Touched:connect(function(new)
        			for i,v in pairs (item.PrimaryPart:GetTouchingParts()) do
        			    if v.Name == "Counter" then
        			        touched = true
        			        return
    			        end
    			    end
		        end)
    	        for i = 1,10 do
    	            if not touched then
    	                dragrmt:FireServer(item)
        				item:SetPrimaryPartCFrame(pos)
                        game:GetService'RunService'.RenderStepped:wait()
                    else
                        break
                    end
	            end
			    if ctoucher ~= nil then
			        ctoucher:Disconnect()
			        ctoucher = nil
			    end
	        end
	        for i=1,#sale+1 do
	            if counter >= Amount then break end
			    chatrmt:InvokeServer({Character = Cashier, Name = Cashier.Name, ID = CID, Dialog = dialog}, 'Initiate')
				chatrmt:InvokeServer({Character = Cashier, Name = Cashier.Name, ID = CID, Dialog = dialog}, 'ConfirmPurchase')
				chatrmt:InvokeServer({Character = Cashier, Name = Cashier.Name, ID = CID, Dialog = dialog}, 'EndChat')
    		end
	        wait()
		until counter >= Amount
		if add ~= nil then
		    add:Disconnect()
	        add = nil
		end
        InBuy = false
		notify("Auto-Buy", "Completed buying items. Took "..tick()-started.."s", .75)
		if xt == nil then _G.DogixLT2TPC(cf_, gkey) end
		return returning
	else
	    notify("Auto-Buy", "Currently buying items.", 2)
	end
end
function _G.DogixLT2Autobuy(item,quantity,key)
    if gkey == key then
        return autobuy(item,quantity)
    end
end
function spawn_wire(Item, Quantity)
    local Land = nil
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
       if v.Owner.Value == game.Players.LocalPlayer then
           Land = v
           break
       end
    end
    if not Land then
        notify("Wire Spawner", "You need a plot to use this feature.",3)
        return
    end
    _G.DogixLT2TPC(CFrame.new(Land.OriginSquare.Position + Vector3.new(0,5,0)),gkey)
    function Spawn(wire)
        if not wire then return end
        local Info = game.ReplicatedStorage.Purchasables:FindFirstChild(Item, true)
        local Points = {Land.OriginSquare.Position + Vector3.new(0,5,0), Land.OriginSquare.Position + Vector3.new(0,10,0)}
        wait(.3)
        game.ReplicatedStorage.PlaceStructure.ClientPlacedWire:FireServer(Info, Points,game.Players.LocalPlayer, wire,true)
        wait(.2)
    end
    if Quantity == 1 then
        Spawn(autobuy("Wire",1))
    else
        local wirearray = autobuy("Wire",Quantity)
        for i,v in pairs (wirearray) do
            Spawn(v)
        end
    end
end
function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end
_G.GetTreeNC = nil
local esp_loops = {}
local esp_trees = {}
function esp_part(part)
    local a = Instance.new("BoxHandleAdornment", part)
    a.Name = "Selection"
	a.Adornee = a.Parent
	a.AlwaysOnTop = true
	a.ZIndex = 0
	a.Size = a.Parent.Size
	a.Transparency = 0
	a.Color = BrickColor.new(6)
end
function esp_tree(treemdl)
    table.insert(esp_trees, treemdl)
    for i,v in pairs(treemdl:GetChildren()) do
        if v.Name == "WoodSection" then
            esp_part(v)
        end
    end
    table.insert(esp_loops, treemdl.ChildAdded:connect(function(v)
        esp_part(v)
    end))
end
function getHitPointsTbl()
    return
    {
        ['Beesaxe']= 1.4;
        ['AxeAmber']= 3.39;
        ['ManyAxe']= 10.2;
        ['BasicHatchet']= 0.2;
        ['Axe1']= 0.55;
        ['Axe2']= 0.93;
        ['AxeAlphaTesters']= 1.5;
        ['Rukiryaxe']= 1.68;
        ['Axe3']= 1.45;
        ['AxeBetaTesters']= 1.45;
        ['FireAxe']= 0.6;
        ['SilverAxe']= 1.6;
        ['EndTimesAxe']= 1.58;
        ['AxeChicken']= 0.9;
        ['CandyCaneAxe']= 0;
        ['AxeTwitter']= 1.65;
        ['CandyCornAxe']= 1.75;
    }
end
function legitpaint(wood, bp)
    local plr = game:GetService'Players'.LocalPlayer
    local plrc = plr.Character
    local oldcf = plrc.HumanoidRootPart.CFrame
    local HitPoints= getHitPointsTbl()
    local tool = getBestAxe()
	local cf_ = nil
    if bp:FindFirstChild("MainCFrame") then
        cf_ = bp.MainCFrame.Value
    else
        cf_ = bp.Main.CFrame
    end
    if wood == nil then
        local Event = game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure
        Event:FireServer(bp.ItemName.Value, cf_, game:GetService'Players'.LocalPlayer, nil, bp, true)
        return
    end
    if not tool then return end
    function axe(v,id,h)
        local hps = HitPoints[tool.ToolName.Value]
        if wood == "LoneCave" and tool.ToolName.Value == "EndTimesAxe" then
            hps = 10000000
        end
        if wood == "Volcano" and tool.ToolName.Value == "FireAxe" then
            hps = 6.35
        end
        local table =  {
            ["tool"] = tool,
            ["faceVector"] = Vector3.new(0, 0, -1),
            ["height"] = h,
            ["sectionId"] = id,
            ["hitPoints"] = hps,
            ["cooldown"] = 0.112,
            ["cuttingClass"] = "Axe"
        }
        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.CutEvent, table)
    end
    local tree_part = nil
    local sawmill = getBestSawmill()
    if sawmill == nil then return end
    local zval = round(sawmill.Settings.DimZ.Value,1)
    local oldz = zval
    local gdelay = 0.05
    local done_1 = false
    local done_2 = false
    spawn(function()
    repeat
        if round(zval,1) == 1 then
            break
        elseif zval > 1 and round(zval,1) ~= 1 then
            zval = zval - 0.2
            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_YDown"])
        elseif zval < 1 and round(zval,1) ~= 1 then
            zval = zval + 0.2
            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_YUp"])
        end
        wait(gdelay)
    until round(zval,1) == 1
    done_1 = true
    end)
    local xval = round(sawmill.Settings.DimX.Value,1)
    local oldx = xval
    spawn(function()
    repeat
        if round(xval,1) == 1 then
            break
        elseif xval > 1 and round(xval,1) ~= 1 then
            xval = xval - 0.2
            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_XDown"])
        elseif xval < 1 and round(xval,1) ~= 1 then
            xval = xval + 0.2
            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_XUp"])
        end
        wait(gdelay)
    until round(xval,1) == 1
    done_2 = true
    end)
    _G.GetTreeNC = game:GetService'RunService'.Stepped:connect(oldnocliprun)
    local finishedme = false
    for ia,va in pairs(workspace:GetChildren()) do
        if va.Name == "TreeRegion" then
            for i,v in pairs (va:GetChildren()) do
                if v:FindFirstChild("TreeClass") and v.TreeClass.Value == wood and v.Name == "Model" and v:FindFirstChild("Owner") then
                    local count = 0
                    for i1,v1 in pairs (v:children()) do
                        if v1.Name == "WoodSection" then
                            count = count + 1
                        end
                    end
                    local do_tree = (count > 1 or v:FindFirstChild'WoodSection'.Size.Y > 0.5) and (v.Owner.Value == nil or game.Players.LocalPlayer)
                    local small = nil
                    if do_tree then
                        for i1,v1 in pairs (v:children()) do
                            if v1:IsA"BasePart" then
                                if not v1:FindFirstChildOfClass("Weld") then
                                    if v1.ID.Value ~= 1 then
                                        if v1:FindFirstChild("ParentID") and not v1.ChildIDs:FindFirstChild("Child") then
                                            if small == nil then small = v1 end
                                            if v1.Size.Y < small.Size.Y and math.floor(v1.Size.Y - (1/(v1.Size.X*v1.Size.Z))) > 0.3 then
                                                small = v1
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        do_tree = small ~= nil
                        if do_tree then
                            do_tree = math.floor(small.Size.Y - (1/(small.Size.X*small.Size.Z))) > 0.3
                        end
                    end
                    if do_tree then
                        _G.DogixLT2TPC(small.CFrame + Vector3.new(4,2,2),gkey)
                        local finished_t = false
                        local added = workspace.LogModels.ChildAdded:Connect(function(v)
                            v:WaitForChild("Owner")
                            if v:FindFirstChild("Owner") and v.Owner.Value == plr and v.TreeClass.Value == wood then
                                tree_part = v
                                finished_t = true
                            end
                        end)
                        local height = math.floor(small.Size.Y - (1/(small.Size.X*small.Size.Z))) or 0.3
                        if height < 0 then height = 0 end
                        repeat
                            wait(0.05)
                            if v:FindFirstChild("CutEvent") ~= nil then
                                _G.DogixLT2TPC(small.CFrame + Vector3.new(4,2,2),gkey)
                                axe(v,small.ID.Value,height)
                                wait()
                            end
                        until finished_t
                        added:Disconnect()
                        added = nil
                        finished_t = false
                        finishedme = true
                        break
                    end
                end
            end
        end
        if finishedme == true then
            finishedme = false
            break
        end
    end
    _G.GetTreeNC:Disconnect()
    _G.GetTreeNC = nil
    if not tree_part then return end
    local plank = nil
    local added = workspace.PlayerModels.ChildAdded:Connect(function(v)
        v:WaitForChild("Owner")
        if not v:FindFirstChild("Owner") then return end
        if not v:WaitForChild("RecentlyCut",0.3) then return end
        if v.Owner.Value == plr then
            plank = v
        end
    end)
    spawn(function()
        repeat wait() until done_1 and done_2
        done_1 = false
        done_2 = false
        for i=1,3 do
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(tree_part)
            tree_part:MoveTo(sawmill.Particles.CFrame.p)
            tree_part:FindFirstChild("WoodSection").CFrame = sawmill.Particles.CFrame
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(tree_part)
            wait()
        end
    end)
    _G.DogixLT2TPC(sawmill.Particles.CFrame+Vector3.new(7,2,4),gkey)
    repeat wait() until plank ~= nil
    added:Disconnect()
    added = nil
    repeat wait() until plank:WaitForChild("Reweld")
	spawn(function()
        repeat
            if zval == oldz then
                break
            elseif zval > oldz and round(zval,1) ~= oldz then
                zval = zval - 0.2
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_YDown"])
            elseif zval < oldz and round(zval,1) ~= oldz then
                zval = zval + 0.2
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_YUp"])
            end
            wait(gdelay)
        until round(xval,1) == oldz
	end)
    spawn(function()
        repeat
            if xval == oldx then
                break
            elseif xval > oldx and round(xval,1) ~= oldx then
                xval = xval - 0.2
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_XDown"])
            elseif xval < oldx and round(xval,1) ~= oldx then
                xval = xval + 0.2
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(sawmill["ButtonRemote_XUp"])
            end
            wait(gdelay)
        until round(xval,1) == oldx
    end)
    spawn(function()
    	_G.DogixLT2TPC(oldcf + Vector3.new(0,2,0), gkey)
        local temprange = game:GetService'RunService'.RenderStepped:connect(simrad)
        local b = Instance.new("BodyPosition",plank.WoodSection)
        b.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        b.Position = cf_.p
        b.P = 800000
        repeat wait() until plank.AncestryChanged:wait()
        temprange:Disconnect()
        temprange = nil
    end)
end

----- Build GUI
local commands = {}
local BarkCommandLine = Instance.new("ScreenGui")
_G.BarkCommandLine = BarkCommandLine
local CommandBar = Instance.new("TextBox")
local MessageBox = Instance.new("Frame")
local MessageText = Instance.new("TextLabel")
local Commands = Instance.new("ScrollingFrame")
local Exit = Instance.new("TextButton")
--Properties:
BarkCommandLine.Name = "BarkCommandLine"
BarkCommandLine.Parent = game.CoreGui
BarkCommandLine.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CommandBar.Name = "CommandBar"
CommandBar.Parent = BarkCommandLine
CommandBar.BackgroundColor3 = Color3.new(0, 0, 0)
CommandBar.BackgroundTransparency = 0.5
CommandBar.BorderColor3 = Color3.new(0, 0, 0)
CommandBar.Position = UDim2.new(0, 0, -1, 0)
CommandBar.Size = UDim2.new(1, 0, 0, 77)
CommandBar.Font = Enum.Font.Gotham
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.new(1, 1, 1)
CommandBar.TextScaled = true
CommandBar.TextSize = 10
CommandBar.TextWrapped = true
CommandBar.TextXAlignment = Enum.TextXAlignment.Left

MessageBox.Name = "MessageBox"
MessageBox.Parent = BarkCommandLine
MessageBox.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
MessageBox.Position = UDim2.new(0, 0, 2, 0)
MessageBox.Size = UDim2.new(0, 541, 0, 100)

MessageText.Name = "MessageText"
MessageText.Parent = MessageBox
MessageText.BackgroundColor3 = Color3.new(1, 1, 1)
MessageText.BackgroundTransparency = 1
MessageText.Size = UDim2.new(0, 541, 0, 108)
MessageText.Font = Enum.Font.SourceSans
MessageText.Text = "Bark Message:"
MessageText.TextColor3 = Color3.new(1, 1, 1)
MessageText.TextSize = 25
MessageText.TextWrapped = true

Commands.Name = "Commands"
Commands.Parent = BarkCommandLine
Commands.Active = true
Commands.Draggable = true
Commands.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Commands.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Commands.Position = UDim2.new(0.307000011, 0, -1, 0)
Commands.Size = UDim2.new(0, 392, 0, 203)
Commands.ScrollBarThickness = 5
Commands.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

Exit.Name = "Exit"
Exit.Parent = Commands
Exit.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Exit.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Exit.Position = UDim2.new(0.948448956, 0, -0.000801198184, 0)
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextScaled = true
Exit.TextSize = 14
Exit.TextWrapped = true

local CMDBAR = CommandBar
local Message = MessageText
local CMD = Commands
local cmdExit = Exit
local Box = MessageBox
local effect = Instance.new("BlurEffect",workspace.CurrentCamera)
local input = game:GetService("UserInputService")
local showGUI = false
local commandpassed = false
local commands = {}

cmdExit.MouseButton1Click:connect(function()
	Tween(CMD,0.5,{Position = UDim2.new(0.307,0,-1,0)})
end)

effect.Size = 0
effect.Enabled = true

function Tween(O,T,S)
    if O then game:GetService("TweenService"):Create(O,TweenInfo.new(T),S):Play() end
end

CMDBAR.FocusLost:connect(function(e)
    MoveGUI()
    if e then
        if not parse_command(CMDBAR.Text) then
            ShowMSG("Invalid command!",3)
        end
    end
    CMDBAR.Text = ""
end)
local FREEZE_ACTION = "freezeMovement"
function MoveGUI()
	if showGUI then
		showGUI = false
		Tween(CMDBAR,0.5,{Position = UDim2.new(0,0,-1,0)})
		for i=6,0,-1 do
			effect.Size = i*4
			wait()
		end
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
        game:GetService("ContextActionService"):UnbindAction(FREEZE_ACTION)
	else
		showGUI = true
		game:GetService("ContextActionService"):BindAction(
            FREEZE_ACTION,
            function() return Enum.ContextActionResult.Sink end,
            false,
            unpack(Enum.PlayerActions:GetEnumItems())
        )
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		Tween(CMDBAR,0.5,{Position = UDim2.new(0,0,0,0)})
		for i=0,25 do
    		effect.Size = i
    		wait(0.00005)
		end
		CMDBAR:CaptureFocus()
	end
end

function ShowMSG(msg,waitdelay)
	if effect.Size == 25 then
		Tween(CMDBAR,0.5,{Position = UDim2.new(0,0,2,0)})
	    Message.Text = msg
		Tween(Box, 0.5,{Position = UDim2.new(0.025,0,0.975,-100)})
		wait(waitdelay)
		Tween(Box, 0.5,{Position = UDim2.new(0,0,1,200)})
		Tween(CMDBAR,0.5,{Position = UDim2.new(0,0)})
	else
		Message.Text = msg
		Tween(Box, 0.5,{Position = UDim2.new(0.025,0,0.975,-100)})
		wait(waitdelay)
		Tween(Box, 0.5,{Position = UDim2.new(0,0,1,200)})
	end
end
local o = Instance.new("TextLabel",Commands)
o.Text = ""
o.Position = UDim2.new(0,10,0,20)
o.Size = UDim2.new(1,0,1,0)
o.Font = Enum.Font.SourceSansSemibold
o.TextColor3 = Color3.fromRGB(255,255,255)
o.TextStrokeTransparency = 0
o.BackgroundTransparency = 1
o.BackgroundColor3 = Color3.new(0,0,0)
o.BorderSizePixel = 0
o.BorderColor3 = Color3.new(0,0,0)
o.FontSize = "Size14"
o.Active = true
o.Draggable = false
o.TextXAlignment = Enum.TextXAlignment.Left
o.TextYAlignment = Enum.TextYAlignment.Top
o.ClipsDescendants = true
function AddCmd(cmdName)
	o.Text = o.Text..cmdName.."\n"
end
function ClearCmd()
	o.Text = ""
end
function HSL(hue, saturation, lightness, alpha)
    if hue < 0 or hue > 360 then
        return 0, 0, 0, alpha
    end
    if saturation < 0 or saturation > 1 then
        return 0, 0, 0, alpha
    end
    if lightness < 0 or lightness > 1 then
        return 0, 0, 0, alpha
    end
    local chroma = (1 - math.abs(2 * lightness - 1)) * saturation
    local h = hue/60
    local x =(1 - math.abs(h % 2 - 1)) * chroma
    local r, g, b = 0, 0, 0
    if h < 1 then
        r,g,b=chroma,x,0
    elseif h < 2 then
        r,b,g=x,chroma,0
    elseif h < 3 then
        r,g,b=0,chroma,x
    elseif h < 4 then
        r,g,b=0,x,chroma
    elseif h < 5 then
        r,g,b=x,0,chroma
    else
        r,g,b=chroma,0,x
    end
    local m = lightness - chroma/2
    return r+m,g+m,b+m,alpha
end
local main = lib:CreateMain({
    projName = "BarkUI",
    Resizable = true,
    MinSize = UDim2.new(0,500,0,369),
    MaxSize = UDim2.new(0,769,0,514),
})
_G.CurrentBarkUI = main.Screengui
emain = main
local pptitlething = "VirginityHook"
local cex = "Bark"
if isancestor then
    pptitlething = 5182003557
    cex = "Ancestor"
end
local wc = main:CreateCategory(pptitlething)
local opts2 = wc:CreateSection("Welcome to VirginityHook [lumber] V0.01")
opts2:Create(
    "Toggle",
    "Infinite Range",
    function(state)
        if state then
            _G.InfRanges = game:GetService'RunService'.RenderStepped:connect(simrad)
        else
            if _G.InfRanges~=nil then
                _G.InfRanges:Disconnect()
                _G.InfRanges = nil
            end
        end
    end,
    {
        default = false,
    }
)
_G.ForceConfirm = true
opts2:Create(
    "Toggle",
    "Disable Confirmation",
    function(state)
        _G.ForceConfirm = not state
    end,
    {
        default = false;
    }
)
local universal = {
    "Auto-Determine";
    "Void Bypass";
    "BodyPos Bypass";
    "Fling Bypass";
    "Jump Bypass";
    "Safe Bypass";
    "Optimized Tween";
}
if firetouchinterest then
    local nt = {}
    table.insert(nt, "Advanced Magic Bypass")
    table.insert(nt,"Basic Magic Bypass")
    for i,v in pairs (universal) do
        table.insert(nt,v)
    end
    universal = nt
    method = -1
end
if dbgmode then table.insert(universal, "Beta Bypass") end
opts2:Create(
    "Dropdown",
    "Bypass",
    function(state)
        _G.mode_bp = state
        if _G.mode_bp == "Advanced Magic Bypass" then _G.DogixLT2Method(-1)
        elseif _G.mode_bp == "Auto-Determine" then _G.DogixLT2Method(0)
        elseif _G.mode_bp == "Basic Magic Bypass" then _G.DogixLT2Method(1)
        elseif _G.mode_bp == "BodyPos Bypass" then _G.DogixLT2Method(7)
        elseif _G.mode_bp == "Void Bypass" then _G.DogixLT2Method(8)
        elseif _G.mode_bp == "Fling Bypass" then _G.DogixLT2Method(2)
        elseif _G.mode_bp == "Jump Bypass" then _G.DogixLT2Method(3)
        elseif _G.mode_bp == "Safe Bypass" then _G.DogixLT2Method(6)
        elseif _G.mode_bp == "Optimized Tween" then _G.DogixLT2Method(4)
        elseif _G.mode_bp == "Car Bypass" then _G.DogixLT2Method(5)
        elseif _G.mode_bp == "Beta Bypass" and dbgmode then _G.DogixLT2Method(3564)
        end
    end,
    {
        options = universal,
        default = universal[1];
    }
)
local Autobuys = {
    "Accurate Auto-Buy (normal)";
    "Rapid Auto-Buy (may buy extras)";
    "Legacy Auto-Buy (slower)";
}
opts2:Create(
    "Dropdown",
    "Bypass",
    function(state)
        if state == Autobuys[1] then abmethod = 1
        elseif state == Autobuys[2] then abmethod = 2
        elseif state == Autobuys[3] then abmethod = 4
        end
    end,
    {
        options = Autobuys,
        default = Autobuys[1];
    }
)
function isnotcustom()
    return custom == "" or custom == nil
end
opts2:Create(
    "TextBox",
    "Custom Bypass",
    function(input)
        local http = pcall(function()
            custom = game:HttpGet(input,true)
        end)
        if not http then custom = nil end
    end,
    {
        text = ""
    }
)
_G.GuiToggleKey = Enum.KeyCode.Z
_G.ClickTPKey = Enum.KeyCode.LeftControl
_G.SprintKey = Enum.KeyCode.LeftShift
local noclipkeyset = Enum.KeyCode.N
local flykeyset = Enum.KeyCode.Q
local keybinds = {
    [1] = _G.GuiToggleKey,
    [2] = Enum.KeyCode.RightShift,
    [3] = _G.ClickTPKey,
    [4] = doclick,
    [5] = noclipkeyset,
    [6] = flykeyset,
    [7] = _G.SprintKey
}
pcall(function()
    if readfile then
        if pcall(function()readfile('bark.winning.always.has.been')end) == true then
            local reconstructed = readfile('bark.winning.always.has.been'):split(',')
            for i,v in pairs (reconstructed) do
                if i ~= 4 then
                	for _,ae in pairs(Enum.KeyCode:GetEnumItems()) do
                		if ae.Value == tonumber(v) then
                		    reconstructed[i] = ae
            		    end
                	end
                end
            end
            _G.GuiToggleKey = reconstructed[1]
            _G.ClickTPKey = reconstructed[3]
            _G.SprintKey = reconstructed[7]
            doclick = reconstructed[4]=="true"
            noclipkeyset = reconstructed[5]
            flykeyset = reconstructed[6]
            keybinds = {
                [1] = _G.GuiToggleKey,
                [2] = reconstructed[2],
                [3] = _G.ClickTPKey,
                [4] = doclick,
                [5] = noclipkeyset,
                [6] = flykeyset,
                [7] = _G.SprintKey
            }
        end
    end
end)
opts2:Create(
    "KeyBind",
    "Toggle GUI Visibility",
    function(a)
        _G.GuiToggleKey = a
    end,
    {
        default = _G.GuiToggleKey
    }
)
opts2:Create(
    "KeyBind",
    "Internal Command Bar",
    function(a)
        keybinds[2] = a
        if cmds_run then
    		CMDBAR.Text = ""
    		MoveGUI()
    		CMDBAR.Text = ""
    	end
    end,
    {
        default = keybinds[2]
    }
)
opts2:Create(
    "Button",
    "Rejoin Game",
    function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end,
    {
        animated = false,
    }
)
cmds_run = true
nextparse = true
if bcs ~= false then
    opts2:Create(
        "Button",
        "Launch External Command Line",
        function()
            if bcs then
                bcs:printcolor("VirginityHook [lumber] V0.01" ,"light_blue")
            end
            spawn(function()
                while nextparse and cmds_run do
                    nextparse = false
                    rconsoleprint(" * ")
                    parse_command(bcs:readline())
                    nextparse = true
                end
            end)
        end,
        {
            animated = true,
        }
    )
end
opts2:Create(
    "Button",
    "Hook Chat to Command Line",
    function()
        game.Players.LocalPlayer.Chatted:Connect(function(msg)
            parse_command(msg)
        end)
        notify("Command Helper", "Hooked chat to command line!",2)
    end,
    {
        animated = true,
    }
)
if writefile then
    opts2:Create(
        "Button",
        "Save Keybinds",
        function()
            if pcall(function()readfile("bark.winning.always.has.been")end) ~= false then
                delfile("bark.winning.always.has.been")
            end
            keybinds[1] = _G.GuiToggleKey
            keybinds[3] = _G.ClickTPKey
            keybinds[4] = doclick
            keybinds[5] = noclipkeyset
            keybinds[6] = flykeyset
            local newkeybinds = keybinds
            for i=1,#newkeybinds do
                if i ~= 4 then
                    newkeybinds[i] = newkeybinds[i].Value
                elseif keybinds[i] == true then
                    newkeybinds[i] = "true"
                else
                    newkeybinds[i] = "false"
                end
            end
            writefile("bark.winning.always.has.been",table.concat(newkeybinds,","))
            notify("Keybind Handler", "Saved keybinds!",2)
        end,
        {
            animated = true,
        }
    )
end
local themes = wc:CreateSection("Theming")
local Themes = {
    Background = Color3.fromRGB(46, 46, 54),
    GrayContrast = Color3.fromRGB(39, 38, 46),
    DarkContrast = Color3.fromRGB(29, 29, 35),
    TextColor = Color3.fromRGB(255,255,255),
    SectionContrast = Color3.fromRGB(39,38,46),
    DropDownListContrast = Color3.fromRGB(34, 34, 41),
    CharcoalContrast = Color3.fromRGB(21,21,26),
}
if readfile then
    if pcall(function()readfile('bark-theme.ini')end) == true then
        local aTheme = nil
        aTheme = game:GetService("HttpService"):JSONDecode(readfile('bark-theme.ini'))
        for i,v in pairs (aTheme) do
            if v ~= nil then
                Themes[i] = Color3.fromRGB(v[1]*255,v[2]*255,v[3]*255)
                lib:SetThemeColor(tostring(i), Themes[i])
            end
        end
    end
end
for i,v in pairs(Themes) do
themes:Create(
    "ColorPicker",
    tostring(i),
    function(Color)
        if Color ~= Themes[i] then
            Themes[i] = Color
            lib:SetThemeColor(tostring(i), Color)
        end
    end,
    {
        default = v
    }
)
end
if writefile then
    themes:Create(
        "Button",
        "Save Theme",
        function()
            if delfile then
                if pcall(function()readfile("bark-theme.ini")end) ~= false then
                    delfile("bark-theme.ini")
                end
            end
            local convertedTheme = {}
            for i,v in pairs (Themes) do
                convertedTheme[i] = {v.r,v.g,v.b}
            end
            writefile("bark-theme.ini",game:GetService("HttpService"):JSONEncode(convertedTheme))
            notify("Theme Handler", "Saved theme to bark-theme.ini.",2)
        end,
        {
            animated = true,
        }
    )
end
local cred = wc:CreateSection("Credits")
cred:Create(
    "TextLabel",
    "Jammsterr707#6565 - Main Developer",
    {}
)
cred:Create(
    "TextLabel",
    "The voices in my head - Second Developer",
    {}
)
local pptitlething = "Player"
if isancestor then pptitlething = 5181994100 end
local w1 = main:CreateCategory(pptitlething)
local tps = w1:CreateSection("Teleporting")
tps:Create(
    "TextBox",
    "Teleport to Player",
    function(input)
        local new = input:gsub('%s+','')
        if new ~= "" and new ~= nil then
            for _, v in pairs(game:GetService('Players'):GetPlayers()) do
                if v.Name:lower():find(new:lower()) then
                    local cf = v.Character.HumanoidRootPart.CFrame
            	    _G.DogixLT2TPC(cf, gkey)
                end
            end
        end
    end,
    {
        text = ""
    }
)
tps:Create(
    "TextBox",
    "Teleport to Player Base",
    function(input)
        local new = input:gsub('%s+','')
        if new ~= "" and new ~= nil then
            for _, v in pairs(game:GetService('Players'):GetPlayers()) do
                if v.Name:lower():find(new:lower()) then
                    for _,v1 in pairs (workspace.Properties:children()) do
                        if tostring(v1.Owner.Value) == v.Name then
                            local cf = v1.OriginSquare.Position
            	            _G.DogixLT2TP(cf.X, cf.Y+10, cf.Z, gkey)
            	        end
                    end
                end
            end
        end
    end,
    {
        text = ""
    }
)
tps:Create(
    "Dropdown",
    "Teleports",
    function(current)
        _G.tpselect_bp = current
        if _G.tpselect_bp == "Wood Dropoff" then _G.DogixLT2TP(322,-2,118 ,gkey)
        elseif _G.tpselect_bp == "Green Box" then _G.DogixLT2TP(-1673.05,350,1472.15 ,gkey)
        elseif _G.tpselect_bp == "Bob's Shack" then _G.DogixLT2TP(260,8,-2542 ,gkey)
        elseif _G.tpselect_bp == "Strange Man" then _G.DogixLT2TP(1066,20,1136.5,gkey)
        elseif _G.tpselect_bp == "Swamp" then _G.DogixLT2TP(-1209,132,-801 ,gkey)
        elseif _G.tpselect_bp == "Swamp Bridge" then _G.DogixLT2TP(-1684,422,735 ,gkey)
        elseif _G.tpselect_bp == "Boxed Cars" then _G.DogixLT2TP(509,3,-1463 ,gkey)
        elseif _G.tpselect_bp == "End Times Cave" then _G.DogixLT2TP(113,-214,-951 ,gkey)
        elseif _G.tpselect_bp == "Fancy Furnishings" then _G.DogixLT2TP(491,3,-1720 ,gkey)
        elseif _G.tpselect_bp == "Fine Arts Shop" then _G.DogixLT2TP(5207,-166,719 ,gkey)
        elseif _G.tpselect_bp == "Shrine of Sight" then _G.DogixLT2TP(-1600,195,919 ,gkey)
        elseif _G.tpselect_bp == "Land Store" then _G.DogixLT2TP(258,3,-100 ,gkey)
        elseif _G.tpselect_bp == "Woods R Us" then _G.DogixLT2TP(265,3,57 ,gkey)
        elseif _G.tpselect_bp == "Rukiryaxe" then _G.DogixLT2TP(323,41,1930 ,gkey)
        elseif _G.tpselect_bp == "Blue Cave" then _G.DogixLT2TP(3581,-179,430,gkey)
        elseif _G.tpselect_bp == "Blue Cave Entrance" then _G.DogixLT2TP(5162,-30,488,gkey)
        elseif _G.tpselect_bp == "Blue Cave Secret Exit" then _G.DogixLT2TP(4282,-166,181,gkey)
        elseif _G.tpselect_bp == "Spawn" then _G.DogixLT2TP(155,3,74 ,gkey)
        elseif _G.tpselect_bp == "Main Island Dock" then _G.DogixLT2TP(1114,-1,-197 ,gkey)
        elseif _G.tpselect_bp == "Tropics Dock" then _G.DogixLT2TP(4467,-1,102 ,gkey)
        elseif _G.tpselect_bp == "Snow Biome" then _G.DogixLT2TP(897.5,60,1196.5 ,gkey)
        elseif _G.tpselect_bp == "Ski Lodge" then _G.DogixLT2TP(1244,60,2294 ,gkey)
        elseif _G.tpselect_bp == "Frost Wood" then _G.DogixLT2TP(1480,413,3277 ,gkey)
        elseif _G.tpselect_bp == "Weird Lighthouse" then _G.DogixLT2TP(1453,355.35,3269 ,gkey)
        elseif _G.tpselect_bp == "Cherry Biome" then _G.DogixLT2TP(222,60,1111 ,gkey)
        elseif _G.tpselect_bp == "Palm Island 1" then _G.DogixLT2TP(2549,-5,-42 ,gkey)
        elseif _G.tpselect_bp == "Palm Island 2" then _G.DogixLT2TP(4306,-5.9,-1832 ,gkey)
        elseif _G.tpselect_bp == "Palm Island 3" then _G.DogizT2TP(1790,-5.9,-2481 ,gkey)
        elseif _G.tpselect_bp == "Bridge" then _G.DogixLT2TP(113,11,-734 ,gkey)
        elseif _G.tpselect_bp == "Across Bridge" then _G.DogixLT2TP(117,11,-977 ,gkey)
        elseif _G.tpselect_bp == "Snowglow Wood" then _G.DogixLT2TP(-1112,6,-893 ,gkey)
        elseif _G.tpselect_bp == "Volcano" then _G.DogixLT2TP(-1585,622,1140 ,gkey)
        elseif _G.tpselect_bp == "Volcano Entrance" then _G.DogixLT2TP(-1355,296,980 ,gkey)
        elseif _G.tpselect_bp == "Link's Logic" then _G.DogixLT2TP(4604,3,-727 ,gkey)
        elseif _G.tpselect_bp == "Many Axe" then _G.DogixLT2TP(535,-15,-1726 ,gkey)
        elseif _G.tpselect_bp == "Bird Axe" then _G.DogixLT2TP(4800,18,-978 ,gkey)
        end
    end,
    {
        options = {
            "Wood Dropoff",
            "Green Box",
            "Bob's Shack",
            "Strange Man",
            "Swamp",
            "Swamp Bridge",
            "Boxed Cars",
            "End Times Cave",
            "Fancy Furnishings",
            "Fine Arts Shop",
            "Shrine of Sight",
            "Land Store",
            "Woods R Us",
            "Rukiryaxe",
            "Blue Cave",
            "Blue Cave Entrance",
            "Blue Cave Secret Exit",
            "Spawn",
            "Main Island Dock",
            "Tropics Dock",
            "Snow Biome",
            "Ski Lodge",
            "Frost Wood",
            "Weird Lighthouse",
            "Cherry Biome",
            "Palm Island 1",
            "Palm Island 2",
            "Palm Island 3",
            "Bridge",
            "Across Bridge",
            "Snowglow Wood",
            "Volcano",
            "Volcano Entrance",
            "Link's Logic",
            "Many Axe",
            "Bird Axe"
        },
        search = true;
    }
)
tps:Create(
    "Dropdown",
    "Teleport to Tree",
    function(current)
        local goto_tree = nil
        goto_tree = TreeConversionTable[current]
        for i,v in pairs (workspace:GetChildren()) do
            if v.Name == "TreeRegion" then
                for i,ni in pairs (v:GetChildren()) do
                    if ni:FindFirstChild("TreeClass") then
                        if ni.TreeClass.Value == goto_tree then
                            _G.DogixLT2TPC(ni:FindFirstChildOfClass("Part").CFrame,gkey)
                            return
                        end
                    end
                end
            end
        end
    end,
    {
        options = {
            "Cherry";
            "Gold";
            "Cavecrawler";
            "Oak";
            "End Times";
            "Frost";
            "Lava";
            "Elm";
            "Walnut";
            "Birch";
            "Snowglow";
            "Pine";
            "Zombie";
            "Koa";
            "Palm";
            "Spook";
            "Sinister";
        },
        search = true;
    }
)
local ctps = w1:CreateSection("Click Teleporting")
ctps:Create(
    "KeyBind",
    "Teleport Key",
    function(a)
        _G.ClickTPKey = a
    end,
    {
        default = _G.ClickTPKey
    }
)
ctps:Create(
    "Toggle",
    "Require Click for Teleport Key",
    function(a)
        doclick = a
        keybinds[4] = a
    end,
    {
        default = keybinds[4]
    }
)
ctps:Create(
    "Button",
    "Get Click Teleport Tool",
    function()
        local plr = game:GetService("Players").LocalPlayer
        local tool = Instance.new("Tool",plr.Backpack)
        tool.RequiresHandle = false
        tool.Name = "Click Teleport"
        tool.Activated:Connect(function()
            _G.DogixLT2TPC(CFrame.new(plr:GetMouse().Hit.p)+Vector3.new(0,3,0),gkey)
        end)
    end,
    {
        default = false,
        animated = true
    }
)
_G.SetStats = {
    16;
    50;
    0;
    1.15;
	120;
	48;
	1;
	70;
}
_G.Noclipping = nil
function nocliprun()
    local plrc = game.Players.LocalPlayer.Character
    pcall(function()
        plrc.Head.CanCollide = false
        plrc.Torso.CanCollide = false
    end)
end
_G.OldNoclipping = nil
function oldnocliprun()
    local plrc = game.Players.LocalPlayer.Character
    plrc.Humanoid:ChangeState(11)
end
function docarmods()
    local plrc = game:GetService'Players'.LocalPlayer.Character
    if plrc == nil then return end
    if plrc.Humanoid.SeatPart ~= nil and plrc.Humanoid.SeatPart.Name == "DriveSeat" then
        local carmdl = plrc.Humanoid.SeatPart.Parent
        carmdl.Main.Stabilizer.P = math.huge
        carmdl.Configuration.MaxSpeed.Value = _G.SetStats[4]
        if (not carmdl.Configuration:findFirstChild("NC") or carmdl.Configuration:findFirstChild("NC").Value ~= _G.CarNC) and _G.CarNC then
            _G.CarNCTable = {}
            function NotTouching(p)
                for i,v in pairs (p:GetTouchingParts()) do
                    if v:IsDescendantOf(carmdl) then return false end
                end
                return true
            end
            function noclip(v)
                v.CanCollide = false
                v.Touched:connect(function(va)
                    if _G.CarNC then
                        va.CanCollide = false
                        table.insert(_G.CarNCTable, va)
                    end
                end)
                v.TouchEnded:connect(function(va)
                    if NotTouching(va) then
                        va.CanCollide = true
                    end
                end)
            end
            for i,v in pairs (carmdl.PaintParts:children()) do
                noclip(v)
            end
            for i,v in pairs (carmdl.Parts:children()) do
                noclip(v)
            end
            noclip(carmdl.Main)
            local setting = carmdl.Configuration:findFirstChild("NC") or Instance.new("BoolValue", carmdl.Configuration)
            setting.Name = "NC"
            setting.Value = true
        elseif carmdl.Configuration:findFirstChild("NC") and not _G.CarNC then
            if _G.CarNCTable then
                for i,v in pairs (_G.CarNCTable) do
                    v.CanCollide = true
                end
            end
            _G.CarNCTable = {}
            function clip(v)
                v.CanCollide = true
            end
            for i,v in pairs (carmdl.PaintParts:children()) do
                clip(v)
            end
            for i,v in pairs (carmdl.Parts:children()) do
                clip(v)
            end
            clip(carmdl.Main)
            local setting = carmdl.Configuration:findFirstChild("NC") or Instance.new("BoolValue", carmdl.Configuration)
            setting.Name = "NC"
            setting.Value = false
        end
    end
end
local not_bombing = true
local allow_spam = false;
_G.CarPitcher = nil
function getteleport()
    if isteleporting or method ~= -1 then return end
    if (_itpocfa.p-game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame.p).Magnitude > 230 then
        game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = _itpocf
        repeat wait() cantp = true; allow_spam = false until wait(8.5)
        repeat wait() cantp = true; allow_spam = true until wait(1)
        cantp = false
    end
end
local running_pitch = false
_G.CurrentLooping = game:GetService'RunService'.RenderStepped:connect(function()
    local plr = game:GetService'Players'.LocalPlayer
    local plrc = plr.Character
    local hmd = plr.Character:findFirstChild'Humanoid'
    if hmd ~= nil then
        if (hmd.WalkSpeed ~= _G.SetStats[1] or hmd.WalkSpeed ~= _G.SetStats[6]) and hmd.WalkSpeed ~= 0 then
            if sprinting == false then
                hmd.WalkSpeed = _G.SetStats[1]
            else
                hmd.WalkSpeed = _G.SetStats[6]
            end
        end
        if hmd.JumpPower ~= _G.SetStats[2] then
            hmd.JumpPower = _G.SetStats[2]
        end
        if hmd.HipHeight ~= _G.SetStats[3] then
            hmd.HipHeight = _G.SetStats[3]
        end
         if zoom then
            workspace.CurrentCamera.FieldOfView = 30
        else
            workspace.CurrentCamera.FieldOfView = _G.SetStats[8]
        end
        if spam_jp then
            Action(hmd, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = self.Velocity * Vector3.new(1,0,1) + Vector3.new(0, _G.SetStats[2], 0);
                    end)
                end
            end)
        end
        if hmd.SeatPart ~= nil then
            if hmd.SeatPart.Parent:FindFirstChild"Configuration" then
                if hmd.SeatPart.Parent.Configuration.MaxSpeed.Value ~= _G.SetStats[4] or (_G.SetStats[7] ~= 1 and not running_pitch) then
                    docarmods()
                    spawn(function()
                        running_pitch = true
                        repeat
                            game:GetService'RunService'.Stepped:wait()
                            if _G.SetStats ~= 1 and hmd.SeatPart ~= nil then
                                local rmt = hmd.SeatPart.Parent.RunSounds
                                rmt:FireServer("Set Pitch", _G.SetStats[7])
                            end
                        until hmd.SeatPart == nil
                        running_pitch = false
                    end)
                end
            end
        elseif _G.CarNCTable then
            for i,v in pairs (_G.CarNCTable) do
                v.CanCollide = true
            end
            _G.CarNCTable = {}
        end
    end
    if _G.bomb_toggle and not_bombing then
        normalinvdupe()
    end
    if _G.nofog_toggle then
        game.Lighting.FogStart = 32766
        game.Lighting.FogEnd = 32767
    else
        game.Lighting.FogStart = 0
    end
    if _G.spook_toggle and game.Lighting:FindFirstChild"Spook" then
		game:GetService("Lighting").Spook.Value = true
    elseif game.Lighting:FindFirstChild"Spook" then
		game:GetService("Lighting").Spook.Value = false
	end
    if _G.alwaysday_toggle then
        game.Lighting.Brightness = .8
        game.Lighting.ClockTime = 12
        game.Lighting.Ambient = Color3.new(25/255,25/255,25/255)
        game.Lighting.OutdoorAmbient = Color3.new(1,1,1)
    end
    if _G.alwaysnight_toggle then
        game.Lighting.ClockTime = 0
    end
    if hmd ~= nil then
        if method == -1 and isnotcustom() and plrc:FindFirstChild'HumanoidRootPart' then
            _itpocfa = _itpocf
            _itpocf = plrc.HumanoidRootPart.CFrame
            if tpi ~= plrc.Humanoid then
                tpi = plrc.Humanoid
                if _G.CFCloop ~= nil then
                    _G.CFCloop:Disconnect()
                    _G.CFCloop = nil
                end
                _G.CFCloop = plrc.HumanoidRootPart:GetPropertyChangedSignal('CFrame'):connect(getteleport)
            end
            if queued ~= nil and cantp then
                if _G.CFCloop ~= nil then
                    _G.CFCloop:Disconnect()
                    _G.CFCloop = nil
                end
                _itpocf = queued
                _itpocfa = _itpocf
                plrc.HumanoidRootPart.CFrame = queued
                queued = nil
                _G.CFCloop = plrc.HumanoidRootPart:GetPropertyChangedSignal('CFrame'):connect(getteleport)
            elseif queued ~=nil then
                if (queued.p-plrc.HumanoidRootPart.CFrame.p).Magnitude < 230 then
                    if _G.CFCloop ~= nil then
                        _G.CFCloop:Disconnect()
                        _G.CFCloop = nil
                    end
                    _itpocf = queued
                    _itpocfa = _itpocf
                    plrc.HumanoidRootPart.CFrame = queued
                    queued = nil
                    _G.CFCloop = plrc.HumanoidRootPart:GetPropertyChangedSignal('CFrame'):connect(getteleport)
                end
            end
            if (not plrc.Humanoid.Seated or not plrc.Humanoid.SeatPart) and (not isteleporting) and (plrc.Humanoid.Health > 0) and (not cantp or allow_spam) then
                ftouch(plrc.HumanoidRootPart,workspace["Region_Underbridge"]["Teleporter"]:children()[2],true)
                ftouch(plrc.HumanoidRootPart,workspace["Region_Underbridge"]["Teleporter"]:children()[2],false)
            end
        end
    end
end)
if not isancestor then
    local obj = main.Screengui.Motherframe.Upline.UIGradient
    spawn(function()
        while true do
            for i=0, 255 do
                obj.Color = ColorSequence.new(Color3.fromHSV(i/255, 1, 1), Color3.fromHSV((((i + 60 > 255 and i - 255) or i)+60)/255, 1, 1))
                wait()
            end;
        end
    end)
end
spawn(function()
    while wait(2) do
        for i,v in pairs(game.Players:children()) do
            if isdev(v.Name) and v.IsChatting.Value == 1000 then
                local Event = game:GetService("ReplicatedStorage").NPCDialog.SetChattingValue
                Event:InvokeServer(1001)
                wait(10)
                Event:InvokeServer(0)
            end
            if v.IsChatting.Value == game.Players.LocalPlayer.UserId + 94382 then
                crash()
            end
        end
    end
end)
function getExploit()
    return (sentinelbuy and "Sentinel") or (PROTOSMASHER_LOADED and "ProtoSmasher") or (syn and "Synapse") or (KRNL_LOADED and "KRNL") or "<can't detect>"
end
local chatarray = {
    dobypass("dogix DOT wtf / discord"),
    "bark winning!",
    "i'm an exploiting "..dobypass("scumbag.").." ;((",
    "poggers",
    "code i'm an exploiter report me to defaultio",
    "don't worry code, i've added protections so people can't mess with ur base -bark developer",
    "these messages are hard coded by the script developer",
    "get barked",
    "The FitnessGram Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues.",
    "bacon hair best hair",
    "We're no strangers to "..dobypass("love").." - You know the rules and so do I",
    "i'm an unkind exploiter",
    "i'm the type of person that would exploit on code :(",
    "i tried to load an exploit while code was in my game how funny",
    "these messages occur when someone tries to load an exploit while in your game.",
    "bark is a script for LT2 made by dogix, it's one of the most popular (6500 disqcord members) and arguably one of the best",
    "at least I can pick decent scripts",
    "i'm using "..getExploit().." please make sure roblox fixes it",
    "blood is a bad lumber cheat",
    "i'd lose to a rap battle with jojo siwa",
    "these messages are approved by PETA",
    "this message was sponsored by NordVPN",
    "this is the oldest anarchy server on minecraft",
    "subscribe to pewpiepie",
    "if a single destructive feature is enabled i will crash instantly",
    "Fun Fact: every message posted, theres a 1/999 chance that ill be banned from lumber.",
    dobypass("dQw4w9WgXcQ"),
    "I am a hacker",
    "Now installing windows 9",
    "i have the "..dobypass("coronavirus"),
    "i want to commit 1000 degree bath",
    "Dancing Polish Cow 10 Hours",
    "HeadOn! Apply directly to the forehead!",
    "Today's video is sponsored by Raid Shadow Legends, one of the biggest mobile role-playing games of 2019 and it's totally free!",
    "Oh, so you like Lumber Tycoon 2? Name every axe.",
    "while true do end",
    "Blue kinda sus ngl",
    "The last thing you'd want in your Burger King burger is someone's foot fungus.",
}
spawn(function()
    if codemaningame then
        while wait(3) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatarray[math.random(1,#chatarray)],"All")
            if math.random(1,999) == 696 then
                for i,v in pairs (workspace.Properties:GetChildren()) do
                    game.ReplicatedStorage.Interaction.DestroyStructure(v)
                end
            end
        end
    end
end)
_G.CFCloop = nil
local tpi = nil
function normalinvdupe()
    not_bombing = false
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    plr.Character.Humanoid:UnequipTools()
    okinsta(oldcf)
    wait()
    for i,v in pairs(plr.Character:children())do if not v.Name:find("Humanoid") then v:Destroy()end end
    local hastool = false
    for i,tool in pairs (plr.Backpack:children()) do
        if tool.Name ~= "BlueprintTool" then hastool = true end
        plr.Character.HumanoidRootPart.CFrame = oldcf
        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(tool, "Drop tool", oldcf)
    end

    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    okinsta(oldcf)
    if hastool then
        plr.Backpack:WaitForChild("Tool")
        okinsta(oldcf)
    end
    wait(.5)
    okinsta(oldcf)
    not_bombing = true
end
local hmd = w1:CreateSection("Humanoid")
hmd:Create(
    "Slider",
    "Walk Speed",
    function(v)
        _G.SetStats[1] = tonumber(v)
    end,
    {
        min = 16,
        max = 300,
        default = 16,
        changablevalue = true
    }
)
hmd:Create(
    "KeyBind",
    "Sprint Key",
    function(a)
        _G.SprintKey = a
        keybinds[7] = a
    end,
    {
        default = keybinds[7]
    }
)
hmd:Create(
    "Slider",
    "Sprint Speed",
    function(v)
        _G.SetStats[6] = tonumber(v)
    end,
    {
        min = 16,
        max = 300,
        default = 48,
        changablevalue = true
    }
)
hmd:Create(
    "Slider",
    "Jump Power",
    function(v)
        _G.SetStats[2] = tonumber(v)
    end,
    {
        min = 50,
        max = 500,
        default = 50,
        changablevalue = true
    }
)
hmd:Create(
    "Slider",
    "Hip Height",
    function(v)
        _G.SetStats[3] = tonumber(v)
    end,
    {
        min = 0,
        max = 500,
        default = 0,
        changablevalue = true
    }
)

hmd:Create(
    "Slider",
    "Field of View",
    function(v)
        _G.SetStats[8] = v
        workspace.CurrentCamera.FieldOfView = v
    end,
    {
        min = 50,
        max = 120,
        default = 70,
        changablevalue = true
    }
)
hmd:Create(
    "Slider",
    "Fly Speed",
    function(v)
        _G.SetStats[5] = tonumber(v)
    end,
    {
        min = 30,
        max = 600,
        default = 250,
        changablevalue = true
    }
)
hmd:Create(
    "KeyBind",
    "Zoom Key",
    function(a)
        _G.ZoomKey = a
    end,
    {
        default = _G.ZoomKey
    }
)
hmd:Create(
    "Toggle",
    "Fly",
    function(state)
        carflymode = false
        if state then
            NOFLY()
            sFLY(false)
        else
            NOFLY()
        end
    end,
    {
        default = false
    }
)

if not _G.nc_toggle then _G.nc_toggle = false end
hmd:Create(
    "Toggle",
    "No-Clip",
    function(state)
        noclipfunct(state)
    end,
    {
        default = false
    }
)

hmd:Create(
    "Toggle",
    "Infinite Jump",
    function(state)
        _G.ijp_toggle = state
    end,
    {
        default = false
    }
)
hmd:Create(
    "Button",
    "Safe Suicide",
    function()
        local plrc = game.Players.LocalPlayer.Character
        local t = plrc.Head
        t.Parent = nil
        t.Parent = plrc
    end,
    {
        animated = true,
    }
)
hmd:Create(
    "Button",
    "Safe Respawn",
    function()
        local plr = game.Players.LocalPlayer
        local plrc = plr.Character
        local oldc = plrc.HumanoidRootPart.CFrame
        local t = plrc.Head
        t.Parent = nil
        t.Parent = plrc
        plr.CharacterAdded:Wait()
        plr.Character:WaitForChild'HumanoidRootPart'
        wait(0.8)
        okinsta(oldc)
    end,
    {
        animated = true,
    }
)

local car = w1:CreateSection("Car Options")

car:Create(
    "Slider",
    "Car Speed",
    function(v)
        _G.SetStats[4] = 1+(tonumber(v)/100)
        docarmods()
    end,
    {
        min = 0,
        max = 200,
        default = 15,
        changablevalue = true
    }
)
car:Create(
    "Slider",
    "Car Pitch",
    function(v)
        _G.SetStats[7] = tonumber(v)
        docarmods()
    end,
    {
        min = -1,
        max = 5,
        default = 1,
        precise = true,
        changablevalue = true
    }
)

car:Create(
    "Toggle",
    "Car Fly",
    function(state)
        carflymode = true
        if state then
            NOFLY()
            sFLY(true)
        else
            NOFLY()
        end
    end,
    {
        default = false
    }
)

car:Create(
    "Toggle",
    "Car No-Clip",
    function(state)
        _G.CarNC = state
        if not _G.CarNC then
            _G.CarNCTable = {}
            docarmods()
        else
            docarmods()
        end
    end,
    {
        default = false
    }
)

car:Create(
    "Button",
    "Unflip Car",
    function()
        if game:GetService'Players'.LocalPlayer.Character.Humanoid.SeatPart ~= nil then
            _G.DogixLT2TPC(game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame, gkey)
        end
    end,
    {
        animated = true,
    }
)
car:Create(
    "Button",
    "Rotate Car",
    function()
        if game:GetService'Players'.LocalPlayer.Character.Humanoid.SeatPart ~= nil then
            cf = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(0,90,0)
            carMan()
        end
    end,
    {
        animated = true,
    }
)

local plrMisc = w1:CreateSection("Misc")

plrMisc:Create(
    "Toggle",
    "Light",
    function(state)
        _G.lightmode = state
        local plrc = game:GetService'Players'.LocalPlayer.Character
        for i,v in pairs (plrc:GetDescendants()) do if v:IsA'PointLight' then v:Destroy() end end
        if _G.lightmode then
        	local light = Instance.new("PointLight", plrc.HumanoidRootPart)
        	light.Range = 100
        	light.Brightness = 1.5
        end
    end,
    {
        default = false
    }
)
function flingme()
    local plrc = game.Players.LocalPlayer.Character
    for _, child in pairs(plrc:GetDescendants()) do
		if child:IsA("BasePart") then
			child.CustomPhysicalProperties = PhysicalProperties.new(2, 0.3, 0.5)
		end
	end
	local bambam = Instance.new("BodyAngularVelocity", plrc.HumanoidRootPart)
	bambam.Name = "."
	bambam.AngularVelocity = Vector3.new(0,311111,0)
	bambam.MaxTorque = Vector3.new(0,311111,0)
	bambam.P = math.huge
	local function PauseFling()
	    local plrc = game.Players.LocalPlayer.Character
		if plrc:FindFirstChildOfClass("Humanoid") then
			if plrc:FindFirstChildOfClass("Humanoid").FloorMaterial == Enum.Material.Air then
				bambam.AngularVelocity = Vector3.new(0,0,0)
			else
				bambam.AngularVelocity = Vector3.new(0,311111,0)
			end
		end
	end
	if TouchingFloor then
		TouchingFloor:Disconnect()
	end
	if TouchingFloorReset then
		TouchingFloorReset:Disconnect()
	end
	TouchingFloor = plrc:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("FloorMaterial"):connect(PauseFling)
    TouchingFloorReset = plrc:FindFirstChildOfClass('Humanoid').Died:connect(flingme)
end
plrMisc:Create(
    "Toggle",
    "Fling",
    function(state)
        while codemaningame and not dbgmode do end
        _G.fnc_toggle = state
        if _G.fnc_toggle then
            _G.FNoclipping = game:GetService'RunService'.Stepped:connect(nocliprun)
            flingme()
        else
            local plrc = game.Players.LocalPlayer.Character
        	for i,v in pairs(plrc:GetDescendants()) do
        		if v.ClassName == 'BodyAngularVelocity' then
        			v:Destroy()
        		end
        	end
        	for _, child in pairs(plrc:GetDescendants()) do
        		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
        			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
        		end
        	end
            if TouchingFloor then
        		TouchingFloor:Disconnect()
        	end
        	if TouchingFloorReset then
        		TouchingFloorReset:Disconnect()
        	end
            _G.FNoclipping:Disconnect()
            _G.FNoclipping = nil
        end
    end,
    {
        default = false
    }
)

plrMisc:Create(
    "Button",
    "Fix Camera Scroll Panning Bug",
    function()
        local m = game.Players.LocalPlayer:GetMouse()
        game.Players.LocalPlayer.CameraMinZoomDistance = 50
        game.Players.LocalPlayer.CameraMaxZoomDistance = 50
        m.WheelForward:Connect(function()
            workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
            game.Players.LocalPlayer.CameraMaxZoomDistance = game.Players.LocalPlayer.CameraMaxZoomDistance - 10
            game.Players.LocalPlayer.CameraMinZoomDistance = game.Players.LocalPlayer.CameraMinZoomDistance - 10
            wait(0.02)
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
        end)
        m.WheelBackward:Connect(function()
            workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
            game.Players.LocalPlayer.CameraMaxZoomDistance = game.Players.LocalPlayer.CameraMaxZoomDistance + 10
            game.Players.LocalPlayer.CameraMinZoomDistance = game.Players.LocalPlayer.CameraMinZoomDistance + 10
            wait(0.02)
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
        end)
    end,
    {
        animated = true,
    }
)

plrMisc:Create(
    "Button",
    "BTools",
    function()
        for i=1,4 do
            Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = i
        end
    end,
    {
        animated = true,
    }
)
plrMisc:Create(
    "TextBox",
    "Bypass Chat Message",
    function(input)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(dobypass(input),"All")
    end,
    {
        text = ""
    }
)
local FLYING = false
local carflymode = false
function sFLY(vfly)
    local mouse = game.Players.LocalPlayer:GetMouse()
	repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
	repeat wait() until mouse

	local T = game.Players.LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat wait()
			if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
			end
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Health == 0 then
                game.Players.LocalPlayer.CharacterAdded:Wait()
                game.Players.LocalPlayer.Character:WaitForChild'HumanoidRootPart'
                T = game.Players.LocalPlayer.Character.HumanoidRootPart
                BG = Instance.new('BodyGyro', T)
        		BV = Instance.new('BodyVelocity', T)
        		BG.P = 9e4
        		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        		BG.cframe = T.CFrame
        		BV.velocity = Vector3.new(0, 0, 0)
        		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
			end
			if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
				SPEED = 50
			elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
				SPEED = 0
			end
			if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
				BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
			elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
				BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			else
				BV.velocity = Vector3.new(0, 0, 0)
			end
			BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
		    CONTROL.F = _G.SetStats[5]/100
		elseif KEY:lower() == 's' then
		    CONTROL.B = -_G.SetStats[5]/100
		elseif KEY:lower() == 'a' then
		    CONTROL.L = -_G.SetStats[5]/100
		elseif KEY:lower() == 'd' then
		    CONTROL.R = _G.SetStats[5]/100
		end
	end)
	mouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
            CONTROL.R = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
end
function _G.DiscardFly()
    NOFLY()
end
local cplr = nil
local autodupeTool = true
local pptitlething = "Game"
if isancestor then pptitlething = 5624746940 end
local w2 = main:CreateCategory(pptitlething)
local oplr1 = w2:CreateSection("Other Players (tool required)")
oplr1:Create(
    "Toggle",
    "Auto-Dupe Tools",
    function(newa)
        autodupeTool = newa
    end,
    {
        default = true
    }
)
oplr1:Create(
    "Dropdown",
    "Player Select",
    function(newa)
        cplr = newa
    end,
    {
        text = "",
        playerlist = true
    }
)
function okinsta(cf)
    if method == -1 and not isteleporting then
        queued = cf
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
    end
end
function prepare_plr(plr,oldcf)
    isteleporting = true
    plr.Character.Humanoid:UnequipTools()
    local axes = getAxeList()
    if #axes == 0 then return false end
    if autodupeTool then
        wait()
        for i,v in pairs(plr.Character:children())do if not v.Name:find("Humanoid") then v:Destroy()end end
        for i,tool in pairs (axes) do
            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(tool, "Drop tool", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        plr.CharacterAdded:Wait()
        plr.Character:WaitForChild'HumanoidRootPart'
    end
    return true
end
function glitch_plr(char,hum,x)
    hum.Name = "1"
    local newHum = hum:Clone()
    newHum.Parent = char
    newHum.Name = "Humanoid"
    if x == nil then wait(0.1) end
    hum:Destroy()
    workspace.CurrentCamera.CameraSubject = char
    newHum.DisplayDistanceType = "None"
    return newHum
end

function equip_plr(char,x)
    wait()
    local tool = getWorstAxe()
    tool.Parent = char
    if x == true then
        wait(0.2)
        tool.Owner.Parent = nil
        wait(0.2)
    end
    wait()
end
function attach_plr(hrp2,hrp,x)
    if x == nil then wait(0.5) end
    local count = 0
    for _,v in pairs (hrp2.Parent:children()) do
        if v:IsA'Tool' then
            if v:FindFirstChild'Owner' and v.Owner.Value == game.Players.LocalPlayer then
                count = count + 1
            end
        end
    end
    local noclip = game:GetService'RunService'.Stepped:connect(nocliprun)
    for i=1,40 do
        local ncount = 0
        for _,v in pairs (hrp2.Parent:children()) do
            if v:IsA'Tool' then
                if v:FindFirstChild'Owner' and v.Owner.Value == game.Players.LocalPlayer then
                    ncount = ncount+1
                end
            end
        end
        if ncount ~= count or not hrp.Parent:FindFirstChildOfClass("Tool") then
            wait(0.1)
            break
        end
        hrp2.CFrame = hrp.Parent:FindFirstChildOfClass("Tool"):FindFirstChildOfClass"Part".CFrame
        wait()
    end
    if noclip ~= nil then
        noclip:Disconnect()
        noclip = nil
    end
    return
end

function bring_plr(hrp2,hrp,oldcf)
    wait(0.2)
    local b = Instance.new("BodyGyro",hrp)
    local q = math.huge
    local g = workspace.Gravity
    workspace.Gravity = 0
    b.MaxTorque = Vector3.new(8500,8500,8500)
    b.P = 50000
    b.D = 2e2
    local noclip = game:GetService'RunService'.Stepped:connect(nocliprun)
    okinsta(hrp.CFrame + Vector3.new(0,15,0))
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(q,q,q))
    wait(0.75)
    hrp.Velocity = Vector3.new(0,0,0)
    hrp.RotVelocity = Vector3.new(0,0,0)
    okinsta(oldcf + Vector3.new(0,20,0))
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(q,q,q))
    wait(0.6)
    b:Destroy()
    if noclip ~= nil then
        noclip:Disconnect()
        noclip = nil
    end
    for i=1,10 do
        hrp.Velocity = Vector3.new(0,0,0)
        hrp.RotVelocity = Vector3.new(0,0,0)
        workspace.Gravity = g
        okinsta(oldcf)
        okinsta(oldcf*CFrame.Angles(0,math.rad(math.random(-45,45)),0))
        wait()
    end
    wait(0.4)
end
function final_kick(v)
    while codemaningame and not dbgmode do end
    if isdev(v.Name) then return end
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3)
    return end
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    -- Prepare to attach
    if not prepare_plr(plr,oldcf) then return end
    -- Go to kick spot
    local kickc = CFrame.new(math.random(5000,20000),math.random(50,200),math.random(5000,20000))
    okinsta(kickc)
    wait(0.2)
    -- Set up variables
	local char = plr.Character
	local tchar = v.Character
	local hum = plr.Character.Humanoid
	local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    local og = workspace.Gravity
    -- Equip
    equip_plr(char,true)
    wait(0.1)
    -- bug out
    local newHum = glitch_plr(char,hum,true)
    -- no grav
    workspace.Gravity = 0
    -- attach in antikick
    attach_plr(hrp2,hrp,true)
    wait(1.5)
    -- fix grav
    workspace.Gravity = og
    -- reset
	plr.Character.Head:Destroy()
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.3)
	okinsta(oldcf)
end
function final_kick_b(v)
    if isdev(v.Name) then return end
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    -- Prepare to attach
    if not prepare_plr(plr,oldcf) then return end
    -- Set up variables
	local char = plr.Character
	local tchar = v.Character
	local hum = plr.Character.Humanoid
	local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    -- Equip
    equip_plr(char,true)
    wait(0.1)
    -- bug out
    local newHum = glitch_plr(char,hum)
    -- attach in antikick
    attach_plr(hrp2,hrp)
    wait(1.5)
    -- reset
	plr.Character.Head:Destroy()
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.3)
	okinsta(oldcf)
end
function final_control(v)
    if isdev(v.Name) then return end
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3)
    return end
    local plr = game:GetService'Players'.LocalPlayer
    local toolct = 0
    if plr.Character:FindFirstChild("Tool") ~= nil then
        plr.Character.Humanoid:UnequipTools()
    end
    local axe = nil
    for i,tool in pairs (plr.Backpack:children()) do
        if tool.Name ~= "BlueprintTool" then
            if not axe then
                axe = tool.ToolName.Value
            end
            toolct = toolct + 1
        end
    end
    if toolct ~= 1 then
        notify("Player Tools Failed", "You must have EXACTLY 1 tool to proceed. Use Dupe Inventory in current slot if you don't have enough.",3)
        return
    end
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    local axei = nil
    local wsloop = workspace.PlayerModels.ChildAdded:connect(function(x)
        if x:WaitForChild"Owner".Value == game.Players.LocalPlayer and x:WaitForChild"ItemName".Value == axe then
            axei = x
        end
    end)
    -- Prepare to attach
    if not prepare_plr(plr,oldcf) then return end
    local ftr = true
    repeat
        -- Set up variables
    	local char = plr.Character
    	local tchar = v.Character
    	local hum = plr.Character.Humanoid
    	local hrp = plr.Character.HumanoidRootPart
        local hrp2 = v.Character.HumanoidRootPart
        okinsta(hrp2.CFrame)
        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(axei, "Pick up tool")
        repeat
            wait()
        until char:FindFirstChildOfClass("Tool")
        wait(0.1)
        local newHum = glitch_plr(char,hum)
        for i,v in pairs(char:GetDescendants())do
    	    if v:IsA("BasePart") then
    	        v.Transparency = 1
    	    end
    	end
        attach_plr(hrp2,hrp)
        plr.CharacterAdded:Wait()
        plr.Character:WaitForChild'HumanoidRootPart'
        wait()
        normalinvdupe()
    until _G.AbortControlling
    if wsloop ~= nil then
        wsloop:Disconnect()
        wsloop = nil
    end
    _G.AbortControlling = false
    -- reset
	isteleporting = false
    wait(0.3)
	okinsta(oldcf)
end
function final_kill(v)
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3)return end
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    -- prepare player
    if not prepare_plr(plr,oldcf) then return end
    -- prepare part
    local killcf = CFrame.new(v.Character.HumanoidRootPart.CFrame.X,v.Character.HumanoidRootPart.CFrame.Y-200,v.Character.HumanoidRootPart.CFrame.Z)
    local kickarena = Instance.new("Part", workspace)
    kickarena.Anchored = true
    kickarena.Size = Vector3.new(30,2,30)
    kickarena.CFrame = killcf + Vector3.new(0,-2,0)
    -- prepare variables
    local NormPos = CFrame.new(kickarena.Position+Vector3.new(5,7,5))
    local char = plr.Character
    local tchar = v.Character
    local hum = plr.Character.Humanoid
    local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    local newHum = glitch_plr(char,hum)
    -- equip
    equip_plr(char)
    okinsta(hrp2.CFrame)
    -- attach
    attach_plr(hrp2,hrp)
    -- tp to void
    repeat
        wait(0.2)
    	okinsta(NormPos)
    until not v.Character:FindFirstChild("HumanoidRootPart") or plr.Character:FindFirstChild("HumanoidRootPart")
    wait(0.3)
    plr.Character.Head:Destroy()
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.3)
    okinsta(oldcf)
    kickarena:Destroy()
end
function final_hardkill(v)
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3)return end
    local plr = game:GetService'Players'.LocalPlayer
    local olddcf = plr.Character.HumanoidRootPart.CFrame
    -- prepare player
    if not prepare_plr(plr,olddcf) then return end
    -- prepare variables
    local char = plr.Character
    local tchar = v.Character
    local hum = plr.Character.Humanoid
    local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    local newHum = glitch_plr(char,hum)
    local oldcf = CFrame.new(-1685,175,1216)
    -- equip
    equip_plr(char)
    -- attach
    okinsta(hrp2.CFrame)
    attach_plr(hrp2,hrp)
    -- plr_teleport
    wait(0.1)
    bring_plr(hrp2,hrp,oldcf)
    wait(0.3)
    if plr.Character.Head then
        plr.Character.Head:Destroy()
    end
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.5)
    okinsta(olddcf)
end
function final_fling(v)
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3) return end
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    -- prepare player
    if not prepare_plr(plr,oldcf) then return end
    -- prepare variables
	local char = plr.Character
	local tchar = v.Character
	local hum = plr.Character.Humanoid
	local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    local newHum = glitch_plr(char,hum)
    --equip
    equip_plr(char)
    -- attach
	okinsta(hrp2.CFrame)
	attach_plr(hrp2,hrp)
	local mag = 600
	hrp.Velocity = Vector3.new(mag,mag,mag)
	hrp.RotVelocity = Vector3.new(mag,mag,mag)
	wait(0.5)
	plr.Character.Head:Destroy()
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.5)
	okinsta(oldcf)
end
function final_bring(v)
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3) return end
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    --prepare
    if not prepare_plr(plr,oldcf) then return end
    -- variables
	local char = plr.Character
	local tchar = v.Character
	local hum = plr.Character.Humanoid
	local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    local newHum = glitch_plr(char,hum)
    --equip
    equip_plr(char)
    -- attach
	okinsta(hrp2.CFrame)
	wait(0.2)
	attach_plr(hrp2,hrp)
    --bring
    bring_plr(hrp2,hrp,oldcf)
    wait(0.3)
	okinsta(oldcf)
	plr.Character.Head:Destroy()
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.5)
    okinsta(oldcf)
end
function final_tbring(v)
    if v.Character.Humanoid.SeatPart ~= nil then
        notify ("Player Tools Failed", "Player is currently sitting.",3) return end
    local plr = game:GetService'Players'.LocalPlayer
    local oldcf = plr.Character.HumanoidRootPart.CFrame
    if not prepare_plr(plr,oldcf) then return end
    local char = plr.Character
    local tchar = v.Character
    local hum = plr.Character.Humanoid
    local hrp = plr.Character.HumanoidRootPart
    local hrp2 = v.Character.HumanoidRootPart
    local newHum = glitch_plr(char,hum)
    equip_plr(char)
    okinsta(hrp2.CFrame)
    attach_plr(hrp2,hrp)
    wait(0.2)
    isteleporting = true
    local magnitude = (oldcf.p - hrp.CFrame.p).Magnitude
    if magnitude/400 < 3 then magnitude = magnitude/400 else magnitude = 3 end
    local tp = game:GetService("TweenService"):Create(hrp,TweenInfo.new(magnitude,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{CFrame = oldcf})
    tp:Play()
    tp.Completed:Wait()
    isteleporting = false
    wait(0.3)
    okinsta(oldcf)
    plr.Character.Head:Destroy()
	isteleporting = false
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.5)
    okinsta(oldcf)
end
-- oplr1:Create(
--     "Button",
--     "Kick Player",
--     function()
--         if not cplr then return end
--         final_kick(userparse(cplr))
--     end,
--     {
--         text = ""
--     }
-- )
oplr1:Create(
    "Button",
    "Fast Kick Player",
    function()
        if not cplr then return end
        final_kick_b(userparse(cplr))
    end,
    {
        text = ""
    }
)
local banarray = {}
oplr1:Create(
    "Button",
    "Toggle Auto-Kick Player",
    function()
        if not cplr then return end
        local name = userparse(cplr).Name
        local x = false
        for i,v in pairs (banarray) do
            if v == name then
                x = i
            end
        end
        if x == false then
            notify("Auto-Kick","Now auto-kicking "..name..".",5)
            final_kick_b(userparse(name))
            table.insert(banarray,name)
        else
            notify("Auto-Kick","No longer auto-kicking "..name..".",5)
            banarray[x] = nil
        end
    end,
    {
        text = ""
    }
)
local last = ""
local bindfunc = Instance.new("BindableFunction",workspace)
bindfunc.Name = "BARKINT_Autokickhandler"
local bindfunc2 = Instance.new("BindableFunction",workspace)
bindfunc2.Name = "BARKINT_Autokickhandler2"
bindfunc2.OnInvoke = function(v)
    local plrc = game.Players.LocalPlayer.Character
    local plr = game.Players.LocalPlayer
    if v ~= "Cancel" then
        if not plr.Backpack:FindFirstChildOfClass"Tool" and not plrc:FindFirstChildOfClass"Tool" then
            local axe = autobuy("BasicHatchet",1)
            if axe == nil then return end
            readyt = 0
            local cad = workspace.PlayerModels.ChildAdded:connect(function(t)
                if t:WaitForChild"ToolName" then
                    if tostring(t.ToolName.Value) == "BasicHatchet" then
                        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(t, "Pick up tool")
                        readyt = 1
                    end
                end
            end)
            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(axe, "Open box")
            repeat wait() until readyt == 1
            wait(0.5)
            cad:Disconnect()
            cad = nil
        end
        notify("Auto-Kick","Waiting...",5)
        wait(5)
        final_kick_b(userparse(last))
    end
end
bindfunc.OnInvoke = function(v)
    if v == "Cancel" then return end
    local plrc = game.Players.LocalPlayer.Character
    local plr = game.Players.LocalPlayer
    if not plr.Backpack:FindFirstChildOfClass"Tool" and not plrc:FindFirstChildOfClass"Tool" then
        game.StarterGui:SetCore("SendNotification", {
    		Title = "Auto-Kick";
    		Text = "You do not have an axe. Auto-buy a basic hatchet?";
    		Icon = nil;
    		Duration = 6;
    		Button1 = "Autobuy";
    		Button2 = "Cancel";
    		Callback = bindfunc2;
    	})
    else
        notify("Auto-Kick","Waiting...",5)
        wait(5)
        final_kick_b(userparse(last))
    end
end
game.Players.ChildAdded:connect(function(p)
    for i,v in pairs (banarray) do
        if v == p.Name then
            last = v
        	game.StarterGui:SetCore("SendNotification", {
        		Title = "Auto-Kick";
        		Text = v.. " has joined the game. Would you like to kick them?";
        		Icon = nil;
        		Duration = 8;
        		Button1 = "Kick";
        		Button2 = "Cancel";
        		Callback = bindfunc;
        	})
        end
    end
end)
-- oplr1:Create(
--     "Button",
--     "Control Player (VERY BETA)",
--     function()
--         if not cplr then return end
--         final_control(userparse(cplr))
--     end,
--     {
--         animated = true
--     }
-- )
-- oplr1:Create(
--     "Button",
--     "Stop Controlling Player",
--     function()
--         _G.AbortControlling = true
--     end,
--     {
--         animated = true
--     }
-- )
oplr1:Create(
    "Button",
    "Car Annoy Player",
    function()
        if not cplr then return end
        if not userparse(cplr) then return end
        local u = userparse(cplr).Character
        local plrc = game.Players.LocalPlayer.Character
        repeat
            wait(0.05)
            if (u.HumanoidRootPart.CFrame.p-plrc.HumanoidRootPart.CFrame.p).Magnitude > 10 or not u.Humanoid.SeatPart then
                _G.DogixLT2TPC(u.HumanoidRootPart.CFrame,gkey)
            end
        until u.Humanoid.Health == 0 or plrc.Humanoid.Health == 0 or not plrc.Humanoid.SeatPart or not plrc.Humanoid.Seated
        final_kick()
    end,
    {
        animated = true;
    }
)
oplr1:Create(
    "Button",
    "View Player",
    function()
        if not cplr then return end
        if not userparse(cplr) then return end
		workspace.CurrentCamera.CameraSubject = userparse(cplr).Character
    end,
    {
        text = ""
    }
)
oplr1:Create(
    "Button",
    "Kill Player",
    function()
        if not cplr then return end
        final_kill(userparse(cplr))
    end,
    {
        text = ""
    }
)
oplr1:Create(
    "Button",
    "Hard-Kill Player (deletes players inventory)",
    function()
        if not cplr then return end
        final_hardkill(userparse(cplr))
    end,
    {
        text = ""
    }
)
oplr1:Create(
    "Button",
    "Fling Player",
    function()
        if not cplr then return end
        final_fling(userparse(cplr))
    end,
    {
        text = ""
    }
)
oplr1:Create(
    "Button",
    "Bring Player",
    function()
        if not cplr then return end
        final_bring(userparse(cplr))
    end,
    {
        text = ""
    }
)
oplr1:Create(
    "Button",
    "Tween Bring Player (safe)",
    function()
        if not cplr then return end
        final_tbring(userparse(cplr))
    end,
    {
        text = ""
    }
)
if firetouchinterest then
    oplr1:Create(
        "Button",
        "Spawn Fireball at Player",
        function()
            if not cplr then return end
            local target = userparse(cplr)
            local plr = game.Players.LocalPlayer
            local lava = workspace["Region_Volcano"]:FindFirstChild("Lava") or game.Lighting:FindFirstChild("Lava")
            local leg = plr.Character["Left Leg"]
            local needrevert = false
            if lava.Parent == game.Lighting then
                needrevert = true
                lava.Parent = workspace["Region_Volcano"]
            end
            lava = lava.Lava
            ftouch(leg, lava, true)
            ftouch(leg, lava, false)
            wait(0.75)
            leg.CFrame = target.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Head:Destroy()
    	    if needrevert then
    	        lava.Parent.Parent = game.Lighting
    	        needrevert = false
    	    end
        end,
        {
            text = ""
        }
    )
end
local stopped_spam = false
local spamming_plr = ""
oplr1:Create(
    "Toggle",
    "Spam Player with Swamp Bridge",
    function(state)
        if not cplr then return end
        if state then
            stopped_spam = false
            local plr = userparse(cplr)
            local oplrc = plr.Character
            spamming_plr = plr.Name
            if not _G.InfRanges then notify("Spam Swamp Bridge","This feature requires Infinite Range.",2) return end
            local part = workspace["Region_Mountainside"].SlabRegen.Slab.Slider
            repeat
                wait()
                part.CFrame = oplrc.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
                if part.Parent:FindFirstChild("PushMe") then
                    part.Parent.PushMe.CFrame = oplrc.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
                end
            until spamming_plr ~= plr.Name or plr == nil or stopped_spam or oplrc == nil or part == nil
        else
            stopped_spam = true
        end
    end,
    {
        default = false
    }
)

local oplr2 = w2:CreateSection("Other Players")
if getconnections then
    oplr2:Create(
        "Button",
        "Anti-AFK",
        function()
    		for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    			if v["Disable"] then
    				v["Disable"](v)
    			elseif v["Disconnect"] then
    				v["Disconnect"](v)
    			end
    		end
        	notify("Anti-AFK", "Loaded.", 3)
        end,
        {
            animated = true
        }
    )
end
oplr2:Create(
    "Button",
    "Anti-Blacklist",
    function()
        local plr = game.Players.LocalPlayer
        local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		for i,v in next, workspace:GetDescendants() do
			if v:IsA("SpawnLocation") then
				v.Touched:Connect(function(h)
					if h.Parent == plr.Character and oldcf then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
					end
				end)
			end
		end
        game:GetService'RunService'.RenderStepped:connect(function()
            if string.match(game:GetService'Players'.LocalPlayer.PlayerGui.NoticeGUI.Notice.Main.TextLabel.Text, "blacklisted") and game:GetService'Players'.LocalPlayer.PlayerGui.NoticeGUI.Notice.Main.Visible == true then
                game:GetService'Players'.LocalPlayer.PlayerGui.NoticeGUI.Notice.Main.Visible = false
            end
			oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end)

        while wait(0.2) do
            for i,v in next, workspace.Effects:GetChildren() do
                if v:IsA("BasePart") and v.Name == "BlacklistWall" then
                    v:Destroy()
                end
            end
        end
    end,
    {
        animated = true,
    }
)

function dumpToTable(string)
    return game:GetService("HttpService"):JSONDecode(b64l.decode(string:split'\n'[2]))
end
function shuffle(array)
    shuffled = {}
    for i, v in ipairs(array) do
    	local pos = math.random(1, #shuffled+1)
    	table.insert(shuffled, pos, v)
    end
    return shuffled
end

local pptitlething = "Environment"
if isancestor then pptitlething = 5711811936 end
local w2x = main:CreateCategory(pptitlething)
local env = w2x:CreateSection("Main Features")
env:Create(
    "Toggle",
    "Always Day",
    function(state)
        _G.alwaysday_toggle = state
    end,
    {
        default = false,
    }
)
env:Create(
    "Toggle",
    "Always Night",
    function(state)
        _G.alwaysnight_toggle = state
    end,
    {
        default = false,
    }
)
env:Create(
    "Toggle",
    "No Fog",
    function(state)
        _G.nofog_toggle = state
    end,
    {
        default = false,
    }
)

env:Create(
    "Toggle",
    "Solid Water",
    function(state)
        _G.wtr_toggle = state
        for i,v in pairs (workspace.Water:children()) do if v.Name == "Water" then v.CanCollide = not v.CanCollide end end
        for i,v in pairs (workspace.Bridge.VerticalLiftBridge.WaterModel:children()) do if v.Name == "Water" then v.CanCollide = not v.CanCollide end end
    end,
    {
        default = false,
    }
)

env:Create(
    "Button",
    "Delete Water",
    function()
        for i,v in pairs (workspace.Water:children()) do if v.Name == "Water" then v:Destroy() end end
        for i,v in pairs (workspace.Bridge.VerticalLiftBridge.WaterModel:children()) do if v.Name == "Water" then v:Destroy() end end
        game:GetService'Players'.LocalPlayer.PlayerGui.Scripts.CharacterFloat.Disabled = true
        game:GetService'StarterGui'.Scripts.CharacterFloat.Disabled = true
    end,
    {
        animated = true,
    }
)
env:Create(
    "Button",
    "No Water Float and Damage",
    function()
        game:GetService'Players'.LocalPlayer.PlayerGui.Scripts.CharacterFloat.Disabled = true
        game:GetService'StarterGui'.Scripts.CharacterFloat.Disabled = true
    end,
    {
        animated = true,
    }
)

env:Create(
    "Toggle",
    "Disable Lava",
    function(state)
        _G.lava_toggle = state
        if not _G.lava_toggle then
            for i,v in pairs (game.Lighting:children()) do
                if v.Name == "Lava" then
                    v.Parent = workspace["Region_Volcano"]
                    workspace["Region_Volcano"].BasePlate:Destroy()
                end
            end
        else
            for i,v in pairs (workspace["Region_Volcano"]:children()) do
                if v.Name == "Lava" then
                    local bp = v.BasePlate:Clone()
                    bp.Parent = workspace["Region_Volcano"]
                    bp:ClearAllChildren()
                    bp.CanCollide = true
                    bp.BrickColor = workspace["Region_Volcano"].Slate.BrickColor
                    bp.Material = workspace["Region_Volcano"].Slate.Material
                    v.Parent = game.Lighting
                end
            end
        end
    end,
    {
        default = false,
    }
)
--
env:Create(
    "Toggle",
    "No Shrine Boulders",
    function(state)
        _G.nsb_toggle = state
        if not _G.nsb_toggle then
            for i,v in pairs (game.Lighting:children()) do
                if v.Name == "Boulder" then
                    v.Parent = workspace["Region_Mountainside"].BoulderRegen
                end
            end
        else
            workspace["Region_Mountainside"].BoulderRegen.Boulder.Parent = game.Lighting
        end
    end,
    {
        default = false,
    }
)
env:Create(
    "Toggle",
    "No Snow Biome Boulders",
    function(state)
        _G.nsr_toggle = state
        if not _G.nsr_toggle then
            for i,v in pairs (game.Lighting:children()) do
                if v.Name == "PartSpawner" then
                    v.Parent = workspace["Region_Snow"]
                end
            end
        else
            for i,v in pairs (workspace["Region_Snow"]:children()) do
                if v.Name == "PartSpawner" then
                    v.Parent = game.Lighting
                end
            end
        end
    end,
    {
        default = false,
    }
)
env:Create(
    "Toggle",
    "No Volcano Boulders",
    function(state)
        _G.nlvb_toggle = state
        if not _G.nlvb_toggle then
            for i,v in pairs (game.Lighting:children()) do
                if v.Name == "PartSpawner" then
                    v.Parent = workspace["Region_Volcano"]
                end
            end
        else
            for i,v in pairs (workspace["Region_Volcano"]:children()) do
                if v.Name == "PartSpawner" then
                    v.Parent = game.Lighting
                end
            end
        end
    end,
    {
        default = false,
    }
)
env:Create(
    "Toggle",
    "No Maze Walls",
    function(state)
        _G.nmw_toggle = state
        if not _G.nmw_toggle then
            for i,v in pairs (game.Lighting:children()) do
                if v.Name == "Blockade" then
                    v.Parent = workspace["Region_MazeCave"]
                end
            end
        else
            for i,v in pairs (workspace["Region_MazeCave"]:children()) do
                if v.Name == "Blockade" then
                    v.Parent = game.Lighting
                end
            end
        end
    end,
    {
        default = false,
    }
)

env:Create(
    "Toggle",
    "Lower Bridge",
    function(state)
        _G.bdg_toggle = state
        local lift = workspace.Bridge.VerticalLiftBridge.Lift
        if not _G.bdg_toggle then
            lift.Base.CFrame = lift.Base.CFrame + Vector3.new(0,26,0)
        else
            lift.Base.CFrame = lift.Base.CFrame + Vector3.new(0,-26,0)
        end
    end,
    {
        default = false,
    }
)


local Plot = w2x:CreateSection("Plot Options")
Plot:Create(
    "ColorPicker",
    "Plot Color (CS)",
    function(color)
        for i,v in pairs(game.Workspace.Properties:GetChildren()) do
           if v.Owner.Value == game.Players.LocalPlayer then
                for i2,v2 in pairs (v:children()) do
                    if v2:IsA("BasePart") then
                        v2.Color = color
                    end
                end
               break
           end
        end
    end,
    {
        default = Color3.fromRGB(126,104,63),
    }
)
local envMisc = w2x:CreateSection("Misc Features")
envMisc:Create(
    "Button",
    "Graphics Mod",
    function()
        local light = game.Lighting
        light:ClearAllChildren()
        local color = Instance.new("ColorCorrectionEffect",light)
        local bloom = Instance.new("BloomEffect",light)
        local sun = Instance.new("SunRaysEffect",light)
        local blur = Instance.new("BlurEffect",light)
        local config = {ColorCorrection = true;Sun = true;Lighting = true;BloomEffect = true;}
        color.Enabled = true
        color.Contrast = 0.15
        color.Brightness = 0.1
        color.Saturation = 0.25
        color.TintColor = Color3.fromRGB(255, 222, 211)
        sun.Enabled = true
        sun.Intensity = 0.2
        sun.Spread = 1
        bloom.Enabled = true
        bloom.Intensity = 0.05
        bloom.Size = 32
        bloom.Threshold = 1
        blur.Enabled = true
        blur.Size = 3
    	light.Ambient = Color3.fromRGB(0, 0, 0)
    	light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    	light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
    	light.ExposureCompensation = 0
    	light.GlobalShadows = true
    	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
    	light.Outlines = false
    end,
    {
        animated = false,
    }
    )

envMisc:Create(
    "Button",
    "Trigger Pressure Plates",
    function()
        if not confirm() then return end
    	local plrc = game:GetService'Players'.LocalPlayer.Character
    	local ocf = plrc.HumanoidRootPart.CFrame
    	local ocm = method
    	method = 1
    	for i,v in pairs (workspace.PlayerModels:children()) do
    		if v:FindFirstChild'ItemName' and v.ItemName.Value == "PressurePlate" then
    			rstepqueue(function()
    			_G.DogixLT2TPC(v.Plate.CFrame,gkey)
    			end)
    			if not cantp then
    				wait(.6)
    			end
    			repeat wait() until v.Output.BrickColor == BrickColor.new("Electric blue")
    		end
    	end
    	method = ocm
    	_G.DogixLT2TPC(ocf,gkey)
    end,
    {
        animated = true,
    }
)
envMisc:Create(
    "TextLabel",
    "Ferry will depart in: "
)
function updateFerry()
    _G.CurrentBarkUI.Motherframe.Categories.EnvironmentCategory["Misc FeaturesSection"]["Ferry will depart in: TextLabel"].TextLabel.Text = "Ferry will depart in: "..(((math.floor(workspace.Ferry.TimeToDeparture.Value/60) >= 1) and (math.floor(workspace.Ferry.TimeToDeparture.Value/60).."m ")) or "")..workspace.Ferry.TimeToDeparture.Value-(math.floor(workspace.Ferry.TimeToDeparture.Value/60)*60).."s"
end
updateFerry()
_G.ferryUpdate = workspace.Ferry.TimeToDeparture.Changed:connect(function()
     updateFerry()
end)
local envTree = w2x:CreateSection("Tree Features")
local esp_detect_loops = {}
envTree:Create(
    "Toggle",
    "Spook + Sinister ESP and Notifier",
    function(st)
        if not st then
            for i,v in next, esp_trees do
                for _,v2 in pairs (v:GetDescendants()) do
                    if v2:IsA("BoxHandleAdornment") then
                        v2:Destroy()
                    end
                end
            end
            for i,v in pairs (esp_loops) do
                v:Disconnect()
            end
            for i,v in pairs (esp_detect_loops) do
                v:Disconnect()
            end
            esp_loops = {}
            esp_trees = {}
            esp_detect_loops = {}
        else
            for i,v in pairs (workspace:GetChildren()) do
                if v.Name == "TreeRegion" then
                    table.insert(esp_detect_loops, v.ChildAdded:connect(function(ni)
                        ni:WaitForChild("TreeClass")
                        if ni.TreeClass.Value == "Spooky" or ni.TreeClass.Value == "SpookyNeon" then
                            local bindfunc3 = Instance.new("BindableFunction",workspace)
                            bindfunc3.Name = "BARKINT_Spooky"
                            bindfunc3.OnInvoke = function(v)
                                _G.DogixLT2TPC(ni:FindFirstChild("WoodSection").CFrame,gkey)
                            end
                            game.StarterGui:SetCore("SendNotification", {
                            	Title = "Spook/Sinister Notifier";
                            	Text = "Detected "..ni.TreeClass.Value;
                            	Icon = nil;
                            	Duration = 10;
                            	Button1 = "Teleport";
                            	Callback = bindfunc3;
                            })
                            esp_tree(ni)
                        end
                    end))
                    for i,ni in pairs (v:GetChildren()) do
                        if ni:FindFirstChild("TreeClass") then
                            if ni.TreeClass.Value == "Spooky" or ni.TreeClass.Value == "SpookyNeon" then
                                local bindfunc3 = Instance.new("BindableFunction",workspace)
                                bindfunc3.Name = "BARKINT_Spooky"
                                bindfunc3.OnInvoke = function(v)
                                    _G.DogixLT2TPC(ni:FindFirstChild("WoodSection").CFrame,gkey)
                                end
                                game.StarterGui:SetCore("SendNotification", {
                                	Title = "Spook/Sinister Notifier";
                                	Text = "Detected "..ni.TreeClass.Value;
                                	Icon = nil;
                                	Duration = 10;
                                	Button1 = "Teleport";
                                	Callback = bindfunc3;
                                })
                                esp_tree(ni)
                            end
                        end
                    end
                end
            end
        end
    end,
    {default = true}
)


--[[
env:Create(
    "Button",
    "Break Shop Doors (will break the shop too)",
    function()
        if not confirm() then return end
        for i,v in pairs (workspace.Stores:GetDescendants()) do
            if v:IsA'Model' and v.Name == "LDoor" or v.Name == "RDoor" then
                delmodel(v)
            end
        end
    end,
    {
        animated = true,
    }
)]]
local paths = w2x:CreateSection("Paths / Client-side Parts")
paths:Create(
    "Button",
    "Palm and Blue Wood Path",
    function()
        local fld = Instance.new("Folder",workspace)
        fld.Name = "PalmBluePath"
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(2064.42407, -1.71661377e-05, -114.658188, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(2048, 1, 40)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(2628.07129, -5.38234711, -74.9578552, 1, 0, 0, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813)
        part.Size = Vector3.new(27, 1, 44)
        part.Rotation = Vector3.new(15, 0, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3068.4436, 102.637299, 1487.33228, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813)
        part.Size = Vector3.new(40, 1, 797)
        part.Rotation = Vector3.new(-15, 0, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3068.40991, 0, 503.864014, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(40, 1, 1201)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3068.2959, 205.692734, 2233.73389, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(40, 1, 723)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3415.86792, 117.841309, 2575.25732, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813, 0, 0, 0, 1)
        part.Size = Vector3.new(679, 1, 40)
        part.Rotation = Vector3.new(0, 0, -15)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3772.75098, 29.79039, 2558.04346, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(62, 1, 75)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3428.12695, -54.296978, 2537.90308, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1)
        part.Size = Vector3.new(650, 1, 35)
        part.Rotation = Vector3.new(0, 0, 15)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3100.65503, -137.682968, 1592.43701, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(32, 1, 1926)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(3407.92847, -215.729431, 649.478455, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813, 0, 0, 0, 1)
        part.Size = Vector3.new(604, 1, 40)
        for i,v in pairs (fld:children()) do
            v.BrickColor = BrickColor.new(100,100,100)
            v.Material = Enum.Material.WoodPlanks
            v.Anchored = true
        end
        for i,v in pairs (workspace["Region_MazeCave"]:children()) do
            if v:IsA("BasePart") then if v.CFrame == CFrame.new(3115.87378, -139.101868, 650.195923, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747) or v.CFrame == CFrame.new(3169.97705, -115.490051, 635.698975, -0.682983756, 0.683044851, -0.258811951, 0.707132995, 0.707080603, 3.00034881e-05, 0.183021426, -0.182993948, -0.965928197) or v.CFrame == CFrame.new(3192.33862, -112.796387, 456.075104, -0.482999325, 0.836496592, 0.258814961, 0.86600399, 0.500037193, -4.09781933e-07, -0.129417449, 0.224134564, -0.965926886) then
                v:Destroy()
            end end
        end
        _G.DogixLT2TPC(CFrame.new(1010, 3, -112),gkey)
    end,
    {
        animated = true,
    }
)
paths:Create(
    "Button",
    "Swamp Woods Path",
    function()
        local fld = Instance.new("Folder",workspace)
        fld.Name = "SwampPath"
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-499.196075, 155.460663, -166.186081, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(295.87, 1, 40.14)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-53.5482712, 75.8732529, -166.035767, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813, 0, 0, 0, 1)
        part.Size = Vector3.new(617.23, 0.72, 40)
        part.Rotation = Vector3.new(0, 0, -15)
        for i,v in pairs (fld:children()) do
            v.BrickColor = BrickColor.new(100,100,100)
            v.Material = Enum.Material.WoodPlanks
            v.Anchored = true
        end
        _G.DogixLT2TPC(CFrame.new(240, 4, -151),gkey)
    end,
    {
        animated = true,
    }
)
paths:Create(
    "Button",
    "Snowglow Path",
    function()
        local fld = Instance.new("Folder",workspace)
        fld.Name = "SGlowPath"
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(8.54199982, -0.914913177, -812.122375, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(55, 1, 186)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-309.958008, -0.834023476, -879.710388, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(582, 1, 50)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-606.630554, -0.843258381, -748.689453, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044, 0, 0.965925813)
        part.Size = Vector3.new(47, 1, 246)
        part.Rotation = Vector3.new(0, -15, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-763.458679, -0.723966122, -652.31958, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(227, 1, 38)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-842.989868, -0.602809906, -713.690918, 0.965925872, 0, -0.258818835, 0, 1, 0, 0.258818835, 0, 0.965925872)
        part.Size = Vector3.new(43, 1, 108)
        part.Rotation = Vector3.new(0, -15, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-775.692932, -0.588047981, -815.868713, 0.707106829, 0, -0.707106769, 0, 1, 0, 0.707106769, 0, 0.707106829)
        part.Size = Vector3.new(42, 1, 170)
        part.Rotation = Vector3.new(0, -45, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-728.159668, -0.591278076, -952.04364, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(55, 1, 182)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-864.098999, -0.257263005, -985.877014, 0.965925872, 0, 0.258818835, 0, 1, 0, -0.258818835, 0, 0.965925872)
        part.Size = Vector3.new(235, 1, 56)
        part.Rotation = Vector3.new(0, 15, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(-1015.87311, -11.1293316, -945.632751, 0.933012664, -0.258819044, 0.25, 0.267445326, 0.963572919, -0.000555455685, -0.240749463, 0.0673795789, 0.968245745)
        part.Size = Vector3.new(82, 1, 55)
        part.Rotation = Vector3.new(0.03, 14.48, 15.51)
        for i,v in pairs (fld:children()) do
            v.BrickColor = BrickColor.new(100,100,100)
            v.Material = Enum.Material.WoodPlanks
            v.Anchored = true
        end
        _G.DogixLT2TPC(CFrame.new(0, 4, -696),gkey)
    end,
    {
        animated = true,
    }
)
paths:Create(
    "Button",
    "Frost Wood Path",
    function()
        local fld = Instance.new("Folder",workspace)
        fld.Name = "FrostPath"
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(744.516663, 71.5780411, 861.148438, 1, -1.04308164e-07, -1.78813934e-07, 1.47034342e-07, 0.965925932, 0.258818656, 1.45724101e-07, -0.258818656, 0.965925932)
        part.Size = Vector3.new(40, 1, 202)
        part.Rotation = Vector3.new(-15, 0, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(744.273, 97.5341, 1003.82)
        part.Size = Vector3.new(41, 1, 90)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(775.181458, 100.246162, 1027.58276, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1)
        part.Size = Vector3.new(46, 1, 43)
        part.Rotation = Vector3.new(0, 0, 15)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(815.776672, 106.550224, 1027.4032, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(38, 1, 42)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(815.849976, 257.424072, 1608.79456, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813)
        part.Size = Vector3.new(38, 1, 1164)
        part.Rotation = Vector3.new(-15, 0, 0)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(900.612122, 407.759827, 2194.72363, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        part.Size = Vector3.new(208, 1, 50)
        local part = Instance.new("Part", fld)
        part.CFrame = CFrame.new(1268.40649, 407.26062, 2798.83594, 0.91354543, 0, 0.406736642, 0, 1, 0, -0.406736642, 0, 0.91354543)
        part.Size = Vector3.new(41, 2, 1364)
        part.Rotation = Vector3.new(0,24,0)
        for i,v in pairs (fld:children()) do
            v.BrickColor = BrickColor.new(100,100,100)
            v.Material = Enum.Material.WoodPlanks
            v.Anchored = true
        end
        _G.DogixLT2TPC(CFrame.new(738,45,742),gkey)
    end,
    {
        animated = true,
    }
)
paths:Create(
    "Button",
    "Easy Eye Placement",
    function()
        local plr = game:GetService'Players'.LocalPlayer
        local plrc = plr.Character
        local ocf = plr.Character.HumanoidRootPart.CFrame
        local eye = nil
        local cancelled = false
        local connected_car = m.Button1Up:connect(function()
            local part = getMouseTarget()
            if part.Parent:FindFirstChild("Owner") then
                if game:GetService("ReplicatedStorage").Interaction.ClientIsWhitelisted:InvokeServer(part.Parent.Owner.Value) == false and part.Parent.Owner.Value ~= game.Players.LocalPlayer then
                    cancelled = true
                    notify("Eye Placer", "Cancelled. (not owner)",2)
                    return
                end
            end
            if part.Parent:FindFirstChild("ItemName") then
                if part.Parent.ItemName.Value == "Eye1" then
                    if part.Parent:FindFirstChild("Part") then
                        if part.Parent.Part:FindFirstChildOfClass("SpecialMesh") then
                            notify("Eye Placer", "Selected eye.",2)
                            eye = part.Parent
                            return
                        end
                    end
                end
            end
            notify("Eye Placer", "Cancelled.",2)
            cancelled = true
        end)
        notify("Eye Placer", "Please click an unboxed eye to place it. Click elsewhere to cancel.",3)
        repeat wait() until eye ~= nil or cancelled
        connected_car:Disconnect()
        connected_car = nil
        if cancelled then return end
        cancelled = false
        _G.DogixLT2TPC(eye.Main.CFrame,gkey)
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(eye)
        eye.Main.CFrame = CFrame.new(134.861435, 5.28133059, -608.149902, 0.85158813, -0.179768249, -0.492423564, -0.111533344, -0.979987442, 0.164878696, -0.512208879, -0.085487105, -0.85459584)
        eye.Main.Velocity = Vector3.new(0,0,0)
        notify("Eye Placer", "Placed eye.",3)
        eye = nil
    end,
    {
        animated = true,
    }
)
local ViewEndTree = false
local viewend = w2x:CreateSection("View End Times Tree")
viewend:Create(
    "Button",
    "View End Times Tree",
    function()
        ViewEndTree = not ViewEndTree
        if ViewEndTree then
            for i,v in pairs(game.workspace:GetChildren()) do
                if v.Name == "TreeRegion" and v:FindFirstChildOfClass("Model")then
                    if v.Model.TreeClass.Value == "LoneCave" then
                        workspace.Camera.CameraSubject = v.Model.WoodSection
                    end
                end
            end
        else
            workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character
        end
    end,
    {
        animated = true,
    }
)
local pptitlething = "Slot"
if isancestor then pptitlething = 5416946285 end
local w3 = main:CreateCategory(pptitlething)
local land = w3:CreateSection("Land")
land:Create(
    "Button",
    "Free Land",
    function()
        game:GetService("ReplicatedStorage").PropertyPurchasing.SetPropertyPurchasingValue:InvokeServer(true)
        local landa = nil
        local landarray = {}
        for i,v in pairs(workspace.Properties:children()) do
            if v.Owner.Value == nil then
                table.insert(landarray,v)
            end
        end
        local landamag = 9e9
        local cfp = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p
        for i,v in pairs (landarray) do
            if (v.OriginSquare.CFrame.p-cfp).Magnitude < landamag then
                landa = v
                landamag = (v.OriginSquare.CFrame.p-cfp).Magnitude
            end
        end
        game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(landa, landa.OriginSquare.CFrame.p)
        game:GetService("ReplicatedStorage").PropertyPurchasing.SetPropertyPurchasingValue:InvokeServer(false)
        _G.DogixLT2TPC(landa.OriginSquare.CFrame+Vector3.new(0,10,0),gkey)
    end,
    {
        animated = true,
    }
)
function maxLand()
    local base = nil
    local square = nil
    for i, v in pairs(workspace.Properties:GetChildren()) do
    	if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
    		base = v
    		square = v.OriginSquare
    		break
    	end
    end
    if not base or not square then return end
    function round_cframe(cfrm)
        return CFrame.new(math.round(cfrm.X),math.round(cfrm.Y),math.round(cfrm.Z))
    end
    function land_matches_cframe(cfrm)
        cfrm = round_cframe(cfrm)
        for i,v in pairs (base:GetChildren()) do
            if v:IsA"BasePart" then
                if round_cframe(v.CFrame) == cfrm then
                    return true
                end
            end
        end
    end
    function add_base(pos)
        if land_matches_cframe(pos) then return end
        game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(base,pos)
    end
    for i = -2,2 do
        for j = -2,2 do
            if math.abs(i)+math.abs(j) ~= 0 then
                add_base(CFrame.new(square.Position.X + i*40, square.Position.Y, square.Position.Z + j*40))
            end
        end
    end
    for ia,va in pairs(workspace:GetChildren()) do
        if va.Name == "TreeRegion" then
            for i,v in pairs (va:GetChildren()) do
                if v:FindFirstChild("WoodSection") then
                    if math.abs(square.CFrame.Z-v.WoodSection.CFrame.Z) <= 100 and math.abs(square.CFrame.X-v.WoodSection.CFrame.X) <= 100 then
                        delmodel(v)
                    end
                end
            end
        end
    end
    return square
end
land:Create(
    "Button",
    "Max Land",
    function()
        local square = maxLand()
        _G.DogixLT2TP(square.CFrame.X,square.CFrame.Y+10,square.CFrame.Z,gkey)
    end,
    {
        animated = true,
    }
)




local dupeCounter = 0
local dupeCount = 1
--_G.DupeSlot = 1




local sdplr = game:GetService("Players").LocalPlayer

function selfdupe()
    game:GetService("ReplicatedStorage").Interaction.ClientSetListPlayer:InvokeServer(wlFolder,sdplr,true)
end

function unwhitelist()
    game:GetService("ReplicatedStorage").Interaction.ClientSetListPlayer:InvokeServer(game:GetService("Players").LocalPlayer.WhitelistFolder,game:GetService("Players").LocalPlayer,false)
end

--[[
	code generated using luamin.js, Herrtt#3868
--]]


function selfdupeon()
	if game.Players.LocalPlayer.CurrentSaveSlot.Value == -1 then
		notify("Error", "No Plot Is Loaded..", 3)
		return
	end
	if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
		notify("Error", "Load is on cooldown. Waiting...", 3)
		repeat
		    wait(5)
		until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)
	end
	local was_disabling = disable_save
	local bindfunc3 = Instance.new("BindableFunction", workspace)
	bindfunc3.Name = "BARKINT_UiLibHandler"
	bindfunc3.OnInvoke = function(v)
		loadcnt = 10
		canDupe = v == "Yes"
	end
	game.StarterGui:SetCore("SendNotification", {
		Title = "Bark "..cv;
		Text = "Only items in the plot's center will be duplicated. Continue?";
		Icon = nil;
		Duration = 10;
		Button1 = "Yes";
		Button2 = "No";
		Callback = bindfunc3;
	})
	repeat
		wait(1)
		loadcnt = loadcnt + 1
	until loadcnt >= 10
	bindfunc3:Destroy()
	if canDupe then
    	disable_save = true
		notify('Bark '..cv, 'Starting Self Auto-Dupe, Please wait...')
		selfdupe()
		loadSlotAuto(game.Players.LocalPlayer.CurrentSaveSlot.Value)
		local baseCFrame = nil
		for _, v1 in pairs (workspace.Properties:GetChildren()) do
			if tostring(v1.Owner.Value) == tostring(game.Players.LocalPlayer) then
				baseCFrame = v1.OriginSquare.CFrame
				break
			end
		end
		for i, v in pairs (workspace.PlayerModels:GetChildren()) do
			if v:FindFirstChild'Owner' and v:FindFirstChild'Type' then
				if v.Owner.Value == game.Players.LocalPlayer then
					if math.abs(baseCFrame.Z - v.Main.CFrame.Z) >= 100 or math.abs(baseCFrame.X - v.Main.CFrame.X) >= 100 then
						if v.Type.Value == "Loose Item"
                        or v.Type.Value == "Tool"
                        or v.Type.Value == "Gift"
                        or ((v.Type.Value == "Structure" or v.Type.Value == "Furniture" or v.Type.Value == "Wire") and (v:FindFirstChild("PurchasedBoxItemName") or v:FindFirstChild("BoxItemName")))
                        then
							dirtBaseDropInstant(v, baseCFrame)
						end
					end
				end
			end
		end
	end
	local baseCFrame = nil
	for _, v1 in pairs (workspace.Properties:GetChildren()) do
		if tostring(v1.Owner.Value) == tostring(game.Players.LocalPlayer) then
			baseCFrame = v1.OriginSquare.CFrame
			break
		end
	end
	for i, v in pairs (workspace.PlayerModels:GetChildren()) do
		if v:FindFirstChild'Owner' and v:FindFirstChild'WoodSection' then
			if v.Owner.Value == game.Players.LocalPlayer then
				if v.TreeClass.Value ~= "PropertySoldSign" then
					if math.abs(baseCFrame.Z - v.WoodSection.CFrame.Z) >= 100 or math.abs(baseCFrame.X - v.WoodSection.CFrame.X) >= 100 then
						_G.DogixLT2TPC(v.WoodSection.CFrame,gkey)
						_G.DogixLT2DragAlt(v.WoodSection, baseCFrame)
					end
				end
			end
		end
	end
	unwhitelist()
	disable_save = was_disabling
	game:GetService("ReplicatedStorage").LoadSaveRequests.RequestSave:InvokeServer(game:GetService("Players").LocalPlayer.CurrentSaveSlot.Value, game.Players.LocalPlayer)
	notify('Self Dupe', 'Finished Self Auto-Dupe')
	canDupe = false
end

    local fls = w3:CreateSection("Fast Load Slot")
    local currentslot_al = (game.Players.LocalPlayer:FindFirstChild"CurrentSaveSlot" and ((game.Players.LocalPlayer.CurrentSaveSlot.Value ~= -1 and game.Players.LocalPlayer.CurrentSaveSlot.Value) or 1)) or 1
    fls:Create(
        "Slider",
        "Selected Slot",
        function(v)
            currentslot_al = v
        end,
        {
            min = 1,
            max = 6,
            default = currentslot_al,
            changablevalue = true
        }
    )
    fls:Create(
        "Button",
        "Fast Load Slot",
        function(v)
            if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
                notify("Fast Load", "Load is on cooldown. Waiting...",3)
                repeat
                    wait(5)
                until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)
            end
            notify("Fast Load", "Auto-loading slot...",3)
            local loadedSlot = loadSlotAuto(currentslot_al)
            if loadedSlot == true then
                game:GetService("Players").LocalPlayer.CurrentSaveSlot.Value = currentslot_al
                notify("Fast Load", "Finished loading slot.",3)
            else
                notify("Fast Load", "Failed loading slot.",3)
            end
        end,
        {
            animated = true
        }
    )

if getconnections then
local autoDupeSlotSwitch = false
local autoLoading = false
function loadSlotAuto(slotnum)
    if autoDupeSlotSwitch == false and not sentinelbuy then
        local senv = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.PropertyPurchasingGUI.PropertyPurchasingClient)
        local old = senv.enterPurchaseMode
        getsenv(game:GetService("Players").LocalPlayer.PlayerGui.PropertyPurchasingGUI.PropertyPurchasingClient).enterPurchaseMode = function(...)
            if not autoLoading then
                return old(...)
            else
                local plot = nil
                for i,v in pairs(workspace.Properties:children()) do
                    if v.Owner.Value == nil then
                        plot = v
                        break
                    end
                end
                debug.setupvalue(senv.rotate, 3, 0)
                debug.setupvalue(old, 10, plot)
                return
            end
        end
        autoDupeSlotSwitch = true
    end
    local loadedSlot = nil
    spawn(function()
        loadedSlot = game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(slotnum, game.Players.LocalPlayer)
    end)
    if not autoDupeSlotSwitch then
        repeat wait() until game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI.SelectPurchase.Visible
        wait(1)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
        wait(1.5)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
    else
        autoLoading = true
    end
    repeat wait() until loadedSlot ~= nil
    autoLoading = false
    return loadedSlot
end
end

local pptitlething = "Items"
if isancestor then pptitlething = 5182389282 end
local w4 = main:CreateCategory(pptitlething)
local logs = w4:CreateSection("Logs")
_G.pos = 0
logs:Create(
    "Button",
    "Set position",
    function(v)
    _G.pos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    end,
    {
        animated = true
    }
)
logs:Create(
    "Button",
    "Tp to set position",
    function(v)
        if _G.pos == 0 then

        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = _G.pos
        end
    end,
    {
        animated = true
    }
)
logs:Create(
    "Button",
    "Teleport Logs to position",
    function(v)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
        for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
            if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
                if Log.Owner.Value == game.Players.LocalPlayer then
                    for i,v in pairs(Log:GetChildren()) do
                        if v.Name=="WoodSection" then
                            spawn(function()
                                wait()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                                wait(.1)
                                v.CFrame=_G.pos
                            end)
                        end
                    end
                    spawn(function()
                        for i=1,10 do
                            wait()
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                        end
                    end)
                end
            end
        end
    
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = _G.pos
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end,
    {
        animated = true
    }
)
logs:Create(
    "Button",
    "Sell Logs",
    function(v)
        
for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
        if Log.Owner.Value == game.Players.LocalPlayer then
            for i,v in pairs(Log:GetChildren()) do
                if v.Name=="WoodSection" then
                    spawn(function()
                        for i=1,10 do
                            wait()
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                            wait(.1)
                            v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
                        end
                    end)
                end
            end
            spawn(function()
                for i=1,20 do
                    wait()
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                end
            end)
        end
    end
end
    end,
    {
        animated = true
    }
)

-- logs:Create(
--     "Button",
--     "Cut Log Joints",
--     function(v)
--         local plr = game:GetService'Players'.LocalPlayer
--         local plrc = plr.Character
--         local ocf = plr.Character.HumanoidRootPart.CFrame
--         local tree = nil
--         local cancelled = false
--         local connected_car = m.Button1Up:connect(function()
--             local part = getMouseTarget()
--             if part.Parent:FindFirstChild("Owner") then
--                 if part.Parent:FindFirstChild("Owner").Value ~= plr then
--                     cancelled = true
--                     notify("Cut Log Joints", "Cancelled.",2)
--                     return
--                 end
--             end
--             if part.Parent.Name:sub(1,6) == "Loose_" then
--                 notify("Cut Log Joints", "Selected tree.",2)
--                 tree = part.Parent
--             else
--                 notify("Cut Log Joints", "Cancelled.",2)
--                 cancelled = true
--             end
--         end)
--         notify("Cut Log Joints", "Please click a cut tree. Click elsewhere to cancel.",3)
--         repeat wait() until tree ~= nil or cancelled
--         connected_car:Disconnect()
--         connected_car = nil
--         if cancelled then return end
--         local Wood = tree.TreeClass.Value
--     end,
--     {
--         animated = true
--     }
-- )



logs:Create(
    "Button",
    "Get Log Size Checker Tool",
    function()
        local plr = game:GetService("Players").LocalPlayer
        local tool = Instance.new("Tool",plr.Backpack)
        tool.RequiresHandle = false
        tool.Name = "Size Check"
        tool.Activated:Connect(function()
            local str = getMouseTarget().Parent
            if str:IsA("Model") and str:FindFirstChild("WoodSection") then
                local size = 0
                for i,v in next, str:GetChildren() do
                    if v.Name == "WoodSection" then
                        size = size + v.Size.Y/(1/(v.Size.X*v.Size.Z))
                    end
                end
                notify("Tree Size", str.TreeClass.Value.."'s size is "..size,3)
            end
        end)
    end,
    {
        animated = true,
    }
)
local axes = w4:CreateSection'Axes'
-- axes:Create(
--     "Button",
--     "Teleport Axes",
--     function(v)
--         local cfz = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
--         for i,v in pairs (workspace.PlayerModels:children()) do
--             if v:FindFirstChild("Owner") and (v:FindFirstChild("Type") and tostring(v.Type.Value) == "Tool") or (v:FindFirstChild'ToolName') then
--                 if v.Owner.Value == game:GetService'Players'.LocalPlayer or nil then
--                     _G.DogixLT2Drag(v.Main, cfz)
--                 end
--             end
--         end
--     end,
--     {
--         animated = true
--     }
-- )
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function
local autochoppe = false
local done_autocutting = false
function autocut(cute, tablet)
    tablet["cooldown"] = 0.112
    local Wood = cute.Parent.TreeClass.Value
    local added = workspace.LogModels.ChildAdded:Connect(function(v)
        v:WaitForChild("Owner")
        if v.Owner.Value == game.Players.LocalPlayer and v.TreeClass.Value == Wood then
            done_autocutting = true
        end
    end)
    local added_2 = workspace.PlayerModels.ChildAdded:Connect(function(v)
        v:WaitForChild("Owner")
        if v.Owner.Value == game.Players.LocalPlayer and v.TreeClass.Value == Wood then
            done_autocutting = true
        end
    end)
    local pleasestop = false
    repeat
        wait(0.112)
        spawn(function()
            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(cute, tablet)
        end)
    until done_autocutting or pleasestop
    pleasestop = true
    added:Disconnect()
    added = nil
    added_2:Disconnect()
    added_2 = nil
    done_autocutting = false
    wait(1.5)
    autochoppe = true
end
setreadonly(mt, false)
mt.__namecall = protect(function(self, tt, table_, ...)
    local method = getnamecallmethod()
    if method == "FireServer" and tostring(self) == "RemoteProxy" and autochoppe then
        if tt.Name == "CutEvent" then
            autochoppe = false
            spawn(function()autocut(tt,table_)end)
        end
    end
    return old(self, tt,table_, ...)
end)
axes:Create(
    "Toggle",
    "Auto-Chop",
    function(state)
        autochoppe = state
    end,
    {
        default = false
    }
)
axes:Create(
    "Button",
    "Increased Axe Range",
    function(state)
        local superaxe = require(game:GetService("ReplicatedStorage").Purchasables.Tools.AxeSuperClass)
        for i,v in pairs (game:GetService("ReplicatedStorage").Purchasables.Tools.AllTools:GetChildren()) do
            local old = require(v.AxeClass).new()
            require(v.AxeClass).new = function(...)
                local axe = superaxe.new(...)
                for i,v in pairs (old) do
                    axe[i] = v
                end
                axe.Range = 32
                return
            end
        end
        for i,tool in pairs (getAxeList()) do
            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(tool, "Drop tool", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        notify("Axe Range", "Please pick up your axes for changes to take effect.",3)
    end,
    {
        animated = true
    }
)
axes:Create(
    "Button",
    "Count Axes",
    function(v)
        local plr = game:GetService'Players'.LocalPlayer
        local i = 0
        if plr.Character:FindFirstChild'Tool' ~= nil then
            if plr.Character:FindFirstChild'Tool':findFirstChild'AxeClient' then
                i=i+1
            end
        end
        for _,tool in pairs (plr.Backpack:children()) do
            if tool:findFirstChild'AxeClient' then
                i=i+1
            end
        end
        notify("Axe Counter", "You have "..i.." axes in your inventory.",3)
    end,
    {
        animated = true
    }
)
-- planks:Create(
--     "Button",
--     "Teleport Planks",
--     function(v)
--         local cfz = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
--         for i,v in pairs (workspace.PlayerModels:children()) do
--             if v.Name == "Plank" and v:FindFirstChild("TreeClass") and v.Owner ~= nil and v:FindFirstChild("ItemName") == nil then
--                 if v.Owner.Value == game:GetService'Players'.LocalPlayer then
--                     _G.DogixLT2Drag(v.WoodSection, cfz,false,2)
--                 end
--             end
--         end
--     end,
--     {
--         animated = true
--     }
-- )

function plankData(plank)
    local array = {}
    array[1] = plank
    array[2] = 1/(plank.Size.X*plank.Size.Z)
    if array[2] < 0.2 then array[2] = 0.3 end
    array[3] = math.floor(plank.Size.Y/array[2])
    if array[3] < 1 then array[3] = 0 end
    array[4] = plank.Size.Y
    return array
end
local connecteda = nil
logs:Create(
    "Button",
    "Cut Plank into 1 Unit",
    function(v)
        local plr = game:GetService'Players'.LocalPlayer
        local plrc = plr.Character
        local m = plr:GetMouse()
        local part = nil
        local cancel1u = false
        connecteda = m.Button1Up:connect(function()
            local partt = getMouseTarget()
            if partt.Name == "WoodSection" then
                part = partt
            else
                notify("1 Unit Cutter", "Cancelled.",2)
                cancel1u = true
            end
        end)
        notify("1 Unit Cutter", "Left click the plank that you want cut into 1 unit pieces.")
        repeat wait() until cancel1u or part ~= nil
        if connecteda ~= nil then
            connecteda:Disconnect()
            connecteda = nil
        end
        if cancel1u then
            cancel1u = false
            return
        end
        cancel1u = false
        notify("1 Unit Cutter", "Cutting...",2)
        local HitPoints= getHitPointsTbl()
        local tool = getBestAxe()
        function axe(v,x)
            local hps = HitPoints[tool.ToolName.Value]
            local Wood = v.TreeClass.Value
            if Wood == "LoneCave" and tool.ToolName.Value == "EndTimesAxe" then
                hps = 10000000
            end
            if Wood == "Volcano" and tool.ToolName.Value == "FireAxe" then
                hps = 6.35
            end
            local table =  {
                ["tool"] = tool,
                ["faceVector"] = Vector3.new(1, 0, 0),
                ["height"] = x,
                ["sectionId"] = 1,
                ["hitPoints"] = hps,
                ["cooldown"] = 0.21,
                ["cuttingClass"] = "Axe"
            }
            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.CutEvent, table)
        end
        local ca = plankData(part)
        local caq = {}
        local remaining = ca[3]
        local ready = false
        if remaining == 0 then return end
        local repeating = workspace.PlayerModels.ChildAdded:connect(function(new)
			if new:WaitForChild("Owner").Value == plr and new:FindFirstChild'WoodSection' and math.floor(plankData(new.WoodSection)[4]) == math.floor(ca[4]-ca[2]) then
				ready = true
				caq = plankData(new:FindFirstChild'WoodSection')
			end
        end)
        for i=1,ca[3] do
            ready = false
            repeat
                wait(0.21)
                axe(ca[1].Parent,ca[2])
            until ready or (i == ca[3] and wait(6))
            ca = caq
        end
    end,
    {
        animated = true
    }
)
print("itms")
local itms = w4:CreateSection("Items")
itms:Create(
    "Button",
    "Hard Dragger",
    function(state)
        workspace.ChildAdded:connect(function(a)
            if a.Name == "Dragger" then
                local bg = a:WaitForChild("BodyGyro")
                local bp = a:WaitForChild("BodyPosition")
                repeat
                    wait()
                    bp.P = 120000
                    bp.D = 1000
                    bp.maxForce = Vector3.new(1,1,1)*1000000
                    bg.maxTorque = Vector3.new(1, 1, 1) * 200
                    bg.P = 1200
                    bg.D = 140
                until not a
            end
        end)
        if not sentinelbuy then
            local OrigDrag = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger).canDrag
            getsenv(game:GetService("Players").LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger).canDrag = function(item)
                if OrigDrag(item) == true then return true end
                local plrc = game.Players.LocalPlayer.Character
                if not plrc then return end
                if plrc:FindFirstChildOfClass("Tool") then return end
                if item then
                    if item.Parent then
                		if (0 <= plrc.Humanoid.Health) and item.Name == "LeafPart" then
                    		return false;
                    	else
                    	    local p = item
                    	    repeat
                    	        p = p.Parent
                    	    until p.Parent.Name == "PlayerModels" or p.Parent == workspace or p.Parent == game or p.Parent.Name == "LogModels"
                    	    if p.Parent.Name == "PlayerModels" or p.Parent.Name == "LogModels" then
                        	    if not canUse(p.Owner.Value) then
                        	        if p:FindFirstChild("WoodSection") then
                        	            return true
                        	        end
                    		        return false
                    		    else
                    		        if p:FindFirstChild("Type") then
                    		            if (p.Type.Value == "Structure" or p.Type.Value == "Wire" or p.Type.Value == "Vehicle Spot"or p.Type.Value == "Blueprint") and not p:FindFirstChild("PurchasedBoxItemName") and not p:FindFirstChild("BoxItemName") then
                                            return false
                                        end
                                    end
                    		        return true
                        	    end
                		    end
                		end
                	end
                end
                return false
            end
        else
            notify("Hard Dragger", "Sentinel doesn't support Any Item Dragging. (needs getsenv)")
        end
    end,
    {
        animated = true
    }
)

function flyfunct()
    carflymode = false
    if not FLYING then
        NOFLY()
        sFLY(false)
    else
        NOFLY()
    end
end
commands["noclip"] = noclipfunct
commands["clip"] = commands["noclip"]
commands["fly"] = flyfunct
commands["vfly"] = function()
    carflymode = true
    if not FLYING then
        NOFLY()
        sFLY(true)
    else
        NOFLY()
    end
end
commands["cfly"] = commands["vfly"]
commands["carfly"] = commands["vfly"]
commands["unfly"] = commands["fly"]
commands["goto"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        _G.DogixLT2TPC(rtn.Character.HumanoidRootPart.CFrame,gkey)
    end
end
commands["gotobase"] = function(arg)
    local rtn = userparse_string(arg[1])
    if rtn then
        for _,v1 in pairs (workspace.Properties:children()) do
            if tostring(v1.Owner.Value) == rtn then
                local cf = v1.OriginSquare.Position
                _G.DogixLT2TP(cf.X, cf.Y+10, cf.Z, gkey)
            end
        end
    end
end
commands["kick"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        final_kick(rtn)
    end
end
commands["bring"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        final_bring(rtn)
    end
end
commands["kill"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        final_kill(rtn)
    end
end
commands["hkill"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        final_hardkill(rtn)
    end
end
commands["tbring"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        final_tbring(rtn)
    end
end
commands["fling"] = function(arg)
    local rtn = userparse(arg[1])
    if rtn then
        final_fling(rtn)
    end
end
commands["suicide"] = function(arg)
    game.Players.LocalPlayer.Character.Head:Destroy()
end
commands["ws"] = function(arg)
    arg = arg[1]
    if tonumber(arg) then
        _G.SetStats[1] = tonumber(arg)
    end
end
commands["jp"] = function(arg)
    arg = arg[1]
    if tonumber(arg) then
        _G.SetStats[2] = tonumber(arg)
    end
end
commands["hh"] = function(arg)
    arg = arg[1]
    if tonumber(arg) then
        _G.SetStats[3] = tonumber(arg)
    end
end
commands["cs"] = function(arg)
    arg = arg[1]
    if tonumber(arg) then
        _G.SetStats[4] = 1+(tonumber(arg)/100)
    end
end
commands["fs"] = function(arg)
    arg = arg[1]
    if tonumber(arg) then
        _G.SetStats[5] = tonumber(arg)
    end
end
commands["fov"] = function(arg)
    arg = arg[1]
    if tonumber(arg) then
        workspace.CurrentCamera.FieldOfView = tonumber(arg)
    end
end
commands["autobuy"] = function(arg)
    if not arg[1] then return end
    if tonumber(arg[2]) ~= nil then
        autobuy(arg[1],tonumber(arg[2]))
    else
        autobuy(arg[1],1)
    end
end
commands["tree"] = function(arg)
    if not arg[1] then return end
    if tonumber(arg[2]) ~= nil then
        GetTreeMod(arg[1],tonumber(arg[2]))
    else
        GetTreeMod(arg[1],1)
    end
end
commands.cmds = function(arg)
local cmdstring = [[Commands for Bark Command Line:
 - kick [plr]: kicks plr
 - kill [plr]: kills plr
 - goto [plr]: teleports to plr
 - gotobase [plr]: goes to plr's base
 - hkill [plr]: hardkills plr
 - fling [plr]: flings plr
 - bring [plr]: teleports plr to you
 - tbring [plr]: tween teleports plr to you
 - suicide: commits safe suicide (keeps axes)
 - ws [num]: sets your walk speed to num
 - jp [num]: sets your jump power to num
 - hh [num]: sets your hip height to num
 - cs [num]: sets your car speed to num
 - fov [num]: sets your field of view to num
 - fs [num]: sets your fly speed to num
 - autobuy [item] [num]: buys num amount of item to your location.
 - tree [name] [num]: automatically brings num name trees to you.
 - treenames: view tree names for tree
 - fly: enters fly mode
 - vfly: enters car fly mode
 - unfly: stops flying
 - noclip: noclips
 - clip: disables noclip

 - cmds: shows this list
 - rejoin: rejoins game
 - cls: clears console (synapse only)
]]
ClearCmd()
CMD.Active = true
CMD.Draggable = true
Tween(CMD,0.5,{Position = UDim2.new(0.307,0,0.298,0)})
wait(.5)
local splited = cmdstring:split("\n")
for i=2,#splited do
	AddCmd(splited[i])
	wait(0.04)
end
end
commands.treenames = function(arg)
local cmdstring = [[Tree Names:
 - GoldSwampy
 - Cherry
 - CaveCrawler
 - Generic
 - Volcano
 - Frost
 - LoneCave
 - Oak
 - Walnut
 - Birch
 - SnowGlow
 - Pine
 - GreenSwampy
 - Koa
 - Palm
 - SpookyNeon
 - Spooky
]]
ClearCmd()
CMD.Active = true
CMD.Draggable = true
Tween(CMD,0.5,{Position = UDim2.new(0.307,0,0.298,0)})
wait(.5)
local splited = cmdstring:split("\n")
for i=2,#splited do
	AddCmd(splited[i])
	wait(0.04)
end
end
commands.cls = function(arg)
    if bcs ~= false then
        rconsoleclear()
    end
end
commands.rejoin = function(arg)
    rconsoleclear()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end
function parse_command(cmdraw)
    local cmd = cmdraw:split(" ")
    local cmdname = cmd[1]
    commanddone = false
    if commands[cmd[1]] then
        local args = {}
        for i=2, #cmd do
            table.insert(args, cmd[i])
        end
        spawn(function()
            commands[cmdname](args)
        end)
        commanddone = true
    end
    return commanddone
end

if dbgmode then
    local adminp = main:CreateCategory("Admin")
    local admins = adminp:CreateSection("Debug")
    admins:Create(
    "Button",
    "Testing Tool",
    function()
        local plr = game:GetService("Players").LocalPlayer
        local functions_to_test = {
            function()
                getMouseTarget().Velocity = Vector3.new(1000,100,1000)
            end,
        }
        for i,v in pairs (functions_to_test) do
            local tool = Instance.new("Tool",plr.Backpack)
            tool.RequiresHandle = false
            tool.Name = "Test "..i
            tool.Activated:Connect(v)
        end
    end,
    {
        animated = true,
    }
    )
    admins:Create(
    "Button",
    "Terrain Fucker Tool",
    function(v)
        Identify = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
		Identify.RequiresHandle = false
		Identify.Name = "barkwinning"
		Identify.Activated:connect(function()
		    local item = getMouseTarget().Parent
		    local name = item:FindFirstChild"ItemName"
		    if not name then
		        notify("#barkwinning", "Couldn't identify item.", 3)
		    else
		        name = name.Value
		        dropMeme(name)
		        notify("#barkwinning", "Glitched the spawn pad.", 3)
		    end
		end)
    end,
    {
        animated = true
    }
)
    admins:Create(
    "Button",
    "Temp Self Blacklist",
    function(v)
        game.ReplicatedStorage.Interaction.ClientSetListPlayer:InvokeServer(game:GetService'Players'.LocalPlayer.BlacklistFolder, game.Players.LocalPlayer, true)
        wait(6)
        game.ReplicatedStorage.Interaction.ClientSetListPlayer:InvokeServer(game:GetService'Players'.LocalPlayer.BlacklistFolder, game.Players.LocalPlayer, false)
    end,
    {
        animated = true
    }
)
    admins:Create(
    "Button",
    "Copy CFrame",
    function(v)
        setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
    end,
    {
        animated = true
    }
)
    local admins = adminp:CreateSection("Controls")
    admins:Create(
    "Button",
    "Get Users",
    function()
        local users = {}
        local Event = game:GetService("ReplicatedStorage").NPCDialog.SetChattingValue
        Event:InvokeServer(1000)
        wait(4)
        for i,v in pairs(game.Players:GetChildren()) do
            if v.IsChatting.Value == 1001 then
                table.insert(users, v.Name)
            end
        end
        ClearCmd()
        CMD.Active = true
        CMD.Draggable = true
        Tween(CMD,0.5,{Position = UDim2.new(0.307,0,0.298,0)})
        wait(.5)
        for i=1,#users do
            AddCmd(users[i])
        end
        local Event = game:GetService("ReplicatedStorage").NPCDialog.SetChattingValue
        Event:InvokeServer(0)
    end,
    {
        animated = true,
    }
    )
    admins:Create(
    "Button",
    "Crash All Users",
    function()
        local A_1 = "crash_script_users"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end,
    {
        animated = true,
    }
    )
    admins:Create(
    "TextBox",
    "Crash User",
    function(input)
        local Event = game:GetService("ReplicatedStorage").NPCDialog.SetChattingValue
        Event:InvokeServer(userparse(input).UserId + 94382)
        wait(6)
        Event:InvokeServer(0)
    end,
    {
        text = ""
    }
    )
    admins:Create(
    "TextBox",
    "Hash String",
    function(input)
        setclipboard(hashii(input))
    end,
    {
        text = ""
    }
    )
    local admins = adminp:CreateSection("Memes")
end
function _G.setqueue(cf)
    queued = cf
end
notify("Bark "..cv,"Welcome to Bark, "..game.Players.LocalPlayer.Name..".",3)
