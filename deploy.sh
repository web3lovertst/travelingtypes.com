#!/bin/bash
# cPanel Deployment Script
# This script helps set up your Laravel backend on cPanel

echo "🚀 TravelingTypes Deployment Script"
echo "===================================="

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Navigate to backend directory
cd backend || exit

echo -e "${YELLOW}📦 Installing Composer dependencies...${NC}"
composer install --no-dev --optimize-autoloader

echo -e "${YELLOW}🔑 Generating application key...${NC}"
php artisan key:generate --force

echo -e "${YELLOW}🗄️  Running database migrations...${NC}"
php artisan migrate --force

echo -e "${YELLOW}📝 Clearing and caching configuration...${NC}"
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo -e "${YELLOW}🔒 Setting permissions...${NC}"
chmod -R 755 storage
chmod -R 755 bootstrap/cache
chown -R $(whoami):$(whoami) storage
chown -R $(whoami):$(whoami) bootstrap/cache

echo -e "${GREEN}✅ Backend deployment complete!${NC}"
echo ""
echo "Next steps:"
echo "1. Make sure your .env file is configured"
echo "2. Point your domain to: $(pwd)/public"
echo "3. Test your API endpoints"

