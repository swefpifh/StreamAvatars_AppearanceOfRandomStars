return function()
	load()

	local sEventSoundActivated = data.starsEventSoundActivated
	local sEventChatTextAnnonce = data.starsEventChatTextAnnonce
	
	local sBubbleActivated = data.starsBubbleActivated
	
	local sSpawningSoundActivated = data.starsSpawningSoundActivated
	local sSpawnChance = data.starsSpawningChance
	local sSpawningNumber = math.random(data.starsSpawningNumber.Min, data.starsSpawningNumber.Max)
	local sSpawningInterval = math.random(data.starsSpawningInterval.Min + math.random(), data.starsSpawningInterval.Max)
	
	if sEventSoundActivated == true then runCommand("!play " .. data.starsEventSound, true) end
	
	if sEventChatTextAnnonce == 1 then writeChat("/me " .. data.starsEventChatText)
	elseif sEventChatTextAnnonce == 2 then writeChat("/announce " .. data.starsEventChatText)
	else writeChat("")
	end
	
	if sBubbleActivated == true then
		sAvatar = getUser(data.starsUsername)
		wait(2)
        	sAvatar.chatBubble(data.starsBubbleText)
	end
	
	wait(5)
	
	for i=1,sSpawningNumber do
		local sSpawningCustomNumber = math.random(1, 100)
		
		if sSpawningCustomNumber <= sSpawnChance then
			if sSpawningSoundActivated == true then runCommand("!play " .. data.starsSpawningSound, true) end
			runCommand("!spawn game", true)
			wait(sSpawningInterval)
		end
	end
end
