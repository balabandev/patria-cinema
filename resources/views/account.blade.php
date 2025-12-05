@extends('layout')

@section('main')
    <section class="p-4 sm:p-6 lg:p-8">
        <h1 class="text-2xl sm:text-3xl font-bold mb-6">Account</h1>
        <div class="max-w-7xl mx-auto">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-6 lg:gap-8">
                <aside class="lg:col-span-3">
                    <nav class="space-y-2">
                        <a href="{{ route('account') }}" class="flex items-center gap-3 px-4 py-3 bg-red-700 rounded-lg">
                            <span>Account</span>
                        </a>
                        
                        <a href="#" class="flex items-center gap-3 px-4 py-3 bg-white border-2 rounded-lg font-medium text-red-700">
                            <span>My tickets</span>
                        </a>
                        
                        <a href="#" class="flex items-center gap-3 px-4 py-3 bg-white border-2 rounded-lg font-medium text-red-700">
                            <span>My bookings</span>
                        </a>
                        
                        <a href="{{ route('logout') }}" class="flex items-center gap-3 px-4 py-3 bg-white border-2 rounded-lg font-medium text-red-700">
                            <span>Logout</span>
                        </a>
                    </nav>
                </aside>

                <main class="lg:col-span-9">
                    <div class="bg-gray-800 rounded-lg shadow-md p-6 mb-6">
                        <h2 class="text-2xl font-bold text-red-700 mb-2">MY ACCOUNT</h2>
                        <p class="text-gray-300 mb-6">
                            A complete profile will make the ticket purchasing process easier and help us personalize our correspondence.
                        </p>

                        <form class="space-y-4">
                            <div>
                                <input type="text" value="{{ auth()->user()->name }}" placeholder="Name" class="w-full px-4 py-3 border border-gray-300 rounded-lg text-black"/>
                            </div>

                            <div>
                                <input type="email" value="{{ auth()->user()->email }}" placeholder="Email" class="w-full px-4 py-3 border border-gray-300 rounded-lg text-black"/>
                            </div>

                            <button type="submit" class="bg-red-700 font-medium px-8 py-3 rounded-lg">
                                SAVE CHANGES
                            </button>
                        </form>
                    </div>
                </main>
            </div>
        </div>
    </section>
@endsection