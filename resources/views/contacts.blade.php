@extends('layout')

@section('main')
    <section class="p-4 sm:p-6 max-w-4xl mx-auto">
        <h1 class="text-2xl sm:text-3xl font-bold mb-6">Contacts</h1>
        <div class="mb-8 sm:mb-12 bg-gray-800 p-4 sm:p-6 rounded-lg">
            <h2 class="text-xl sm:text-2xl font-bold mb-4 text-red-500">Do you want to book a ticket?</h2>
            <p class= "leading-relaxed mb-6">
                If you want to book a ticket, please call us at:
            </p>
        </div>

        <div class="bg-gray-800 p-4 sm:p-6 rounded-lg mb-6">
            <h2 class="text-lg sm:text-xl font-bold mb-4 text-red-500">Patria Rîșcani</h2>
            <div class="space-y-2 sm:space-y-3 text-sm sm:text-base">
                <p class="font-semibold">Booking: 0 (22) 899955, 0 (68) 466956</p>
                <p class="font-semibold">Schedule: 0 (22) 899966</p>
                <p class="font-semibold">Administrator: 0 (22) 899980, 0 (68) 455525</p>
                <p class="font-semibold">Address: str. Studentilor, 7/5, MD-2069</p>
            </div>
        </div>

        <div class="bg-gray-800 p-4 sm:p-6 rounded-lg">
            <h2 class="text-lg sm:text-xl font-bold mb-4 text-red-500">Administration of Patria</h2>
            <div class="space-y-2 sm:space-y-3 text-sm sm:text-base">
                <p class="font-semibold">Company: Balaban Media Group S.R.L.</p>
                <p class="font-semibold">Company Balaban Media Group S.R.L. manages the cinema Patria</p>
                <p class="font-semibold">Legal address: Moldova Republic of, mun. Chișinău, bd Ștefan cel Mare, 202, MD-2008</p>
                <p class="font-semibold">Actual address: Moldova Republic of, mun. Chișinău, bd Moscova 21/5, of 808 MD-2045</p>
                <p class="font-semibold">E-mail: cinemapatria@gmail.com</p>
            </div>
        </div>
    </section>
@endsection