set -e

echo "Deploying application ..."

# Enter maintenance mode

(php artisan down --message 'the app is being updated') || true

    # update codebase
    git pull origin master

# Exit maintenance mode
php artisan up

echo "Application deployed!"