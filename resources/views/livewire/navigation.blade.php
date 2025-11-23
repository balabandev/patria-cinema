<div class="flex flex-row min-h-screen">
    <nav class="w-64 bg-black border-r border-gray-800 py-8 px-6 flex flex-col">
        <ul class="space-y-6 font-medium">

            @auth
                <li>
                    <a class="inline-block px-8 py-4 text-gray-300 hover:text-white" href="">Account</a>
                </li>
                <li>
                    <a class="inline-block px-8 py-4 text-gray-300 hover:text-white" href="{{ route('logout') }}">Logout</a>
                </li>
            @endauth
            @guest
                <li>
                    <a class="inline-block px-8 py-4 text-gray-300 hover:text-white" href="{{ route('login') }}">Login</a>
                </li>
                <li>
                    <a class="inline-block px-8 py-4 text-gray-300 hover:text-white" href="{{ route('register') }}">Register</a>
                </li>
            @endguest
            
            <li>
                <a href="{{ route('schedule') }}" class="inline-block px-8 py-4 text-gray-300 hover:text-white">
                    Schedule
                </a>
            </li>
            <li>
                <a href="{{ route('news') }}" class="inline-block px-8 py-4 text-gray-300 hover:text-white">
                    News
                </a>
            </li>
            <li>
                <a href="{{ route('rules') }}" class="inline-block px-8 py-4 text-gray-300 hover:text-white">
                    Rules
                </a>
            </li>
            <li>
                <a href="{{ route('about') }}" class="inline-block px-8 py-4 text-gray-300 hover:text-white">
                    About us
                </a>
            </li>
            <li>
                <a href="{{ route('contacts') }}" class="inline-block px-8 py-4 text-gray-300 hover:text-white">
                    Contacts
                </a>
            </li>
        </ul>
    </nav>
        
    <main class="flex-1 py-8 px-6 font-medium">
        @yield("main")
    </main>
</div>