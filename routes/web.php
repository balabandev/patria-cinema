<?php

use Illuminate\Support\Facades\Route;

Route::get("/", function () {
    return view("home");
})->name("home");

Route::get("/movies", function () {
    return view("movies");
})->name("movies");

Route::get("/schedule", function () {
    return view("schedule");
})->name("schedule");

Route::get("/news", function () {
    return view("news");
})->name("news");

Route::get("/about", function () {
    return view("about");
})->name("about");

Route::get("/contacts", function () {
    return view("contacts");
})->name("contacts");

Route::get("/rules", function () {
    return view("rules");
})->name("rules");