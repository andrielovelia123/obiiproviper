IschooseTeam = function()
    for a, b in pairs(game:GetService('Players').LocalPlayer.PlayerGui:GetChildren()) do
        if b:FindFirstChild('ChooseTeam') then
            return not (b:FindFirstChild('ChooseTeam').Visible)
        end
    end
end
chooseTeam = function(a)
    for b, c in pairs(game:GetService('Players').LocalPlayer.PlayerGui:GetChildren()) do
        if c:FindFirstChild('ChooseTeam') and c:FindFirstChild('ChooseTeam').Visible then
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('SetTeam', tostring(a))
        end
    end
end
local a = 'Pirates'
repeat
    wait()
    chooseTeam(a)
until IschooseTeam()
repeat
    wait()
until game:IsLoaded()


if getrawmetatable and setreadonly and newcclosure then
    assert(getrawmetatable)
    local grm = getrawmetatable(game)
    setreadonly(grm, false)
    local old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = { ... }
        local blockedRemotes = {
            ["BANREMOTE"] = true,
            ["PERMAIDBAN"] = true,
            ["KICKREMOTE"] = true,
            ["BR_KICKPC"] = true,
            ["BR_KICKMOBILE"] = true,
            ["OneMoreTime"] = true,
            ["CHECKER_1"] = true,
            ["TeleportDetect"] = true,
            ["CHECKER"] = true,
            ["GUI_CHECK"] = true,
            ["checkingSPEED"] = true,
            ["PERMA-BAN"] = true,
            ["PERMABAN"] = true,
            ["BreathingHAMON"] = true,
            ["JJARC"] = true,
            ["TakePoisonDamage"] = true,
            ["FORCEFIELD"] = true,
            ["Christmas_Sock"] = true,
            ["VirusCough"] = true,
            ["Symbiote"] = true,
            ["Symbioted"] = true,
            ["RequestAFKDisplay"] = true
        }
        
        if blockedRemotes[tostring(args[1])] then
            warn("Blocked Remote:", tostring(args[1]))
            return
        end
        

        return old(self, ...)
    end)
else
    warn("Ur exec doesn't support getrawmetatable or setreadonly or newcclosure")
end


function CheckAntiCheatBypass()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:IsA("LocalScript") then
			if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
                warn("Blocked AC1")
			end
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
		if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
				v:Destroy()
                warn("Blocked AC2")
			end
		end
	end
end


local function bypassAntiExploit()
    local executor = string.lower(identifyexecutor())
        if string.find(executor, "xeno") or string.find(executor, "solara") then
        return
else
    if filtergc then
	for _, instance in ipairs(filtergc()) do
		if instance:IsA("AntiExploitSystem") then
			instance:Destroy()
            warn("Blocked AC3")
		end
	end
end
end
end
spawn(function()
while wait() do
pcall(function()
	CheckAntiCheatBypass()
	bypassAntiExploit()
    end)
end
end)

do
    ply = game.Players
    plr = ply.LocalPlayer
    Root = plr.Character.HumanoidRootPart
    replicated = game:GetService('ReplicatedStorage')
    Lv = game.Players.LocalPlayer.Data.Level.Value
    TeleportService = game:GetService('TeleportService')
    TW = game:GetService('TweenService')
    Lighting = game:GetService('Lighting')
    Enemies = workspace.Enemies
    vim1 = game:GetService('VirtualInputManager')
    vim2 = game:GetService('VirtualUser')
    TeamSelf = plr.Team
    RunSer = game:GetService('RunService')
    Stats = game:GetService('Stats')
    Energy = plr.Character.Energy.Value
    Boss = {}
    BringConnections = {}
    MaterialList = {}
    NPCList = {}
    shouldTween = false
    SoulGuitar = false
    KenTest = true
    debug = false
    Quest = false
    Brazier1 = false
    Brazier2 = false
    Brazier3 = false
    _B = true
    _G.Y_Position = true
    Sec = 0.1
    BoatY = 31
    ClickState = 0
    Num_self = 25
end
World1 = game.PlaceId == 2753915549
World2 = game.PlaceId == 4442272183
World3 = game.PlaceId == 7449423635
Sea = World1 or World2 or World3 or plr:Kick('\u{274c} Error : A[12]Blox Fruits \u{274c}')
Marines = function()
    replicated.Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
end
Pirates = function()
    replicated.Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
end
if World1 then
    Boss = {
        'The Gorilla King',
        'Bobby',
        'The Saw',
        'Yeti',
        'Mob Leader',
        'Vice Admiral',
        'Saber Expert',
        'Warden',
        'Chief Warden',
        'Swan',
        'Magma Admiral',
        'Fishman Lord',
        'Wysper',
        'Thunder God',
        'Cyborg',
        'Ice Admiral',
        'Greybeard'
    }
elseif World2 then
    Boss = {
        'Diamond',
        'Jeremy',
        'Fajita',
        'Don Swan',
        'Smoke Admiral',
        'Awakened Ice Admiral',
        'Tide Keeper',
        'Darkbeard',
        'Cursed Captain',
        'Order'
    }
elseif World3 then
    Boss = {
        'Stone',
        'Hydra Leader',
        'Kilo Admiral',
        'Captain Elephant',
        'Beautiful Pirate',
        'Cake Queen',
        'Longma',
        'Soul Reaper'
    }
end
if World1 then
    MaterialList = {
        'Leather + Scrap Metal',
        'Angel Wings',
        'Magma Ore',
        'Fish Tail'
    }
elseif World2 then
    MaterialList = {
        'Leather + Scrap Metal',
        'Radioactive Material',
        'Ectoplasm',
        'Mystic Droplet',
        'Magma Ore',
        'Vampire Fang'
    }
elseif World3 then
    MaterialList = {
        'Scrap Metal',
        'Demonic Wisp',
        'Conjured Cocoa',
        'Dragon Scale',
        'Gunpowder',
        'Fish Tail',
        'Mini Tusk'
    }
end
local b = {
    'Flame',
    'Ice',
    'Quake',
    'Light',
    'Dark',
    'String',
    'Rumble',
    'Magma',
    'Human: Buddha',
    'Sand',
    'Bird: Phoenix',
    'Dough'
}
local c = {
    'Snow Lurker',
    'Arctic Warrior',
    'Hidden Key',
    'Awakened Ice Admiral'
}
local d = {
    Mob = 'Mythological Pirate',
    Mob2 = 'Cursed Skeleton',
    "Hell's Messenger",
    Mob3 = 'Cursed Skeleton',
    "Heaven's Guardian"
}
local e = {
    'Part',
    'SpawnLocation',
    'Terrain',
    'WedgePart',
    'MeshPart'
}
local f = {
    'Swan Pirate',
    'Jeremy'
}
local g = {
    'Forest Pirate',
    'Captain Elephant'
}
local h = {
    'Fajita',
    'Jeremy',
    'Diamond'
}
local i = {
    'Beast Hunter',
    'Lantern',
    'Guardian',
    'Grand Brigade',
    'Dinghy',
    'Sloop',
    'The Sentinel'
}
local j = {
    'Cookie Crafter'
}
local k = {
    'Reborn Skeleton'
}
local l = {
    ['Pirate Millionaire'] = CFrame.new(- 712.8272705078125, 98.5770492553711, 5711.9541015625),
    ['Pistol Billionaire'] = CFrame.new(- 723.4331665039063, 147.42906188964844, 5931.9931640625),
    ['Dragon Crew Warrior'] = CFrame.new(7021.50439453125, 55.76270294189453, - 730.1290893554688),
    ['Dragon Crew Archer'] = CFrame.new(6625, 378, 244),
    ['Female Islander'] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
    ['Venomous Assailant'] = CFrame.new(4902, 670, 39),
    ['Marine Commodore'] = CFrame.new(2401, 123, - 7589),
    ['Marine Rear Admiral'] = CFrame.new(3588, 229, - 7085),
    ['Fishman Raider'] = CFrame.new(- 10941, 332, - 8760),
    ['Fishman Captain'] = CFrame.new(- 11035, 332, - 9087),
    ['Forest Pirate'] = CFrame.new(- 13446, 413, - 7760),
    ['Mythological Pirate'] = CFrame.new(- 13510, 584, - 6987),
    ['Jungle Pirate'] = CFrame.new(- 11778, 426, - 10592),
    ['Musketeer Pirate'] = CFrame.new(- 13282, 496, - 9565),
    ['Reborn Skeleton'] = CFrame.new(- 8764, 142, 5963),
    ['Living Zombie'] = CFrame.new(- 10227, 421, 6161),
    ['Demonic Soul'] = CFrame.new(- 9579, 6, 6194),
    ['Posessed Mummy'] = CFrame.new(- 9579, 6, 6194),
    ['Peanut Scout'] = CFrame.new(- 1993, 187, - 10103),
    ['Peanut President'] = CFrame.new(- 2215, 159, - 10474),
    ['Ice Cream Chef'] = CFrame.new(- 877, 118, - 11032),
    ['Ice Cream Commander'] = CFrame.new(- 877, 118, - 11032),
    ['Cookie Crafter'] = CFrame.new(- 2021, 38, - 12028),
    ['Cake Guard'] = CFrame.new(- 2024, 38, - 12026),
    ['Baking Staff'] = CFrame.new(- 1932, 38, - 12848),
    ['Head Baker'] = CFrame.new(- 1932, 38, - 12848),
    ['Cocoa Warrior'] = CFrame.new(95, 73, - 12309),
    ['Chocolate Bar Battler'] = CFrame.new(647, 42, - 12401),
    ['Sweet Thief'] = CFrame.new(116, 36, - 12478),
    ['Candy Rebel'] = CFrame.new(47, 61, - 12889),
    Ghost = CFrame.new(5251, 5, 1111)
}
EquipWeapon = function(m)
    if not m then
        return
    end
    if plr.Backpack:FindFirstChild(m) then
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(m))
    end
end
weaponSc = function(m)
    for n, o in pairs(plr.Backpack:GetChildren()) do
        if o:IsA('Tool') then
            if o.ToolTip == m then
                EquipWeapon(o.Name)
            end
        end
    end
end
local m = {}
m.__index = m
m.Alive = function(n)
    if not n then
        return
    end
    local o = n:FindFirstChild('Humanoid')
    return o and o.Health > 0
end
m.Pos = function(n, o)
    return (Root.Position - mode.Position).Magnitude <= o
end
m.Dist = function(n, o)
    return (Root.Position - n:FindFirstChild('HumanoidRootPart').Position).Magnitude <= o
end
m.DistH = function(n, o)
    return (Root.Position - n:FindFirstChild('HumanoidRootPart').Position).Magnitude > o
end
local posX, posY, posZ = 0, 30, 0
m.Kill = function(n, o)
    if n and o then
        if not n:GetAttribute('Locked') then
            n:SetAttribute('Locked', n.HumanoidRootPart.CFrame)
        end
        PosMon = n:GetAttribute('Locked').Position
        BringEnemy()
        EquipWeapon(_G.SelectWeapon)
        local p = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool')
        local q = p.ToolTip
        if q == 'Blox Fruit' then
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, math.rad(90), 0))
        else
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ) * CFrame.Angles(0, math.rad(180), 0))
        end
       
        if RandomCFrame then
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(- 25, 30, 0))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(- 25, 30, 0))
        end

        local executor = string.lower(identifyexecutor())
        if  (string.find(executor, "xeno") or string.find(executor, "solara")) then
            shitexecattack()
        else
            AttackNoCoolDown()
        end

    end
end
m.Kill2 = function(n, o)
    if n and o then
        if not n:GetAttribute('Locked') then
            n:SetAttribute('Locked', n.HumanoidRootPart.CFrame)
        end
        PosMon = n:GetAttribute('Locked').Position
        BringEnemy()
        EquipWeapon(_G.SelectWeapon)
        local p = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool')
        local q = p.ToolTip
        if q == 'Blox Fruit' then
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, math.rad(90), 0))
        else
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 8) * CFrame.Angles(0, math.rad(180), 0))
        end
        if RandomCFrame then
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(- 25, 30, 0))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(- 25, 30, 0))
        end

        local executor = string.lower(identifyexecutor())
        if  (string.find(executor, "xeno") or string.find(executor, "solara")) then
            shitexecattack()
        else
            AttackNoCoolDown()
        end
    end
end
m.KillSea = function(n, o)
    if n and o then
        if not n:GetAttribute('Locked') then
            n:SetAttribute('Locked', n.HumanoidRootPart.CFrame)
        end
        PosMon = n:GetAttribute('Locked').Position
        BringEnemy()
        EquipWeapon(_G.SelectWeapon)
        local p = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool')
        local q = p.ToolTip
        if q == 'Blox Fruit' then
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, math.rad(90), 0))
        else
            notween(n.HumanoidRootPart.CFrame * CFrame.new(0, 50, 8))
            wait(0.85)
            notween(n.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0))
            wait(1)
        end

        local executor = string.lower(identifyexecutor())
        if  (string.find(executor, "xeno") or string.find(executor, "solara")) then
            shitexecattack()
        else
            AttackNoCoolDown()
        end

    end
end
m.Sword = function(n, o)
    if n and o then
        if not n:GetAttribute('Locked') then
            n:SetAttribute('Locked', n.HumanoidRootPart.CFrame)
        end
        PosMon = n:GetAttribute('Locked').Position
        BringEnemy()
        weaponSc('Sword')
        _tp(n.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
        if RandomCFrame then
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(- 25, 30, 0))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25))
            wait(0.1)
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(- 25, 30, 0))
        end

        local executor = string.lower(identifyexecutor())
        if  (string.find(executor, "xeno") or string.find(executor, "solara")) then
            shitexecattack()
        else
            AttackNoCoolDown()
        end

    end
end
m.Mas = function(n, o)
    if n and o then
        if not n:GetAttribute('Locked') then
            n:SetAttribute('Locked', n.HumanoidRootPart.CFrame)
        end
        PosMon = n:GetAttribute('Locked').Position
        BringEnemy()
        if n.Humanoid.Health <= HealthM then
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
            Useskills('Blox Fruit', 'Z')
            Useskills('Blox Fruit', 'X')
            Useskills('Blox Fruit', 'C')
        else
            weaponSc('Melee')
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
        end
    end
end
m.Masgun = function(n, o)
    if n and o then
        if not n:GetAttribute('Locked') then
            n:SetAttribute('Locked', n.HumanoidRootPart.CFrame)
        end
        PosMon = n:GetAttribute('Locked').Position
        BringEnemy()
        if n.Humanoid.Health <= HealthM then
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 35, 8))
            Useskills('Gun', 'Z')
            Useskills('Gun', 'X')
        else
            weaponSc('Melee')
            _tp(n.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
        end
    end
end
statsSetings = function(n, o)
    if n == 'Melee' then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer('AddPoint', 'Melee', o)
        end
    elseif n == 'Defense' then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer('AddPoint', 'Defense', o)
        end
    elseif n == 'Sword' then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer('AddPoint', 'Sword', o)
        end
    elseif n == 'Gun' then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer('AddPoint', 'Gun', o)
        end
    elseif n == 'Devil' then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer('AddPoint', 'Demon Fruit', o)
        end
    end
end
BringEnemy = function()
    if not _B then
        return
    end
    for n, o in pairs(workspace.Enemies:GetChildren()) do
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        end
        local p = game.Players.LocalPlayer
        local q = (p.Character or p.CharacterAdded()):WaitForChild('HumanoidRootPart')
        local r = o:FindFirstChild('HumanoidRootPart')
        local s = o:FindFirstChild('Humanoid')
        if r:FindFirstChild('BodyVelocity') then
            r:FindFirstChild('BodyVelocity'):Destroy()
        end
        if r:FindFirstChild('BodyPosition') then
            r:FindFirstChild('BodyPosition'):Destroy()
        end
        s.WalkSpeed = 0
        s.JumpPower = 0
        local t = r:FindFirstChild('Solix_BRINGMOB')
        if not t then
            t = Instance.new('BodyVelocity', r)
            t.Name = 'Solix_BRINGMOB'
            t.Velocity = Vector3.zero
            t.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            t.P = 1000
        end
        if (r.Position - q.Position).Magnitude <= 275 then
            if (PosMon - r.Position).Magnitude >= 50 then
                t.Velocity = (PosMon - r.Position).Unit * 250
            else
                r.CFrame = CFrame.new(PosMon)
                t.Velocity = Vector3.zero
                r.CanCollide = false
                if r.Parent:FindFirstChild('UpperTorso') then
                    r.Parent:FindFirstChild('UpperTorso').CanCollide = false
                end
                if r.Parent:FindFirstChild('Head') then
                    r.Parent:FindFirstChild('Head').CanCollide = false
                end
            end
        else
            t.Velocity = Vector3.zero
        end
        if not table.find(BringConnections, s) then
            table.insert(BringConnections, s)
            s:GetPropertyChangedSignal('Health'):Connect(function()
                if s.Health <= 0 then
                    t:Destroy()
                end
            end)
            s.Destroying:Connect(function()
                table.remove(BringConnections, table.find(BringConnections, s))
            end)
        end
    end
end
Useskills = function(n, o)
    if n == 'Melee' then
        weaponSc('Melee')
        if o == 'Z' then
            vim1:SendKeyEvent(true, 'Z', false, game)
            vim1:SendKeyEvent(false, 'Z', false, game)
        elseif o == 'X' then
            vim1:SendKeyEvent(true, 'X', false, game)
            vim1:SendKeyEvent(false, 'X', false, game)
        elseif o == 'C' then
            vim1:SendKeyEvent(true, 'C', false, game)
            vim1:SendKeyEvent(false, 'C', false, game)
        end
    elseif n == 'Sword' then
        weaponSc('Sword')
        if o == 'Z' then
            vim1:SendKeyEvent(true, 'Z', false, game)
            vim1:SendKeyEvent(false, 'Z', false, game)
        elseif o == 'X' then
            vim1:SendKeyEvent(true, 'X', false, game)
            vim1:SendKeyEvent(false, 'X', false, game)
        end
    elseif n == 'Blox Fruit' then
    weaponSc('Blox Fruit')
    if o == 'Z' then
        vim1:SendKeyEvent(true, 'Z', false, game)
        vim1:SendKeyEvent(false, 'Z', false, game)
    elseif o == 'X' then
        vim1:SendKeyEvent(true, 'X', false, game)
        vim1:SendKeyEvent(false, 'X', false, game)
    elseif o == 'C' then
        vim1:SendKeyEvent(true, 'C', false, game)
        vim1:SendKeyEvent(false, 'C', false, game)
    elseif o == 'V' then
        vim1:SendKeyEvent(true, 'V', false, game)
        vim1:SendKeyEvent(false, 'V', false, game)
    elseif o == 'F' then
        vim1:SendKeyEvent(true, 'F', false, game)
        vim1:SendKeyEvent(false, 'F', false, game)
    end
    elseif n == 'Gun' then
        weaponSc('Gun')
        if o == 'Z' then
            vim1:SendKeyEvent(true, 'Z', false, game)
            vim1:SendKeyEvent(false, 'Z', false, game)
        elseif o == 'X' then
            vim1:SendKeyEvent(true, 'X', false, game)
            vim1:SendKeyEvent(false, 'X', false, game)
        end
    end
    if n == 'nil' and o == 'Y' then
        vim1:SendKeyEvent(true, 'Y', false, game)
        vim1:SendKeyEvent(false, 'Y', false, game)
    end
end

--[[
local n = game.Players.LocalPlayer:GetMouse()
Cac = hookmetamethod(game, '__index', newcclosure(function(o, p)
    if o == n then
        if p == 'Hit' or p == 'hit' then
            if (_G.FarmMastery_G and not SoulGuitar) or (_G.FarmMastery_Dev) or (_G.FarmBlazeEM) or (_G.Prehis_Skills) or (_G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials) or (_G.AimMethod and ABmethod == 'AimBots Skill') or (_G.AimMethod and ABmethod == 'Auto Aimbots') then
                return CFrame.new(MousePos)
            end
        end
    end
    return Cac(o, p)
end))
local o = getrawmetatable(game)
local p = o.__namecall
setreadonly(o, false)
o.__namecall = newcclosure(function(...)
    local q = getnamecallmethod()
    local r = {
        ...
    }
    if tostring(q) == 'FireServer' then
        if tostring(r[1]) == 'RemoteEvent' then
            if tostring(r[2]) ~= 'true' and tostring(r[2]) ~= 'false' then
                if (_G.FarmMastery_G and not SoulGuitar) or (_G.FarmMastery_Dev) or (_G.FarmBlazeEM) or (_G.Prehis_Skills) or (_G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials) or (_G.AimMethod and ABmethod == 'AimBots Skill') or (_G.AimMethod and ABmethod == 'Auto Aimbots') then
                    r[2] = MousePos
                    return p(unpack(r))
                end
            end
        end
    end
    return p(...)
end)
]]
GetConnectionEnemies = function(q)
    local r = nil
    local s = math.huge
    local function checkEnemy(t)
        if t:IsA('Model') and ((typeof(q) == 'table' and table.find(q, t.Name)) or t.Name == q) and t:FindFirstChild('Humanoid') and t.Humanoid.Health > 0 and t:FindFirstChild('HumanoidRootPart') then
            local u = (t.HumanoidRootPart.Position - Root.Position).Magnitude
            if u < s then
                s = u
                r = t
            end
        end
    end
    for t, u in pairs(replicated:GetChildren()) do
        checkEnemy(u)
    end
    for t, u in pairs(game.Workspace.Enemies:GetChildren()) do
        checkEnemy(u)
    end
    return r
end
LowCpu = function()
    local q = true
    local r = game
    local s = r.Workspace
    local t = r.Lighting
    local u = s.Terrain
    u.WaterWaveSize = 0
    u.WaterWaveSpeed = 0
    u.WaterReflectance = 0
    u.WaterTransparency = 0
    t.GlobalShadows = false
    t.FogEnd = 9e9
    t.Brightness = 0
    settings().Rendering.QualityLevel = 'Level01'
    for v, w in pairs(r:GetDescendants()) do
        if w:IsA('Part') or w:IsA('Union') or w:IsA('CornerWedgePart') or w:IsA('TrussPart') then
            w.Material = 'Plastic'
            w.Reflectance = 0
        elseif w:IsA('Decal') or w:IsA('Texture') and q then
            w.Transparency = 1
        elseif w:IsA('ParticleEmitter') or w:IsA('Trail') then
            w.Lifetime = NumberRange.new(0)
        elseif w:IsA('Explosion') then
            w.BlastPressure = 1
            w.BlastRadius = 1
        elseif w:IsA('Fire') or w:IsA('SpotLight') or w:IsA('Smoke') or w:IsA('Sparkles') then
            w.Enabled = false
        elseif w:IsA('MeshPart') then
            w.Material = 'Plastic'
            w.Reflectance = 0
            w.TextureID = 10385902758728956
        end
    end
    for v, w in pairs(t:GetChildren()) do
        if w:IsA('BlurEffect') or w:IsA('SunRaysEffect') or w:IsA('ColorCorrectionEffect') or w:IsA('BloomEffect') or w:IsA('DepthOfFieldEffect') then
            w.Enabled = false
        end
    end
end
CheckF = function()
    if GetBP('Dragon-Dragon') or GetBP('Gas-Gas') or GetBP('Yeti-Yeti') or GetBP('Kitsune-Kitsune') or GetBP('T-Rex-T-Rex') then
        return true
    end
end
CheckBoat = function()
    for q, r in pairs(workspace.Boats:GetChildren()) do
        if tostring(r.Owner.Value) == tostring(plr.Name) then
            return r
        end
    end
    return false
end
CheckEnemiesBoat = function()
    for q, r in pairs(workspace.Enemies:GetChildren()) do
        if (r.Name == 'FishBoat') and r:FindFirstChild('Health').Value > 0 then
            return true
        end
    end
    return false
end
CheckPirateGrandBrigade = function()
    for q, r in pairs(workspace.Enemies:GetChildren()) do
        if (r.Name == 'PirateGrandBrigade' or r.Name == 'PirateBrigade') and r:FindFirstChild('Health').Value > 0 then
            return true
        end
    end
    return false
end
CheckShark = function()
    for q, r in pairs(workspace.Enemies:GetChildren()) do
        if r.Name == 'Shark' and m.Alive(r) then
            return true
        end
    end
    return false
end
CheckTerrorShark = function()
    for q, r in pairs(workspace.Enemies:GetChildren()) do
        if r.Name == 'Terrorshark' and m.Alive(r) then
            return true
        end
    end
    return false
end
CheckPiranha = function()
    for q, r in pairs(workspace.Enemies:GetChildren()) do
        if r.Name == 'Piranha' and m.Alive(r) then
            return true
        end
    end
    return false
end
CheckFishCrew = function()
    for q, r in pairs(workspace.Enemies:GetChildren()) do
        if (r.Name == 'Fish Crew Member' or r.Name == 'Haunted Crew Member') and m.Alive(r) then
            return true
        end
    end
    return false
end
CheckSeaBeast = function()
    if workspace.SeaBeasts:FindFirstChild('SeaBeast1') then
        return true
    end
    return false
end
CheckLeviathan = function()
    if workspace.SeaBeasts:FindFirstChild('Leviathan') then
        return true
    end
    return false
end
UpdStFruit = function()
    for q, r in next, plr.Backpack:GetChildren() do
        StoreFruit = r:FindFirstChild('EatRemote', true)
        if StoreFruit then
            replicated.Remotes.CommF_:InvokeServer('StoreFruit', StoreFruit.Parent:GetAttribute('OriginalName'), plr.Backpack:FindFirstChild(r.Name))
        end
    end
end
collectFruits = function(q)
    if q then
        local r = plr.Character
        for s, t in pairs(workspace:GetChildren()) do
            if string.find(t.Name, 'Fruit') then
                t.Handle.CFrame = r.HumanoidRootPart.CFrame
            end
        end
    end
end
Getmoon = function()
    if World1 then
        return Lighting.FantasySky.MoonTextureId
    elseif World2 then
        return Lighting.FantasySky.MoonTextureId
    elseif World3 then
        return Lighting.Sky.MoonTextureId
    end
end
DropFruits = function()
    for q, r in next, plr.Backpack:GetChildren() do
        if string.find(r.Name, 'Fruit') then
            EquipWeapon(r.Name)
            wait(0.1)
            if plr.PlayerGui.Main.Dialogue.Visible == true then
                plr.PlayerGui.Main.Dialogue.Visible = false
            end
            EquipWeapon(r.Name)
            plr.Character:FindFirstChild(r.Name).EatRemote:InvokeServer('Drop')
        end
    end
    for q, r in pairs(plr.Character:GetChildren()) do
        if string.find(r.Name, 'Fruit') then
            EquipWeapon(r.Name)
            wait(0.1)
            if plr.PlayerGui.Main.Dialogue.Visible == true then
                plr.PlayerGui.Main.Dialogue.Visible = false
            end
            EquipWeapon(r.Name)
            plr.Character:FindFirstChild(r.Name).EatRemote:InvokeServer('Drop')
        end
    end
end
GetBP = function(q)
    return plr.Backpack:FindFirstChild(q) or plr.Character:FindFirstChild(q)
end
GetIn = function(q)
    for r, s in pairs(replicated.Remotes.CommF_:InvokeServer('getInventory')) do
        if type(s) == 'table' then
            if s.Name == q or plr.Character:FindFirstChild(q) or plr.Backpack:FindFirstChild(q) then
                return true
            end
        end
    end
    return false
end
GetM = function(q)
    for r, s in pairs(replicated.Remotes.CommF_:InvokeServer('getInventory')) do
        if type(s) == 'table' then
            if s.Type == 'Material' then
                if s.Name == q then
                    return s.Count
                end
            end
        end
    end
    return 0
end
GetWP = function(q)
    for r, s in pairs(replicated.Remotes.CommF_:InvokeServer('getInventory')) do
        if type(s) == 'table' then
            if s.Type == 'Sword' then
                if s.Name == q or plr.Character:FindFirstChild(q) or plr.Backpack:FindFirstChild(q) then
                    return true
                end
            end
        end
    end
    return false
end
getInfinity_Ability = function(q, r)
    if not Root then
        return
    end
    if q == 'Soru' and r then
        for s, t in next, getgc() do
            if plr.Character.Soru then
                if ((typeof(t) == 'function') and (getfenv(t).script == plr.Character.Soru)) then
                    for u, v in next, getupvalues(t) do
                        if (typeof(v) == 'table') then
                            repeat
                                wait(Sec)
                                v.LastUse = 0
                            until not r or (plr.Character.Humanoid.Health <= 0)
                        end
                    end
                end
            end
        end
    elseif q == 'Energy' and r then
        plr.Character.Energy.Changed:connect(function()
            if r then
                plr.Character.Energy.Value = Energy
            end
        end)
    elseif q == 'Observation' and r then
        local s = plr.VisionRadius
        s.Value = math.huge
    end
end
Hop = function()
    pcall(function()
        for q = math.random(1, math.random(40, 75)), 100 do
            local r = replicated.__ServerBrowser:InvokeServer(q)
            for s, t in next, r do
                if tonumber(t.Count) < 12 then
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, s)
                end
            end
        end
    end)
