
	print(os.clock())
	local v_u_8 = game:GetService('ReplicatedStorage'):WaitForChild('Packages'):WaitForChild((string.gsub(game.JobId, "-", "")))
	local v_u_9 = game:GetService('ReplicatedStorage'):WaitForChild('Packages'):WaitForChild(string.gsub(game.JobId, "-", "") .. "-")
	game:WaitForChild('Players').LocalPlayer:SetAttribute('verysecretcode', v_u_9:InvokeServer())
	local obj1 = Instance.new("ObjectValue")
	obj1.Parent = game:WaitForChild('Players').LocalPlayer
	obj1.Value = v_u_8
	obj1.Name = 'vu8'
	print('doneupd23')
	wait(5)
	local function suces()
		local news = Instance.new('Message')
		news.Text = "success!"
		news.Parent = workspace
		getgenv().RanScriptPurry = true
		local v_u_30 = workspace.CurrentCamera
		local v_u_31 = nil
		local v_u_8 = game.Players.LocalPlayer:WaitForChild('vu8').Value
		local v_u_10 = game.Players.LocalPlayer:GetAttribute('verysecretcode')
		local function Parry()
			local v_u_71 = -1
			local v_u_72 = -1
			local v73 = false
			local v74 = 0
			local v81 = {}
			for _, v85 in workspace.Alive:GetChildren() do
				if v85:FindFirstChild("HumanoidRootPart") then
					v81[v85.Name] = v_u_30:WorldToScreenPoint(v85.HumanoidRootPart.Position)
				end
			end
			local v86 = game.UserInputService:GetLastInputType()
			local v87
			if v86 == Enum.UserInputType.MouseButton1 or (Enum.UserInputType.MouseButton2 or v86 == Enum.UserInputType.Keyboard) then
				local v88 = game.UserInputService:GetMouseLocation()
				v87 = { v88.X, v88.Y }
			else
				v87 = { v_u_30.ViewportSize.X / 2, v_u_30.ViewportSize.Y / 2 }
			end
			local p66 = false
			--v_u_11:FireServer('PARRY_HASH', v_u_10, v_u_71, v_u_30.CFrame, v81, v87, p66)
			v_u_8:FireServer(_G.PARRY_HASH_FAKE_1, v_u_10, v_u_71, v_u_30.CFrame, v81, v87, p66)
			--v_u_12:FireServer(_G.PARRY_HASH_FAKE_2, v_u_10, v_u_71, v_u_30.CFrame, v81, v87, p66)
		end

		game:GetService('UserInputService').InputBegan:Connect(function(inp, gpe)
			if gpe then return end
			if (inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.KeyCode == Enum.KeyCode.F) and workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Character.Name) then
				Parry()
			end
		end)
		print('done2')
		wait(2)
		news:Destroy()
	end
	local function notsuc()
		local newss = Instance.new('Message')
		newss.Text = "Script Already Ran"
		newss.Parent = workspace
		print('failed')
		wait(2)
		newss:Destroy()
	end
	if 	getgenv().RanScriptPurry == true then
		notsuc()
	else
		suces()
	end
