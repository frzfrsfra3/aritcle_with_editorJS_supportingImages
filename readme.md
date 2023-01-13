# Laravel and Vue Single Page Application Blog

This application can be used as **starter kit** if you want to get started building an single page application with **Laravel** 
and **VueJS**. 
This is a blog using feature like administration, creating and editing posts, commenting, searching posts and many other feature which can be found in most web applications.

## Technologies

### Frontend

* [VueJS](https://fr.vuejs.org/index.html) - A JavaScript framework for building great user interfaces.
* [Bootstrap 4](https://getbootstrap.com) - Bootstrap is the most used CSS framework.
* [Vuex](https://getbootstrap.com) - A state management library for VueJS applications and serves as a central
store for the application.

### Backend

* PHP 7.3
* Mysql for development and  for production.
* PHPUnit for unit tests.
* [Laravel](http://www.laravel.com) - A PHP Full stack framework
* [Tymon/Jwt-auth](https://jwt-auth.readthedocs.io/en/develop/) - A library used in laravel for Json Web Token authentication

## Features

* CRUD (create ) on posts (articles)
* Searching on Gif Images and uploading them using editor.js
* Authentication for the logged user
* Application ready for production

## Prerequisites

* PHP 7.3
* Mysql
* Git
* Composer
* Node.js v12.13.0
* Vue.js 
## Getting Started

* Clone the project from Github

          $ git clone https://github.com/juvpengele/laravel-vue-spa-blog
          $ cd laravel-vue-spa-blog
          laravel-vue-spa-blog$

* Install the packages for laravel:

         laravel-vue-spa-blog$ composer install

* Install the packages for Vuejs:

         laravel-vue-spa-blog$ npm install
* If you want to enable upload file to editorjs/image change type in r.type="text" from "text" to "file" in the following file

         laravel-vue-spa-blog$ vim C:\xampp\htdocs\laravel-vue-spa-blog-master2\node_modules\@editorjs\image\dist\bundle.js 

* Create the database in MYSQL:

* Create the .env file :

          laravel-vue-spa-blog$ cp .testing.env .env
        
* Generate the encryption key for Laravel :

          laravel-vue-spa-blog$ php artisan key:generate
        
* Add database information :

          laravel-vue-spa-blog$ vim .env
        

* Load sample records:

          laravel-vue-spa-blog$ import "laravelx.sql" into Mysql Database and add the database name to .env file

* Run the Laravel Server in development mode

          laravel-vue-spa-blog$ php artisan serve --port=2222

* Start client in development mode. You should be able to go to `http://localhost:2222`

* To access to the administration panel, there is a link in the bottom of the page or go to `http://localhost:2222/login`


## Screens

#### Listing posts

<img alt="Listing posts" src="https://i.imgur.com/6pvqPKG.png" width="500">


#### Single Post page

<img alt="Post page" src="https://i.imgur.com/wvQLSYZ.png" width="500">



#### Login page

<img alt="Post page" src="https://i.imgur.com/eWHg0RG.png" width="500">


## Videos

* I attached videos in Videos Folder

## Information and enquiring

* For Further Info, dont hesitate to inform me on : mhd.feras97@gmail.com
