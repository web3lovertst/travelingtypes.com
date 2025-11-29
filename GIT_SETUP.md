# Git & GitHub Setup Guide

## ✅ Completed Steps

1. ✅ Git repository initialized
2. ✅ All files added and committed
3. ✅ Branch renamed to `main`
4. ✅ `.gitignore` file created
5. ✅ GitHub remote added: `https://github.com/web3lovertst/travelingtypes.com.git`
6. ✅ Code pushed to GitHub successfully!
7. ✅ cPanel repository created and cloned

**Your repository is now live at:** https://github.com/web3lovertst/travelingtypes.com

## 📋 Next Steps - Complete cPanel Configuration

### ✅ Step 1-2: COMPLETED
- cPanel Git repository created and cloned from GitHub

### 🔄 Step 3: Enable Auto-Deploy (IMPORTANT)

1. In cPanel Git Version Control, find your `travelingtypes.com` repository
2. Click **"Manage"** (or the gear icon) next to your repository
3. Look for **"Auto Deploy"** or **"Automatic Deployment"** option
4. **Enable Auto Deploy** - This will automatically pull changes when you push to GitHub
5. If Auto Deploy is not available in your cPanel version:
   - You'll need to manually click **"Pull Now"** after each `git push`
   - Or set up a webhook (advanced option)

### Step 4: Configure Document Root

#### For Laravel Backend:
1. In cPanel, go to **"Subdomains"** or **"Addon Domains"**
2. Create/Edit domain: `backend.travelingtypes.com` (or your preferred subdomain)
3. Set Document Root to:
   ```
   /home/username/travelingtypes.com/backend/public
   ```

#### For Next.js Frontend:
**Option A - Static Export (cPanel):**
1. Point domain/subdomain to:
   ```
   /home/username/travelingtypes.com/frontend/out
   ```
   (After running `next export`)

**Option B - Vercel (Recommended for SSR):**
- Deploy Next.js frontend to Vercel for better SSR support
- Keep backend on cPanel

### Step 5: Environment Variables

Don't forget to set up `.env` files on cPanel:
- Backend: `/home/username/travelingtypes.com/backend/.env`
- Frontend: `/home/username/travelingtypes.com/frontend/.env.local`

## 🔄 Future Updates

After making changes and pushing to GitHub:
- If Auto Deploy is enabled: Changes will deploy automatically
- If not: Go to cPanel → Git Version Control → Click **"Pull Now"** on your repository

## 📝 Notes

- Make sure your GitHub repository is accessible (check privacy settings)
- For HTTPS push, you'll need a Personal Access Token (Settings → Developer settings → Personal access tokens)
- Test the deployment by making a small change and pushing to GitHub

