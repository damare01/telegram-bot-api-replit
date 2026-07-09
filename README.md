# Telegram Bot API Server - Railway Edition

One-click deployable Telegram Bot API server that supports file downloads >20MB.

## What is this?

This is a custom Telegram Bot API server that removes the 20MB file download limit of the official Telegram Bot API. Deploy it on Railway for free!

## Setup Instructions

### 1. Get API Credentials
- Go to https://my.telegram.org/apps
- Log in with your Telegram account
- Create an app (name it whatever you want)
- Copy your `api_id` (number) and `api_hash` (long string)

### 2. Deploy on Railway
- Click the one-click deploy button below:

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new?template=https%3A%2F%2Fgithub.com%2Fdamare01%2Ftelegram-bot-api-replit&envs=TELEGRAM_API_ID%2CTELEGRAM_API_HASH&TELEGRAM_API_IDDesc=Your+API+ID+from+my.telegram.org&TELEGRAM_API_HASHDesc=Your+API+Hash+from+my.telegram.org)

### 3. Connect Your GitHub Account
- Railway will ask to connect your GitHub account
- Authorize it

### 4. Add Environment Variables
Railway will prompt you for:
- `TELEGRAM_API_ID` - your api_id from https://my.telegram.org/apps
- `TELEGRAM_API_HASH` - your api_hash from https://my.telegram.org/apps

Fill these in and click **Deploy**

### 5. Wait for Deployment
- Railway will build and deploy automatically
- Takes 2-3 minutes
- You'll see green checkmarks when it's ready

### 6. Get Your Server URL
In the Railway dashboard:
1. Click on your service
2. Go to **Settings**
3. Look for the **Public URL** or **Domain**
4. It will be something like: `https://telegram-bot-api-production.up.railway.app`

## Use With Google Apps Script

In your Google Apps Script `TELEGRAM_API` property, set:
```
https://YOUR-RAILWAY-URL.railway.app
```

Then run `setWebhook()` in Apps Script to re-register your webhook.

## Features

✅ No 20MB file size limit  
✅ Free Railway tier available ($5/month credit)  
✅ One-click deploy  
✅ Works with Telegram Bot API clients  
✅ Supports file uploads up to 2GB  
✅ Automatic HTTPS  
✅ Always-on (not put to sleep)  

## Official Documentation

- Telegram Bot API: https://core.telegram.org/bots/api
- TDLib (powers this): https://core.telegram.org/tdlib
- Railway: https://railway.app/docs

## Troubleshooting

**Deployment failed:**
- Check the Railway build logs for errors
- Verify your `TELEGRAM_API_ID` and `TELEGRAM_API_HASH` are correct
- Make sure environment variables are set properly

**Connection timeout:**
- Wait a few minutes for the service to fully start
- Check the Railway dashboard to see service status
- Refresh and try again

**Can't find the URL:**
- Go to Railway dashboard → Your project → Your service
- Click **Settings** tab
- Look for **Domains** section - the public URL is there

## Cost

- **Free tier:** $5/month credit (usually enough for small usage)
- **Paid tier:** Pay-as-you-go (typically $0.01-0.10/hour for this service)

Railway is much more affordable and reliable than keeping a Replit app always-on!

## License

Telegram Bot API is open source. See: https://github.com/tdlib/telegram-bot-api