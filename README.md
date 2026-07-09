# Telegram Bot API Server - Replit Edition

One-click deployable Telegram Bot API server that supports file downloads >20MB.

## What is this?

This is a custom Telegram Bot API server that removes the 20MB file download limit of the official Telegram Bot API. Deploy it on Replit for free!

## Setup Instructions

### 1. Get API Credentials
- Go to https://my.telegram.org/apps
- Log in with your Telegram account
- Create an app (name it whatever you want)
- Copy your `api_id` (number) and `api_hash` (long string)

### 2. Deploy on Replit
- Click the one-click deploy link: https://replit.com/github/damare01/telegram-bot-api-replit
- Wait for it to load

### 3. Add Secrets
- Click **Tools** (left sidebar) → **Secrets** (lock icon)
- Add two secrets:
  - **Key:** `TELEGRAM_API_ID` → **Value:** your `api_id`
  - **Key:** `TELEGRAM_API_HASH` → **Value:** your `api_hash`

### 4. Run
- Click **Run** button
- Wait 2-3 minutes for Docker to build
- You'll see: `Bot API server started at http://0.0.0.0:8081`

### 5. Get Your Server URL
Your Telegram Bot API server is now running at:
```
https://YOUR-REPLIT-USERNAME.repl.co:8081
```

## Use With Google Apps Script

In your Google Apps Script `TELEGRAM_API` property, set:
```
https://YOUR-REPLIT-USERNAME.repl.co:8081
```

Then run `setWebhook()` in Apps Script to re-register your webhook.

## Features

✅ No 20MB file size limit  
✅ Free Replit tier available  
✅ One-click deploy  
✅ Works with Telegram Bot API clients  
✅ Supports file uploads up to 2GB  

## Official Documentation

- Telegram Bot API: https://core.telegram.org/bots/api
- TDLib (powers this): https://core.telegram.org/tdlib

## Troubleshooting

**Docker won't build:**
- Check the Replit console for build errors
- Verify your `TELEGRAM_API_ID` and `TELEGRAM_API_HASH` are correct
- Make sure secrets are properly set in Replit

**Bot API won't start:**
- Wait a few more minutes (first startup takes time)
- Refresh the Replit page
- Check console for error messages

**Connection timeout:**
- Replit free tier may put your app to sleep after 1 hour of inactivity
- Upgrade to Replit paid tier for always-on deployment
- Or use UptimeRobot to ping your server every 5 minutes

## License

Telegram Bot API is open source. See: https://github.com/tdlib/telegram-bot-api