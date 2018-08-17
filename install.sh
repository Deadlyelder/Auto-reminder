#!/bin/bash

# Keep the current crontabs safe
crontab -l > mycron

# Write the new cron to our cron file
cp message.sh ~/Documents/cron/message.sh
echo "5 20 * * 6 ~/Documents/cron/message.sh" >> mycron

# Setup the new cron
crontab mycron
rm mycron
