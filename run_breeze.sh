# -----------------------------------------------------------------------------
# utils 
# ctrl+t  -> buscar
# ctrl+x  -> borrar linea
# ctrl+|  -> cierre brackets

# -----------------------------------------------------------------------------
# utils 
rm -rf vendor && rm -rf node_modules
git stash --all && git stash drop && git prune && git checkout master
rm -rf vendor && composer update 
rm -rf node_modules && npm install && npm run build
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

git add -A && git commit -m "Student module added"

# add group auth in web.php
# Route::middleware(['auth', 'verified'])->group(function () {


git add -A && git commit -m "Student module refactoring"

php artisan make:model Role -m
php artisan make:migration add_role_id_to_users_table
# Role add name, constrint in relationship, and field in user model

php artisan optimize:clear &&	php artisan config:clear
php artisan db:wipe && 	php artisan migrate:refresh --seed

git add -A && git commit -m "Student add Register Type,  "

php artisan make:controller Teacher/TimetableController
mkdir resources/views/teacher
touch resources/views/teacher/timetable.blade.php

# app/View/Components/AppLayout.php is the component element for layout
# implements the extends for blade 

# resources/views/layouts/student/navigation.blade.php
# resources/views/layouts/teacher/navigation.blade.php
# add new class , so you need to compile 

rm -rf node_modules && npm install && npm run build

git add -A && git commit -m "Student/Teacher, we created 2 layout one for student and another for teacher  "
