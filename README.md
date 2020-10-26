# Weather app with clothes suggestions

## This was for education only :see_no_evil: :hear_no_evil: :speak_no_evil:  

### Used: 
- [x] Laravel 8.x;
- [x] Vue.js;
- [x] Bootstrap CSS;
- [x] MySQL;
- [x] [Meteo.lt API](https://api.meteo.lt/)
- [x] [Algolia places](https://community.algolia.com/places/)

The app picture:\
![Image of App](https://github.com/Edvinas-S/weather_and_suggestion/blob/master/public/img/app.jpg)

### You can start it like this: 
- Download zip project and unzip it;
- Go inside project folder and start CLI (like Git Bash );
- Run commands:
1. For install PHP packages:
```
composer install
```
2. For necessary NPM packages:
```
npm install
```
3. Make a copy of the .env.example file and create a .env file:
```
cp .env.example .env
```
4. Generate an app encryption key:
```
php artisan key:generate
```
- Create an empty database for your project using the database tools you prefer.
- In the .env file fill in the `DB_HOST`, `DB_PORT`, `DB_DATABASE`, `DB_USERNAME`, and `DB_PASSWORD`.
5. Run command:
```
php artisan migrate
```
- Check your database to make sure everything migrated!
- Fill your database with dummy data with this command (or use example_DB schema from dump folder):
```
php artisan db:seed
```
```
php artisan serve
```
- In your browser go to localhost
- :eyes:


> P.S. you need PHP and Composer installed globaly in your machine and local server (e.g. AMPPS) running

#### Author [Edvinas](https://github.com/Edvinas-S)
