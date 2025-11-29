# 🚀 Simple cPanel Setup - Copy & Paste Guide

## ⚠️ IMPORTANT: I cannot access your cPanel directly
But I've created everything you need! Just follow these **3 simple steps**:

---

## Step 1: Enable Auto-Deploy (2 clicks)

1. **Go to:** cPanel → **Git Version Control**
2. **Find:** `travelingtypes.com` repository
3. **Click:** **"Manage"** button
4. **Enable:** **"Auto Deploy"** toggle/checkbox
5. **Done!** ✅

**That's it!** Now every time you push to GitHub, cPanel will automatically update.

---

## Step 2: Point Your Domain (One-time setup)

### For Backend (Laravel API):

1. **Go to:** cPanel → **Subdomains**
2. **Create subdomain:** `backend.travelingtypes.com`
3. **Document Root:** Copy and paste this exact path:
   ```
   /home/YOUR_CPANEL_USERNAME/travelingtypes.com/backend/public
   ```
   *(Replace `YOUR_CPANEL_USERNAME` with your actual cPanel username - you can find it in the top right of cPanel)*
4. **Click:** **Create**
5. **Done!** ✅

### For Frontend (Next.js):

**Option A - Use Vercel (Easiest, Recommended):**
1. Go to https://vercel.com
2. Import your GitHub repo: `web3lovertst/travelingtypes.com`
3. Set root directory to: `frontend`
4. Deploy! ✅

**Option B - Use cPanel (Static Site):**
1. **Go to:** cPanel → **Subdomains** or **Addon Domains**
2. **Domain:** `travelingtypes.com` or `www.travelingtypes.com`
3. **Document Root:** 
   ```
   /home/YOUR_CPANEL_USERNAME/travelingtypes.com/frontend/out
   ```
4. **Click:** **Create**
5. **Done!** ✅

---

## Step 3: Add Environment Variables (One-time setup)

### Backend (.env file):

1. **Go to:** cPanel → **File Manager**
2. **Navigate to:** `travelingtypes.com/backend/`
3. **Create new file:** `.env`
4. **Copy this template** (from `backend/.env.example` in your repo):
   ```
   APP_NAME=TravelingTypes
   APP_ENV=production
   APP_KEY=
   APP_DEBUG=false
   APP_URL=https://backend.travelingtypes.com
   
   DB_CONNECTION=mysql
   DB_HOST=localhost
   DB_PORT=3306
   DB_DATABASE=your_database_name
   DB_USERNAME=your_database_user
   DB_PASSWORD=your_database_password
   ```
5. **Fill in your database details** (from cPanel → MySQL Databases)
6. **Save!** ✅

### Frontend (.env.local file):

1. **Go to:** cPanel → **File Manager**
2. **Navigate to:** `travelingtypes.com/frontend/`
3. **Create new file:** `.env.local`
4. **Copy this:**
   ```
   NEXT_PUBLIC_API_URL=https://backend.travelingtypes.com/api
   ```
5. **Save!** ✅

---

## 🎉 That's It!

After these 3 steps:
- ✅ Auto-deploy is enabled
- ✅ Domains are configured
- ✅ Environment variables are set

**Test it:** Make a small change, push to GitHub, and watch it auto-deploy!

---

## 📞 Need Help?

If you get stuck on any step, just tell me which step number and I'll help you!

