@extends('layout')

@section('main')
    <section class="max-w-4xl mx-auto">
        <h1 class="text-3xl font-bold mb-6">Login</h1>

        <form action="{{ route('login-post') }}" method="post" class="space-y-6">
            @csrf

            <div>
                <input type="email" name="email" placeholder="Email" class="w-1/2 px-6 py-4 border rounded-lg text-black placeholder-gray-500">
                @error("email")
                    <p>{{ $message }}</p>
                @enderror
            </div>
            <div>
            <input type="password" name="password" placeholder="Password" class="w-1/2 px-6 py-4 border rounded-lg text-black placeholder-gray-500">
            @error('password')
                <p>{{ $message }}</p>
            @enderror
            </div>

            <div class="pt-8">
                <button type="submit" class="inline-block px-8 py-4 bg-red-600 font-bold uppercase rounded-md hover:bg-red-700">Register</button>
            </div>
        </form>
    </section>
@endsection