@extends('layouts.app')

@section('content')
    <!-- MAIN SECTION -->
    <article class="container mt-28">
        <h1 class="text-xneutral-400 font-montserrat text-xl sm:text-2xl font-semibold">
            {{ $announcement->title }}
        </h1>
        <p class="text-xneutral-200 text-sm sm:text-base font-montserrat font-semibold">
            Dapatkan informasi lebih lanjut mengenai pengumuman ini
        </p>

        <!-- Informasi Pengumuman -->
        <div class="mt-8">
            <p class="font-montserrat text-xs sm:text-sm font-semibold text-xneutral-200 mb-2">
                Tanggal: {{ \Carbon\Carbon::parse($announcement->created_at)->format('d F Y') }}
            </p>
            <p class="font-montserrat text-sm sm:text-base text-justify text-xneutral-300">
                {!! $announcement->content !!}
            </p>

            <!-- Gambar Pengumuman (jika ada) -->
            @if ($announcement->image)
                <div class="rounded-3xl overflow-hidden mt-4">
                    <img src="{{ asset('storage/' . $announcement->image) }}" alt="{{ $announcement->title }}"
                        class="w-full object-cover max-h-[430px]" />
                </div>
            @endif
        </div>
    </article>
@endsection
