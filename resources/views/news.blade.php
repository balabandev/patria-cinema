@extends('layout')

@section('main')
    <section class="p-4 sm:p-6 max-w-5xl mx-auto">
        <h1 class="text-2xl sm:text-3xl font-bold mb-6">News</h1>
        <div class="space-y-4 sm:space-y-6">
            @foreach($news as $item)
                <div class="bg-gray-800 rounded-lg overflow-hidden shadow-lg">
                    <div class="p-4 sm:p-6">
                        <h2 class="text-lg sm:text-xl font-bold mb-3 text-red-500">
                            {{ $item->title }}
                        </h2>
                        <p class="text-sm sm:text-base leading-relaxed mb-4">
                            {{ Str::limit($item->content, 300) }}
                        </p>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
@endsection