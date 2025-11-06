@extends("layout")

@section("main")
    <p>Home</p>

    <section>
        @forelse ($movies as $movie)
            <p>{{ $movie['name'] }}</p>
        @empty
            <p>No movie</p>
        @endforelse
    </section>
@endsection