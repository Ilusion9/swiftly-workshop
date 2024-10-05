AddEventHandler("OnPluginStart", function(p_Event)
	Workshop_LoadConfig()
	
	if not g_LoadCollection then
		g_LoadCollection = true
		
		SetTimeout(5000, function()
			Workshop_LoadCollection()
		end)
	end
end)

AddEventHandler("OnMapLoad", function(p_Event, p_Map)
	Workshop_LoadConfig()
	
	if not g_LoadCollection then
		g_LoadCollection = true
		
		SetTimeout(5000, function()
			Workshop_LoadCollection()
		end)
	end
end)

AddEventHandler("OnMapUnload", function(p_Event, p_Map)
	g_LoadCollection = nil
end)