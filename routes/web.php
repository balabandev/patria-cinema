<?php

use App\Http\Controllers\NewsController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\GeneralController;
use Illuminate\Support\Facades\Route;

// Route::fallback(function () { return response()->view('errors.404', [], 404);});

Route::get("/", [GeneralController::class, "home"])->name("home");

Route::get("/movies", [GeneralController::class, "movies"])->name("movies");

Route::get('/schedule', [ScheduleController::class, 'schedule'])->name('schedule');

Route::get("/news", [NewsController::class, "news"])->name("news");

Route::get("/about", [GeneralController::class, "about"])->name("about");

Route::get("/contacts", [GeneralController::class, "contacts"])->name("contacts");

Route::get("/rules", [GeneralController::class, "rules"])->name("rules");