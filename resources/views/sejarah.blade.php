@extends('layouts.app')
@section('content')
    <!-- MAIN SECTION -->
    <article class="container mt-28">
        <h1 class="text-xneutral-400 font-montserrat text-xl sm:text-2xl font-semibold">
            Sejarah B-University
        </h1>
        <p class="text-xneutral-200 font-montserrat text-sm sm:text-base font-semibold">
            Bersama mengembangkan pendidikan Negeri
        </p>
        @if ($historys->isEmpty())
            <div class="text-center text-xneutral-300 font-montserrat text-medium text-sm sm:text-base">
                No Data Available
            </div>
        @else
            <div class="grid grid-cols-1 sm:grid-cols-12 gap-8 mt-8">
                @foreach ($historys as $history)
                    <div class="sm:col-span-5">
                        <img src="{{ asset('storage/' . $history->image) }}" alt="Sejarah B-University"
                            class="w-full h-auto max-h-[400px] object-cover rounded-[30px] shadow-lg" />
                    </div>
                    <div class="sm:col-span-7">
                        <p
                            class="font-montserrat font-medium text-sm sm:text-base text-justify text-xneutral-300 leading-relaxed">
                            {!! $history->content !!}
                        </p>
                    </div>
                @endforeach
            </div>
        @endif
        <style>
            /* Gaya untuk Heading */
            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                color: #333;
                font-family: 'Montserrat', sans-serif;
                font-weight: bold;
            }

            ul {
                list-style-type: disc;
                /*Menggunakan bullet*/
                padding-left: 20px;
                margin-bottom: 1em;
            }

            ol {
                list-style-type: decimal;
                /*Menggunakan numbering*/
                padding-left: 20px;
                margin-bottom: 1em;
            }

            li {
                margin-bottom: 0.5em;
            }

            p {
                margin-bottom: 1em;
                color: #555
            }
        </style>
    </article>
@endsection
