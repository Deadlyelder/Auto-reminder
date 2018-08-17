#!/bin/bash

messages=('Hi, How is it going? :)'
	'Yo mate, update?'
	'You are sane or gone?'
	)

selectedmessage=${messages[ $(( RANDOM % ${#messages[@]} )) ] }
osascript -e 'tell application "Messages" to send "'"$selectedmessage"'" to buddy "John Doe"'
