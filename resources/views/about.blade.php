@extends("layout")

@section("main")
<section class="p-4 sm:p-6">
    <h1 class="text-2xl sm:text-3xl font-bold mb-6">About us</h1>
    <div>
        <h2 class="text-xl sm:text-2xl font-bold mb-6 sm:mb-10">Patria Cinema - a place where emotions are born</h2>
        <div class="grid sm:grid-cols-2 md:grid-cols-3 gap-6 sm:gap-10 text-gray-300">
            <div class="bg-gray-800 p-6 sm:p-8 rounded-xl">
                <h3 class="text-xl sm:text-2xl font-bold text-red-500 mb-4">Modern cinema</h3>
                <p>The newest cinema in the youth district</p>
            </div>
            <div class="bg-gray-800 p-6 sm:p-8 rounded-xl">
                <h3 class="text-xl sm:text-2xl font-bold text-red-500 mb-4">Comfort</h3>
                <p>7 halls, comfortable chairs, the best quality of image and sound, climate control and ideal acoustics</p>
            </div>
            <div class="bg-gray-800 p-6 sm:p-8 rounded-xl">
                <h3 class="text-xl sm:text-2xl font-bold text-red-500 mb-4">Atmosphere</h3>
                <p>We create cinematic magic. Every screening is an event</p>
            </div>
        </div>
    </div>
</section>
@endsection