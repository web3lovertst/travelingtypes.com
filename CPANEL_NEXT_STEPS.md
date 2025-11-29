# cPanel Setup - Next Steps Checklist

## ✅ Already Completed
- [x] GitHub repository created and pushed
- [x] cPanel Git repository created and cloned

## 🔄 Remaining Steps

### 1. Enable Auto-Deploy (Recommended)
**Location:** cPanel → Git Version Control → Manage your repository

- [ ] Click **"Manage"** on your `travelingtypes.com` repository
- [ ] Enable **"Auto Deploy"** or **"Automatic Deployment"**
- [ ] This will automatically pull changes when you push to GitHub

**Note:** If Auto Deploy isn't available, you'll need to manually click **"Pull Now"** after each push.

---

### 2. Configure Document Root for Backend (Laravel)

**Location:** cPanel → Subdomains (or Addon Domains)

- [ ] Create subdomain: `backend.travelingtypes.com` (or use existing)
- [ ] Set Document Root to:
  ```
  /home/YOUR_USERNAME/travelingtypes.com/backend/public
  ```
  *(Replace YOUR_USERNAME with your actual cPanel username)*

- [ ] Verify the path exists and contains Laravel's `index.php`

---

### 3. Configure Document Root for Frontend (Next.js)

**Option A: Deploy to cPanel (Static Export)**
- [ ] Create subdomain: `travelingtypes.com` or `www.travelingtypes.com`
- [ ] Set Document Root to:
  ```
  /home/YOUR_USERNAME/travelingtypes.com/frontend/out
  ```
- [ ] Build and export Next.js first: `cd frontend && npm run build && npm run export`

**Option B: Deploy to Vercel (Recommended for SSR)**
- [ ] Connect your GitHub repo to Vercel
- [ ] Set root directory to `/frontend`
- [ ] Deploy (Vercel handles SSR automatically)

---

### 4. Set Up Environment Variables

**Backend (.env file):**
- [ ] Create/edit: `/home/YOUR_USERNAME/travelingtypes.com/backend/.env`
- [ ] Add required Laravel environment variables:
  ```
  APP_NAME=TravelingTypes
  APP_ENV=production
  APP_KEY=base64:YOUR_APP_KEY
  APP_DEBUG=false
  APP_URL=https://backend.travelingtypes.com
  
  DB_CONNECTION=mysql
  DB_HOST=localhost
  DB_PORT=3306
  DB_DATABASE=your_database
  DB_USERNAME=your_db_user
  DB_PASSWORD=your_db_password
  ```

**Frontend (.env.local file):**
- [ ] Create/edit: `/home/YOUR_USERNAME/travelingtypes.com/frontend/.env.local`
- [ ] Add required variables:
  ```
  NEXT_PUBLIC_API_URL=https://backend.travelingtypes.com/api
  ```

---

### 5. Test the Setup

- [ ] Make a small change to a file
- [ ] Push to GitHub: `git push origin main`
- [ ] If Auto Deploy is enabled, wait a few seconds
- [ ] If not, go to cPanel → Git Version Control → Click **"Pull Now"**
- [ ] Verify changes appear on your live site

---

## 🔍 Quick Verification Commands

After setup, you can verify in cPanel File Manager:

1. Check repository location:
   ```
   /home/YOUR_USERNAME/travelingtypes.com/
   ```

2. Check backend public folder:
   ```
   /home/YOUR_USERNAME/travelingtypes.com/backend/public/index.php
   ```

3. Check frontend (if using static export):
   ```
   /home/YOUR_USERNAME/travelingtypes.com/frontend/out/index.html
   ```

---

## 📞 Need Help?

- Check `GIT_SETUP.md` for detailed instructions
- Verify file permissions in cPanel File Manager
- Check cPanel error logs if something doesn't work
- Ensure PHP version is compatible with Laravel (PHP 8.1+)

