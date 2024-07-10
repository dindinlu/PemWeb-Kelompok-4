@extends('layouts.frontend')

@section('content')

<style>
  .button {
    display: block;
    text-align: center;
    padding: 10px 15px;
    margin-bottom: 10px;
  }

  .contact__card-box {
    width: 100%; /* Mengatur lebar box agar lebih lebar */
    padding: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Memberikan sedikit bayangan */
    margin-bottom: 20px; /* Memberikan jarak bawah antara box */
  }
</style>

<!--==================== HOME ====================-->
<section>
        <div class="swiper-container gallery-top">
          <div class="swiper-wrapper">
            <!--========== ISLANDS 1 ==========-->
            <section class="islands swiper-slide">
              <img
                src="{{ asset('frontend/assets/img/KELAS E.jpg') }}"
                alt=""
                class="islands__bg"
              />
              <div class="bg__overlay">
                <div class="islands__container container">
                  <div class="islands__data">
                    <h2 class="islands__subtitle">Need Travel</h2>
                    <h1 class="islands__title">Contact Us</h1>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </section>
      <!--==================== CONTACT ====================-->
      <section class="contact section" id="contact">
        <div class="contact__container container grid">
          <div class="contact__images">
            <div class="contact__orbe"></div>

            <div class="contact__img">
              <img src="{{ asset('frontend/assets/img/contact E.jpg') }}" alt="" />
            </div>
          </div>

          <div class="contact__content">
            <div class="contact__data">
              <span class="section__subtitle">Butuh Bantuan?</span>
              <h2 class="section__title">Jangan ragu untuk menghubungi kami</h2>
              <p class="contact__description">
              " Anda kesulitan menemukan tempat untuk perjalanan Anda berikutnya? 
              Butuh panduan untuk perjalanan pertama Anda atau butuh konsultasi tentang traveling? 
              Hubungi kami saja"
              </p>
            </div>

            <div class="contact__card">
              <div class="contact__card-box">
                <div class="contact__card-info">
                  <i class="bx bxs-phone-call"></i>
                  <i class="bx bxs-message-rounded-dots"></i>
                  <div>
                    <h3 class="contact__card-title">Kontak Developer</h3>
                  </div>
                </div>

                <p><a href="https://wa.me/62882005992391" target="_blank" class="button contact__card-button">Jirien +62882005992391</a></p>
                <p><a href="https://wa.me/6285878371521" target="_blank" class="button contact__card-button">Lukman +6285878371521</a></p>
                <p><a href="https://wa.me/6281265580858" target="_blank" class="button contact__card-button">Ratna +6281265580858</a></p>
                <p><a href="https://wa.me/6283154680860" target="_blank" class="button contact__card-button">Dinda +6283154680860</a></p>
              </div>
            </div>
          </div>
        </div>
      </section>
@endsection
