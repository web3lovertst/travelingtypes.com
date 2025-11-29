# Environment Variables Templates

## Backend (.env file)

Create this file at: `backend/.env` on your cPanel server

```env
APP_NAME=TravelingTypes
APP_ENV=production
APP_KEY=
APP_DEBUG=false
APP_URL=https://backend.travelingtypes.com

LOG_CHANNEL=stack
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_user
DB_PASSWORD=your_database_password

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DISK=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MAIL_MAILER=smtp
MAIL_HOST=mailpit
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="hello@example.com"
MAIL_FROM_NAME="${APP_NAME}"
```

**To get your database info:**
- Go to cPanel → MySQL Databases
- Copy the database name, username, and password

**To generate APP_KEY:**
- After creating .env, run: `php artisan key:generate` in the backend folder

---

## Frontend (.env.local file)

Create this file at: `frontend/.env.local` on your cPanel server (or in Vercel if deploying there)

```env
# API Configuration
NEXT_PUBLIC_API_URL=https://backend.travelingtypes.com/api

# App Configuration
NEXT_PUBLIC_APP_NAME=TravelingTypes
NEXT_PUBLIC_APP_URL=https://travelingtypes.com
```

---

## How to Create These Files on cPanel

1. **Go to:** cPanel → **File Manager**
2. **Navigate to:** `travelingtypes.com/backend/` (for backend .env)
3. **Click:** **+ File** button
4. **Name:** `.env`
5. **Paste the content above**
6. **Click:** **Save Changes**
7. **Repeat for frontend:** `travelingtypes.com/frontend/.env.local`

---

## Quick Copy-Paste Commands (if you have SSH access)

```bash
# Backend .env
cd ~/travelingtypes.com/backend
nano .env
# Paste backend template, save (Ctrl+X, Y, Enter)

# Frontend .env.local
cd ~/travelingtypes.com/frontend
nano .env.local
# Paste frontend template, save (Ctrl+X, Y, Enter)
```

