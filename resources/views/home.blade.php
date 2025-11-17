@extends("layout")

@section("main")
    <section class="p-6">
        <h1 class="text-3xl font-bold mb-8">Now playing</h1>
        
        <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 max-w-7xl mx-auto">
            @forelse ($movies as $movie)
                <div class="group">
                    <div class="bg-gray-800 rounded-3xl">
                        <div class="aspect-[2/3] bg-gray-900">
                            <img src="{{ asset('storage/movies/' . $movie->image) }}"
                                 alt="{{ $movie->name }}"
                                 class="w-full h-full object-cover object-center">
                        </div>
                        <div class="p-4 text-center">
                            <p class="font-semibold text-sm md:text-base line-clamp-1"
                               title="{{ $movie->name }}">
                                {{ $movie->name }}
                            </p>
                        </div>
                    </div>
                </div>

            @empty
                <p class="text-center text-lg">No movie</p>
            @endforelse
        </div>
    </section>
@endsection