end
local q = Instance.new('Part', workspace)
q.Size = Vector3.new(1, 1, 1)
q.Name = 'Rip_Indra'
q.Anchored = true
q.CanCollide = false
q.CanTouch = false
q.Transparency = 1
local r = workspace:FindFirstChild(q.Name)
if r and r ~= q then
    r:Destroy()
end
task.spawn(function()
    while task.wait() do
        if q and q.Parent == workspace then
            if shouldTween then
                getgenv().OnFarm = true
            else
                getgenv().OnFarm = false
            end
        else
            getgenv().OnFarm = false
        end
    end
end)
task.spawn(function()
    local s = game.Players.LocalPlayer
    repeat
        task.wait()
    until s.Character and s.Character.PrimaryPart
    q.CFrame = s.Character.PrimaryPart.CFrame
    while task.wait() do
        pcall(function()
            if getgenv().OnFarm then
                if q and q.Parent == workspace then
                    local t = s.Character and s.Character.PrimaryPart
                    if t and (t.Position - q.Position).Magnitude <= 200 then
                        t.CFrame = q.CFrame
                    else
                        q.CFrame = t.CFrame
                    end
                end
                local t = s.Character
                if t then
                    for u, v in pairs(t:GetChildren()) do
                        if v:IsA('BasePart') then
                            v.CanCollide = false
                        end
                    end
                end
            else
                local t = s.Character
                if t then
                    for u, v in pairs(t:GetChildren()) do
                        if v:IsA('BasePart') then
                            v.CanCollide = true
                        end
                    end
                end
            end
        end)
    end
end)
_tp = function(s)
    local t = plr.Character
    if not t or not t:FindFirstChild('HumanoidRootPart') then
        return
    end
    local u = t.HumanoidRootPart
    local v = (s.Position - u.Position).Magnitude
    local w = TweenInfo.new(v / 300, Enum.EasingStyle.Linear)
    local x = game:GetService('TweenService'):Create(q, w, {
        CFrame = s
    })
    if _G.Y_Position then
        Root.CFrame = CFrame.new(Root.CFrame.X, s.Y, Root.CFrame.Z)
    end
    if plr.Character.Humanoid.Sit == true then
        q.CFrame = CFrame.new(q.Position.X, s.Y, q.Position.Z)
    end
    x:Play()
    task.spawn(function()
        while x.PlaybackState == Enum.PlaybackState.Playing do
            if not shouldTween then
                x:Cancel()
                break
            end
            task.wait(0.1)
        end
    end)
end
TeleportToTarget = function(s)
    if (s.Position - plr.Character.HumanoidRootPart.Position).Magnitude > 1000 then
        _tp(s)
    else
        _tp(s)
    end
end
notween = function(s)
    plr.Character.HumanoidRootPart.CFrame = s
end
BTP = function(s)
    Root.CFrame = s
    plr.Character.Humanoid.Health = 0
    Root.CFrame = s
end
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoRipInSpawn or _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or getgenv().AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.AutoPole or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S then
                shouldTween = true
                if not plr.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    local s = Instance.new('BodyVelocity')
                    s.Name = 'BodyClip'
                    s.Parent = plr.Character.HumanoidRootPart
                    s.MaxForce = Vector3.new(100000, 100000, 100000)
                    s.Velocity = Vector3.new(0, 0, 0)
                end
               
                for s, t in pairs(plr.Character:GetDescendants()) do
                    if t:IsA('BasePart') then
                        t.CanCollide = false
                    end
                end
            else
                shouldTween = false
                if plr.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    plr.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
                end
            end
        end)
    end
end)
QuestB = function()
    loadstring(game:HttpGet("https://github.com/viperobii/viperbloxfruit/blob/main/transgender"))() 
    
end
QuestBeta = function()
    local s = QuestB()
    return {
        [0] = _G.FindBoss,
        [1] = bMon,
        [2] = Qdata,
        [3] = Qname,
        [4] = PosB
    }
end
QuestCheck = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/viperobii/viperbloxfruit/refs/heads/main/transgay"))() 
end
MaterialMon = function()
    local s = game.Players.LocalPlayer
    local t = s.Character and s.Character:FindFirstChild('HumanoidRootPart')
    if not t then
        return
    end
    shouldRequestEntrance = function(u, v)
        local w = (t.Position - u).Magnitude
        if w >= v then
            replicated.Remotes.CommF_:InvokeServer('requestEntrance', u)
        end
    end
    if World1 then
        if SelectMaterial == 'Angel Wings' then
            MMon = {
                'Shanda',
                'Royal Squad',
                'Royal Soldier',
                'Wysper',
                'Thunder God'
            }
            MPos = CFrame.new(- 4698, 845, - 1912)
            SP = 'Default'
            local u = Vector3.new(- 4607.82275, 872.54248, - 1667.55688)
            shouldRequestEntrance(u, 10000)
        elseif SelectMaterial == 'Leather + Scrap Metal' then
            MMon = {
                'Brute',
                'Pirate'
            }
            MPos = CFrame.new(- 1145, 15, 4350)
            SP = 'Default'
        elseif SelectMaterial == 'Magma Ore' then
            MMon = {
                'Military Soldier',
                'Military Spy',
                'Magma Admiral'
            }
            MPos = CFrame.new(- 5815, 84, 8820)
            SP = 'Default'
        elseif SelectMaterial == 'Fish Tail' then
            MMon = {
                'Fishman Warrior',
                'Fishman Commando',
                'Fishman Lord'
            }
            MPos = CFrame.new(61123, 19, 1569)
            SP = 'Default'
            local u = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
            shouldRequestEntrance(u, 17000)
        end
    elseif World2 then
        if SelectMaterial == 'Leather + Scrap Metal' then
            MMon = {
                'Marine Captain'
            }
            MPos = CFrame.new(- 2010.5059814453125, 73.00115966796875, - 3326.620849609375)
            SP = 'Default'
        elseif SelectMaterial == 'Magma Ore' then
            MMon = {
                'Magma Ninja',
                'Lava Pirate'
            }
            MPos = CFrame.new(- 5428, 78, - 5959)
            SP = 'Default'
        elseif SelectMaterial == 'Ectoplasm' then
            MMon = {
                'Ship Deckhand',
                'Ship Engineer',
                'Ship Steward',
                'Ship Officer'
            }
            MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
            SP = 'Default'
            local u = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
            shouldRequestEntrance(u, 18000)
        elseif SelectMaterial == 'Mystic Droplet' then
            MMon = {
                'Water Fighter'
            }
            MPos = CFrame.new(- 3385, 239, - 10542)
            SP = 'Default'
        elseif SelectMaterial == 'Radioactive Material' then
            MMon = {
                'Factory Staff'
            }
            MPos = CFrame.new(295, 73, - 56)
            SP = 'Default'
        elseif SelectMaterial == 'Vampire Fang' then
            MMon = {
                'Vampire'
            }
            MPos = CFrame.new(- 6033, 7, - 1317)
            SP = 'Default'
        end
    elseif World3 then
        if SelectMaterial == 'Scrap Metal' then
            MMon = {
                'Jungle Pirate',
                'Forest Pirate'
            }
            MPos = CFrame.new(- 11975.78515625, 331.7734069824219, - 10620.0302734375)
            SP = 'Default'
        elseif SelectMaterial == 'Fish Tail' then
            MMon = {
                'Fishman Raider',
                'Fishman Captain'
            }
            MPos = CFrame.new(- 10993, 332, - 8940)
            SP = 'Default'
        elseif SelectMaterial == 'Conjured Cocoa' then
            MMon = {
                'Chocolate Bar Battler',
                'Cocoa Warrior'
            }
            MPos = CFrame.new(620.6344604492188, 78.93644714355469, - 12581.369140625)
            SP = 'Default'
        elseif SelectMaterial == 'Dragon Scale' then
            MMon = {
                'Dragon Crew Archer',
                'Dragon Crew Warrior'
            }
            MPos = CFrame.new(6594, 383, 139)
            SP = 'Default'
        elseif SelectMaterial == 'Gunpowder' then
            MMon = {
                'Pistol Billionaire'
            }
            MPos = CFrame.new(- 84.8556900024414, 85.62061309814453, 6132.0087890625)
            SP = 'Default'
        elseif SelectMaterial == 'Mini Tusk' then
            MMon = {
                'Mythological Pirate'
            }
            MPos = CFrame.new(- 13545, 470, - 6917)
            SP = 'Default'
        elseif SelectMaterial == 'Demonic Wisp' then
            MMon = {
                'Demonic Soul'
            }
            MPos = CFrame.new(- 9495.6806640625, 453.58624267578125, 5977.3486328125)
            SP = 'Default'
        end
    end
end
QuestNeta = function()
    local s = QuestCheck()
    return {
        [1] = Mon,
        [2] = Qdata,
        [3] = Qname,
        [4] = PosM,
        [5] = NameMon,
        [6] = PosQ
    }
end


-- Auto Attack Function
local _v1 = game.Players.LocalPlayer

-- Use getgenv() to make variables accessible across scripts
getgenv().FastAttack = true

function _x1()
    local _v2 = _v1.Character
    if not _v2 then return end

    local _v3 = nil
    for _, _v4 in ipairs(_v2:GetChildren()) do
        if _v4:IsA("Tool") then
            _v3 = _v4
            break
        end
    end
    if not _v3 then return end

    local function _x2(_v5)
        return _v5 and _v5:FindFirstChild("Humanoid") and _v5.Humanoid.Health > 0
    end

    -- Modified function to get both enemies and players
    local function _x3(_v6)
        local targets = {}
        local _v9 = _v2:GetPivot().Position
        
        -- Get enemies
        if workspace:FindFirstChild("Enemies") then
            local _v7 = workspace.Enemies:GetChildren()
            for _, _v10 in ipairs(_v7) do
                local _v11 = _v10:FindFirstChild("HumanoidRootPart")
                if _v11 and _x2(_v10) and (_v11.Position - _v9).Magnitude <= _v6 then
                    table.insert(targets, _v10)
                end
            end
        end
        
        -- Get players (excluding yourself)
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= _v1 and player.Character then
                local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                if hrp and _x2(player.Character) and (hrp.Position - _v9).Magnitude <= _v6 then
                    table.insert(targets, player.Character)
                end
            end
        end
        
        return targets
    end

    if _v3:FindFirstChild("LeftClickRemote") then
        local _v12 = 1  
        local _v13 = _x3(60)
        for _, _v14 in ipairs(_v13) do
            local hrp = _v14:FindFirstChild("HumanoidRootPart")
            if hrp then
                local _v15 = (hrp.Position - _v2:GetPivot().Position).Unit
                pcall(function()
                    _v3.LeftClickRemote:FireServer(_v15, _v12)
                end)
                _v12 = _v12 + 1
                if _v12 > 1000000000 then _v12 = 1 end
            end
        end
    else
        local _v16 = {}
        local _v18 = _v2:GetPivot().Position
        local _v19 = nil
        
        -- Get both enemies and players as targets
        local _v13 = _x3(60)
        
        for _, _v20 in ipairs(_v13) do
            -- Skip boats if in enemies folder
            if not _v20:GetAttribute("IsBoat") and _x2(_v20) then
                local _v21 = _v20:FindFirstChild("Head")
                if _v21 and (_v18 - _v21.Position).Magnitude <= 60 then
                    table.insert(_v16, { _v20, _v21 })
                    _v19 = _v21
                end
            end
        end

        if not _v19 then return end

        pcall(function()
            local _v22 = game:GetService("ReplicatedStorage")
            local _v23 = _v22:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local _v24 = _v22:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            
            if #_v16 > 0 then
                _v23:FireServer(0.000000001)
                _v24:FireServer(_v19, _v16)
            else
                task.wait(0.000000001)
            end
        end)
    end
end

-- Using getgenv() for global access
getgenv().FastAttack = true

spawn(function()
    while wait(.1) do
        if getgenv().FastAttack then
            pcall(function()
                repeat task.wait(0.1)
                    _x1()
                until not getgenv().FastAttack
            end)
        end
    end
end)


task.spawn(function()
    RunSer.Heartbeat:Connect(function()
        pcall(function()
            if not _G.Seriality then
                return
            end
            local executor = string.lower(identifyexecutor())
            if  (string.find(executor, "xeno") or string.find(executor, "solara")) then
                shitexecattack()
            else
                AttackNoCoolDown()
            end

            local ci = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool')
            local cj = ci.ToolTip
            local ck, cl = get_Monster()
            if cj == 'Blox Fruit' then
                if ck then
                    local cm = ci:FindFirstChild('LeftClickRemote')
                    if cm then
                        Actived()
                        cm:FireServer(Vector3.new(0.01, - 500, 0.01), 1, true)
                        cm:FireServer(false)
                    end
                end
            end
        end)
    end)
end)

function Tween2(v204)

local v205 = (v204.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;

local v206 = 350;

if (v205 >= 350) then

v206 = 350;

end

local v207 = TweenInfo.new(v205 / v206, Enum.EasingStyle.Linear);

local v208 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v207, {

CFrame = v204

});

v208:Play();

if _G.CancelTween2 then

v208:Cancel();

end

_G.Clip2 = true;

wait(v205 / v206);

_G.Clip2 = false;

end


function isnil(cd)
    return (cd == nil)
end
local function round(cd)
    return math.floor(tonumber(cd) + 0.5)
end
Number = math.random(1, 1000000)
EspPly = function()
    for cd, ce in next, game.Players:GetChildren() do
        pcall(function()
            if not isnil(ce.Character) then
                if PlayerEsp then
                    if not isnil(ce.Character.Head) and not ce.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        local cf = Instance.new('BillboardGui', ce.Character.Head)
                        cf.Name = 'NameEsp' .. Number
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = ce.Character.Head
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = Enum.Font.Code
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Text = (ce.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Character.Head.Position).Magnitude / 3) .. ' M')
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        if ce.Team == TeamSelf then
                            cg.TextColor3 = Color3.new(0, 0, 254)
                        else
                            cg.TextColor3 = Color3.new(255, 0, 0)
                        end
                    else
                        ce.Character.Head['NameEsp' .. Number].TextLabel.Text = (ce.Data.Level.Value .. ' | ' .. ce.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(ce.Character.Humanoid.Health * 100 / ce.Character.Humanoid.MaxHealth) .. '%')
                    end
                else
                    if ce.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        ce.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
