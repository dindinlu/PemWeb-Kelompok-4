@extends('layouts.frontend')

@section('content')
<!--==================== HEADER ====================-->
<section class="package-header">
    <div class="container">
        <h1>Travel Package Wisata Religi Satu Kota</h1>
        <p>Jelajahi tempat-tempat religi di kota pilihan Anda dengan paket wisata eksklusif kami.</p>
    </div>
</section>

<!--==================== GALLERY ====================-->
<section class="package-gallery">
    <div class="container">
        <h2>Gallery</h2>
        <div class="swiper-container gallery-top">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="{{ asset('frontend/assets/img/masjid1.jpg') }}" alt="Lokasi Religi 1">
                </div>
                <div class="swiper-slide">
                    <img src="{{ asset('frontend/assets/img/masjid2.jpg') }}" alt="Lokasi Religi 2">
                </div>
                <!-- Tambahkan lebih banyak gambar sesuai kebutuhan -->
            </div>
        </div>
    </div>
</section>

<!--==================== ITINERARY ====================-->
<section class="package-itinerary">
    <div class="container">
        <h2>Itinerary</h2>
        <ul>
            <li><strong>Hari 1:</strong> Kunjungan ke Masjid Agung, Ziarah ke Makam Ulama</li>
            <li><strong>Hari 2:</strong> Tur ke Museum Islam, Sholat di Masjid Bersejarah</li>
            <li><strong>Hari 3:</strong> Wisata Kuliner Halal, Belanja di Pasar Tradisional</li>
            <!-- Tambahkan lebih banyak rincian perjalanan sesuai kebutuhan -->
        </ul>
    </div>
</section>

<!--==================== PAKET HARGA ====================-->
<section class="package-pricing">
    <div class="container">
        <h2>Harga Paket</h2>
        <p>Harga mulai dari <strong>Rp 3.000.000</strong> per orang</p>
        <p><strong>Termasuk:</strong> Penginapan, Transportasi, Tiket Masuk Tempat Wisata, Makan 3 Kali Sehari</p>
        <p><strong>Tidak Termasuk:</strong> Tiket Pesawat, Pengeluaran Pribadi, Asuransi Perjalanan</p>
    </div>
</section>

<!--==================== TESTIMONIAL ====================-->
<section class="package-testimonials">
    <div class="container">
        <h2>Testimoni</h2>
        <div class="testimonial">
            <p>"Perjalanan yang sangat mengesankan dan penuh berkah. Layanan yang sangat baik dari agen perjalanan."</p>
            <p>- Ali, Jakarta</p>
        </div>
        <!-- Tambahkan lebih banyak testimoni sesuai kebutuhan -->
    </div>
</section>

<!--==================== CONTACT ====================-->
<section class="package-contact">
    <div class="container">
        <h2>Kontak Kami</h2>
        <form action="{{ route('contact.submit') }}" method="post">
            @csrf
            <div class="form-group">
                <label for="name">Nama:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="message">Pesan:</label>
                <textarea id="message" name="message" required></textarea>
            </div>
            <button type="submit">Kirim</button>
        </form>
    </div>
</section>

<!--==================== FAQ ====================-->
<section class="package-faq">
    <div class="container">
        <h2>FAQ</h2>
        <div class="faq-item">
            <h3>Apa saja yang termasuk dalam paket?</h3>
            <p>Paket ini termasuk penginapan, transportasi, tiket masuk tempat wisata, dan makan 3 kali sehari.</p>
        </div>
        <!-- Tambahkan lebih banyak FAQ sesuai kebutuhan -->
    </div>
</section>

<link rel="stylesheet" href="{{ mix('css/satukota.css') }}">

@endsection
