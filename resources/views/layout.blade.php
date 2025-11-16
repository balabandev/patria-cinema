<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinematograful Patria</title>
    <link rel="icon" href="{{ asset('storage/logo1.png') }}">

    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-black text-gray-100 font-medium">

    <header class="bg-black border-b border-neutral-800">
        <div class="w-full">
            <div class="container mx-auto">
            </div>
        </div>
        <div class="container mx-auto px-6">
            <div class="flex items-center justify-between h-16">                
                <a href="{{ route('home') }}" class="hover:opacity-80 transition">
                    <img src="{{ asset('storage/logo2.png') }}" alt="Patria Logo" class="h-10">
                </a>
                
                <!-- <h2 class="text-lg font-medium absolute left-1/2 transform -translate-x-1/2">
                    «PATRIA» — with us, it's like being in a movie!
                </h2> -->

                <div class="flex space-x-5">
                <a href="">
                    <x-bxl-facebook class="text-gray-200 w-7 h-7 hover:text-white transition" />
                </a>
                <a href="">
                    <x-bxl-telegram class="text-gray-200 w-7 h-7 hover:text-white transition" />
                </a>
                <a href="">
                    <x-bxl-instagram class="text-gray-200 w-7 h-7 hover:text-white transition" />
                </a>
                <a href="">
                    <x-bxl-youtube class="text-gray-200 w-7 h-7 hover:text-white transition" />
                </a>
                <a href="">
                    <x-bxl-tiktok class="text-gray-200 w-7 h-7 hover:text-white transition" />
                </a>
            </div>

            </div>
        </div>
    </header>

    <div class="flex min-h-screen">
        <nav class="w-64 bg-black border-r border-gray-800 py-8 px-6 flex flex-col">
            <ul class="space-y-6 font-medium">
                <li>
                    <a href="{{ route('schedule') }}" class="block text-gray-300 hover:text-white transition-colors duration-200 {{ request()->routeIs('schedule') ? 'text-white font-semibold' : '' }}">
                        Schedule
                    </a>
                </li>
                <li>
                    <a href="{{ route('news') }}" class="block text-gray-300 hover:text-white transition-colors duration-200 {{ request()->routeIs('news') ? 'text-white font-semibold' : '' }}">
                        News
                    </a>
                </li>
                <li>
                    <a href="{{ route('rules') }}" class="block text-gray-300 hover:text-white transition-colors duration-200 {{ request()->routeIs('rules') ? 'text-white font-semibold' : '' }}">
                        Rules
                    </a>
                </li>
                <li>
                    <a href="{{ route('about') }}" class="block text-gray-300 hover:text-white transition-colors duration-200 {{ request()->routeIs('about') ? 'text-white font-semibold' : '' }}">
                        About us
                    </a>
                </li>
                <li>
                    <a href="{{ route('contacts') }}" class="block text-gray-300 hover:text-white transition-colors duration-200 {{ request()->routeIs('contacts') ? 'text-white font-semibold' : '' }}">
                        Contacts
                    </a>
                </li>
            </ul>
        </nav>
        
        <main class="flex-1 py-8 px-6 font-medium">
            @yield("main")
        </main>
    </div>

    <footer class="bg-black border-t border-gray-800 py-6">
    <div class="container mx-auto px-6">
        <div class="flex flex-col md:flex-row justify-between items-center gap-6">
            <div class="text-gray-400 text-sm">
                &copy;2024-2025 «Cinematograful PATRIA»
            </div>

            <div class="flex space-x-4 order-first md:order-none">
                <x-bxl-mastercard class="text-gray-200 w-10 h-10" />
                <x-bxl-visa class="text-gray-200 w-10 h-10" />
            </div>
        </div>
    </div>
</footer>


</body>
</html>