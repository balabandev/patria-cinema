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