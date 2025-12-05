@extends("layout")

@section("main")
    <section class="p-4 sm:p-6">
        <h1 class="text-2xl sm:text-3xl font-bold mb-6">Schedule</h1>
        
        <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4 sm:gap-6">
            @foreach ($showtimes as $movieId => $times)
                @php 
                    $movie = $times->first()->movie; 
                @endphp
                <div class="bg-gray-800 text-white p-4 sm:p-5 rounded-lg flex gap-3 sm:gap-4 items-start">

                    <div class="flex-shrink-0">
                        @if($movie->image)
                            <img src="{{ asset('storage/movies/' . $movie->image) }}" loading="lazy" alt="{{ $movie->name }}" class="w-16 h-20 sm:w-20 sm:h-28 object-cover rounded" onerror="this.style.display='none'">
                        @else
                            <div class="bg-gray-700 w-16 h-20 sm:w-20 sm:h-28 rounded flex items-center justify-center">
                                <span class="text-xs text-gray-500">No image</span>
                            </div>
                        @endif
                    </div>

                    <div class="flex-1 min-w-0">
                        <h2 class="text-base sm:text-xl font-semibold mb-2 sm:mb-3 line-clamp-2">{{ $movie->name }}</h2>
                        
                        <div class="flex flex-wrap gap-1.5 sm:gap-2 mb-2 sm:mb-3">
                            @foreach($times as $showtime)
                                <span class="bg-red-600 px-2 sm:px-3 py-1 rounded text-xs sm:text-sm font-medium">
                                    {{ \Carbon\Carbon::parse($showtime->time)->format('H:i') }}
                                </span>
                            @endforeach
                        </div>
                        <div class="space-y-1">
                            <p class="text-xs sm:text-sm text-gray-400">Hall: {{ $times->first()->hall }}</p>
                            <p class="text-xs sm:text-sm text-gray-400">Price: {{ $times->first()->price }} lei</p> 
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
@endsection