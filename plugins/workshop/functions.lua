function Workshop_LoadCollection()
	if g_Config["workshop.collection"] == 0 then
		return
	end
	
	local l_Map = server:GetMap()
	
	if l_Map == g_Config["workshop.map"] then
		server:Execute("host_workshop_collection " .. g_Config["workshop.collection"])
	end
end

function Workshop_LoadConfig()
	config:Reload("workshop")
	
	g_Config = {}
	g_Config["workshop.collection"] = tonumber(config:Fetch("workshop.collection"))
	g_Config["workshop.map"] = config:Fetch("workshop.map")
	
	if not g_Config["workshop.collection"] or g_Config["workshop.collection"] < 0 then
		g_Config["workshop.collection"] = 0
	end
	
	if not g_Config["workshop.map"] or type(g_Config["workshop.map"]) ~= "string" then
		g_Config["workshop.map"] = ""
	end
end