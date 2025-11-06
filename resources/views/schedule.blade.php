@extends("layout")

@section("main")
    <section class="p-6">
        <h1 class="text-3xl font-bold mb-6">Schedule</h1>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            @foreach ($showtimes as $movieId => $times)
                <div class="bg-gray-800 text-white p-4 rounded-lg">
                    <h2 class="text-xl font-semibold mb-3">{{ $times->first()->movie->name }}</h2>
                    
                    <div class="flex flex-wrap gap-2 mb-3">
                        @foreach($times as $showtime)
                            <span class="bg-red-600 px-3 py-1 rounded text-sm">
                                {{ \Carbon\Carbon::parse($showtime->time)->format('H:i') }}
                            </span>
                        @endforeach
                    </div>
                    
                    <p class="text-sm text-gray-400"> {{ $times->first()->hall }}</p>
                    <p class="text-sm text-gray-400"> {{ $times->first()->price }} lei</p>
                </div>
            @endforeach
        </div>
    </section>
@endsection