@extends('layout')

@section('main')
    <section class="max-w-4xl mx-auto px-4 sm:px-6">
        <div class="bg-gray-800 rounded-lg p-8 border border-gray-600">
            <h1 class="text-2xl sm:text-3xl font-bold mb-6">Login</h1>
            <form action="{{ route('login-post') }}" method="post" class="space-y-6">
                @csrf

                <div>
                    <input type="email" name="email" placeholder="Email" class="w-full sm:w-3/4 md:w-1/2 px-4 sm:px-6 py-3 sm:py-4 border rounded-lg text-black placeholder-gray-500">
                    @error("email")
                        <p class="text-white text-sm mt-2">{{ $message }}</p>
                    @enderror
                </div>
                <div>
                <input type="password" name="password" placeholder="Password" class="w-full sm:w-3/4 md:w-1/2 px-4 sm:px-6 py-3 sm:py-4 border rounded-lg text-black placeholder-gray-500">
                @error('password')
                    <p class="text-white text-sm mt-2">{{ $message }}</p>
                @enderror
                </div>

                <div class="pt-4 sm:pt-8">
                    <button type="submit" class="w-full sm:w-auto px-6 sm:px-8 py-3 sm:py-4 bg-red-600 font-bold uppercase rounded-md hover:bg-red-700 transition">Login</button>
                </div>
            </form>

            <div class="mt-6">
                <p class="text-gray-300">
                    Don't have an account? 
                    <a href="{{ route('register') }}" class="text-red-500 hover:text-red-400 font-semibold underline">Create one</a>
                </p>
            </div>
        </div>
    </section>
@endsection