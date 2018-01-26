#!/bin/bash

messages=('Hi, just a friendly reminder that we are meeting today for hangout at our regular point :)'
	'Yo mate, we meet at our regular spot with others in the evening'
	'Its Friday!!! You are coming for the hangout, I owe you a drink :)'
	)

selectedmessage=${messages[ $(( RANDOM % ${#messages[@]} )) ] }
osascript -e 'tell application "Messages" to send "'"$selectedmessage"'" to buddy "John Doe"'
