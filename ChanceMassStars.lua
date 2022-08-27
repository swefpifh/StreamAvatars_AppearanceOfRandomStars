return function()
	load() -- Loads the json file into memory

	local sEventSoundActivated = data.starsEventSoundActivated -- Effet sonore de lancement d'event
	local sEventChatTextAnnonce = data.starsEventChatTextAnnonce -- Texte d'annonce dans le chat Twitch
	
	local sBubbleActivated = data.starsBubbleActivated
	
	local sSpawningSoundActivated = data.starsSpawningSoundActivated -- Effet sonore de spawn d'une rune
	local sSpawnChance = data.starsSpawningChance -- Chance d'activation
	local sSpawningNumber = math.random(data.starsSpawningNumber.Min, data.starsSpawningNumber.Max)
	local sSpawningInterval = math.random(data.starsSpawningInterval.Min, data.starsSpawningInterval.Max) + math.random()
	
	if sEventSoundActivated == true then runCommand("!play " .. data.starsEventSound, true) end -- Joue le son selectionné
	
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
	
	for i=1,sSpawningNumber do -- Apparition d'un nombre aléatoire d'étoiles
		local sSpawningCustomNumber = math.random(1, 100)
		
		if sSpawningCustomNumber <= sSpawnChance then
			if sSpawningSoundActivated == true then runCommand("!play " .. data.starsSpawningSound, true) end -- Joue le son selectionné
			runCommand("!spawn game", true)
			wait(sSpawningInterval)
		end
	end
end