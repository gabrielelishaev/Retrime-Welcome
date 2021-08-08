hook.Add("InitPostEntity", "WelcomeScreen", function()

	-- Don't touch line from 11 - 85
	local view = views[math.random(#views)]
	local song = songs[math.random(#songs)]

	local panel = vgui.Create("DFrame")
	panel:SetSize(ScrW(), ScrH())
	panel:Center()
	panel:SetTitle("")
	panel:ShowCloseButton(false)
	panel:SetDraggable(false)
	panel:MakePopup()
	panel.Paint = function()
		render.RenderView(view)
	end

	local width, height = panel:GetSize()
	width, height = width * 0.5, height * 0.5

	local play = vgui.Create("DButton", panel)
	play:SetSize(568, 120)
	play:SetPos(width - (play:GetWide() * 0.5), height - (play:GetTall() * 0.5))
	play:SetText("")
	play.Paint = function(self, w, h)
		pm.iconbe(0, 0, w, h, tc_white, pm.play)
	end
	play.DoClick = function()
		panel:Close()
		LocalPlayer():EmitSound(song, 100, 100, 0.15)
	end

	local site = vgui.Create("DButton", panel)
	site:SetSize(24, 24)
	site:SetPos(width - 75, height + 89)
	site:SetText("")
	site.Paint = function(self, w, h)
		pm.iconbe(0, 0, w, h, tc_bwhite, pm.site)
	end
	site.DoClick = function()
		gui.OpenURL(pm.SiteC)
	end

	local discord = vgui.Create("DButton", panel)
	discord:SetSize(24, 24)
	discord:SetPos(width - 33, height + 89)
	discord:SetText("")
	discord.Paint = function(self, w, h)
		pm.iconbe(0, 0, w, h, tc_bwhite, pm.discord)
	end
	discord.DoClick = function()
		gui.OpenURL(pm.DiscordC)
	end

	local vk = vgui.Create("DButton", panel)
	vk:SetSize(24, 24)
	vk:SetPos(width + 9, height + 89)
	vk:SetText("")
	vk.Paint = function(self, w, h)
		pm.iconbe(0, 0, w, h, tc_bwhite, pm.vk)
	end
	vk.DoClick = function()
		gui.OpenURL(pm.VKC)
	end

	local steam = vgui.Create("DButton", panel)
	steam:SetSize(24, 24)
	steam:SetPos(width + 51, height + 89)
	steam:SetText("")
	steam.Paint = function(self, w, h)
		pm.iconbe(0, 0, w, h, tc_bwhite, pm.steam)
	end
	steam.DoClick = function()
		gui.OpenURL(pm.SteamC)
	end

end)