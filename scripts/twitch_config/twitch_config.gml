function twitch_config() {
	// POUR VERSION PRODUCTION : METTRE EN COMMENTAIRE GLOBAL.CHANNEL ET DELETE L'OBJET OCONNECTION DANS RM_MENU
	// ET DECOMMENTER LIGNE DANS ODIALOG_START_1 POUR FAIRE SPAWN OCONNECTION
	global.channel = "#funkyyfight"
	global.botname = "FunkyyFight";			 // Botname
	global.oauth   = "oauth:gh1cr0gtjcuqsxffscim1rkyl4c95u"; // OAUTH token

	// Get your OAUTH token from here: https://twitchapps.com/tmi/

	// Other options
	global.prefix			= "!" // Prefix used before a command
	global.max_messages		= 100; // Amount of messages to keep in the DS list

	global.max_responses	=  5;
	global.response_timeout =  3; // Seconds between each response (seconds)

	/* To see the message limits look here: https://dev.twitch.tv/docs/irc/guide/#command--message-limits
	Currently the limits are:
		Moderators / Owners:	100 messages per 30 seconds
		Regular / Any viewer:	20 messages per 30 seconds
	
	To be 100% sure the bot doesn't get banned (with moderator status)
		The "response_timeout" should be atleast 0.3

/* end twitch_config */
}
