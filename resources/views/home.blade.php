@extends("layout")

@section("main")
    <section x-data="{ openModal: false, selectedMovie: null }" class="p-6">
        <h1 class="text-3xl font-bold mb-8">Now playing</h1>
        
        <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 max-w-7xl mx-auto">
            @forelse ($movies as $movie)
                <div class="group">
                    <div class="bg-gray-800 rounded-3xl" 
                         @click="openModal = true; selectedMovie = {{ json_encode($movie) }}">
                        <div class="aspect-[2/3] bg-gray-900 rounded-t-3xl overflow-hidden">
                            <img src="{{ asset('storage/movies/' . $movie->image) }}" alt="{{ $movie->name }}" class="w-full h-full object-cover object-center">
                        </div>
                        <div class="p-4 text-center">
                            <p class="font-semibold text-sm md:text-base line-clamp-1" title="{{ $movie->name }}">
                                {{ $movie->name }}
                            </p>
                        </div>
                    </div>
                </div>
                
            @empty
                <p class="text-center text-lg">No movie</p>
            @endforelse
        </div>

        <div class="text-center mt-12">
            <a href="{{ route('schedule') }}" class="inline-block px-8 py-4 bg-red-600 font-bold uppercase rounded-md hover:bg-red-700">
                See The Full Program
            </a>
        </div>

        <div x-show="openModal" x-cloak class="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-75 p-4" @click="openModal = false">
            <div @click.stop class="bg-gray-800 rounded-2xl max-w-4xl w-full max-h-[90vh] overflow-y-auto">
                
                <template x-if="selectedMovie">
                    <div class="flex flex-col md:flex-row">

                        <div class="md:w-1/3 flex-shrink-0">
                            <img :src="'{{ asset('storage/movies/') }}/' + selectedMovie.image" :alt="selectedMovie.name" class="w-full h-auto rounded-t-2xl md:rounded-l-2xl md:rounded-tr-none object-cover">
                        </div>

                        <div class="p-6 md:p-8 flex-1">
                            <h2 class="text-3xl font-bold mb-4" x-text="selectedMovie.name"></h2>
                            
                            <div class="space-y-3 text-gray-300">
                                <div>
                                    <span class="font-semibold">Genre:</span>
                                    <span x-text="selectedMovie.genre"></span>
                                </div>
                                
                                <div>
                                    <span class="font-semibold">Audio:</span>
                                    <span x-text="selectedMovie.audio"></span>
                                </div>
                                
                                <div>
                                    <span class="font-semibold">Age limit:</span>
                                    <span x-text="selectedMovie.age_limit"></span>
                                </div>
                                
                                <div>
                                    <span class="font-semibold">Duration:</span>
                                    <span x-text="selectedMovie.duration"></span>
                                </div>
                                
                                <div>
                                    <span class="font-semibold">Premiere date:</span>
                                    <span x-text="selectedMovie.premiere_date"></span>
                                </div>
                                
                                <div>
                                    <span class="font-semibold">Format:</span>
                                    <span x-text="selectedMovie.format"></span>
                                </div>
                                
                                <div>
                                    <span class="font-semibold">Sound:</span>
                                    <span x-text="selectedMovie.sound"></span>
                                </div>
                            </div>
                            
                            <button @click="openModal = false" class="mt-6 px-6 py-3 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors font-semibold">
                                Close
                            </button>
                        </div>
                    </div>
                </template>
            </div>
        </div>
    </section>

    <style>
        [x-cloak] { display: none !important; }
    </style>
@endsection