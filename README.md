docker-compose up -d --build

docker exec -it patria_management_system bash

composer install
npm install
npm run dev

docker exec -it patria_management_system bash

cp .env.example .env

php artisan key:generate
php artisan migrate

php artisan storage:link
php artisan view:clear
php artisan config:clear
php artisan route:clear
php artisan cache:clear