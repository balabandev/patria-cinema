<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;

class GeneralController extends Controller
{
    public function home()
    {
        $movies = Movie::all();

        return view ("home", ["movies" => $movies]);
    }

    public function schedule()
    {
        return view ("schedule");
    }

    public function news()
    {
        return view ("news");
    }

    public function about()
    {
        return view ("about");
    }

    public function contacts()
    {
        return view ("contacts");
    }
}