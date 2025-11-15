<?php

namespace App\Http\Controllers;

use App\Models\Showtime;
use Illuminate\Http\Request;

class ScheduleController extends Controller
{
    public function schedule()
    {
        $showtimes = Showtime::with('movie')
            // ->whereDate('date', '>=', today())
            ->orderBy('date')
            ->orderBy('time')
            ->get()
            ->groupBy('movie_id');
        
        return view('schedule', compact('showtimes'));
    }
}