laravel new project
editar .env
php artisan optimize:clear &&	php artisan config:clear
php artisan db:wipe && 	php artisan migrate:refresh --seed

git status 
git init 
git add -A
git commit -m "First commit"

composer require laravel/breeze 
php artisan breeze:install blade

php artisan db:wipe && 	php artisan migrate:refresh --seed
php artisan optimize:clear &&php artisan config:clear

git add -A && git commit -m "Breeze installed"