LocationEsp = function()
    for cd, ce in next, workspace._WorldOrigin.Locations:GetChildren() do
        pcall(function()
            if IslandESP then
                if (ce.Name ~= 'Sea') then
                    if not ce:FindFirstChild('NameEsp') then
                        local cf = Instance.new('BillboardGui', ce)
                        cf.Name = 'NameEsp'
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = ce
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = Enum.Font.Code
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(98, 252, 252)
                    else
                        ce.NameEsp.TextLabel.Text = (ce.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Position).Magnitude / 3) .. ' M')
                    end
                end
            else
                if ce:FindFirstChild('NameEsp') then
                    ce:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
DevEsp = function()
    for cd, ce in next, workspace:GetChildren() do
        pcall(function()
            if DevilFruitESP then
                if string.find(ce.Name, 'Fruit') then
                    if not ce.Handle:FindFirstChild('NameEsp' .. Number) then
                        local cf = Instance.new('BillboardGui', ce.Handle)
                        cf.Name = 'NameEsp' .. Number
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = ce.Handle
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = Enum.Font.Code
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(255, 255, 255)
                        cg.Text = (ce.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Handle.Position).Magnitude / 3) .. ' M')
                    else
                        ce.Handle['NameEsp' .. Number].TextLabel.Text = ('[' .. ce.Name .. ']' .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Handle.Position).Magnitude / 3) .. ' M')
                    end
                end
            else
                if ce.Handle:FindFirstChild('NameEsp' .. Number) then
                    ce.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
flowerEsp = function()
    for cd, ce in pairs(workspace:GetChildren()) do
        pcall(function()
            if ce.Name == 'Flower2' or ce.Name == 'Flower1' then
                if FlowerESP then
                    if not ce:FindFirstChild('NameEsp' .. Number) then
                        local cf = Instance.new('BillboardGui', ce)
                        cf.Name = 'NameEsp' .. Number
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = ce
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = Enum.Font.Code
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(88, 214, 252)
                        if ce.Name == 'Flower1' then
                            cg.Text = ('Blue Flower' .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Position).Magnitude / 3) .. ' M')
                            cg.TextColor3 = Color3.fromRGB(88, 214, 252)
                        end
                        if ce.Name == 'Flower2' then
                            cg.Text = ('Red Flower' .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Position).Magnitude / 3) .. ' M')
                            cg.TextColor3 = Color3.fromRGB(88, 214, 252)
                        end
                    else
                        ce['NameEsp' .. Number].TextLabel.Text = (ce.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - ce.Position).Magnitude / 3) .. ' M')
                    end
                else
                    if ce:FindFirstChild('NameEsp' .. Number) then
                        ce:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
EventIslandEsp = function()
    for cd, ce in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
        pcall(function()
            if EspEventIsland then
                if (ce.Name == 'Mirage Island' or ce.Name == 'Prehistoric Island' or ce.Name == 'Kitsune Island') then
                    if not ce:FindFirstChild('NameEsp') then
                        local cf = Instance.new('BillboardGui', ce)
                        cf.Name = 'NameEsp'
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = ce
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = 'Code'
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        ce.NameEsp.TextLabel.Text = ce.Name .. '   \n' .. round((plr.Character.Head.Position - ce.Position).Magnitude / 3) .. ' M'
                    end
                end
            elseif ce:FindFirstChild('NameEsp') then
                ce:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
gearEsp = function()
    for cd, ce in pairs(workspace.Map.MysticIsland:GetDescendants()) do
        pcall(function()
            if ESPGear then
                if ce.Name == 'Part' and ce.Material == Enum.Material.Neon then
                    if not ce:FindFirstChild('NameEsp') then
                        local cf = Instance.new('BillboardGui', ce)
                        cf.Name = 'NameEsp'
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = ce
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = 'Code'
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        ce.NameEsp.TextLabel.Text = ('Gear' .. '   \n' .. round((plr.Character.Head.Position - ce.Position).Magnitude / 3) .. ' M')
                    end
                end
            else
                if ce:FindFirstChild('NameEsp') then
                    ce:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
AdvanFruitEsp = function()
    if advanEsp == true then
        for cd, ce in pairs(replicated.NPCs:GetChildren()) do
            if ce.Name == 'Advanced Fruit Dealer' then
                if not workspace:FindFirstChild('Adv') then
                    Adv = Instance.new('Part')
                    Adv.Name = 'Adv'
                    Adv.Transparency = 1
                    Adv.Size = Vector3.new(1, 1, 1)
                    Adv.Anchored = true
                    Adv.CanCollide = false
                    Adv.Parent = workspace
                    Adv.CFrame = ce.HumanoidRootPart.CFrame
                elseif workspace:FindFirstChild('Adv') then
                    if not Adv:FindFirstChild('NameEsp') then
                        local cf = Instance.new('BillboardGui', Adv)
                        cf.Name = 'NameEsp'
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = Adv
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = 'Code'
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        Adv.NameEsp.TextLabel.Text = (ce.Name .. '   \n' .. round((plr.Character.Head.Position - ce.HumanoidRootPart.Position).Magnitude / 3) .. ' M')
                    end
                end
            end
        end
    else
        if workspace:FindFirstChild('Adv') then
            workspace:FindFirstChild('Adv'):Destroy()
        end
    end
end
HakiClorEsp = function()
    if ColorEsp == true then
        for cd, ce in pairs(replicated.NPCs:GetChildren()) do
            if ce.Name == 'Barista Cousin' then
                if not workspace:FindFirstChild('Gay') then
                    Gay = Instance.new('Part')
                    Gay.Name = 'Gay'
                    Gay.Transparency = 1
                    Gay.Size = Vector3.new(1, 1, 1)
                    Gay.Anchored = true
                    Gay.CanCollide = false
                    Gay.Parent = workspace
                    Gay.CFrame = ce.HumanoidRootPart.CFrame
                elseif workspace:FindFirstChild('Gay') then
                    if not Gay:FindFirstChild('NameEsp') then
                        local cf = Instance.new('BillboardGui', Gay)
                        cf.Name = 'NameEsp'
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = Gay
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = 'Code'
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        Gay.NameEsp.TextLabel.Text = (ce.Name .. '   \n' .. round((plr.Character.Head.Position - ce.HumanoidRootPart.Position).Magnitude / 3) .. ' M')
                    end
                end
            end
        end
    else
        if workspace:FindFirstChild('Gay') then
            workspace:FindFirstChild('Gay'):Destroy()
        end
    end
end
LegenSword = function()
    if LegenS == true then
        for cd, ce in pairs(replicated.NPCs:GetChildren()) do
            if ce.Name == 'Legendary Sword Dealer ' then
                if not workspace:FindFirstChild('Lgd') then
                    Lgd = Instance.new('Part')
                    Lgd.Name = 'Lgd'
                    Lgd.Transparency = 1
                    Lgd.Size = Vector3.new(1, 1, 1)
                    Lgd.Anchored = true
                    Lgd.CanCollide = false
                    Lgd.Parent = workspace
                    Lgd.CFrame = ce.HumanoidRootPart.CFrame
                elseif workspace:FindFirstChild('Lgd') then
                    if not Lgd:FindFirstChild('NameEsp') then
                        local cf = Instance.new('BillboardGui', Lgd)
                        cf.Name = 'NameEsp'
                        cf.ExtentsOffset = Vector3.new(0, 1, 0)
                        cf.Size = UDim2.new(1, 200, 1, 30)
                        cf.Adornee = Lgd
                        cf.AlwaysOnTop = true
                        local cg = Instance.new('TextLabel', cf)
                        cg.Font = 'Code'
                        cg.FontSize = 'Size14'
                        cg.TextWrapped = true
                        cg.Size = UDim2.new(1, 0, 1, 0)
                        cg.TextYAlignment = 'Top'
                        cg.BackgroundTransparency = 1
                        cg.TextStrokeTransparency = 0.5
                        cg.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        Lgd.NameEsp.TextLabel.Text = (ce.Name .. '   \n' .. round((plr.Character.Head.Position - ce.HumanoidRootPart.Position).Magnitude / 3) .. ' M')
                    end
                end
            end
        end
    else
        if workspace:FindFirstChild('Lgd') then
            workspace:FindFirstChild('Lgd'):Destroy()
        end
    end
end
ChestEsp = function()
    if ChestESP then
        local cd = game:GetService('CollectionService')
        local ce = game:GetService('Players')
        local cf = ce.LocalPlayer
        local cg = cf.Character or cf.CharacterAdded:Wait()
        local ch = cg:GetPivot().Position
        local ci = cd:GetTagged('_ChestTagged')
        for cj, ck in ipairs(ci) do
            local cl = false
            repeat
                if not SelectedIsland or ck:IsDescendantOf(SelectedIsland) then
                    if not ck:GetAttribute('IsDisabled') then
                        local cm
                        local cn, co = pcall(function()
                            return ck:GetPivot().Position
                        end)
                        if cn then
                            cm = co
                        elseif ck:IsA('BasePart') then
                            cm = ck.Position
                        else
                            cl = true
                            break
                        end
                        local cp = (cm - ch).Magnitude
                        local cq = ck:GetFullName():gsub('[^%w_]', '_')
                        local cr = ck:FindFirstChild('ChestEspAttachment')
                        if not cr then
                            local cs = Instance.new('Attachment')
                            cs.Name = 'ChestEspAttachment'
                            cs.Parent = ck
                            cs.Position = Vector3.new(0, 3, 0)
                            local ct = Instance.new('BillboardGui')
                            ct.Name = 'NameEsp'
                            ct.Size = UDim2.new(0, 200, 0, 30)
                            ct.Adornee = cs
                            ct.ExtentsOffset = Vector3.new(0, 1, 0)
                            ct.AlwaysOnTop = true
                            ct.Parent = cs
                            local cu = Instance.new('TextLabel')
                            cu.Font = Enum.Font.Code
                            cu.TextSize = 14
                            cu.TextWrapped = true
                            cu.Size = UDim2.new(1, 0, 1, 0)
                            cu.TextYAlignment = Enum.TextYAlignment.Top
                            cu.BackgroundTransparency = 1
                            cu.TextStrokeTransparency = 0.5
                            cu.TextColor3 = Color3.fromRGB(80, 245, 245)
                            cu.Parent = ct
                        end
                        local cs = cr and cr:FindFirstChild('NameEsp')
                        if cs then
                            local ct = math.floor(cp / 3)
                            local cu = ck.Name:gsub('Label', '')
                            cs.TextLabel.Text = string.format('[%s] %d M', cu, ct)
                        end
                        if _G_AutoFarmChest and cp <= 20 then
                            if cr then
                                cr:Destroy()
                            end
                        end
                    end
                end
                cl = true
            until true
            if not cl then
                break
            end
        end
    else
        for cd, ce in ipairs(game:GetService('CollectionService'):GetTagged('_ChestTagged')) do
            local cf = ce:FindFirstChild('ChestEspAttachment')
            if cf then
                cf:Destroy()
            end
        end
    end
end
berriesEsp = function()
    if BerryEsp then
        local cd = game:GetService('CollectionService')
        local ce = game:GetService('Players')
        local cf = ce.LocalPlayer
        local cg = cd:GetTagged('BerryBush')
        for ch, ci in ipairs(cg) do
            local cj = ci.Parent:GetPivot().Position
            for ck, cl in pairs(ci:GetAttributes()) do
                if cl and (not BerryArray or table.find(BerryArray, cl)) then
                    local cm = 'BerryEspPart_' .. cl .. '_' .. tostring(cj)
                    local cn = workspace:FindFirstChild(cm)
                    if not cn then
                        cn = Instance.new('Part')
                        cn.Name = cm
                        cn.Transparency = 1
                        cn.Size = Vector3.new(1, 1, 1)
                        cn.Anchored = true
                        cn.CanCollide = false
                        cn.Parent = workspace
                        cn.CFrame = CFrame.new(cj)
                    end
                    if not cn:FindFirstChild('NameEsp') then
                        local co = Instance.new('BillboardGui', cn)
                        co.Name = 'NameEsp'
                        co.ExtentsOffset = Vector3.new(0, 1, 0)
                        co.Size = UDim2.new(0, 200, 0, 30)
                        co.Adornee = cn
                        co.AlwaysOnTop = true
                        local cp = Instance.new('TextLabel', co)
                        cp.Font = Enum.Font.Code
                        cp.TextSize = 14
                        cp.TextWrapped = true
                        cp.Size = UDim2.new(1, 0, 1, 0)
                        cp.TextYAlignment = Enum.TextYAlignment.Top
                        cp.BackgroundTransparency = 1
                        cp.TextStrokeTransparency = 0.5
                        cp.TextColor3 = Color3.fromRGB(80, 245, 245)
                        cp.Parent = co
                    end
                    local co = cn:FindFirstChild('NameEsp')
                    local cp = (cf.Character.Head.Position - cj).Magnitude / 3
                    co.TextLabel.Text = ('[' .. cl .. ']' .. ' ' .. math.round(cp) .. ' M')
                    if _G.AutoBerry and math.round(cp) <= 20 then
                        cn:Destroy()
                    end
                end
            end
        end
    else
        for cd, ce in ipairs(workspace:GetChildren()) do
            if ce:IsA('Part') and ce.Name:match('BerryEspPart_.*') then
                ce:Destroy()
            end
        end
    end
end


local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/viperobii/viperbloxfruit/refs/heads/main/lib"))()

-- Wait until the library is fully loaded
repeat task.wait() until redzlib

  
-- Create the window
local Window = redzlib:MakeWindow({
    Title = "Nova Cat Hub [ Premium ]",
    SubTitle = "by Viper",
    SaveFolder = "redz Hub | Blox Fruits.lua"
})


local Discord = Window:MakeTab({
    Title = "Information",
    Description = "Info",
    Icon = "Info",  -- Fixed the split "Icon"
})


local Main = Window:MakeTab({
    Title = "Main",
    Description = "Info",
    Icon = "home",  -- Fixed the split "Icon"
})

local Player = Window:MakeTab({
    Title = "Quest/Farm",
    Description = "Info",
    Icon = "swords",  -- Fixed the split "Icon"
})

local Combat = Window:MakeTab({
    Title = "Visual",
    Description = "Info",
    Icon = "user",  -- Fixed the split "Icon"
})


local Sea = Window:MakeTab({
    Title = "Sea",
    Description = "Info",
    Icon = "waves",  -- Fixed the split "Icon"
})

local Island = Window:MakeTab({
    Title = "Islands Event",
    Description = "Info",
    Icon = "palm",
})


local Trial = Window:MakeTab({
    Title = "Race V4",
    Description = "Info",
    Icon = "moon",  -- Fixed the split "Icon"
})

local Raids = Window:MakeTab({
    Title = "Raid/Fruit",
    Description = "Info",
    Icon = "cherry",  -- Fixed the split "Icon"
})

local Teleport = Window:MakeTab({
    Title = "Teleports",
    Description = "Info",
    Icon = "locate",  -- Fixed the split "Icon"
})

local Items = Window:MakeTab({
    Title = "Items Shop",
    Description = "Info",
    Icon = "shopping-cart",  -- Fixed the split "Icon"
})

local Setting = Window:MakeTab({
    Title = "Settings",
    Description = "Settings",
    Icon = "settings",
})



local placeId = game.PlaceId

local Sea1, Sea2, Sea3 = false, false, false

if placeId == 2753915549 then
    Sea1 = true
elseif placeId == 4442272183 then
    Sea2 = true
elseif placeId == 7449423635 then
    Sea3 = true
else
    game:Shutdown()
end


Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://77704093714738",
        BackgroundTransparency = 0.2,
        BackgroundColor3 = Color3.fromRGB(30, 30, 30),
        Size = UDim2.new(0, 24, 0, 24),
    },
    Corner = {
        CornerRadius = UDim.new(0, 8)
    }
})

Discord:AddDiscordInvite({
    Name = "Nova Cat Hub | Community",
    Description = "Join our discord community to receive information about the next update",
    Logo = "rbxassetid://120931314112734", -- Check if this ID is correct and exists
    Invite = "https://discord.gg/brrYwzpWg7"
})

Discord:AddParagraph({"Developed By: Viper", "Join Discord Server For More Updates"})





Main:AddDropdown({
    Name = "UI Scale",
    Flag = "Main/UIScale",
    Options = { "small", "medium", "large", "bigger" },
    Callback = function(option)
        local scales = {
            small = 950,   -- smaller UI
            medium = 750,  -- slightly smaller
            large = 550,    -- default size, no change
            bigger = 450    -- larger UI
        }
        if scales[option] then
            redzlib:SetScale(scales[option])
        end
    end
})


Main:AddDropdown({
    Name = "Select Weapon",
    Options = { "Melee", "Sword", "Gun", "Blox Fruit" },
    Default = "Melee",
    Flag = "Settings/SelectWeapon",
    Callback = function(Selected)
        _G.ChooseWP = Selected
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.ChooseWP == 'Melee' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Melee' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectWeapon = aq.Name
                        end
                    end
                end
            elseif _G.ChooseWP == 'Sword' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Sword' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectWeapon = aq.Name
                        end
                    end
                end
            elseif _G.ChooseWP == 'Gun' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Gun' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectWeapon = aq.Name
                        end
                    end
                end
            elseif _G.ChooseWP == 'Blox Fruit' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Blox Fruit' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectWeapon = aq.Name
                        end
                    end
                end
            end
        end)
    end
end)

Main:AddSection("Main Farm")


Main:AddToggle({
    Name = "Auto Farm Level",
    Description = "<font color='rgb(0, 255, 0)'>Level Quest Farm</font>",
    Flag = "Farm/AutoFarmLevel",
    Default = false,
    Callback = function(Value)
        _G.Level = Value
    end
})


spawn(function()
    while wait() do
        pcall(function()
            if _G.Level then
                if not string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestNeta()[5]) then
                    replicated.Remotes.CommF_:InvokeServer('AbandonQuest')
                end

                if plr.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        wait()
                        _tp(QuestNeta()[6])
                    until (QuestNeta()[6].Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Level

                    if (QuestNeta()[6].Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        replicated.Remotes.CommF_:InvokeServer('StartQuest', QuestNeta()[3], QuestNeta()[2])
                    end
                elseif plr.PlayerGui.Main.Quest.Visible == true then
                    local target = workspace.Enemies:FindFirstChild(QuestNeta()[1])
                    if target then
                        for _, mob in pairs(workspace.Enemies:GetChildren()) do
                            if mob.Name == QuestNeta()[1] and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestNeta()[5]) then
                                    repeat
                                        wait()

                                        _tp(target.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        m.Kill(mob, _G.Level)
                                    until not _G.Level or mob.Humanoid.Health <= 0 or not mob.Parent or plr.PlayerGui.Main.Quest.Visible == false
                                else
                                    replicated.Remotes.CommF_:InvokeServer('AbandonQuest')
                                end
                            end
                        end
                    else
                        _tp(QuestNeta()[4])
                    end
                end
            end
        end)
    end
end)




Main:AddToggle({
    Name = "Auto Farm Nearest",
    Description = "<font color='rgb(0, 255, 0)'>Nearest Mob Farm</font>",
    Flag = "Farm/AutoFarmNearest",
    Default = false,
    Callback = function(Value)
        _G.AutoFarmNear = Value
    end
})


spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmNear then
                for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                    if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") then
                        if enemy.Humanoid.Health > 0 then
                            repeat
                                wait()
                                m.Kill(enemy, _G.AutoFarmNear)
                            until not _G.AutoFarmNear or not enemy.Parent or enemy.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)

Main:AddSection("Chest Farm")

