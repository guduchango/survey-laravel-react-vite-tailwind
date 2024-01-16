# Survey Management Project

## Laravel + React + Vite + TailwindCss

```
git clone https://github.com/guduchango/survey-laravel-react-vite-tailwind.git

cd ./survey-laravel-react-vite-tailwind.git

### Backend

cp ./.env.example ./.env

edit ./.env 

with =>
----------
DB_DATABASE=my-database-name
DB_USERNAME=my-database-username
DB_PASSWORD=my-database-pass
----------

composer install

php artisan migrate

php artisan serve

### Frontend

cd ./react

edit ./.env

with =>
----------
VITE_API_BASE_URL=my-frontend-url
----------

npm install

npm run dev
```

### Deploy

```
npm run build

// search "dist" folder and copy files
```

### Live proyect

[Survey frontend ](https://frontend-survey-laravel-react-vite-tailwind.edgardoponce.com/)

[Survey backend ](https://survey-laravel-react-vite-tailwind.edgardoponce.com/)

### ¿What the project do?

* Login

![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/login.png "Login")

* Sign Up 

![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/sign_up.png "Sign Up")

* Dashboard 

![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/dashboard.png "Dashboard")

* Surveys Grid

![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/grid.png "Surveys Grid")

* Edit Survey

![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/edit_1.png "Edit 1")
![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/edit_2.png "Edit 2")
![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/edit_3.png "Edit 3")
![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/edit_4.png "Edit 4")

* Public Survey

![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/public_1.png "Public survey 1")
![alt text](https://survey-laravel-react-vite-tailwind.edgardoponce.com/survey_photos/public_2.png "Public survey 2")



