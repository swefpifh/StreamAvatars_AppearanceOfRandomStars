# StreamAvatars_AppearanceOfRandomStars
##### Script for StreamAvatars




### starsEventSoundActivated
>- **true** 🠚 Activate the sound effect for the launch of the command.
>- **false** 🠚 Deactivate the sound effect for the launch of the command. (*Default*)

### starsEventSound
>- Allows a sound to be played when "*starsEventSoundActivated*" is "*True*". The sound must be added to the "**Sounds**" category of **Stream Avatars**. Then enter the name of the title in inverted commas.

### starsEventChatTextAnnonce
>- **0** 🠚 No message will be displayed in the Twitch chat.
>- **1** 🠚 The message notified in "*starsEventChatText*" will be written in italics and displayed in the Twitch chat. (*Default*)
>- **2** 🠚 The message notified in "*starsEventChatText*" will be written in announcement mode and will be sent in the Twitch chat. ⚠ On Android devices, the announcement and the text will not be displayed.

### starsEventChatText
>- This is the message that will be displayed in the Twitch chat when the command is executed.

### starsBubbleActivated
>- **true** 🠚 Activate the display of the chat bubble.
>- **false** 🠚 Deactivate the display of the chat bubble. (*Default*)

### starsUsername "swefpifh",
>- Enter the name of the active avatar that will make the chat bubble appear with the text you have chosen in "*starsBubbleText*".

### starsBubbleText
>- This is the text that will be displayed in the bubble of the chosen character in "*starsUsername*".

### starsSpawningSoundActivated
>- **true** 🠚 Activate the sound effect.
>- **false** 🠚 Deactivate the sound effect. (*Default*)

### starsSpawningSound
>- Allows a sound to be played when "*starsSpawningSoundActivated*" is "*True*". The sound must be added to the "**Sounds**" category of **Stream Avatars**. Then enter the name of the title in inverted commas.

### starsSpawningChance
>- Generates a chance to activate a star. The smaller the number, the lower the chance of a star appearing. If you choose 100, you will get stars every time. (*Default = 60*)

### starsSpawningNumber
>- Allows you to display a number of stars according to the percentage of chance you entered in "*starsSpawningChance*". By default, a value between 5 and 10 will be stored. Let's imagine that the value chosen is 8. You will then have 8 rolls of the die with a 60% chance of displaying a star.

### starsSpawningInterval
>- Allows you to choose the interval between each star.