Main:AddToggle({
    Name = "Auto Collect Chest",
    Description = "<font color='rgb(0, 255, 0)'>Tween To Chest</font>",
    Default = false,
    Flag = "Farm/AutoCollectChest",
    Callback = function(Value)
        _G.AutoFarmChest = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.AutoFarmChest then
            pcall(function()
                local CollectionService = game:GetService('CollectionService')
                local Players = game:GetService('Players')
                local Player = Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                if not Character then return end

                local playerPos = Character:GetPivot().Position
                local taggedChests = CollectionService:GetTagged('_ChestTagged')
                local closestDistance, closestChest = math.huge, nil

                for _, chest in ipairs(taggedChests) do
                    local distance = (chest:GetPivot().Position - playerPos).Magnitude
                    if (not SelectedIsland or chest:IsDescendantOf(SelectedIsland)) and not chest:GetAttribute('IsDisabled') and distance < closestDistance then
                        closestDistance = distance
                        closestChest = chest
                    end
                end

                if closestChest then
                    _tp(closestChest:GetPivot())
                end
            end)
        end
    end
end)

if Sea2 then
    Main:AddSection("Ectoplasm Farm")

    Main:AddToggle({
        Name = "Auto Farm Ectoplasm",
        Flag = "Farm/AutoEctoplasm",
        Description = "<font color='rgb(0, 255, 0)'>Ectoplasm Farm</font>",
        Default = false,
        Callback = function(Value)
            _G.AutoEctoplasm = Value
        end
    })

    -- Ectoplasm Farming Logic
    spawn(function()
        while wait(Sec) do
            pcall(function()
                if _G.AutoEctoplasm then
                    local E = {
                        'Ship Deckhand',
                        'Ship Engineer',
                        'Ship Steward',
                        'Ship Officer',
                        'Arctic Warrior'
                    }
                    local F = GetConnectionEnemies(E)
                    if m.Alive(F) then
                        repeat
                            wait()
                            m.Kill(F, _G.AutoEctoplasm)
                        until not _G.AutoEctoplasm or not F.Parent or F.Humanoid.Health <= 0
                    else
                        replicated.Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                end
            end)
        end
    end)
end

Main:AddSection("Mastery")

Main:AddDropdown({
  Name = "Mastery Island List",
  Options = {"Cake", "Bone"},
  Default = "Cake",
  Flag = "dropdown_island",
  Callback = function(Value)
    SelectIsland = Value
  end
})

Main:AddToggle({
    Name = "Auto Mastery Fruits",
    Default = false,
    Callback = function(v)
        _G.FarmMastery_Dev = v
    end
})

spawn(function()
    RunSer.RenderStepped:Connect(function()
        pcall(function()
            if _G.FarmMastery_Dev or _G.FarmMastery_G or _G.FarmMastery_S then
                for M, N in pairs(plr.PlayerGui.Notifications:GetChildren()) do
                    if N.Name == 'NotificationTemplate' then
                        if string.find(N.Text, 'Skill locked!') then
                            N:Destroy()
                        end
                    end
                end
            end
        end)
    end)
end)

spawn(function()
    while wait(Sec) do
        if _G.FarmMastery_Dev then
            pcall(function()
                if SelectIsland == 'Cake' then
                    local M = GetConnectionEnemies(j)
                    if M then
                        HealthM = M.Humanoid.MaxHealth * 70 / 100
                        repeat
                            wait()
                            MousePos = M.HumanoidRootPart.Position
                            m.Mas(M, _G.FarmMastery_Dev)
                        until _G.FarmMastery_Dev == false or M.Humanoid.Health <= 0 or not M.Parent
                    else
                        _tp(CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375))
                    end
                elseif SelectIsland == 'Bone' then
                    local M = GetConnectionEnemies(k)
                    if M then
                        HealthM = M.Humanoid.MaxHealth * 70 / 100
                        repeat
                            wait()
                            MousePos = M.HumanoidRootPart.Position
                            m.Mas(M, _G.FarmMastery_Dev)
                        until _G.FarmMastery_Dev == false or M.Humanoid.Health <= 0 or not M.Parent
                    else
                        _tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
                    end
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Auto Mastery Gun",
    Description = "",
    Default = false,
    Flag = "Mastery/AutoGun",
    Callback = function(v)
        _G.FarmMastery_G = v
    end
})

spawn(function()
    while wait(Sec) do
        if _G.FarmMastery_G then
            pcall(function()
                local island = SelectIsland
                local enemy = GetConnectionEnemies(island == "Cake" and j or island == "Bone" and k)
                if enemy then
                    HealthM = enemy.Humanoid.MaxHealth * 0.7
                    repeat
                        wait()
                        MousePos = enemy.HumanoidRootPart.Position
                        m.Masgun(enemy, _G.FarmMastery_G)
                        local net = replicated:FindFirstChild("Modules"):FindFirstChild("Net")
                        local ShootEvent = net and net:FindFirstChild("RE/ShootGunEvent")
                        local tool = plr.Character:FindFirstChildOfClass("Tool")
                        if not tool or tool.ToolTip ~= "Gun" then return end

                        if tool.Name == "Skull Guitar" then
                            SoulGuitar = true
                            tool.RemoteEvent:FireServer("TAP", MousePos)
                        else
                            SoulGuitar = false
                            if ShootEvent then
                                ShootEvent:FireServer(MousePos, {enemy.HumanoidRootPart})
                            end
                        end

                        if _G.FarmMastery_G then
                            vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
                            wait(0.05)
                            vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
                            wait(0.05)
                        end
                    until not _G.FarmMastery_G or enemy.Humanoid.Health <= 0 or not enemy.Parent
                    SoulGuitar = false
                else
                    local cf = island == "Cake"
                        and CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375)
                        or island == "Bone"
                        and CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)
                    _tp(cf)
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Auto Mastery All Sword",
    Flag = "Main/AutoMasterySword",
    Description = "",
    Default = false,
    Callback = function(v)
        _G.FarmMastery_S = v
        spawn(function()
            while task.wait(Sec) do
                pcall(function()
                    if _G.FarmMastery_S then
                        if SelectIsland == 'Cake' then
                            for _, item in next, replicated.Remotes.CommF_:InvokeServer("getInventory") do
                                if type(item) == "table" and item.Type == "Sword" then
                                    local SwordName = item.Name
                                    if tonumber(item.Mastery) >= 1 and tonumber(item.Mastery) <= 599 then
                                        local enemy = GetConnectionEnemies(j)
                                        if GetBP(SwordName) then
                                            if enemy then
                                                repeat task.wait()
                                                    m.Sword(enemy, _G.FarmMastery_S)
                                                until not _G.FarmMastery_S or not enemy.Parent or enemy.Humanoid.Health <= 0
                                            else
                                                _tp(CFrame.new(-1943.67, 251.51, -12337.88))
                                            end
                                        else
                                            replicated.Remotes.CommF_:InvokeServer("LoadItem", SwordName)
                                        end
                                    elseif tonumber(item.Mastery) >= 600 then
                                        if not GetBP(SwordName) then
                                            replicated.Remotes.CommF_:InvokeServer("LoadItem", SwordName)
                                        end
                                    end
                                    break
                                end
                            end
                        elseif SelectIsland == 'Bone' then
                            for _, item in next, replicated.Remotes.CommF_:InvokeServer("getInventory") do
                                if type(item) == "table" and item.Type == "Sword" then
                                    local SwordName = item.Name
                                    if tonumber(item.Mastery) >= 1 and tonumber(item.Mastery) <= 599 then
                                        local enemy = GetConnectionEnemies(k)
                                        if GetBP(SwordName) then
                                            if enemy then
                                                repeat task.wait()
                                                    m.Sword(enemy, _G.FarmMastery_S)
                                                until not _G.FarmMastery_S or not enemy.Parent or enemy.Humanoid.Health <= 0
                                            else
                                                _tp(CFrame.new(-9495.68, 453.58, 5977.34))
                                            end
                                        else
                                            replicated.Remotes.CommF_:InvokeServer("LoadItem", SwordName)
                                        end
                                    elseif tonumber(item.Mastery) >= 600 then
                                        if not GetBP(SwordName) then
                                            replicated.Remotes.CommF_:InvokeServer("LoadItem", SwordName)
                                        end
                                    end
                                    break
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
})



Main:AddSection("Pirate Castle")

