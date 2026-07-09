# Telegram Bot API Server - Heroku Edition

One-click deployable Telegram Bot API server that supports file downloads >20MB.

## What is this?

This is a custom Telegram Bot API server that removes the 20MB file download limit of the official Telegram Bot API. Deploy it on Heroku for free!

## Setup Instructions

### 1. Get API Credentials
- Go to https://my.telegram.org/apps
- Log in with your Telegram account
- Create an app (name it whatever you want)
- Copy your `api_id` (number) and `api_hash` (long string)

### 2. Deploy on Heroku
- Click the one-click deploy button below:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/damare01/telegram-bot-api-replit)

### 3. Fill in the Form
- **App name:** Choose any name (e.g., `my-telegram-bot-api`)
- **TELEGRAM_API_ID:** Your api_id from https://my.telegram.org/apps
- **TELEGRAM_API_HASH:** Your api_hash from https://my.telegram.org/apps
- Click **Deploy app**

### 4. Wait for Deployment
- Heroku will build and deploy automatically
- Takes 2-5 minutes
- You'll see "Your app was successfully deployed"

### 5. Get Your Server URL
- Click **View** or go to your Heroku dashboard
- Your server URL will be: `https://YOUR-APP-NAME.herokuapp.com`

## Use With Google Apps Script

In your Google Apps Script `TELEGRAM_API` property, set:
```
https://YOUR-APP-NAME.herokuapp.com
```

Then run `setWebhook()` in Apps Script to re-register your webhook.

## Features

✅ No 20MB file size limit  
✅ Free Heroku tier available  
✅ One-click deploy  
✅ Works with Telegram Bot API clients  
✅ Supports file uploads up to 2GB  
✅ Automatic HTTPS  
✅ Easy updates  

## Official Documentation

- Telegram Bot API: https://core.telegram.org/bots/api
- TDLib (powers this): https://core.telegram.org/tdlib
- Heroku: https://devcenter.heroku.com/

## Troubleshooting

**Build failed:**
- Check the Heroku build logs
- Verify your `TELEGRAM_API_ID` and `TELEGRAM_API_HASH` are correct
- Make sure environment variables are set in Heroku settings

**App crashes:**
- Go to Heroku dashboard → Your app → **Logs**
- Look for error messages
- Try restarting the dyno: **More** → **Restart all dynos**

**Can't find the URL:**
- Go to Heroku dashboard
- Click on your app
- Look for the **Domains** section or **Visit app** button
- The URL is shown there

**Performance is slow:**
- Free Heroku tier has limitations
- Consider upgrading to Eco or Standard dyno
- Or use a VPS like DigitalOcean for better performance

## Cost

- **Free tier:** Limited, but works for light usage
- **Eco dyno:** $5/month (recommended)
- **Standard dyno:** $7/month

## License

Telegram Bot API is open source. See: https://github.com/tdlib/telegram-bot-api