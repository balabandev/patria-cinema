<div>
    <div class="flex flex-col lg:flex-row min-h-screen">
        <button id="mobile-menu-toggle" class="lg:hidden fixed top-0 right-3 z-50 text-white p-3">
            <span class="text-3xl leading-none">☰</span>
        </button>

        <nav id="mobile-menu" class="fixed lg:static inset-0 z-40 bg-black/95 lg:bg-black lg:w-64 border-r border-gray-800 py-8 px-6 transform -translate-x-full lg:translate-x-0 transition-transform duration-300">

            <ul class="space-y-2 lg:space-y-6 font-medium mt-12 lg:mt-0">
                @auth
                    <li>
                        <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="">
                            Account
                        </a>
                    </li>
                    <li>
                        <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('logout') }}">
                            Logout
                        </a>
                    </li>
                @endauth
                @guest
                    <li>
                        <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('login') }}">
                            Login
                        </a>
                    </li>
                    <li>
                        <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('register') }}">
                            Register
                        </a>
                    </li>
                @endguest
                
                <li>
                    <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('schedule') }}" >
                        Schedule
                    </a>
                </li>
                <li>
                    <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('news') }}" >
                        News
                    </a>
                </li>
                <li>
                    <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('rules') }}" >
                        Rules
                    </a>
                </li>
                <li>
                    <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('about') }}" >
                        About us
                    </a>
                </li>
                <li>
                    <a class="block px-4 lg:px-8 py-3 lg:py-4 text-gray-300" href="{{ route('contacts') }}">
                        Contacts
                    </a>
                </li>
            </ul>

            <div class="mt-6 flex space-x-3 md:space-x-5">
                <a href="">
                    <x-bxl-facebook class="text-gray-200 w-6 h-6 md:w-7 md:h-7" />
                </a>
                <a href="">
                    <x-bxl-telegram class="text-gray-200 w-6 h-6 md:w-7 md:h-7" />
                </a>
                <a href="">
                    <x-bxl-instagram class="text-gray-200 w-6 h-6 md:w-7 md:h-7" />
                </a>
                <a href="">
                    <x-bxl-youtube class="text-gray-200 w-6 h-6 md:w-7 md:h-7" />
                </a>
                <a href="">
                    <x-bxl-tiktok class="text-gray-200 w-6 h-6 md:w-7 md:h-7" />
                </a>
            </div>
        </nav>
            
        <main class="flex-1 py-8 px-4 sm:px-6 lg:px-8 font-medium">
            @yield("main")
        </main>
    </div>

    <script>
        const menuToggle = document.getElementById('mobile-menu-toggle');
        const menu = document.getElementById('mobile-menu');

        menuToggle?.addEventListener('click', () => {
            menu.classList.toggle('-translate-x-full');
        });

        menu?.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                menu.classList.add('-translate-x-full');
            });
        });

        menu?.addEventListener('click', (e) => {
            if (e.target === menu) {
                menu.classList.add('-translate-x-full');
            }
        });
    </script>
</div>