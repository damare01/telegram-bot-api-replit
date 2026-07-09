# Telegram Bot API Server - Fly.io Edition

One-click deployable Telegram Bot API server that supports file downloads >20MB on Fly.io free tier.

## What is this?

This is a custom Telegram Bot API server that removes the 20MB file download limit of the official Telegram Bot API. Deploy it on Fly.io completely free!

## Setup Instructions

### 1. Get API Credentials
- Go to https://my.telegram.org/apps
- Log in with your Telegram account
- Create an app (name it whatever you want)
- Copy your `api_id` (number) and `api_hash` (long string)

### 2. Install Fly CLI
Download and install from: https://fly.io/docs/getting-started/installing-flyctl/

**Windows (PowerShell):**
```powershell
iex "& { $(irm https://fly.io/install.ps1) }"
```

**Mac:**
```bash
curl -L https://fly.io/install.sh | sh
```

**Linux:**
```bash
curl -L https://fly.io/install.sh | sh
```

### 3. Login to Fly.io
```bash
flyctl auth login
```

This opens a browser to create a free account (no credit card needed)

### 4. Clone This Repo
```bash
git clone https://github.com/damare01/telegram-bot-api-replit.git
cd telegram-bot-api-replit
```

### 5. Deploy
```bash
flyctl launch
```

When prompted:
- **App name:** telegram-bot-api (or your choice)
- **Region:** Choose closest to you (ord = Chicago, lax = Los Angeles, ams = Amsterdam)
- **Would you like to set build secrets?** → `y` (yes)
- **Secret name:** `TELEGRAM_API_ID`
- **Secret value:** (paste your api_id)
- **Add another secret?** → `y`
- **Secret name:** `TELEGRAM_API_HASH`
- **Secret value:** (paste your api_hash)
- **Would you like to deploy now?** → `y`

### 6. Get Your URL
After deployment, you'll see:
```
Visit your app at https://telegram-bot-api-xxxx.fly.dev
```

Your server URL is: `https://telegram-bot-api-xxxx.fly.dev`

## Use With Google Apps Script

In your Google Apps Script `TELEGRAM_API` property, set:
```
https://YOUR-APP-NAME.fly.dev
```

Then run these functions in Apps Script:
1. `deleteWebhook()` → Click **Run**
2. `setWebhook()` → Click **Run**

Check logs to confirm webhook is set.

## Features

✅ No 20MB file size limit  
✅ **Completely FREE** - Fly.io free tier (3 shared-cpu VMs)  
✅ Supports files up to 2GB+  
✅ Works with Telegram Bot API clients  
✅ Automatic HTTPS/SSL  
✅ Always-on (no sleep)  
✅ Global CDN  

## Official Documentation

- Telegram Bot API: https://core.telegram.org/bots/api
- TDLib (powers this): https://core.telegram.org/tdlib
- Fly.io: https://fly.io/docs

## Troubleshooting

**"Command not found: flyctl"**
- Restart your terminal/PowerShell after installing flyctl

**Deployment fails:**
```bash
# Check logs
flyctl logs

# Check status
flyctl status
```

**Verify environment variables are set:**
```bash
flyctl secrets list
```

**App URL not accessible:**
- Wait a few minutes for deployment to fully complete
- Check: `flyctl status`

**Still having issues?**
Check logs with:
```bash
flyctl logs --follow
```

## Managing Your App

**View app status:**
```bash
flyctl status
```

**View logs:**
```bash
flyctl logs
```

**Update secrets:**
```bash
flyctl secrets set TELEGRAM_API_ID=new_value
flyctl secrets set TELEGRAM_API_HASH=new_value
```

**Restart app:**
```bash
flyctl restart
```

**Scale instances (advanced):**
```bash
flyctl scale count 2
```

## Cost

- **FREE tier:** 3 shared-cpu-1x 256MB VMs, 3GB persistent storage
- This is enough to run the Telegram Bot API server
- If you need more resources, paid plans start at $1.94/month

## License

Telegram Bot API is open source. See: https://github.com/tdlib/telegram-bot-api