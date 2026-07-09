# Telegram Bot API Server - Render Edition

One-click deployable Telegram Bot API server that supports file downloads >20MB.

## What is this?

This is a custom Telegram Bot API server that removes the 20MB file download limit of the official Telegram Bot API. Deploy it on Render for free!

## Setup Instructions

### 1. Get API Credentials
- Go to https://my.telegram.org/apps
- Log in with your Telegram account
- Create an app (name it whatever you want)
- Copy your `api_id` (number) and `api_hash` (long string)

### 2. Create Account on Render
- Go to https://render.com
- Sign up (free account)
- Connect your GitHub account

### 3. Deploy on Render
- Go to https://render.com/dashboard
- Click **New +** → **Web Service**
- Select **Deploy an existing repository**
- Choose this repo: `damare01/telegram-bot-api-replit`
- Click **Connect**

### 4. Configure Deployment
- **Name:** `telegram-bot-api` (or any name)
- **Environment:** Select `Docker`
- **Region:** Choose closest to you
- **Branch:** `main`

### 5. Add Environment Variables
- Scroll down to **Environment**
- Click **Add Environment Variable**
- Add:
  - **Key:** `TELEGRAM_API_ID` → **Value:** your api_id from https://my.telegram.org/apps
  - **Key:** `TELEGRAM_API_HASH` → **Value:** your api_hash from https://my.telegram.org/apps

### 6. Deploy
- Scroll to bottom
- Click **Create Web Service**
- Render will build and deploy automatically (takes 5-10 minutes)
- You'll see a green checkmark when done

### 7. Get Your Server URL
- After deployment, your URL will be shown at the top
- Format: `https://telegram-bot-api.onrender.com`
- Copy this URL

## Use With Google Apps Script

In your Google Apps Script `TELEGRAM_API` property, set:
```
https://YOUR-SERVICE-NAME.onrender.com
```

Then run `setWebhook()` in Apps Script to re-register your webhook.

## Features

✅ No 20MB file size limit  
✅ Free Render tier available  
✅ Works with Telegram Bot API clients  
✅ Supports file uploads up to 2GB  
✅ Automatic HTTPS  
✅ Docker fully supported  

## Important Notes

⚠️ **Free tier limitations:**
- Service spins down after 15 minutes of inactivity
- Takes 30-60 seconds to spin back up (first request will be slow)
- For production, upgrade to Starter Plan ($7/month)

**To keep it always-on:**
- Upgrade to Starter Plan ($7/month)
- Or use UptimeRobot (free) to ping every 5 minutes

## Official Documentation

- Telegram Bot API: https://core.telegram.org/bots/api
- TDLib (powers this): https://core.telegram.org/tdlib
- Render Docs: https://render.com/docs

## Troubleshooting

**Build failed:**
- Check the Render build logs (Logs tab)
- Verify your `TELEGRAM_API_ID` and `TELEGRAM_API_HASH` are correct
- Make sure environment variables are set properly

**Service won't start:**
- Go to **Logs** tab and look for error messages
- Check that the environment variables are correct
- Try redeploying (Manual Deploy → Deploy latest)

**Timeout or slow responses:**
- Free tier spins down after 15 mins of inactivity
- First request after spin-down takes 30-60 seconds
- Consider upgrading to Starter Plan for production use

**Can't connect from Apps Script:**
- Make sure you're using the correct Render URL
- Check that your bot token is correct
- Run `checkConfig()` in Apps Script to verify settings

## Cost

- **Free tier:** Limited, spins down after 15 mins
- **Starter ($7/month):** Always-on, 0.5 CPU, 512MB RAM
- **Standard ($12/month):** 1 CPU, 1GB RAM

## License

Telegram Bot API is open source. See: https://github.com/tdlib/telegram-bot-api