function twitch_commands(argument0, argument1) {
	// --- IGNORE --- \\
	var name	 = argument0;
	var response = undefined;
	var message  = string_replace(argument1 + " ", chr(13) + chr(10), "");
	var command  = string_copy(message, 0, string_pos(" ", message) - 1); // Get the first word

	// The command prefix has already been removed at this point, so you don't need to include it
	switch (command)
	{

		case "health":
			console_log(name + " sent you health!")
			break;
	}

	if response != undefined
	{
		twitch_send_response(response);
	}


}
