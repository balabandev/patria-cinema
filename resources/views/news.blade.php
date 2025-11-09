@extends('layout')

@section('main')
    <section class="p-6">
        <h1 class="text-3xl font-bold mb-6 text-white">News</h1>

        <div class="space-y-6">
            @foreach($news as $item)
                <div class="bg-gray-800 text-white rounded-lg overflow-hidden shadow-lg hover:shadow-xl transition-shadow duration-300">
                    <div class="p-6 pb-4">
                        <h2 class="text-xl font-bold mb-3 text-white">
                            {{ $item->title }}
                        </h2>
                        <p class="text-gray-300 leading-relaxed mb-4">
                            {{ Str::limit($item->content, 300) }}
                        </p>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
@endsection