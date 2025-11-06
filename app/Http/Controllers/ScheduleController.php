<?php

namespace App\Http\Controllers;

use App\Models\Showtime;
use Illuminate\Http\Request;

class ScheduleController extends Controller
{
    public function schedule()
    {
        $showtimes = Showtime::with('movie')->orderBy('date')->orderBy('time')->get();

        return view('schedule', compact('showtimes'));
    }
}
