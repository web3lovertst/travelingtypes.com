# 🌐 Domain Setup Guide - Make travelingtypes.com Work

## Current Situation
- Your Git repository is in: `repositories/travelingtypes.com/`
- You need to make `travelingtypes.com` accessible

## Solution: Configure Domain Document Root

### Option 1: Point Main Domain to Repository (Recommended)

1. **Go to:** cPanel → **Addon Domains** (or **Subdomains** if it's a subdomain)

2. **Find your domain:** `travelingtypes.com` in the list

3. **Click:** **"Change"** or **"Modify"** next to the domain

4. **Change Document Root to:**
   ```
   repositories/travelingtypes.com/backend/public
   ```
   OR the full path:
   ```
   /home/YOUR_USERNAME/repositories/travelingtypes.com/backend/public
   ```
   *(Replace YOUR_USERNAME with your cPanel username - check top right of cPanel)*

5. **Click:** **"Change"** or **"Save"**

6. **Done!** ✅ Now `travelingtypes.com` will show your Laravel backend

---

### Option 2: Use public_html with Symlink (Alternative)

If you prefer to use `public_html`, you can create a symlink:

1. **Go to:** cPanel → **File Manager**

2. **Navigate to:** `public_html` folder

3. **Delete or rename** any existing `index.html` or `index.php` (backup first!)

4. **Create a symlink:**
   - In File Manager, look for **"Link"** or **"Create Symbolic Link"** option
   - Link to: `../repositories/travelingtypes.com/backend/public`
   - Name: `index.php` or just link the entire public folder

**OR use Terminal (if you have SSH access):**
```bash
cd ~/public_html
rm -rf *  # Be careful! Backup first
ln -s ../repositories/travelingtypes.com/backend/public/* .
```

---

## For Frontend (Next.js)

Since you have both frontend and backend:

### Recommended Setup:
- **Main domain (`travelingtypes.com`):** Point to frontend (or deploy to Vercel)
- **API subdomain (`api.travelingtypes.com` or `backend.travelingtypes.com`):** Point to backend

### Steps:

1. **Create Subdomain for Backend:**
   - Go to: cPanel → **Subdomains**
   - Create: `api.travelingtypes.com` or `backend.travelingtypes.com`
   - Document Root: `repositories/travelingtypes.com/backend/public`

2. **Point Main Domain to Frontend:**
   - Go to: cPanel → **Addon Domains** or **Subdomains**
   - Domain: `travelingtypes.com`
   - Document Root: `repositories/travelingtypes.com/frontend/out` (after building)
   - **OR** deploy frontend to Vercel (easier!)

---

## Quick Setup Summary

**For Backend API:**
```
Domain: api.travelingtypes.com (or backend.travelingtypes.com)
Document Root: repositories/travelingtypes.com/backend/public
```

**For Frontend:**
```
Option A: Deploy to Vercel (Recommended)
- Import repo: web3lovertst/travelingtypes.com
- Root: frontend

Option B: Use cPanel
Domain: travelingtypes.com
Document Root: repositories/travelingtypes.com/frontend/out
```

---

## Important Notes

1. **Make sure `.env` file exists** in `repositories/travelingtypes.com/backend/`
2. **Set proper permissions** for Laravel:
   - `storage/` folder: 755
   - `bootstrap/cache/` folder: 755
3. **After pointing domain, wait 5-10 minutes** for DNS to propagate
4. **Test:** Visit `travelingtypes.com` to see if it works!

---

## Need Help?

If you get a 500 error or blank page:
1. Check Laravel logs: `repositories/travelingtypes.com/backend/storage/logs/laravel.log`
2. Verify `.env` file exists and has correct database credentials
3. Make sure Composer dependencies are installed
4. Check file permissions

