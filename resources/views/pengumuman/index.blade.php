@extends('layouts.app')

@section('content')
    <!-- MAIN SECTION -->
    <article class="container mt-28">
        <h1 class="text-xneutral-400 font-montserrat text-xl sm:text-2xl font-semibold">
            Pengumuman Terbaru
        </h1>
        <p class="text-xneutral-200 text-sm sm:text-base font-montserrat font-semibold">
            Temukan pengumuman terbaru di sini
        </p>

        <!-- Cek apakah ada pengumuman -->
        @if ($announcements->isEmpty())
            <p class="text-center text-xneutral-300 font-montserrat text-medium text-sm sm:text-base">
                Tidak ada pengumuman tersedia.
            </p>
        @else
            <!-- Grid Daftar Pengumuman -->
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 mt-8">
                @foreach ($announcements as $announcement)
                    <div class="py-[26px] px-7 rounded-[20px] border border-xneutral-100 bg-white">
                        <a href="{{ route('pengumuman.show', $announcement->slug) }}"
                            class="text-base sm:text-lg font-montserrat font-semibold text-xneutral-400 line-clamp-2 mb-4">
                            {{ $announcement->title }}
                        </a>
                        <p class="font-montserrat text-xs sm:text-sm font-semibold text-xneutral-200 mb-1.5 text-justify">
                            {!! Str::limit($announcement->content, 100) !!}...
                        </p>
                        <p class="font-montserrat text-xs font-semibold text-xneutral-200">
                            {{ \Carbon\Carbon::parse($announcement->created_at)->format('d/m/Y') }}
                        </p>
                    </div>
                @endforeach
            </div>
        @endif
    </article>
@endsection