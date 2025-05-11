#!/bin/bash

# Start cron in the background
cron

# Run install.sh with argument
bash /app/docker-install.sh envelopes_multi_bitmart

# Tail log to keep container alive
tail -f /app/cronlog.log
