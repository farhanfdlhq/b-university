@extends('layouts.app')
@section('content')
    <!-- MAIN SECTION -->
    <article class="container mt-28">
        <!-- Judul Utama -->
        <h1 class="text-xneutral-400 font-montserrat text-xl sm:text-2xl font-semibold">
            Berita terkini untuk Anda
        </h1>
        <p class="text-xneutral-200 text-sm sm:text-base font-montserrat font-semibold">
            Temukan berita terbaru hari ini
        </p>

        <!-- Kontainer Konten Berita -->
        <div class="mt-11">
            <!-- Judul Berita dan Informasi Penulis -->
            <div class="space-y-[14px] mb-3">
                <h2 class="uppercase font-montserrat font-semibold text-xneutral-400 text-[22px] sm:text-3xl">
                    {{ $berita->title }}
                </h2>
                <div class="flex items-center gap-[18px] font-montserrat text-xs text-xneutral-200 font-semibold">
                    <!-- Informasi Admin -->
                    <div class="flex gap-[10px] items-center">
                        <img src="/assets/images/profile-picture.png" alt="Admin" />
                        <span>by <span class="text-xneutral-400">{{ $berita->user->name }}</span></span>
                    </div>
                    <!-- Tanggal Publikasi -->
                    <span>{{ \Carbon\Carbon::parse($berita->created_at)->format('d F Y') }}</span>
                </div>
            </div>

            <!-- Isi Konten Berita -->
            <div class="font-montserrat font-medium text-sm sm:text-base text-justify text-xneutral-300">
                {!! $berita->content !!}
            </div>

            <!-- Gambar Berita -->
            <div class="rounded-3xl overflow-hidden mt-4">
                <img src="{{ asset('storage/' . $berita->image) }}" alt="{{ $berita->title }} "
                    class="w-full object-cover max-h-[430px]" />
            </div>
        </div>

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
                color: #555;
            }
        </style>
    </article>
@endsection