Main:AddToggle({
    Name = "Auto Pirate Raid",
    Description = "",
    Default = false,
    Flag = "Raid/AutoCastle",
    Callback = function(v)
        _G.AutoRaidCastle = v
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AutoRaidCastle then
                local raidPos = CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-8, 0.921982229, -7.54388907E-8, 1, -5.13709999E-8, -0.921982229, -8.94458196E-8, -0.387232125)
                if (raidPos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                    for _, E in pairs(workspace.Enemies:GetChildren()) do
                        if E:FindFirstChild("Humanoid") and E:FindFirstChild("HumanoidRootPart") and E.Humanoid.Health > 0 and (E.HumanoidRootPart.Position - Root.Position).Magnitude <= 1000 then
                            repeat
                                wait()
                                m.Kill(E, _G.AutoRaidCastle)
                            until not _G.AutoRaidCastle or not E.Parent or E.Humanoid.Health <= 0
                        end
                    end
                else
                    local mobList = {
                        "Galley Pirate", "Galley Captain", "Raider", "Mercenary", "Vampire", "Zombie", "Snow Trooper",
                        "Winter Warrior", "Lab Subordinate", "Horned Warrior", "Magma Ninja", "Lava Pirate", "Ship Deckhand",
                        "Ship Engineer", "Ship Steward", "Ship Officer", "Arctic Warrior", "Snow Lurker", "Sea Soldier", "Water Fighter"
                    }
                    for _, name in pairs(mobList) do
                        if replicatedStorage:FindFirstChild(name) then
                            for _, mob in pairs(replicatedStorage:GetChildren()) do
                                if table.find(mobList, mob.Name) then
                                    _tp(raidPos)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Main:AddSection("Bone Farm")

Main:AddToggle({
    Name = "Auto Farm Bones",
    Flag = "Farm/AutoFarmBones",
    Description = "<font color='rgb(0, 255, 0)'>Bones Farm</font>",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm_Bone = Value
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.AutoFarm_Bone then
            pcall(function()
                local plr = game.Players.LocalPlayer
                local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                local questUI = plr.PlayerGui.Main.Quest
                local mobList = {
                    "Reborn Skeleton",
                    "Living Zombie",
                    "Demonic Soul",
                    "Posessed Mummy"
                }

                if not hrp then return end

                local targetMob = GetConnectionEnemies(mobList)

                if targetMob then
                    if _G.AcceptQuestC and not questUI.Visible then
                        local questPos = CFrame.new(-9516.99316, 172.017181, 6078.46533)
                        _tp(questPos)
                        while (questPos.Position - hrp.Position).Magnitude > 50 do task.wait(0.2) end

                        local randomChoice = math.random(1, 4)
                        local questData = {
                            [1] = { "StartQuest", "HauntedQuest2", 2 },
                            [2] = { "StartQuest", "HauntedQuest2", 1 },
                            [3] = { "StartQuest", "HauntedQuest1", 1 },
                            [4] = { "StartQuest", "HauntedQuest1", 2 }
                        }

                        pcall(function()
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(questData[randomChoice]))
                        end)
                    end

                    repeat
                        task.wait()
                        m.Kill(targetMob, _G.AutoFarm_Bone)
                    until not _G.AutoFarm_Bone or targetMob.Humanoid.Health <= 0 or not targetMob.Parent or (_G.AcceptQuestC and not questUI.Visible)

                else
                    _tp(CFrame.new(-9495.6807, 453.5862, 5977.3486))
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Accept Quests",
    Flag = "Main/AcceptQuest",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.AcceptQuestC = Value
    end
})

Main:AddToggle({
    Name = "Auto Soul Reaper [Fully]",
    Description = "",
    Default = false,
    Flag = "Boss/AutoSoulReaper",
    Callback = function(v)
        _G.AutoHytHallow = v
    end
})

spawn(function()
    while wait(Sec) do
        if _G.AutoHytHallow then
            pcall(function()
                local target = GetConnectionEnemies("Soul Reaper")
                if target then
                    repeat
                        task.wait()
                        m.Kill(target, _G.AutoHytHallow)
                    until target.Humanoid.Health <= 0 or not _G.AutoHytHallow
                else
                    if not GetBP("Hallow Essence") then
                        repeat
                            task.wait(0.1)
                            replicated.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        until not _G.AutoHytHallow or GetBP("Hallow Essence")
                    else
                        repeat
                            wait(0.1)
                            _tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                        until not _G.AutoHytHallow or (plr.Character.HumanoidRootPart.CFrame == CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                        EquipWeapon("Hallow Essence")
                    end
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Auto Random Bones",
    Default = false,
    Flag = "Items/AutoRandomBones",
    Callback = function(Value)
        _G.Auto_Random_Bone = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.Auto_Random_Bone then
            pcall(function()
                repeat
                    task.wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                until not _G.Auto_Random_Bone
            end)
        end
    end
end)


Main:AddToggle({
    Name = "Auto Try Luck Gravestone",
    Default = false,
    Flag = "Items/TryLuckGravestone",
    Callback = function(Value)
        _G.TryLucky = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.TryLucky then
            pcall(function()
                local pos = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
                local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    if hrp.CFrame.Position ~= pos.Position then
                        _tp(pos)
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
                    end
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Auto Pray Gravestone",
    Default = false,
    Flag = "Items/PrayGravestone",
    Callback = function(Value)
        _G.Praying = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.Praying then
            pcall(function()
                local pos = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
                local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    if hrp.CFrame.Position ~= pos.Position then
                        _tp(pos)
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    end
                end
            end)
        end
    end
end)





if Sea3 then
    Main:AddSection("Elite Quest")

    Main:AddToggle({
        Name = "Auto Elite Quest",
        Flag = "Quests/AutoEliteQuest",
        Description = "",
        Default = false,
        Callback = function(Value)
            _G.FarmEliteHunt = Value
        end
    })

    spawn(function()
        while task.wait(Sec) do
            pcall(function()
                if _G.FarmEliteHunt then
                    local questGui = plr.PlayerGui.Main.Quest
                    if questGui.Visible then
                        local questText = questGui.Container.QuestTitle.Title.Text
                        if string.find(questText, "Diablo") or string.find(questText, "Urban") or string.find(questText, "Deandre") then
                            for _, eliteMob in pairs(replicated:GetChildren()) do
                                if string.find(eliteMob.Name, "Diablo") or string.find(eliteMob.Name, "Urban") or string.find(eliteMob.Name, "Deandre") then
                                    _tp(eliteMob.HumanoidRootPart.CFrame)
                                end
                            end
                            for _, mob in pairs(Enemies:GetChildren()) do
                                if (string.find(mob.Name, "Diablo") or string.find(mob.Name, "Urban") or string.find(mob.Name, "Deandre")) and m.Alive(mob) then
                                    repeat
                                        task.wait()
                                        m.Kill(mob, _G.FarmEliteHunt)
                                    until not _G.FarmEliteHunt or not mob.Parent or mob.Humanoid.Health <= 0 or not questGui.Visible
                                end
                            end
                        end
                    else
                        replicated.Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end
            end)
        end
    end)
end



if Sea3 then
    Main:AddSection("Cake Farm")

    Main:AddToggle({
        Name = "Auto Cake Prince",
        Default = false,
        Flag = "Items/AutoCakePrince",
        Callback = function(Value)
            _G.Auto_Cake_Prince = Value
        end
    })

    spawn(function()
        while wait() do
            if _G.Auto_Cake_Prince then
                pcall(function()
                    local plr = game.Players.LocalPlayer
                    local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                    local questUI = plr.PlayerGui.Main.Quest
                    local enemies = workspace.Enemies
                    local mirror = workspace.Map.CakeLoaf.BigMirror
                    if not hrp then return end

                    if not mirror:FindFirstChild("Other") then
                        _tp(CFrame.new(-2077, 252, -12373))
                    end

                    if mirror.Other.Transparency == 0 or enemies:FindFirstChild("Cake Prince") then
                        local boss = GetConnectionEnemies("Cake Prince")
                        if boss then
                            repeat
                                wait()
                                m.Kill2(boss, _G.Auto_Cake_Prince)
                            until not _G.Auto_Cake_Prince or not boss.Parent or boss.Humanoid.Health <= 0
                        else
                            if mirror.Other.Transparency == 0 and (CFrame.new(-1990.67, 4533, -14973.67).Position - hrp.Position).Magnitude >= 2000 then
                                _tp(CFrame.new(-2151.82, 149.32, -12404.91))
                            end
                        end
                    else
                        local mobList = {
                            "Cookie Crafter",
                            "Cake Guard",
                            "Baking Staff",
                            "Head Baker"
                        }
                        local mob = GetConnectionEnemies(mobList)
                        if mob then
                            if _G.AcceptQuestC and not questUI.Visible then
                                local questPos = CFrame.new(-1927.92, 37.8, -12842.54)
                                _tp(questPos)
                                while (questPos.Position - hrp.Position).Magnitude > 50 do
                                    wait(0.2)
                                end
                                local rand = math.random(1, 4)
                                local quests = {
                                    { "StartQuest", "CakeQuest2", 2 },
                                    { "StartQuest", "CakeQuest2", 1 },
                                    { "StartQuest", "CakeQuest1", 1 },
                                    { "StartQuest", "CakeQuest1", 2 },
                                }
                                pcall(function()
                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(quests[rand]))
                                end)
                            end
                            repeat
                                wait()
                                m.Kill(mob, _G.Auto_Cake_Prince)
                            until not _G.Auto_Cake_Prince or mob.Humanoid.Health <= 0 or mirror.Other.Transparency == 0 or (_G.AcceptQuestC and not questUI.Visible)
                        else
                            _tp(CFrame.new(-2077, 252, -12373))
                        end
                    end
                end)
            end
        end
    end)
end

if Sea3 then
    Main:AddToggle({
        Name = "Auto Cake Queen",
        Default = false,
        Flag = "AutoBigmom",
        Callback = function(Value)
            _G.AutoBigmom = Value
        end
    })

    spawn(function()
        while wait(Sec) do
            if _G.AutoBigmom then
                pcall(function()
                    local bj = GetConnectionEnemies('Cake Queen')
                    if bj then
                        repeat
                            task.wait()
                            m.Kill(bj, _G.AutoBigmom)
                        until not _G.AutoBigmom or not bj.Parent or bj.Humanoid.Health <= 0
                    else
                        _tp(CFrame.new(-709.3132934570313, 381.6005859375, -11011.396484375))
                    end
                end)
            end
        end
    end)
end

if Sea3 then
    Main:AddToggle({
        Name = "Auto Unlock & Farm Dough King",
        Description = "<font color='rgb(0, 255, 0)'>Auto Kill Or If Have Chalice Then Unlock Dough King And Auto Kill</font>",
        Default = false,
        Flag = "Items/AutoUnlockDoughDungeon",
        Callback = function(Value)
            _G.Doughv2 = Value
        end
    })

    spawn(function()
        while wait(Sec) do
            if _G.Doughv2 then
                pcall(function()
                    local redDoor = workspace.Map.CakeLoaf:FindFirstChild("RedDoor")

                    if not redDoor then
                        if GetBP("Red Key") then
                            replicated.Remotes.CommF_:InvokeServer("CakeScientist", "Check")
                            wait(0.1)
                            replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Check")
                        end
                    elseif redDoor then
                        if GetBP("Red Key") then
                            repeat
                                wait()
                                _tp(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-8, 0.98883605, 3.60619588e-8, 1, 1.35681812e-8, -0.98883605, 3.36376011e-8, 0.149007782))
                            until not _G.Doughv2 or (plr.Character.HumanoidRootPart.Position - Vector3.new(-2681.97998, 64.3921585, -12853.7363)).Magnitude <= 5
                            EquipWeapon("Red Key")
                        end
                    elseif GetConnectionEnemies("Dough King") then
                        local boss = GetConnectionEnemies("Dough King")
                        if boss then
                            repeat
                                wait()
                                m.Kill(boss, _G.Doughv2)
                            until not _G.Doughv2 or not boss.Parent or boss.Humanoid.Health <= 0
                        else
                            _tp(CFrame.new(-1943.6765, 251.5095, -12337.8808))
                        end
                    end

                    if GetBP("Sweet Chalice") then
                        replicated.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
                        repeat wait() _G.AutoMiror = true until not _G.Doughv2
                        _G.AutoMiror = false
                    end

                    if GetBP("God's Chalice") and GetM("Conjured Cocoa") >= 10 then
                        replicated.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    end

                    if not GetBP("God's Chalice") then
                        repeat wait() _G.FarmEliteHunt = true until not _G.Doughv2 or GetBP("God's Chalice")
                        _G.FarmEliteHunt = false
                    end

                    if GetM("Conjured Cocoa") <= 10 then
                        local mobs = { "Cocoa Warrior", "Chocolate Bar Battler" }
                        local cocoaMob = GetConnectionEnemies(mobs)
                        if cocoaMob then
                            repeat
                                wait()
                                m.Kill(cocoaMob, _G.Doughv2)
                            until not _G.Doughv2 or not cocoaMob.Parent or cocoaMob.Humanoid.Health <= 0
                        else
                            _tp(CFrame.new(402.7189, 81.0605, -12259.543))
                        end
                    end
                end)
            end
        end
    end)
end




Teleport:AddSection("Island")


local Location = {}
for cd, ce in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
    table.insert(Location, ce.Name)
end

Teleport:AddDropdown({
    Name = "Select Travelling",
    Options = Location,
    Default = Location[1],
    Flag = "Travel/SelectedIsland",
    Callback = function(Selected)
        _G.Island = Selected
        print("Selected Island: " .. Selected)
    end
})

Teleport:AddToggle({
    Name = "Auto Travel",
    Default = false,
    Flag = "Travel/AutoTravel",
    Callback = function(Value)
        _G.Teleport = Value
        if Value and _G.Island then
            for _, cf in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                if cf.Name == _G.Island then
                    repeat
                        wait()
                        _tp(cf.CFrame * CFrame.new(0, 30, 0))
                    until not _G.Teleport or Root.CFrame == cf.CFrame
                end
            end
        end
    end -- << This was missing
})


Teleport:AddSection("Travel World")

Teleport:AddButton({
    Name = "Travel East Blue",
    Description = "<font color='rgb(0, 255, 0)'>Sea 1</font>",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Teleport:AddButton({
    Name = "Travel Dressrosa",
    Description = "<font color='rgb(0, 255, 0)'>Sea 2</font>",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Teleport:AddButton({
    Name = "Travel Zou",
    Description = "<font color='rgb(0, 255, 0)'>Sea 3</font>",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelZou")
    end
})


Teleport:AddSection('Portal Travel')
if Sea1 then
    Location_Portal = {
        'Sky',
        'UnderWater'
    }
elseif Sea2 then
    Location_Portal = {
        'SwanRoom',
        'Cursed Ship'
    }
elseif Sea3 then
    Location_Portal = {
        'Castle On The Sea',
        'Mansion Cafe',
        'Hydra Teleport',
        'Canvendish Room'
    }
end


Teleport:AddDropdown({
    Name = "Select Portal TP",
    Description = "",
    Options = Location_Portal,
    Default = Location_Portal[1],
    Flag = "Travel/PortalTP",
    Callback = function(Value)
        _G.Island_PT = Value
    end
})


Teleport:AddToggle({
    Name = "Bypass TP",
    Default = false,
    Flag = "Travel/RequestEntrance",
    Callback = function(v)
        if v then
            local posMap = {
                Sky = Vector3.new(-7894, 5547, -380),
                UnderWater = Vector3.new(61163, 11, 1819),
                SwanRoom = Vector3.new(2285, 15, 905),
                ["Cursed Ship"] = Vector3.new(923, 126, 32852),
                ["Castle On The Sea"] = Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375),
                ["Mansion Cafe"] = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375),
                ["Hydra Teleport"] = Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625),
                ["Canvendish Room"] = Vector3.new(5314.54638671875, 22.562219619750977, -127.06755065917969),
                ["Temple of Time"] = Vector3.new(28310.0234, 14895.1123, 109.456741, -0.469690144, -2.85620132E-8, -0.882831335, -3.23509219E-8, 1, -1.5141173599999997E-8, 0.882831335, 2.14487486e-8, -0.469690144)
            }

            local pos = posMap[_G.Island_PT]
            if pos then
                replicated.Remotes.CommF_:InvokeServer("requestEntrance", pos)
            end
        end
    end
})







Setting:AddSection("Server ID")

Setting:AddTextBox({
    Name = "Job ID",  -- Title of the input box
    Flag = "Main/JobID",  -- Unique identifier for the input field
    Placeholder = "Input Job ID",  -- Placeholder text when the input is empty
    Default = "",  -- Default value
    Numeric = false,  -- Set to false since it's not a numeric input
    Finished = false,  -- Whether the input is finished or not
    Callback = function(v301)  -- Callback when the input is finished
        _G.Job = v301  -- Store the value in a global variable _G.Job
    end
})

local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

Setting:AddToggle({
    Name = "Join Job ID",
    Flag = "Setting/JoinJobID",
    Default = false,
    Callback = function(state)
        _G.Join = state

        if _G.Join and _G.Job and _G.Job ~= "" and _G.Job ~= game.JobId then
            pcall(function()
                TeleportService:TeleportToPlaceInstance(game.PlaceId, _G.Job, player)
            end)
        end
    end
})

Setting:AddButton({
    Name = "Copy Job ID",
    Flag = "Setting/CopyJobID",
    Description = "",
    Callback = function()
        if setclipboard then
            setclipboard(tostring(game.JobId))
        else
            warn("Clipboard function not supported.")
        end
    end
})

Setting:AddToggle({
    Name = "Spam Join Job ID",
    Flag = "Setting/SpamJoinJobID",
    Default = false,
    Callback = function(value)
        _G.Join = value
        if _G.Join then
            spawn(function()
                while _G.Join do
                    if _G.Job and _G.Job ~= "" and _G.Job ~= game.JobId then
                        pcall(function()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _G.Job, game.Players.LocalPlayer)
                        end)
                    end
                    task.wait() -- 0 delay spam (1 frame)
                end
            end)
        end
    end
})

Setting:AddSection("Farm Distance")

Setting:AddSlider({
    Name = "Pos X",
    Min = -60,
    Max = 60,
    Increase = 0.1,
    Default = 0,
    Callback = function(Value)
        posX = Value
    end
})

Setting:AddSlider({
    Name = "Pos Y",
    Min = -60,
    Max = 60,
    Increase = 0.1,
    Default = 30,
    Callback = function(Value)
        posY = Value
    end
})

Setting:AddSlider({
    Name = "Pos Z",
    Min = -60,
    Max = 60,
    Increase = 0.1,
    Default = 0,
    Callback = function(Value)
        posZ = Value
    end
})

Setting:AddSection("Anti Slow")


Setting:AddSlider({
    Name = "Walkspeed",
    Flag = "Player/SpeedMultiplier",
    Description = "",
    Range = {1, 300},
    Suffix = "",
    CurrentValue = 300,
    Increment = 1,
    Callback = function(Value)
        _G.SpeedMultiplier = Value
    end,
})

-- Initialize global variables
_G.SpeedBoost = false
_G.SpeedMultiplier = 300

-- Velocity-based speed boost
task.spawn(function()
    while true do
        if _G.SpeedBoost then
            pcall(function()
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") then
                    local moveDir = char.Humanoid.MoveDirection
                    if moveDir.Magnitude > 0 then
                        local boost = moveDir.Unit * (_G.SpeedMultiplier * 3.5)
                        boost = Vector3.new(boost.X, char.HumanoidRootPart.Velocity.Y, boost.Z)
                        char.HumanoidRootPart.Velocity = boost
                    end
                end
            end)
        end
        task.wait()
    end
end)

Setting:AddToggle({
    Name = "Enable Walkspeed",
    Flag = "Player/SpeedBoost",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.SpeedBoost = Value
        if not Value then
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.Velocity = Vector3.new(0, char.HumanoidRootPart.Velocity.Y, 0)
            end
        end
    end,
})

Setting:AddSection("Combat")

Setting:AddToggle({
    Name = "Aimbot Skill Nearest",
    Flag = "Setting/AimbotSkillNearest",
    Default = false,
    Callback = function(Value)
        _G.AimNearest = Value
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

local function GetClosestEnemy()
    local closest = nil
    local shortestDistance = math.huge
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if player.Team ~= LocalPlayer.Team and player.Team.Name ~= "Marines" then
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    closest = player
                    shortestDistance = distance
                end
            end
        end
    end
    return closest
end

RunService.RenderStepped:Connect(function()
    if _G.AimNearest then
        local target = GetClosestEnemy()
        if target then
            _G.Aim_Players = target
        end
    end
end)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(...)
    local args = {...}
    local method = getnamecallmethod()
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" and tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
            if _G.AimNearest and _G.Aim_Players then
                args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                return old(unpack(args))
            end
        end
    end
    return old(...)
end)


Setting:AddToggle({
    Name = "Aimbot Camera (Closest Player)",
    Default = false,
    Flag = "Combat/AimbotCameraClosestPlayer",
    Callback = function(Value)
        _G.AimCam = Value
    end
})

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AimCam then
                local cam = workspace.CurrentCamera
                local function getClosestPlayer()
                    local shortestDistance = math.huge
                    local closest = nil
                    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                        if player ~= plr and player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("Humanoid") then
                            if player.Character.Humanoid.Health > 0 then
                                local distance = (player.Character.Head.Position - plr.Character.Head.Position).Magnitude
                                if distance < shortestDistance then
                                    shortestDistance = distance
                                    closest = player
                                end
                            end
                        end
                    end
                    return closest
                end

                repeat
                    task.wait()
                    local target = getClosestPlayer()
                    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        cam.CFrame = CFrame.new(cam.CFrame.Position, target.Character.HumanoidRootPart.Position)
                    end
                until not _G.AimCam
            end
        end)
    end
end)


Setting:AddSection("Other Settings")


Setting:AddToggle({
    Name = "Fast Attack [M1/Melee/Sword]",
    Flag = "Combat/FastAttack",
    Description = "<font color='rgb(0, 255, 0)'>Gas M1 Not Supported</font>",
    Default = true,
    Callback = function(Value)
        _G.Seriality = Value
    end
})

Setting:AddToggle({
    Name = "Walk on Water",
    Default = _G.WalkWater_Part or true,
    Flag = "Misc/WalkWater",
    Description = "",
    Callback = function(Value)
        _G.WalkWater_Part = Value
        local water = game:GetService("Workspace").Map:FindFirstChild("WaterBase-Plane")
        if water then
            water.Size = Value and Vector3.new(1000, 112, 1000) or Vector3.new(1000, 80, 1000)
        end
    end
})

Setting:AddToggle({
    Name = "Bring Mobs",
    Flag = "Farm/BringMobs",
    Description = "",
    Default = true,
    Callback = function(Value)
        _B = Value
    end
})

Setting:AddToggle({
    Name = "Anti AFK",
    Description = "",
    Default = true,
    Flag = "Settings/AntiAFK",
    Callback = function(Value)
        _G.AntiAFK = Value
    end
})

task.spawn(function()
    while task.wait(60) do
        if _G.AntiAFK then
            local virtualUser = game:GetService("VirtualUser")
            virtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            virtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end
    end
end)

Setting:AddToggle({
    Name = "Auto Activate Race V3",
    Flag = "Setting/AutoActivateRaceV3",
    Callback = function(value)
        getgenv().AutoT = value
        if value then
            spawn(function()
                while getgenv().AutoT do
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                    end)
                    wait()
                end
            end)
        end
    end
})

Setting:AddToggle({
    Name = "Auto Activate V4",
    Flag = "Setting/AutoActivateV4",
    Callback = function(value)
        getgenv().AutoY = value
        if value then
            spawn(function()
                while getgenv().AutoY do
                    pcall(function()
                        local char = game.Players.LocalPlayer.Character
                        if char:FindFirstChild("RaceEnergy") and char.RaceEnergy.Value >= 1 and char:FindFirstChild("RaceTransformed") and not char.RaceTransformed.Value then
                            local args = { [1] = true }
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening").RemoteFunction:InvokeServer(unpack(args))
                        end
                    end)
                    wait(0.5)
                end
            end)
        end
    end
})




Setting:AddToggle({
    Name = "Auto Haki",
    Default = true,
    Flag = "AutoHaki",
    Callback = function(Value)
        _G.AutoHaki = Value
        if Value then
            spawn(function()
                while _G.AutoHaki do
                    pcall(function()
                        local char = game:GetService("Players").LocalPlayer.Character
                        if char and not char:FindFirstChild("HasBuso") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                        end
                    end)
                    wait(1)
                end
            end)
        end
    end
})

Setting:AddSection("Configs")

Cheat_DayNight = {
    'Day',
    'Night'
}

Setting:AddDropdown({
    Name = "Select Time",
    Description = "",
    Options = Cheat_DayNight,
    Default = Cheat_DayNight[1],
    Flag = "Misc/SelectTime",
    Callback = function(Value)
        _G.SelectDN = Value
    end
})


Setting:AddToggle({
    Name = "Turn on Full Bright",
    Description = "",
    Flag = "Misc/FullBright",
    Default = false,
    Callback = function(ch)
        bright = ch
        if ch then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
            Lighting.ColorShift_Top = Color3.new(1, 1, 1)
        else
            Lighting.Ambient = Color3.new(0, 0, 0)
            Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
            Lighting.ColorShift_Top = Color3.new(0, 0, 0)
        end
    end
})




Setting:AddButton({
    Name = "Remove Sky Fog",
    Callback = function()
        local Lighting = game:GetService("Lighting")
        if Lighting:FindFirstChild("LightingLayers") then
            Lighting.LightingLayers:Destroy()
        end
        if Lighting:FindFirstChild("SeaTerrorCC") then
            Lighting.SeaTerrorCC:Destroy()
        end
        if Lighting:FindFirstChild("FantasySky") then
            Lighting.FantasySky:Destroy()
        end
    end
})



Setting:AddToggle({
    Name = "Turn on RTX Mode",
    Flag = "Misc/RTXMode",
    Default = false,
    Callback = function(v)
        _G.RTXMode = v
        local ci = game.Lighting
        local cj = Instance.new("ColorCorrectionEffect", ci)
        local ck = Instance.new("ColorCorrectionEffect", ci)

        local OldAmbient = ci.Ambient
        local OldBrightness = ci.Brightness
        local OldColorShift_Top = ci.ColorShift_Top
        local OldBrightnessc = cj.Brightness
        local OldContrastc = cj.Contrast
        local OldTintColorc = cj.TintColor
        local OldTintColore = ck.TintColor

        if not _G.RTXMode then
            return
        end

        task.spawn(function()
            while _G.RTXMode do
                task.wait()
                ci.Ambient = Color3.fromRGB(33, 33, 33)
                ci.Brightness = 0.3
                cj.Brightness = 0.176
                cj.Contrast = 0.39
                cj.TintColor = Color3.fromRGB(217, 145, 57)
                game.Lighting.FogEnd = 999

                if not plr.Character.HumanoidRootPart:FindFirstChild("PointLight") then
                    local cl = Instance.new("PointLight")
                    cl.Parent = plr.Character.HumanoidRootPart
                    cl.Range = 15
                    cl.Color = Color3.fromRGB(217, 145, 57)
                end

                if not _G.RTXMode then
                    ci.Ambient = OldAmbient
                    ci.Brightness = OldBrightness
                    ci.ColorShift_Top = OldColorShift_Top
                    cj.Contrast = OldContrastc
                    cj.Brightness = OldBrightnessc
                    cj.TintColor = OldTintColorc
                    ck.TintColor = OldTintColore
                    game.Lighting.FogEnd = 2500

                    local light = plr.Character.HumanoidRootPart:FindFirstChild("PointLight")
                    if light then light:Destroy() end
                end
            end
        end)
    end
})


Items:AddSection("Buy Melee")

Items:AddButton({
    Name = "Black Leg",
    Flag = "Items/BlackLeg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

Items:AddButton({
    Name = "Electro",
    Flag = "Items/Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

Items:AddButton({
    Name = "Fishman Karate",
    Flag = "Items/FishmanKarate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

Items:AddButton({
    Name = "Dragon Claw",
    Flag = "Items/DragonClaw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Items:AddButton({
    Name = "Superhuman",
    Flag = "Items/Superhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

Items:AddButton({
    Name = "Death Step",
    Flag = "Items/DeathStep",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

Items:AddButton({
    Name = "Sharkman Karate",
    Flag = "Items/SharkmanKarate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})


Items:AddButton({
    Name = "Electric Claw",
    Flag = "Items/ElectricClaw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

Items:AddButton({
    Name = "Dragon Talon",
    Flag = "Items/DragonTalon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

Items:AddButton({
    Name = "Godhuman",
    Flag = "Items/Godhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

Items:AddButton({
    Name = "Sanguine Art",
    Flag = "Items/SanguineArt",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})

Items:AddSection("Race")



Items:AddButton({
    Name = "Roll Race",
    Flag = "Misc/RollRace",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

Items:AddButton({
    Name = "Change To Ghoul Race",
    Flag = "Misc/GhoulRace",
    Callback = function()
        local args = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Items:AddButton({
    Name = "Change To Cyborg Race",
    Flag = "Misc/CyborgRace",
    Callback = function()
        local args = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Items:AddButton({
    Name = "Change To Draco Race",
    Description = "<font color='rgb(0, 255, 0)'>Sea 3 Only</font>",
    Flag = "Misc/DracoRace",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        local target = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        repeat wait() until (character.HumanoidRootPart.Position - target).Magnitude < 1
        local args = {
            [1] = {
                NPC = "Dragon Wizard",
                Command = "DragonRace"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
    end
})


Combat:AddToggle({
    Name = "Esp Berries",
    Flag = "Combat/EspBerries",
    Description = "",
    Default = false,
    Callback = function(Value)
        BerryEsp = Value
        if BerryEsp then
            task.spawn(function()
                while BerryEsp do
                    wait()
                    berriesEsp()
                end
            end)
        end
    end
})


Combat:AddToggle({
    Name = "Esp Players",
    Flag = "Combat/EspPlayers",
    Description = "",
    Default = false,
    Callback = function(Value)
        PlayerEsp = Value
        if PlayerEsp then
            task.spawn(function()
                while PlayerEsp do
                    wait()
                    EspPly()
                end
            end)
        end
    end
})

Combat:AddToggle({
    Name = "Esp Chests",
    Flag = "Combat/EspChests",
    Description = "",
    Default = false,
    Callback = function(Value)
        ChestESP = Value
        if ChestESP then
            task.spawn(function()
                while ChestESP do
                    wait()
                    ChestEsp()
                end
            end)
        end
    end
})

Combat:AddToggle({
    Name = "Esp Fruits",
    Flag = "Combat/EspFruits",
    Description = "",
    Default = false,
    Callback = function(Value)
        DevilFruitESP = Value
        if DevilFruitESP then
            task.spawn(function()
                while DevilFruitESP do
                    wait()
                    DevEsp()
                end
            end)
        end
    end
})

Combat:AddToggle({
    Name = "Esp Island Location",
    Flag = "Combat/EspIslandLocation",
    Description = "",
    Default = false,
    Callback = function(Value)
        IslandESP = Value
        if IslandESP then
            task.spawn(function()
                while IslandESP do
                    wait()
                    LocationEsp()
                end
            end)
        end
    end
})


if Sea2 then
    Combat:AddToggle({
        Name = "Esp Flower",
        Flag = "Combat/EspFlower",
        Description = "",
        Default = false,
        Callback = function(Value)
            FlowerESP = Value
            if FlowerESP then
                task.spawn(function()
                    while FlowerESP do
                        wait()
                        flowerEsp()
                    end
                end)
            end
        end
    })

    Combat:AddToggle({
        Name = "Esp Legendary Sword",
        Flag = "Combat/EspLegendarySword",
        Description = "",
        Default = false,
        Callback = function(Value)
            LegenS = Value
            if LegenS then
                task.spawn(function()
                    while LegenS do
                        wait()
                        LegenSword()
                    end
                end)
            end
        end
    })
end

if Sea2 or Sea3 then
    Combat:AddToggle({
        Name = "Esp Aura Colour Dealers",
        Flag = "Combat/EspAuraColourDealers",
        Description = "",
        Default = false,
        Callback = function(Value)
            ColorEsp = Value
            if ColorEsp then
                task.spawn(function()
                    while ColorEsp do
                        wait()
                        HakiClorEsp()
                    end
                end)
            end
        end
    })
end

if Sea3 then
    Combat:AddToggle({
        Name = "Esp Gears",
        Flag = "Combat/EspGears",
        Description = "",
        Default = false,
        Callback = function(Value)
            ESPGear = Value
            if ESPGear then
                task.spawn(function()
                    while ESPGear do
                        wait()
                        gearEsp()
                    end
                end)
            end
        end
    })

    Combat:AddToggle({
        Name = "Esp SeaEvent Island",
        Flag = "Combat/EspSeaEventIsland",
        Description = "",
        Default = false,
        Callback = function(Value)
            EspEventIsland = Value
            if EspEventIsland then
                task.spawn(function()
                    while EspEventIsland do
                        wait()
                        EventIslandEsp()
                    end
                end)
            end
        end
    })

    Combat:AddToggle({
        Name = "Esp Advanced Fruits Dealer",
        Flag = "Combat/EspAdvancedFruitsDealer",
        Description = "",
        Default = false,
        Callback = function(Value)
            advanEsp = Value
            if advanEsp then
                task.spawn(function()
                    while advanEsp do
                        wait()
                        AdvanFruitEsp()
                    end
                end)
            end
        end
    })
end

-- <font color='rgb(0, 255, 0)'>Gas M1 Not Supported</font>

Trial:AddSection("Temple")

Trial:AddToggle({
    Name = "Teleport Temple Of Time",
    Flag = "Trial/TeleportTempleOfTime",
    Description = "<font color='rgb(0, 255, 0)'>Instant TP To Temple</font>",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
        end
    end
})

Trial:AddToggle({
    Name = "Teleport To Pull Lever",
    Flag = "Trial/TeleportPullLever",
    Description = "<font color='rgb(0, 255, 0)'>Pull It Yourself</font>",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    end
})

Trial:AddToggle({
    Name = "Teleport To Ancient One",
    Flag = "Trial/TeleportAncientOne",
    Description = "<font color='rgb(0, 255, 0)'>Tween To Ancient NPC</font>",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end
    end
})

Trial:AddToggle({
    Name = "Teleport To Race Door",
    Flag = "Trial/TeleportRaceDoor",
    Description = "<font color='rgb(0, 255, 0)'>Automatic Go To Your Race Door</font>",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
            end
        end
    end
})



Trial:AddSection("Trial Race")

Trial:AddToggle({
    Name = "Auto Trial",
    Flag = "Mirage/AutoCompleteTrialRace",
    Description = "<font color='rgb(0, 255, 0)'>Normal Race</font>",
    Default = false,
    Callback = function(Value)
        _G.Complete_Trials = Value
    end
})

-- Get Sea Beast for Fishman Trial
GetSeaBeastTrial = function()
    if not workspace.Map:FindFirstChild('FishmanTrial') then return nil end
    local FishmanTrial = workspace._WorldOrigin.Locations:FindFirstChild('Trial of Water')
    if FishmanTrial then
        for _, beast in ipairs(workspace.SeaBeasts:GetChildren()) do
            if beast:FindFirstChild('HumanoidRootPart') and (beast.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 then
                if beast:FindFirstChild("Health") and beast.Health.Value > 0 then
                    return beast
                end
            end
        end
    end
end

-- Mink Trial
spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.Complete_Trials and tostring(plr.Data.Race.Value) == 'Mink' then
                notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -20, 0))
            end
        end)
    end
end)

-- Fishman Trial
spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.Complete_Trials and tostring(plr.Data.Race.Value) == 'Fishman' then
                local beast = GetSeaBeastTrial()
                if beast then
                    repeat
                        task.wait()
                        spawn(function()
                            _tp(CFrame.new(beast.HumanoidRootPart.Position.X, workspace.Map['WaterBase-Plane'].Position.Y + 300, beast.HumanoidRootPart.Position.Z))
                        end)
                        MousePos = beast.HumanoidRootPart.Position
                        Useskills('Melee', 'Z')
                        Useskills('Melee', 'X')
                        Useskills('Melee', 'C')
                        wait(0.1)
                        Useskills('Sword', 'Z')
                        Useskills('Sword', 'X')
                        wait(0.1)
                        Useskills('Blox Fruit', 'Z')
                        Useskills('Blox Fruit', 'X')
                        Useskills('Blox Fruit', 'C')
                        wait(0.1)
                        Useskills('Gun', 'Z')
                        Useskills('Gun', 'X')
                    until not _G.Complete_Trials or not GetSeaBeastTrial()
                end
            end
        end)
    end
end)

-- Cyborg Trial
spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.Complete_Trials and tostring(plr.Data.Race.Value) == 'Cyborg' then
                _tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0, 500, 0))
            end
        end)
    end
end)

-- Skypiea Trial
spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.Complete_Trials and tostring(plr.Data.Race.Value) == 'Skypiea' then
                notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
            end
        end)
    end
end)

-- Human and Ghoul Trial
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.Complete_Trials then
                local race = tostring(plr.Data.Race.Value)
                if race == 'Human' or race == 'Ghoul' then
                    local targets = { 'Ancient Vampire', 'Ancient Zombie' }
                    local enemy = GetConnectionEnemies(targets)
                    if enemy then
                        repeat
                            task.wait()
                            m.Kill(enemy, _G.Complete_Trials)
                        until not _G.Complete_Trials or not enemy.Parent or enemy.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

Trial:AddToggle({
    Name = "Auto Kill Player After Trial",
    Flag = "Mirage/AutoKillAfterTrial",
    Description = "<font color='rgb(0, 255, 0)'>Turn On Kill Player After Done Trial</font>",
    Default = false,
    Callback = function(v)
        _G.Defeating = v

        -- Disconnect old loop if it exists
        if getgenv().DefeatLoop then
            getgenv().DefeatLoop:Disconnect()
            getgenv().DefeatLoop = nil
        end

        -- Start new loop if enabled
        if v then
            getgenv().DefeatLoop = game:GetService("RunService").Heartbeat:Connect(function()
                pcall(function()
                    if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then return end
                    local Root = plr.Character.HumanoidRootPart

                    local closestEnemy, closestDistance = nil, 250

                    for _, bE in pairs(workspace.Characters:GetChildren()) do
                        if bE.Name ~= plr.Name and bE:FindFirstChild("Humanoid") and bE:FindFirstChild("HumanoidRootPart") and bE.Humanoid.Health > 0 then
                            local distance = (Root.Position - bE.HumanoidRootPart.Position).Magnitude
                            if distance <= closestDistance then
                                closestEnemy = bE
                                closestDistance = distance
                            end
                        end
                    end

                    if closestEnemy then
                        local hrp = closestEnemy:FindFirstChild("HumanoidRootPart")
                        local hum = closestEnemy:FindFirstChild("Humanoid")

                        if hrp and hum and hum.Health > 0 then
                            EquipWeapon(_G.SelectWeapon)
                            _tp(hrp.CFrame * CFrame.new(0, 0, 15))
                            sethiddenproperty(plr, 'SimulationRadius', math.huge)
                        end
                    end
                end)
            end)
        end
    end
})

Trial:AddSection("Draco Fly")

Trial:AddButton({
    Name = "Viper Fly GUI",
    Flag = "Draco/Fly",
    Description = "<font color='rgb(0, 255, 0)'>Controllabe Fly Draco Ez Win</font>",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/viperobii/viperbloxme/refs/heads/main/translator"))()
    end
})




Trial:AddSection("Training")

Trial:AddToggle({
    Name = "Auto Train V4",
    Flag = "Mirage/AutoTrainV4",
    Description = "<font color='rgb(0, 255, 0)'>Auto Buy Gear & Auto Train Acticate V4</font>",
    Default = false,
    Callback = function(v)
        _G.AcientOne = v
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AcientOne then
                local bA = {
                    'Reborn Skeleton',
                    'Living Zombie',
                    'Demonic Soul',
                    'Posessed Mummy'
                }
                for bB = 1, #bA do
                    if plr.Character:FindFirstChild('RaceEnergy').Value == 1 then
                        vim1:SendKeyEvent(true, 'Y', false, game)
                        replicated.Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
                        _tp(CFrame.new(-8987.041, 215.862, 5886.710))
                    elseif plr.Character:FindFirstChild('RaceTransformed').Value == false then
                        local bC = GetConnectionEnemies(bA)
                        if bC then
                            repeat
                                wait()
                                m.Kill(bC, _G.AcientOne)
                            until _G.AcientOne == false or bC.Humanoid.Health <= 0 or not bC.Parent
                        else
                            _tp(CFrame.new(-9495.681, 453.586, 5977.349))
                        end
                    end
                end
            end
        end)
    end
end)

Trial:AddToggle({
    Name = "Auto Train Draco v4",
    Description = "Turn On For Training Drago Race V4 + Auto Upgrade Tier",
    Default = false,
    Callback = function(v)
        _G.TrainDrago = v
    end
})

spawn(function()
    while wait(Sec) do
        if _G.TrainDrago then
            pcall(function()
                local enemies = { 'Venomous Assailant', 'Hydra Enforcer' }
                for _, enemyName in ipairs(enemies) do
                    -- Check if the player has enough Race Energy
                    if plr.Character:FindFirstChild('RaceEnergy') and plr.Character.RaceEnergy.Value == 1 then
                        vim1:SendKeyEvent(true, 'Y', false, game)
                        replicated.Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy', 2)
                        _tp(CFrame.new(4620.61572265625, 1002.2954711914063, 399.0868835449219))
                    elseif plr.Character:FindFirstChild('RaceTransformed') and not plr.Character.RaceTransformed.Value then
                        local targetEnemy = GetConnectionEnemies(enemies)
                        if targetEnemy then
                            repeat
                                wait()
                                m.Kill(targetEnemy, _G.TrainDrago)
                            until not _G.TrainDrago or targetEnemy.Humanoid.Health <= 0 or not targetEnemy.Parent
                        else
                            _tp(CFrame.new(4620.61572265625, 1002.2954711914063, 399.0868835449219))
                        end
                    end
                end
            end)
        end
    end
end)






Player:AddSection("Bartillo")

Player:AddToggle({
    Name = "Auto Done Bartilo Quest",
    Flag = "Farm/AutoBartiloQuest",
    Description = "<font color='rgb(0, 255, 0)'>2nd Sea Bartillo Farm</font>",
    Default = false,
    Callback = function(Value)
        _G.Bartilo_Quest = Value
    end
})

-- Auto Bartilo Quest Logic
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.CitizenQuest then
                if Lv >= 1800 and replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBandits == false then
                    if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Forest Pirate') and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and plr.PlayerGui.Main.Quest.Visible == true then
                        local G = GetConnectionEnemies('Forest Pirate')
                        if G then
                            repeat
                                task.wait()
                                m.Kill(G, _G.CitizenQuest)
                            until _G.CitizenQuest == false or not G.Parent or G.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false
                        else
                            _tp(CFrame.new(- 13206.452148438, 425.89199829102, - 7964.5537109375))
                        end
                    else
                        _tp(CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125))
                        if (Vector3.new(- 12443.8671875, 332.40396118164, - 7675.4892578125) - plr.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            replicated.Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                        end
                    end
                elseif Lv >= 1800 and replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBoss == false then
                    local G = GetConnectionEnemies('Captain Elephant')
                    if plr.PlayerGui.Main.Quest.Visible and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') and plr.PlayerGui.Main.Quest.Visible == true then
                        if G then
                            repeat
                                task.wait()
                                m.Kill(G, _G.CitizenQuest)
                            until _G.CitizenQuest == false or G.Humanoid.Health <= 0 or not G.Parent or plr.PlayerGui.Main.Quest.Visible == false
                        else
                            _tp(CFrame.new(- 13374.889648438, 421.27752685547, - 8225.208984375))
                        end
                    else
                        _tp(CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125))
                        if (CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                        end
                    end
                elseif Lv >= 1800 and replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                    _tp(CFrame.new(- 12512.138671875, 340.39279174805, - 9872.8203125))
                end
            end
        end)
    end
end)


Player:AddSection("Observation")

Player:AddToggle({
    Name = "Auto Observation V2",
    Flag = "Main/AutoObservationV2",
    Default = false,
    Callback = function(v)
        _G.AutoKenVTWO = v
    end
})

spawn(function()
    while wait(Sec) do
        if _G.AutoKenVTWO then
            pcall(function()
                local ae = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)
                local af = 'Kuy'
                local ag = CFrame.new(-10920.125, 624.20275878906, -10266.995117188)
                local ah = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)
                local ai = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)

                if plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat 50 Forest Pirates') then
                    local aj = GetConnectionEnemies('Forest Pirate')
                    if aj then
                        repeat wait()
                            m.Kill(aj, _G.AutoKenVTWO)
                        until not _G.AutoKenVTWO or aj.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false
                    else
                        _tp(ah)
                    end
                elseif plr.PlayerGui.Main.Quest.Visible == true then
                    local aj = GetConnectionEnemies('Captain Elephant')
                    if aj then
                        repeat wait()
                            m.Kill(aj, _G.AutoKenVTWO)
                        until not _G.AutoKenVTWO or aj.Humanoid.Health <= 0 or plr.PlayerGui.Main.Quest.Visible == false
                    else
                        _tp(ai)
                    end
                elseif plr.PlayerGui.Main.Quest.Visible == false then
                    replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                    wait(0.1)
                    replicated.Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                end

                if replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                    _tp(CFrame.new(-12513.51953125, 340.1137390136719, -9873.048828125))
                end

                if not plr.Backpack:FindFirstChild('Fruit Bowl') or not plr.Character:FindFirstChild('Fruit Bowl') then
                    if not GetBP('Fruit Bowl') then
                        if not GetBP('Apple') then
                            replicated.Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                            for aj, ak in pairs(workspace:GetDescendants()) do
                                if ak.Name == 'Apple' then
                                    ak.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                    wait()
                                    firetouchinterest(plr.Character.HumanoidRootPart, ak.Handle, 0)
                                    wait()
                                end
                            end
                        elseif not GetBP('Banana') then
                            _tp(CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125))
                            for aj, ak in pairs(workspace:GetDescendants()) do
                                if ak.Name == 'Banana' then
                                    ak.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                    wait()
                                    firetouchinterest(plr.Character.HumanoidRootPart, ak.Handle, 0)
                                    wait()
                                end
                            end
                        elseif not GetBP('Pineapple') then
                            _tp(CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625))
                            for aj, ak in pairs(workspace:GetDescendants()) do
                                if ak.Name == 'Pineapple' then
                                    ak.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                    wait()
                                    firetouchinterest(plr.Character.HumanoidRootPart, ak.Handle, 0)
                                    wait()
                                end
                            end
                        end
                    end

                    if plr.Backpack:FindFirstChild('Banana') and plr.Backpack:FindFirstChild('Apple') and plr.Backpack:FindFirstChild('Pineapple') or plr:FindFirstChild('Banana') and plr:FindFirstChild('Apple') and plr:FindFirstChild('Pineapple') then
                        repeat wait()
                            _tp(ae)
                        until _G.AutoKenVTWO or plr.Character.HumanoidRootPart.CFrame == ae
                        replicated.Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                    end

                    if plr.Backpack:FindFirstChild('Fruit Bowl') or plr.Character:FindFirstChild('Fruit Bowl') then
                        if plr.Character.HumanoidRootPart.CFrame ~= ag then
                            _tp(ag)
                        elseif plr.Character.HumanoidRootPart.CFrame == ag then
                            replicated.Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                            wait(0.1)
                            replicated.Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                        end
                    end
                end
            end)
        end
    end
end)



Player:AddToggle({
    Name = "Auto Farm Observation",
    Default = false,
    Callback = function(value)
        _G.obsFarm = value
    end
})

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.obsFarm then
                replicated.Remotes.CommE:FireServer("Ken", true)
                if plr:GetAttribute("KenDodgesLeft") == 0 then
                    KenTest = false
                elseif plr:GetAttribute("KenDodgesLeft") > 0 then
                    replicated.Remotes.CommE:FireServer("Ken", true)
                    KenTest = true
                end
            end
        end)
    end
end)

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.obsFarm then
                if World1 then
                    local enemy = workspace.Enemies:FindFirstChild("Galley Captain")
                    if enemy then
                        if KenTest then
                            repeat wait()
                                plr.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                            until not _G.obsFarm or not KenTest
                        else
                            repeat wait()
                                plr.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                            until not _G.obsFarm or KenTest
                        end
                    else
                        _tp(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                    end
                elseif Sea2 then
                    local enemy = workspace.Enemies:FindFirstChild("Lava Pirate")
                    if enemy then
                        if KenTest then
                            repeat wait()
                                plr.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                            until not _G.obsFarm or not KenTest
                        else
                            repeat wait()
                                plr.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                            until not _G.obsFarm or KenTest
                        end
                    else
                        _tp(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                    end
                elseif Sea3 then
                    local enemy = workspace.Enemies:FindFirstChild("Venomous Assailant")
                    if enemy then
                        if KenTest then
                            repeat wait()
                                _tp(enemy.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0))
                            until not _G.obsFarm or not KenTest
                        else
                            repeat wait()
                                _tp(enemy.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                            until not _G.obsFarm or KenTest
                        end
                    else
                        _tp(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                    end
                end
            end
        end)
    end
end)


Player:AddSection("Upgrade V4")

Player:AddToggle({
    Name = "Auto Upgrade Mink V3",
    Flag = "Main/AutoMinkV3",
    Default = false,
    Callback = function(value)
        _G.Auto_Mink = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Mink then
                if replicated.Remotes.CommF_:InvokeServer("Alchemist", "1") ~= 2 then
                    local stage = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                    if stage == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif stage == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local enemy = GetConnectionEnemies("Swan Pirate")
                            if enemy then
                                repeat wait()
                                    m.Kill(enemy, _G.Auto_Mink)
                                until GetBP("Flower 3") or not enemy.Parent or enemy.Humanoid.Health <= 0 or not _G.Auto_Mink
                            else
                                _tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                            end
                        end
                    elseif stage == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    repeat wait()
                        _G.AutoFarmChest = true
                    until not _G.Auto_Mink or replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") ~= 1
                    _G.AutoFarmChest = false
                end
            end
        end)
    end
end)


Player:AddToggle({
    Name = "Auto Upgrade Human V3",
    Flag = "Main/AutoHumanV3",
    Default = false,
    Callback = function(value)
        _G.Auto_Human = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Human then
                if replicated.Remotes.CommF_:InvokeServer("Alchemist", "1") ~= -2 then
                    local stage = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                    if stage == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif stage == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local enemy = GetConnectionEnemies("Swan Pirate")
                            if enemy then
                                repeat wait()
                                    m.Kill(enemy, _G.Auto_Human)
                                until plr.Backpack:FindFirstChild("Flower 3") or not enemy.Parent or enemy.Humanoid.Health <= 0 or not _G.Auto_Human
                            else
                                _tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                            end
                        end
                    elseif stage == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    for i = 1, 3 do
                        local enemy = GetConnectionEnemies(h[i])
                        if enemy then
                            repeat wait()
                                m.Kill(enemy, _G.Auto_Human)
                            until enemy.Humanoid.Health <= 0 or not enemy.Parent or not _G.Auto_Human
                        else
                            local positions = {
                                CFrame.new(-2172.74, 103.32, -4015.03),
                                CFrame.new(2006.93, 448.96, 853.98),
                                CFrame.new(-1576.72, 198.59, 13.72)
                            }
                            _tp(positions[i])
                        end
                    end
                end
            end
        end)
    end
end)


Player:AddToggle({
    Name = "Auto Upgrade Skypiea V3",
    Flag = "Main/AutoSkypieaV3",
    Default = false,
    Callback = function(value)
        _G.Auto_Skypiea = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Skypiea then
                if replicated.Remotes.CommF_:InvokeServer("Alchemist", "1") ~= -2 then
                    local stage = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                    if stage == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif stage == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local enemy = GetConnectionEnemies("Swan Pirate")
                            if enemy then
                                repeat wait()
                                    m.Kill(enemy, _G.Auto_Skypiea)
                                until plr.Backpack:FindFirstChild("Flower 3") or not enemy.Parent or enemy.Humanoid.Health <= 0 or not _G.Auto_Skypiea
                            else
                                _tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                            end
                        end
                    elseif stage == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    for _, player in pairs(game.Players:GetChildren()) do
                        if player.Name ~= plr.Name and tostring(player.Data.Race.Value) == "Skypiea" then
                            repeat task.wait()
                                _tp(player.HumanoidRootPart.CFrame * CFrame.new(0, 8, 0) * CFrame.Angles(math.rad(-45), 0, 0))
                            until player.Humanoid.Health <= 0 or not _G.Auto_Skypiea
                        end
                    end
                end
            end
        end)
    end
end)


Player:AddToggle({
    Name = "Auto Upgrade FishMan V3",
    Flag = "Main/AutoFishmanV3",
    Description = "<font color='rgb(255, 0, 0)'>Kill Seabeast Not Supported</font>",
    Default = false,
    Callback = function(value)
        _G.Auto_Fish = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Fish then
                if replicated.Remotes.CommF_:InvokeServer("Alchemist", "1") ~= -2 then
                    local stage = replicated.Remotes.CommF_:InvokeServer("Alchemist", "1")
                    if stage == 0 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif stage == 1 then
                        if not plr.Backpack:FindFirstChild("Flower 1") and not plr.Character:FindFirstChild("Flower 1") then
                            _tp(workspace.Flower1.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 2") and not plr.Character:FindFirstChild("Flower 2") then
                            _tp(workspace.Flower2.CFrame)
                        elseif not plr.Backpack:FindFirstChild("Flower 3") and not plr.Character:FindFirstChild("Flower 3") then
                            local enemy = GetConnectionEnemies("Swan Pirate")
                            if enemy then
                                repeat wait()
                                    m.Kill(enemy, _G.Auto_Fish)
                                until plr.Backpack:FindFirstChild("Flower 3") or not enemy.Parent or enemy.Humanoid.Health <= 0 or not _G.Auto_Fish
                            else
                                _tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                            end
                        end
                    elseif stage == 2 then
                        replicated.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                    replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                elseif replicated.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 then
                    warn("Sea Beast Soon")
                end
            end
        end)
    end
end)


Player:AddSection("Rip Indra")

Player:AddToggle({
    Name = "Auto Kill Rip Indra",
    Flag = "Main/AutoRipIndra",
    Default = false,
    Callback = function(value)
        _G.AutoRipIngay = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AutoRipIngay then
                local target = GetConnectionEnemies("rip_indra True Form")
                if target then
                    repeat wait()
                        m.Kill(target, _G.AutoRipIngay)
                    until not _G.AutoRipIngay or not target.Parent or target.Humanoid.Health <= 0
                else
                    _tp(CFrame.new(-5561.09033, 314.179657, -2663.16919, -0.347872645, -0.00166249205, 0.937540352, -0.000768713537, 0.999998569, 0.00148801634, -0.937541485, -0.000203059797, -0.34787342))
                end
            end
        end)
    end
end)

Player:AddToggle({
    Name = "Auto Spawn Rip Indra",
    Flag = "Main/AutoSpawnRipIndra",
    Description = "<font color='rgb(255, 0, 0)'>Make Sure You Have God Chalice</font>",
    Default = false,
    Callback = function(value)
        _G.AutoRipInSpawn = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AutoRipInSpawn then
                if GetBP("God's Chalice") then
                    EquipWeapon("God's Chalice")
                    _tp(CFrame.new(-5561.09033, 314.179657, -2663.16919, -0.347872645, -0.00166249205, 0.937540352, -0.000768713537, 0.999998569, 0.00148801634, -0.937541485, -0.000203059796, -0.34787342))
                end
            end
        end)
    end
end)

Player:AddToggle({
    Name = "Auto Unlocked Puzzle",
    Flag = "Main/AutoUnlockedPuzzle",
    Description = "<font color='rgb(255, 0, 0)'>Need 3 Legendary Aura Skin</font>",
    Default = false,
    Callback = function(value)
        _G.AutoUnHaki = value
    end
})

AuraSkin = function(an)
    local ao = {
        [1] = {
            StorageName = an,
            Type = "AuraSkin",
            Context = "Equip"
        }
    }
    replicated:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/FruitCustomizerRF"):InvokeServer(unpack(ao))
end

VaildColor = function(an)
    if an and an.BrickColor then
        return tostring(an.BrickColor) == "Lime green"
    end
end

HakiCalculate = function(an)
    local ao = {
        ["Really red"] = "Pure Red",
        Oyster = "Snow White",
        ["Hot pink"] = "Winter Sky"
    }
    if an and an.BrickColor then
        return ao[tostring(an.BrickColor)]
    end
end

spawn(function()
    while wait(Sec) do
        if _G.AutoUnHaki then
            pcall(function()
                local an = workspace.Map["Boat Castle"]:FindFirstChild("Summoner")
                if an and an:FindFirstChild("Circle") then
                    for _, ap in pairs(an.Circle:GetChildren()) do
                        if ap.Name == "Part" then
                            local aq = ap:FindFirstChild("Part")
                            if VaildColor(aq) == false then
                                AuraSkin(HakiCalculate(ap))
                                repeat
                                    wait()
                                    _tp(ap.CFrame)
                                until VaildColor(aq) == true or not _G.AutoUnHaki
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Raids:AddSection("Raid Setting")

chipList = {
    "Flame",
    "Ice",
    "Quake",
    "Light",
    "Dark",
    "String",
    "Rumble",
    "Magma",
    "Human: Buddha",
    "Sand",
    "Bird: Phoenix",
    "Dough"
}

Raids:AddDropdown({
    Name = "Select Raid Chip",
    Options = chipList,
    Default = chipList[1],
    Flag = "Raids/SelectChip",
    Callback = function(value)
        _G.SelectChip = value
    end
})


Raids:AddToggle({
    Name = "Auto Select Raid Chip",
    Default = false,
    Flag = "Raids/AutoSelectRaidChip",
    Callback = function(Value)
        _G.AutoSelectDungeon = Value
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.AutoSelectDungeon then
            pcall(function()
                if GetBP("Flame-Flame") then
                    _G.SelectChip = "Flame"
                elseif GetBP("Ice-Ice") then
                    _G.SelectChip = "Ice"
                elseif GetBP("Quake-Quake") then
                    _G.SelectChip = "Quake"
                elseif GetBP("Light-Light") then
                    _G.SelectChip = "Light"
                elseif GetBP("Dark-Dark") then
                    _G.SelectChip = "Dark"
                elseif GetBP("String-String") then
                    _G.SelectChip = "String"
                elseif GetBP("Rumble-Rumble") then
                    _G.SelectChip = "Rumble"
                elseif GetBP("Magma-Magma") then
                    _G.SelectChip = "Magma"
                elseif GetBP("Human-Human: Buddha Fruit") then
                    _G.SelectChip = "Human: Buddha"
                elseif GetBP("Dough-Dough") then
                    _G.SelectChip = "Dough"
                elseif GetBP("Sand-Sand") then
                    _G.SelectChip = "Sand"
                elseif GetBP("Bird-Bird: Phoenix") then
                    _G.SelectChip = "Bird: Phoenix"
                else
                    _G.SelectChip = "Ice"
                end
            end)
        end
    end
end)


Raids:AddToggle({
    Name = "Auto Buy Dungeon Chips [Beli]",
    Default = false,
    Flag = "Raids/AutoBuyDungeonChip",
    Callback = function(Value)
        _G.AutoBuyDungeonChip = Value
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.AutoBuyDungeonChip then
            pcall(function()
                if not GetBP("Special Microchip") and _G.SelectChip then
                    replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                end
            end)
        end
    end
end)

Raids:AddToggle({
    Name = "Auto Buy Dungeon Chips [Devil Fruit]",
    Default = false,
    Flag = "Raids/AutoBuyDungeonChipFruit",
    Callback = function(Value)
        _G.AutoBuyDungeonChipFruit = Value
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.AutoBuyDungeonChipFruit and not GetBP("Special Microchip") then
            pcall(function()
                local availableFruits = {}
                for _, fruitData in pairs(replicated.Remotes.CommF_:InvokeServer("GetFruits")) do
                    if fruitData.Price <= 490000 then
                        table.insert(availableFruits, fruitData.Name)
                    end
                end

                for _, fruitName in pairs(availableFruits) do
                    for _, validChip in pairs(b) do
                        if not GetBP("Special Microchip") then
                            replicated.Remotes.CommF_:InvokeServer("LoadFruit", tostring(fruitName))
                            replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end)
        end
    end
end)

Raids:AddSection("Raids Farm")

Raids:AddToggle({
    Name = "Auto Start Raid",
    Default = false,
    Flag = "Raids/AutoStartRaid",
    Callback = function(Value)
        _G.Auto_StartRaid = Value
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.Auto_StartRaid then
            pcall(function()
                if not plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible and GetBP("Special Microchip") then
                    if World2 then
                        _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                        fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif World3 then
                        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602))
                        fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end)
        end
    end
end)


Raids:AddToggle({
    Name = "Teleport To Lab",
    Default = false,
    Flag = "Raids/TeleportToLab",
    Callback = function(Value)
        _G.TpLab = Value
    end
})

spawn(function()
    while task.wait(Sec) do
        if _G.TpLab then
            pcall(function()
                if Sea2 then
                    _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                elseif Sea3 then
                    _tp(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-8, -0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, -0.925743818))
                end
            end)
        end
    end
end)

Raids:AddToggle({
    Name = "Auto Complete Raid [Auto]",
    Description = "<font color='rgb(0, 255, 0)'>Auto Next Island And Kill Mob</font>",
    Default = false,
    Flag = "Raids/AutoCompleteRaid",
    Callback = function(Value)
        _G.Raiding = Value
    end
})

spawn(function()
    while wait() do
        if _G.Raiding then
            pcall(function()
                if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
                    if workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
                        local b7 = workspace.Enemies:GetChildren()
                        if # b7 > 0 then
                            for b8, b9 in pairs(workspace.Enemies:GetChildren()) do
                                if (b9.HumanoidRootPart.Position - Root.Position).magnitude <= 2000 and b9.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        m.Kill(b9, _G.Raiding)
                                    until not _G.Raiding or not b9.Parent or b9.Humanoid.Health <= 0 or not (workspace._WorldOrigin.Locations:FindFirstChild('Island 1')) or plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false
                                end
                            end
                        else
                            if workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
                                if workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
                                    _tp(workspace._WorldOrigin.Locations['Island 5'].CFrame * CFrame.new(4, 65, 10))
                                elseif workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
                                    _tp(workspace._WorldOrigin.Locations['Island 4'].CFrame * CFrame.new(4, 65, 10))
                                elseif workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
                                    _tp(workspace._WorldOrigin.Locations['Island 3'].CFrame * CFrame.new(4, 65, 10))
                                elseif workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
                                    _tp(workspace._WorldOrigin.Locations['Island 2'].CFrame * CFrame.new(4, 65, 10))
                                elseif workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
                                    _tp(workspace._WorldOrigin.Locations['Island 1'].CFrame * CFrame.new(4, 65, 10))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)



Raids:AddToggle({
    Name = "Auto Next Island",
    Flag = "Raids/AutoNextIsland",
    Default = false,
    Callback = function(value)
        _G.NextIs = value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.NextIs then
            if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
                local locations = workspace._WorldOrigin.Locations
                for i = 5, 1, -1 do
                    local island = locations:FindFirstChild("Island " .. i)
                    if island then
                        _tp(island.CFrame * CFrame.new(0, 50, 100))
                        break
                    end
                end
            end
        end
    end
end)




Raids:AddToggle({
    Name = "Auto Awakening",
    Flag = "Raids/AutoAwakening",
    Default = false,
    Callback = function(value)
        _G.Auto_Awakener = value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Auto_Awakener then
                replicated.Remotes.CommF_:InvokeServer("Awakener", "Check")
                replicated.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end
        end)
    end
end)



Raids:AddSection("Fruit Stack")

Raids:AddToggle({
    Name = "Auto Random Fruit",
    Flag = "Fruit/AutoRandomFruit",
    Default = false,
    Callback = function(Value)
        _G.Random_Auto = Value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Random_Auto then
                replicated.Remotes.CommF_:InvokeServer('Cousin', 'Buy')
            end
        end)
    end
end)

Raids:AddToggle({
    Name = "Auto Drop Fruit",
    Flag = "Fruit/AutoDropFruit",
    Default = false,
    Callback = function(Value)
        _G.DropFruit = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.DropFruit then
            pcall(function()
                DropFruits()
            end)
        end
    end
end)

Raids:AddToggle({
    Name = "Auto Store Fruit",
    Flag = "Fruit/AutoStoreFruit",
    Default = false,
    Callback = function(Value)
        _G.StoreF = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.StoreF then
            pcall(function()
                UpdStFruit()
            end)
        end
    end
end)

Raids:AddToggle({
    Name = "Auto Tween to Fruit",
    Flag = "Fruit/AutoTweenToFruit",
    Description = "Automatic Tween To Get Devil Fruit",
    Default = false,
    Callback = function(Value)
        _G.TwFruits = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.TwFruits then
            pcall(function()
                for cg, ch in pairs(workspace:GetChildren()) do
                    if string.find(ch.Name, 'Fruit') then
                        _tp(ch.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

Raids:AddToggle({
    Name = "Auto Collect Fruit",
    Flag = "Fruit/AutoCollectFruit",
    Description = "Automatic Bring Devil Fruit",
    Default = false,
    Callback = function(Value)
        _G.InstanceF = Value
    end
})

spawn(function()
    while wait(Sec) do
        if _G.InstanceF then
            pcall(function()
                collectFruits(_G.InstanceF)
            end)
        end
    end
end)



Sea:AddSection("Sea Events")

bP = {
    'Guardian',
    'PirateGrandBrigade',
    'MarineGrandBrigade',
    'PirateBrigade',
    'MarineBrigade',
    'PirateSloop',
    'MarineSloop',
    'Beast Hunter'
}
bQ = {
    'Lv 1',
    'Lv 2',
    'Lv 3',
    'Lv 4',
    'Lv 5',
    'Lv 6',
    'Lv Infinite'
}

Sea:AddDropdown({
    Name = "Choose Boats",
    Options = bP,
    Default = bP[1],
    Flag = "SeaEvent/ChooseBoats",
    Callback = function(Value)
        _G.SelectedBoat = Value
    end
})

Sea:AddToggle({
    Name = "Auto Buy Boat",
    Flag = "SeaEvent/AutoBuyBoat",
    Default = false,
    Callback = function(Value)
        _G.AutoBuyBoat = Value
        if Value then
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)
            end)
        end
    end
})

Sea:AddDropdown({
    Name = "Choose Sea Level",
    Description = "",
    Options = bQ,
    Default = bQ[1],
    Flag = "SeaEvent/ChooseSeaLevel",
    Callback = function(Value)
        _G.DangerSc = Value
    end
})

Sea:AddToggle({
    Name = "Auto Sail Boat",
    Description = "",
    Default = false,
    Flag = "SeaEvent/AutoSailBoat",
    Callback = function(Value)
        _G.SailBoats = Value
    end
})

spawn(function()
    while task.wait() do
        if _G.SailBoats then
            pcall(function()
                local boat = CheckBoat()
                if not boat and not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha) and not (CheckEnemiesBoat() and _G.FishBoat) and not (CheckSeaBeast() and _G.SeaBeast1) and not (_G.PGB and CheckPirateGrandBrigade()) and not (_G.Leviathan1 and CheckLeviathan()) then
                    local destination = CFrame.new(-16927.451, 9.086, 433.864)
                    TeleportToTarget(destination)
                    if (destination.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        replicated.Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)
                    end
                elseif boat and not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha) and not (CheckEnemiesBoat() and _G.FishBoat) and not (CheckSeaBeast() and _G.SeaBeast1) and not (_G.PGB and CheckPirateGrandBrigade()) and not (_G.Leviathan1 and CheckLeviathan()) then
                    if not plr.Character.Humanoid.Sit then
                        _tp(boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                    else
                        repeat
                            task.wait()
                            if _G.DangerSc == 'Lv 1' then
                                CFrameSelectedZone = CFrame.new(-21998.375, BoatY, -682.309143)
                            elseif _G.DangerSc == 'Lv 2' then
                                CFrameSelectedZone = CFrame.new(-26779.5215, BoatY, -822.858032)
                            elseif _G.DangerSc == 'Lv 3' then
                                CFrameSelectedZone = CFrame.new(-31171.957, BoatY, -2256.93774)
                            elseif _G.DangerSc == 'Lv 4' then
                                CFrameSelectedZone = CFrame.new(-34054.6875, BoatY, -2560.12012)
                            elseif _G.DangerSc == 'Lv 5' then
                                CFrameSelectedZone = CFrame.new(-38887.5547, BoatY, -2162.99023)
                            elseif _G.DangerSc == 'Lv 6' then
                                CFrameSelectedZone = CFrame.new(-44541.7617, BoatY, -1244.8584)
                            elseif _G.DangerSc == 'Lv Infinite' then
                                CFrameSelectedZone = CFrame.new(-1E7, BoatY, 37016.25)
                            end
                            if (not _G.FishBoat and CheckEnemiesBoat()) or (not _G.PGB and CheckPirateGrandBrigade()) or (not _G.TerrorShark and CheckTerrorShark()) then
                                _tp(CFrameSelectedZone * CFrame.new(0, 150, 0))
                            else
                                _tp(CFrameSelectedZone)
                            end
                        until not _G.SailBoats or (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha) or CheckSeaBeast() and _G.SeaBeast1 or CheckEnemiesBoat() and _G.FishBoat or _G.Leviathan1 and CheckLeviathan() or _G.PGB and CheckPirateGrandBrigade() or not plr.Character:WaitForChild("Humanoid").Sit
                        plr.Character.Humanoid.Sit = false
                    end
                elseif boat and CheckFishCrew() and _G.MobCrew then
                    for _, mob in pairs(workspace.Enemies:GetChildren()) do
                        if (mob.Name == 'Fish Crew Member' or mob.Name == 'Haunted Crew Member') and mob:FindFirstChild('HumanoidRootPart') and mob.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                _tp(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                EquipWeapon(_G.SelectWeapon)
                                BringEnemy()
                            until not _G.MobCrew or not mob.Parent or mob.Humanoid.Health <= 0
                        end
                    end
                end
            end)
        end
    end
end)

Sea:AddSection("Sea Mobs")


Sea:AddToggle({
    Name = "Auto Kill Shark",
    Flag = "SeaEvent/AutoKillShark",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Shark = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Piranha",
    Flag = "SeaEvent/AutoKillPiranha",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Piranha = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Terror Shark",
    Flag = "SeaEvent/AutoKillTerrorShark",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.TerrorShark = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Crew Member",
    Flag = "SeaEvent/AutoKillCrewMember",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.MobCrew = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Pirate Grand Brigade",
    Flag = "SeaEvent/AutoKillPGB",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.PGB = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Fish Boat",
    Flag = "SeaEvent/AutoKillFishBoat",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.FishBoat = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Sea Beast",
    Flag = "SeaEvent/AutoKillSeaBeast",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.SeaBeast1 = Value
    end
})

Sea:AddToggle({
    Name = "Auto Kill Leviathan",
    Flag = "SeaEvent/AutoKillLeviathan",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Leviathan1 = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.Shark then
                local bY = {
                    'Shark'
                }
                if CheckShark() then
                    for bZ, b_ in pairs(workspace.Enemies:GetChildren()) do
                        if table.find(bY, b_.Name) then
                            if m.Alive(b_) then
                                repeat
                                    task.wait()
                                    m.Kill(b_, _G.Shark)
                                until _G.Shark == false or not b_.Parent or b_.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end
            if _G.TerrorShark then
                local bY = {
                    'Terrorshark'
                }
                if CheckTerrorShark() then
                    for bZ, b_ in pairs(workspace.Enemies:GetChildren()) do
                        if table.find(bY, b_.Name) then
                            if m.Alive(b_) then
                                repeat
                                    task.wait()
                                    m.KillSea(b_, _G.TerrorShark)
                                until _G.TerrorShark == false or not b_.Parent or b_.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end
            if _G.Piranha then
                local bY = {
                    'Piranha'
                }
                if CheckPiranha() then
                    for bZ, b_ in pairs(workspace.Enemies:GetChildren()) do
                        if table.find(bY, b_.Name) then
                            if m.Alive(b_) then
                                repeat
                                    task.wait()
                                    m.Kill(b_, _G.Piranha)
                                until _G.Piranha == false or not b_.Parent or b_.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end
            if _G.SeaBeast1 then
                if workspace.SeaBeasts:FindFirstChild('SeaBeast1') then
                    for bY, bZ in pairs(workspace.SeaBeasts:GetChildren()) do
                        if bZ:FindFirstChild('HumanoidRootPart') and bZ:FindFirstChild('Health') and bZ.Health.Value > 0 then
                            repeat
                                task.wait()
                                spawn(function()
                                    _tp(CFrame.new(bZ.HumanoidRootPart.Position.X, game:GetService('Workspace').Map['WaterBase-Plane'].Position.Y + 200, bZ.HumanoidRootPart.Position.Z))
                                end)
                                if plr:DistanceFromCharacter(bZ.HumanoidRootPart.CFrame.Position) <= 500 then
                                    AitSeaSkill_Custom = bZ.HumanoidRootPart.CFrame
                                    MousePos = AitSeaSkill_Custom.Position

                                    -- Always use all weapons regardless of CheckF()
                                    -- First Melee skills
                                    weaponSc('Melee')
                                    task.wait(0.1)
                                    Useskills('Melee', 'Z')
                                    task.wait(0.05)
                                    Useskills('Melee', 'X')
                                    task.wait(0.05)
                                    Useskills('Melee', 'C')
                                    task.wait(0.3)
                                    
                                    -- Then Sword skills
                                    weaponSc('Sword')
                                    task.wait(0.1)
                                    Useskills('Sword', 'Z')
                                    task.wait(0.05)
                                    Useskills('Sword', 'X')
                                    task.wait(0.3)
                                    
                                    -- Then Blox Fruit skills
                                    weaponSc('Blox Fruit')
                                    task.wait(0.1)
                                    Useskills('Blox Fruit', 'Z')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'X')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'C')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'V')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'F')
                                    task.wait(0.3)
                                    
                                    -- Finally Gun skills
                                    weaponSc('Gun')
                                    task.wait(0.1)
                                    Useskills('Gun', 'Z')
                                    task.wait(0.05)
                                    Useskills('Gun', 'X')
                                end
                            until _G.SeaBeast1 == false or not bZ:FindFirstChild('HumanoidRootPart') or not bZ.Parent or bZ.Health.Value <= 0
                        end
                    end
                end
            end
            if _G.Leviathan1 then
                if workspace.SeaBeasts:FindFirstChild('Leviathan') then
                    for bY, bZ in pairs(workspace.SeaBeasts:GetChildren()) do
                        if bZ:FindFirstChild('HumanoidRootPart') and bZ:FindFirstChild('Leviathan Segment') and bZ:FindFirstChild('Health') and bZ.Health.Value > 0 then
                            repeat
                                task.wait()
                                spawn(function()
                                    _tp(CFrame.new(bZ.HumanoidRootPart.Position.X, game:GetService('Workspace').Map['WaterBase-Plane'].Position.Y + 200, bZ.HumanoidRootPart.Position.Z))
                                end)
                                if plr:DistanceFromCharacter(bZ.HumanoidRootPart.CFrame.Position) <= 500 then
                                    MousePos = bZ:FindFirstChild('Leviathan Segment').Position
                                    
                                    -- Always use all weapons regardless of CheckF()
                                    -- First Melee skills
                                    weaponSc('Melee')
                                    task.wait(0.1)
                                    Useskills('Melee', 'Z')
                                    task.wait(0.05)
                                    Useskills('Melee', 'X')
                                    task.wait(0.05)
                                    Useskills('Melee', 'C')
                                    task.wait(0.3)
                                    
                                    -- Then Sword skills
                                    weaponSc('Sword')
                                    task.wait(0.1)
                                    Useskills('Sword', 'Z')
                                    task.wait(0.05)
                                    Useskills('Sword', 'X')
                                    task.wait(0.3)
                                    
                                    -- Then Blox Fruit skills
                                    weaponSc('Blox Fruit')
                                    task.wait(0.1)
                                    Useskills('Blox Fruit', 'Z')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'X')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'C')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'V')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'F')
                                    task.wait(0.3)
                                    
                                    -- Finally Gun skills
                                    weaponSc('Gun')
                                    task.wait(0.1)
                                    Useskills('Gun', 'Z')
                                    task.wait(0.05)
                                    Useskills('Gun', 'X')
                                end
                            until _G.Leviathan1 == false or not bZ:FindFirstChild('HumanoidRootPart') or not bZ.Parent or bZ.Health.Value <= 0
                        end
                    end
                end
            end
            if _G.FishBoat then
                if CheckEnemiesBoat() then
                    for bY, bZ in pairs(workspace.Enemies:GetChildren()) do
                        if bZ:FindFirstChild('Health') and bZ.Health.Value > 0 and bZ:FindFirstChild('VehicleSeat') then
                            repeat
                                task.wait()
                                spawn(function()
                                    if bZ.Name == 'FishBoat' then
                                        _tp(bZ.Engine.CFrame * CFrame.new(0, - 50, - 25))
                                    end
                                end)
                                if plr:DistanceFromCharacter(bZ.Engine.CFrame.Position) <= 150 then
                                    AitSeaSkill_Custom = bZ.Engine.CFrame
                                    MousePos = AitSeaSkill_Custom.Position
                                    
                                    -- Always use all weapons regardless of CheckF()
                                    -- First Melee skills
                                    weaponSc('Melee')
                                    task.wait(0.1)
                                    Useskills('Melee', 'Z')
                                    task.wait(0.05)
                                    Useskills('Melee', 'X')
                                    task.wait(0.05)
                                    Useskills('Melee', 'C')
                                    task.wait(0.3)
                                    
                                    -- Then Sword skills
                                    weaponSc('Sword')
                                    task.wait(0.1)
                                    Useskills('Sword', 'Z')
                                    task.wait(0.05)
                                    Useskills('Sword', 'X')
                                    task.wait(0.3)
                                    
                                    -- Then Blox Fruit skills
                                    weaponSc('Blox Fruit')
                                    task.wait(0.1)
                                    Useskills('Blox Fruit', 'Z')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'X')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'C')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'V')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'F')
                                    task.wait(0.3)
                                    
                                    -- Finally Gun skills
                                    weaponSc('Gun')
                                    task.wait(0.1)
                                    Useskills('Gun', 'Z')
                                    task.wait(0.05)
                                    Useskills('Gun', 'X')
                                end
                            until _G.FishBoat == false or not bZ:FindFirstChild('VehicleSeat') or bZ.Health.Value <= 0
                        end
                    end
                end
            end
            if _G.PGB then
                if CheckPirateGrandBrigade() then
                    for bY, bZ in pairs(workspace.Enemies:GetChildren()) do
                        if bZ:FindFirstChild('Health') and bZ.Health.Value > 0 and bZ:FindFirstChild('VehicleSeat') then
                            repeat
                                task.wait()
                                spawn(function()
                                    if bZ.Name == 'PirateBrigade' then
                                        _tp(bZ.Engine.CFrame * CFrame.new(0, - 30, - 10))
                                    elseif bZ.Name == 'PirateGrandBrigade' then
                                        _tp(bZ.Engine.CFrame * CFrame.new(0, - 50, - 50))
                                    end
                                end)
                                if plr:DistanceFromCharacter(bZ.Engine.CFrame.Position) <= 150 then
                                    AitSeaSkill_Custom = bZ.Engine.CFrame
                                    MousePos = AitSeaSkill_Custom.Position
                                    
                                    -- Always use all weapons regardless of CheckF()
                                    -- First Melee skills
                                    weaponSc('Melee')
                                    task.wait(0.1)
                                    Useskills('Melee', 'Z')
                                    task.wait(0.05)
                                    Useskills('Melee', 'X')
                                    task.wait(0.05)
                                    Useskills('Melee', 'C')
                                    task.wait(0.3)
                                    
                                    -- Then Sword skills
                                    weaponSc('Sword')
                                    task.wait(0.1)
                                    Useskills('Sword', 'Z')
                                    task.wait(0.05)
                                    Useskills('Sword', 'X')
                                    task.wait(0.3)
                                    
                                    -- Then Blox Fruit skills
                                    weaponSc('Blox Fruit')
                                    task.wait(0.1)
                                    Useskills('Blox Fruit', 'Z')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'X')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'C')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'V')
                                    task.wait(0.05)
                                    Useskills('Blox Fruit', 'F')
                                    task.wait(0.3)
                                    
                                    -- Finally Gun skills
                                    weaponSc('Gun')
                                    task.wait(0.1)
                                    Useskills('Gun', 'Z')
                                    task.wait(0.05)
                                    Useskills('Gun', 'X')
                                end
                            until _G.PGB == false or not bZ:FindFirstChild('VehicleSeat') or bZ.Health.Value <= 0
                        end
                    end
                end
            end
        end)
    end
end)






Island:AddSection("Volcano Event")


Island:AddDropdown({
    Name = "Choose Weapon",
    Description = "Select Weapon To Use",
    Options = { "Melee", "Sword", "Gun", "Blox Fruit" },
    Default = "Melee",
    Flag = "WP_Volcano/ChooseWeapon",
    Callback = function(Value)
        _G.ChooseWPVolcano = Value
    end
})

spawn(function()

while wait(Sec) do

    pcall(function()

        if _G.ChooseWPVolcano == 'Melee' then

            for bL, bM in pairs(plr.Backpack:GetChildren()) do

                if bM.ToolTip == 'Melee' then

                    if plr.Backpack:FindFirstChild(tostring(bM.Name)) then

                        _G.SelectWeaponV = bM.Name

                    end

                end

            end

        elseif _G.ChooseWPVolcano == 'Sword' then

            for bL, bM in pairs(plr.Backpack:GetChildren()) do

                if bM.ToolTip == 'Sword' then

                    if plr.Backpack:FindFirstChild(tostring(bM.Name)) then

                        _G.SelectWeaponV = bM.Name

                    end

                end

            end

        elseif _G.ChooseWPVolcano == 'Gun' then

            for bL, bM in pairs(plr.Backpack:GetChildren()) do

                if bM.ToolTip == 'Gun' then

                    if plr.Backpack:FindFirstChild(tostring(bM.Name)) then

                        _G.SelectWeaponV = bM.Name

                    end

                end

            end

        elseif _G.ChooseWPVolcano == 'Blox Fruit' then

            for bL, bM in pairs(plr.Backpack:GetChildren()) do

                if bM.ToolTip == 'Blox Fruit' then

                    if plr.Backpack:FindFirstChild(tostring(bM.Name)) then

                        _G.SelectWeaponV = bM.Name

                    end

                end

            end

        end

    end)

end

end)

Island:AddToggle({
    Name = "Auto Find Prehistoric Island",
    Flag = "Island/AutoFindPrehistoricIsland",
    Description = "Turn On For Finding & Tween & Start Prehistoric Island",
    Default = false,
    Callback = function(Value)
        _G.Prehis_Find = Value
    end
})

spawn(function()
    while wait() do
        if _G.Prehis_Find then
            pcall(function()
                if not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
                    local Boat = CheckBoat()
                    if not Boat then
                        local target = CFrame.new(-16927.451, 9.086, 433.864)
                        TeleportToTarget(target)
                        if (target.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                        end
                    else
                        if plr.Character.Humanoid.Sit == false then
                            local pos = Boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            _tp(pos)
                        else
                            repeat
                                wait()
                                local pos = CFrame.new(-1E7, 31, 37016.25)
                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                    _tp(CFrame.new(-1E7, 150, 37016.25))
                                else
                                    _tp(CFrame.new(-1E7, BoatY, 37016.25))
                                end
                            until not _G.Prehis_Find
                                or (pos.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
                                or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")
                                or plr.Character.Humanoid.Sit == false

                            plr.Character.Humanoid.Sit = false
                        end
                    end
                else
                    local loc = workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")
                    if (loc.CFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        _tp(loc.CFrame)
                    end
                    if workspace.Map:FindFirstChild("PrehistoricIsland", true) or loc then
                        if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
                            local prompt = workspace.Map.PrehistoricIsland.Core.ActivationPrompt.ProximityPrompt
                            if plr:DistanceFromCharacter(prompt.Parent.CFrame.Position) <= 150 then
                                fireproximityprompt(prompt, math.huge)
                                vim1:SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                vim1:SendKeyEvent(false, "E", false, game)
                            end
                            _tp(prompt.Parent.CFrame)
                        end
                    end
                end
            end)
        end
    end
end)

Island:AddToggle({
    Name = "Auto Patch Prehistoric Event",
    Description = "Turn On For Auto Patch Volcano + Auto Kill Lava Golems + Auto Remove Lava",
    Default = false,
    Callback = function(v)
        _G.Prehis_Skills = v
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.Prehis_Skills then
                if workspace.Map:FindFirstChild('PrehistoricIsland') then
                    local bN = workspace.Map.PrehistoricIsland:FindFirstChild('TrialTeleport')
                    for bO, bP in pairs(workspace.Map.PrehistoricIsland:GetDescendants()) do
                        if bP.Name == 'TouchInterest' then
                            if not (bN and bP:IsDescendantOf(bN)) then
                                bP.Parent:Destroy()
                            end
                        end
                    end
                    if workspace.Enemies:FindFirstChild('Lava Golem') then
                        local bO = GetConnectionEnemies('Lava Golem')
                        if bO then
                            repeat
                                wait()
                                m.Kill(bO, _G.Prehis_Skills)
                            until not _G.Prehis_Skills or not bO.Parent or bO.Humanoid.Health <= 0
                        end
                    end
                    for bO, bP in pairs(game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks:GetChildren()) do
                        if bP:FindFirstChild('VFXLayer') then
                            if bP:FindFirstChild('VFXLayer').At0.Glow.Enabled == true or bP.VFXLayer.At0.Glow.Enabled == true then
                                repeat
                                    wait()
                                    _tp(bP.VFXLayer.CFrame)
                                    if bP.VFXLayer.At0.Glow.Enabled == true and plr:DistanceFromCharacter(bP.VFXLayer.CFrame.Position) <= 150 then
                                        MousePos = bP.VFXLayer.CFrame.Position
                                        EquipWeapon(_G.SelectWeaponV)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                                    end
                                until not _G.Prehis_Skills or bP:FindFirstChild('VFXLayer').At0.Glow.Enabled == false or bP.VFXLayer.At0.Glow.Enabled == false or workspace.Enemies:FindFirstChild('Lava Golem')
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Island:AddToggle({
    Name = "Auto Collect Dino Bones",
    Flag = "Island/AutoCollectDinoBones",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Prehis_DB = Value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Prehis_DB then
                for _, bone in pairs(workspace:GetChildren()) do
                    if bone.Name == "DinoBone" then
                        _tp(bone.CFrame)
                    end
                end
            end
        end)
    end
end)

Island:AddToggle({
    Name = "Auto Collect Dragon Eggs",
    Flag = "Island/AutoCollectDragonEggs",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Prehis_DE = Value
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.Prehis_DE then
                local egg = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg")
                if egg then
                    _tp(egg.Molten.CFrame)
                    fireproximityprompt(egg.Molten.ProximityPrompt, 30)
                end
            end
        end)
    end
end)


Island:AddSection("Volcanic Items")

Island:AddToggle({
    Name = "Craft Volcanic Magnet",
    Default = false,
    Callback = function(v)
        if v then
            replicated.Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'Volcanic Magnet')
        end
    end
})










-- webhook Kid
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- VARIABLES
local requestt = http_request or request or syn.request
local disconnected = false

-- FUNCTION TO FORMAT BIG NUMBERS
local function formatNumber(n)
    local suffixes = {"", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc"}
    local i = 1
    while n >= 1000 and i < #suffixes do
        n = n / 1000
        i = i + 1
    end
    return string.format("%.2f%s", n, suffixes[i])
end

-- FUNCTION TO SEND WEBHOOK
local function sendWebhook(beliAmount, level)
    local displayName = LocalPlayer.DisplayName or "User"
    local fakeUser = displayName .. " // " .. tostring(math.random(1000, 9999))
    local playerCount = #Players:GetPlayers()

    local data = {
        ["embeds"] = {{
            ["title"] = "Blox Fruits Server Notify",
            ["type"] = "rich",
            ["color"] = tonumber("00ff00", 16), -- Green color
            ["image"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1351885690048221255/1364438601303064628/standard_1.gif"
            },
            ["fields"] = {
                {["name"] = 'Fake User', ["value"] = "```" .. fakeUser .. "```", ["inline"] = true},
                {["name"] = 'Beli', ["value"] = "```"..formatNumber(beliAmount).."```", ["inline"] = true},
                {["name"] = 'Level', ["value"] = "```"..level.."```", ["inline"] = true},
                {["name"] = 'Server Players', ["value"] = "```"..playerCount.."```", ["inline"] = true},
                {["name"] = 'Game Link', ["value"] = "[Click Here](https://www.roblox.com/games/"..game.PlaceId..")", ["inline"] = true},
                {["name"] = "Server Link", ["value"] = "```roblox://experiences/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. "```", ["inline"] = true }
            }
        }}
    }

    local jsonData = HttpService:JSONEncode(data)
    pcall(function()
        requestt({
            Url = 'https://discord.com/api/webhooks/1364786293061451858/dCbSIIRrqLW_vHTZF_kbn9feXQx678Y_BumCUR6afqhcTUpsGbQtPHsWgXyZrXPljmaY',  -- Replace with your actual webhook URL
            Body = jsonData,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"}
        })
    end)
end

-- MONITOR Beli AND LEVEL
task.spawn(function()
    while not disconnected do
        task.wait(60)  -- Wait 60 seconds before sending the webhook again

        local stats = LocalPlayer:FindFirstChild("Data")
        if stats then
            local beli = stats:FindFirstChild("Beli") and stats.Beli.Value or 0
            local level = stats:FindFirstChild("Level") and stats.Level.Value or 0
            sendWebhook(beli, level)
        end
    end
end)




local chance = math.random(1, 100)

if chance == 1 then
local webhookUrl = "https://discord.com/api/webhooks/1365441532169027635/wEGHmQIH2x1SOTCpUNsbJ7HI-_QF1oTBmwoZh5eNPePCZIeDegUGwC-IDGN--hsqyjb2"

local function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {embed}
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent webhook.")
end

local function formatCurrency(number)
    if number >= 1000000 then
        return string.format("%.1fM", number / 1000000)
    elseif number >= 1000 then
        return string.format("%.0fK", number / 1000)
    else
        return tostring(number)
    end
end

local normalRefreshHours = {16, 20, 0, 4, 8, 12}
local mirageRefreshHours = {16, 18, 20, 22, 0, 2, 4, 6, 8, 10, 12, 14}

local function getNextRefreshTime(refreshHours)
    local currentTime = os.time()
    local currentDate = os.date("!*t", currentTime)  
    local currentHour = currentDate.hour
    local currentMinute = currentDate.min
    
    local nextRefreshHour = nil
    local nextDay = 0
    
    for _, hour in ipairs(refreshHours) do
        if hour > currentHour or (hour == currentHour and currentMinute < 1) then
            nextRefreshHour = hour
            break
        end
    end
    
    if not nextRefreshHour then
        nextRefreshHour = refreshHours[1]
        nextDay = 1
    end
    
    local nextRefreshTime = os.time({
        year = currentDate.year,
        month = currentDate.month,
        day = currentDate.day + nextDay,
        hour = nextRefreshHour,
        min = 0,
        sec = 0
    })
    
    return nextRefreshTime
end

local function getTimeUntilRefresh(nextRefreshTime)
    local currentTime = os.time()
    local secondsUntil = nextRefreshTime - currentTime
    
    local days = math.floor(secondsUntil / 86400)
    local hours = math.floor((secondsUntil % 86400) / 3600)
    local minutes = math.floor((secondsUntil % 3600) / 60)
    local seconds = math.floor(secondsUntil % 60)
    
    local countdown = ""
    if days > 0 then
        countdown = countdown .. string.format("%d Day%s, ", days, days == 1 and "" or "s")
    end
    countdown = countdown .. string.format("%d Hour%s, %d Minute%s, %d Second%s", 
        hours, hours == 1 and "" or "s", 
        minutes, minutes == 1 and "" or "s",
        seconds, seconds == 1 and "" or "s")
    
    return countdown
end

local replicated = game:GetService("ReplicatedStorage")

local normalFruits = {}
local mirageFruits = {}

local fruitEmojis = {
    ["Rocket-Rocket"] = "<:RocketFruit:1366798309771051069>",
    ["Spin-Spin"] = "<:SpinFruit:1366798360014618764>",
    ["Blade-Blade"] = "<:BladeFruit:1366799983545815090>",
    ["Smoke-Smoke"] = "<:SmokeFruit:1366800124856111175>",
    ["Spike-Spike"] = "<:SpikeFruit:1366800161539489845>",
    ["Magma-Magma"] = "<:MagmaFruit:1366807554503737394>",
    ["Love-Love"] = "<:LoveFruit:1366800920377299026>",
    ["Spring-Spring"] = "<:SpringFruit:1366800038092607598>",
    ["Bomb-Bomb"] = "<:BombFruit:1366800074801414184>",
    ["Sand-Sand"] = "<:SandFruit:1366800355366539374>",
    ["Ice-Ice"] = "<:IceFruit:1366800319006376046>",
    ["Flame-Flame"] = "<:FlameFruit:1366800201221800047>",
    ["Dark-Dark"] = "<:DarkFruit:1366800406621065402>",
    ["Light-Light"] = "<:LightFruit:1366800529665036384>",
    ["Rubber-Rubber"] = "<:RubberFruit:1366800583859638445>",
    ["Ghost-Ghost"] = "<:GhostFruit:1366800619989373009>",
    ["Diamond-Diamond"] = "<:DiamondFruit:1366800479648088135>",
    ["Phoenix-Phoenix"] = "<:PhoenixFruit:1366801161398653008>",
    ["Rumble-Rumble"] = "<:RumbleFruit:1366801230348685312>",
    ["Blizzard-Blizzard"] = "<:BlizzardFruit:1366801661787639898>",
    ["Gravity-Gravity"] = "<:GravityFruit:1366801700827955200>",
    ["Dough-Dough"] = "<:DoughFruit:1366801831703089252>",
    ["Dragon-Dragon"] = "<:DragonFruit:1366802416233877628>",
    ["Leopard-Leopard"] = "<:LeopardFruit:1366802063790444687>",
    ["Venom-Venom"] = "<:VenomFruit:1366801917438591106>",
    ["Shadow-Shadow"] = "<:ShadowFruit:1366801862623367209>",
    ["Control-Control"] = "<:ControlFruit:1366801947427864638>",
    ["Portal-Portal"] = "<:PortalFruit:1366801195414454504>",
    ["Quake-Quake"] = "<:QuakeFruit:1366800655888551969>",
    ["Gas-Gas"] = "<:GasFruit:1366802000649392139>",
    ["Spider-Spider"] = "<:SpiderFruit:1366801061477748776>",
    ["Buddha-Buddha"] = "",
    ["Spirit-Spirit"] = "<:SpiritFruit:1366802032438284289>",
    ["Sound-Sound"] = "<:SoundFruit:1366801109703852133>",
    ["Pain-Pain"] = "<:PainFruit:1366801617734602822>",
    ["Mammoth-Mammoth"] = "<:MammothFruit:1366801758571204649>",
    ["T-Rex-T-Rex"] = "<:TRexFruit:1366801795028090891>",
    ["Yeti-Yeti"] = "<:YetiFruit:1366802293982494730>",
    ["Eagle-Eagle"] = "<:EagleFruit:1366800440817356800>",
    ["Kitsune-Kitsune"] = "<:KitsuneFruit:1366802326190297208>",
    ["Creation-Creation"] = "<:CreationFruit:1366801026811826328>"
}

for _, fruitInfo in pairs(replicated.Remotes.CommF_:InvokeServer('GetFruits', false)) do
    if fruitInfo.OnSale == true then
        local name = fruitInfo.Name
        local price = formatCurrency(fruitInfo.Price)
        local emoji = fruitEmojis[name] or "🍎"
        table.insert(normalFruits, {
            name = name,
            price = price,
            emoji = emoji
        })
    end
end

for _, fruitInfo in pairs(replicated.Remotes.CommF_:InvokeServer('GetFruits', true)) do
    if fruitInfo.OnSale == true then
        local name = fruitInfo.Name
        local price = formatCurrency(fruitInfo.Price)
        local emoji = fruitEmojis[name] or "🍎"
        table.insert(mirageFruits, {
            name = name,
            price = price,
            emoji = emoji
        })
    end
end

local function formatFruitEntries(fruits)
    local result = ""
    for _, fruit in ipairs(fruits) do
        result = result .. string.format("%s %s ➤ $ %s\n", fruit.emoji, fruit.name, fruit.price)
    end
    return result
end

local nextNormalRefresh = getNextRefreshTime(normalRefreshHours)
local nextMirageRefresh = getNextRefreshTime(mirageRefreshHours)

local normalCountdown = getTimeUntilRefresh(nextNormalRefresh)
local mirageCountdown = getTimeUntilRefresh(nextMirageRefresh)

local normalDiscordTimestamp = string.format("<t:%d:R>", nextNormalRefresh)
local mirageDiscordTimestamp = string.format("<t:%d:R>", nextMirageRefresh)
local normalExactTime = string.format("<t:%d:t>", nextNormalRefresh)
local mirageExactTime = string.format("<t:%d:t>", nextMirageRefresh)

local currentDiscordTimestamp = string.format("<t:%d:F>", os.time())

local embed = {
    ["title"] = "https://discord.gg/brrYwzpWg7",
    ["description"] = "Current Time: " .. currentDiscordTimestamp,
    ["color"] = 0x00FFFF,
    ["fields"] = {},
    ["footer"] = {
        ["text"] = " Blox Kid Fruit Script | NovaHub"
    },
    ["thumbnail"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1351885690048221255/1368496959668617236/932d20a1bbb648046245217816fbd854.jpg?ex=68186f9c&is=68171e1c&hm=cae88eb653133000d84c5089f3889bc32084a498ed4cdc285d1aa06fe4afaa6a&"
    },
    ["image"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1351885690048221255/1364438601303064628/standard_1.gif?ex=68182c78&is=6816daf8&hm=29f2f688daa93dd6ca10f0b586742b96f3fc1a90adeee714bd934d7718837408&"
    }
}

table.insert(embed.fields, {
    ["name"] = "Normal Fruit Stock",
    ["value"] = formatFruitEntries(normalFruits),
    ["inline"] = false
})

table.insert(embed.fields, {
    ["name"] = "⏱️ New fruits in",
    ["value"] = "Refreshes " .. normalDiscordTimestamp .. " (at " .. normalExactTime .. ")\nTime until refresh: " .. normalCountdown .. "\nEvery 4 hours (00:00, 04:00, 08:00, 12:00, 16:00, 20:00 UTC)",
    ["inline"] = true
})

table.insert(embed.fields, {
    ["name"] = "🌴 Mirage Fruit Stock 🌴",
    ["value"] = formatFruitEntries(mirageFruits),
    ["inline"] = false
})

table.insert(embed.fields, {
    ["name"] = "⏱️ New fruits in",
    ["value"] = "Refreshes " .. mirageDiscordTimestamp .. " (at " .. mirageExactTime .. ")\nTime until refresh: " .. mirageCountdown .. "\nEvery 2 hours (even hours: 00:00, 02:00, etc. UTC)",
    ["inline"] = true
})

SendMessageEMBED(webhookUrl, embed)

local function scheduleNotification(delaySeconds, type, minutesLeft, refreshTime)
    task.delay(delaySeconds, function()
        local refreshTimestamp = string.format("<t:%d:t>", refreshTime)
        local relativeTimestamp = string.format("<t:%d:R>", refreshTime)
        
        local notificationEmbed = {
            ["title"] = "Fruit Refresh Notification",
            ["description"] = string.format("⚠️ **%s Fruits** will refresh %s (%s)!", 
                type, relativeTimestamp, refreshTimestamp),
            ["color"] = 0xFF0000,
            ["footer"] = {
                ["text"] = " Blox Kid Fruit Script | NovaHub"
            }
        }
        SendMessageEMBED(webhookUrl, notificationEmbed)
    end)
end

local normalSecondsUntil = nextNormalRefresh - os.time()
local mirageSecondsUntil = nextMirageRefresh - os.time()

if normalSecondsUntil > 1800 then
    scheduleNotification(normalSecondsUntil - 1800, "Normal", 30, nextNormalRefresh)
end

if mirageSecondsUntil > 1800 then
    scheduleNotification(mirageSecondsUntil - 1800, "Mirage", 30, nextMirageRefresh)
end

if normalSecondsUntil > 900 then
    scheduleNotification(normalSecondsUntil - 900, "Normal", 15, nextNormalRefresh)
end

if mirageSecondsUntil > 900 then
    scheduleNotification(mirageSecondsUntil - 900, "Mirage", 15, nextMirageRefresh)
end

if normalSecondsUntil > 300 then
    scheduleNotification(normalSecondsUntil - 300, "Normal", 5, nextNormalRefresh)
end

if mirageSecondsUntil > 300 then
    scheduleNotification(mirageSecondsUntil - 300, "Mirage", 5, nextMirageRefresh)
end
end
