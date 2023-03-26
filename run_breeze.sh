# -----------------------------------------------------------------------------
# utils 
# ctrl+t  -> buscar
# ctrl+x  -> borrar linea

# -----------------------------------------------------------------------------
# utils 
rm -rf vendor && rm -rf node_modules
git stash --all && git stash drop && git prune && git checkout master
rm -rf vendor && composer update 
rm -rf node_modules && npm install && npm run production 
editar .env
php artisan optimize:clear &&	php artisan config:clear
php artisan db:wipe && 	php artisan migrate:refresh --seed

# -----------------------------------------------------------------------------
# install 
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

# creating modules for students
php artisan make:controller Student/TimetableController
# add the route, view and menu item

git add -A && git commit -m "Studen module added"

# add group auth in web.php
# Route::middleware(['auth', 'verified'])->group(function () {


git add -A && git commit -m "Studen module refactoring"
