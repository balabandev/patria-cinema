<?php

namespace App\Console\Commands;

use App\Models\Movie;
use Illuminate\Console\Command;
use Illuminate\Support\Str;

class FillMovieImages extends Command
{
    protected $signature = 'movies:fill-images';
    protected $description = 'Fills in the field image near the movies by slug';

    public function handle()
    {
        $movies = Movie::all();
        $updated = 0;

        foreach ($movies as $movie) {
            $slug = $movie->slug;
            $path = "movies/{$slug}.jpg";

            if (\Storage::disk('public')->exists($path)) {
                $movie->image = $path;
                $movie->save();
                $this->info("OK: {$movie->name} → $path");
                $updated++;
                continue;
            }

            $nameSlug = Str::slug($movie->name) . '.jpg';
            $altPath = "movies/{$nameSlug}";

            if (\Storage::disk('public')->exists($altPath)) {
                $movie->image = $altPath;
                $movie->save();
                $this->info("OK (by name): {$movie->name} → $altPath");
                $updated++;
                continue;
            }

            $this->warn("No image: {$movie->name} (slug: $slug)");
        }

        $this->info("READY! Updated movies: $updated");
    }
}
