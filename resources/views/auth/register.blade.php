@extends('layout')

@section('main')
    <section class="max-w-4xl mx-auto">
        <h1 class="text-3xl font-bold mb-6">Register</h1>

        <form method="post" action="{{ route('register-post') }}" class="space-y-6">
            @csrf

                <div>
                    <input type="text" name="name" placeholder="Name" value="{{ old('name') }}" class="w-1/2 px-6 py-4 border rounded-lg text-black  placeholder-gray-500">
                    @error("name")
                        <p class="text-gray-400 text-sm mt-2">{{ $message }}</p>
                    @enderror
                </div>
                <div>
                    <input type="email" name="email" placeholder="Email" value="{{ old('email') }}" class="w-1/2 px-6 py-4 border rounded-lg text-black  placeholder-gray-500 text-color-black ">
                    @error("email")
                        <p class="text-gray-400 text-sm mt-2">{{ $message }}</p>
                    @enderror
                </div>
                <div>
                    <input type="password" name="password" placeholder="Password" class="w-1/2 px-6 py-4 border rounded-lg text-black  placeholder-gray-500">
                    @error("password")
                        <p class="text-gray-400 text-sm mt-2">{{ $message }}</p>
                    @enderror
                </div>
                <div>
                    <input type="password" name="password_confirmation" placeholder="Confirm Password" class="w-1/2 px-6 py-4 border rounded-lg text-black  placeholder-gray-500">
                    @error("password_confirmation")
                        <p class="text-gray-400 text-sm mt-2">{{ $message }}</p>
                    @enderror
                </div>

                <div class="pt-8">
                    <button type="submit" class="inline-block px-8 py-4 bg-red-600 font-bold uppercase rounded-md hover:bg-red-700">Register</button>
                </div>
        </form>
    </section>
@endsection