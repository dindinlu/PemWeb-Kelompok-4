@extends('layouts.frontend')

@section('content')
<!--==================== HOME ====================-->
<section>
    <div class="swiper-container gallery-top">
        <div class="swiper-wrapper">
            <section class="islands swiper-slide">
                <img src="{{ asset('frontend/assets/img/bali.jpg') }}" alt="" class="islands__bg" />

                <div class="islands__container container">
                    <div class="islands__data">
                        <h2 class="islands__subtitle">Explore</h2>
                        <h1 class="islands__title">Package Travel</h1>
                    </div>
                </div>
            </section>
        </div>
    </div>
</section>

<!--==================== POPULAR ====================-->
<section class="section" id="popular">
    <div class="container">
        <span class="section__subtitle" style="text-align: center">All</span>
        <h2 class="section__title" style="text-align: center">
            Package Travel
        </h2>

        <div class="popular__all">
            @foreach($travel_packages as $travel_package)
            <article class="popular__card">
                <a href="{{ route('travel_package.show', $travel_package->slug) }}">
                    <img src="{{ Storage::url($travel_package->galleries->first()->images) }}" alt=""
                        class="popular__img" />
                    <div class="popular__data">
                        <h2 class="popular__price"><span>$</span>{{ number_format($travel_package->price,2) }}</h2>
                        <h3 class="popular__title">{{ $travel_package->location }}</h3>
                        <p class="popular__description">{{ $travel_package->type }}</p>
                    </div>
                </a>
            </article>
            @endforeach

            <!-- Added Hover Boxes -->
            <div class="popular__card hover-box" style="background-image: url('{{ asset('frontend/assets/img/masjid.jpg') }}');" >
                <a href="{{route('satukota')}}" class="box1-link">
                    <div class="content">
                        <h2>Package Wisata 1 Kota</h2>
                        <p>Perjalanan intens di satu kota pilihan.</p>
                    </div>
                </a>
            </div>                        

            <div class="popular__card hover-box" style="background-image: url('{{ asset('frontend/assets/img/masjid.jpg') }}');">
               <a href="{{route('lebihkota')}}" class="box2-link">
                <div class="content">
                    <h2>Package Wisata Lebih dari 1 Kota</h2>
                    <p>
                        Kunjungi beberapa kota sekaligus dalam waktu singkat!
                    </p>
                </div>
               </a>
            </div>
            <!-- End of Added Hover Boxes -->

        </div>
    </div>
</section>
@endsection
