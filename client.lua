Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(ID DU RICH PRESENCE DISCORD)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('NOM DE L'IMAGE')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('NOM DU SERVEUR')
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('NOM DE LA PETITE IMAGE')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('NOM AFFICHER DE LA PETITE IMAGE')

  players = {}
  for i = 0, 32 do -- Mettre 0, 255 pour du 64 slots
      if NetworkIsPlayerActive( i ) then
          table.insert( players, i )
      end
  end
  SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/32")
  
        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)