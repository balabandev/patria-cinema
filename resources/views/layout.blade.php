<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinematograful Patria</title>
    <link rel="icon" href="{{ asset('storage/logo1.png') }}">

    @vite(['resources/css/app.css', 'resources/js/app.js'])

    @livewireStyles
</head>
<body class="bg-black text-gray-100 font-medium">

    @livewire('header')

    @livewire('navigation')

    @livewire('footer')

    @livewireScripts
</body>
</html>