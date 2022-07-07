head = nat("twitch.interaction.popup.head")
foot = nat("twitch.interaction.popup.foot")

head = string_replace_all(head, "$VIEWER", viewer_name)
foot = string_replace_all(foot, "$MSG", viewer_msg)

