@extends('layouts.frontend')

@section('content')
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
                  <div>
                    <h3 class="contact__card-title">Call</h3>
                    <p class="contact__name-description">Jirien</p>
                    <p class="contact__card-description">+62882005992391</p>
                  </div>
                </div>
                <a href="tel:+62882005992391" class="button contact__card-button" target="_blank">Call Now</a>
            </div>

                <button class="button contact__card-button">Call Now</button>
              </div>
              <div class="contact__card-box">
                <div class="contact__card-info">
                  <i class="bx bxs-message-rounded-dots"></i>
                  <div>
                    <h3 class="contact__card-title">Whatsapp</h3>
                    <p class="contact__name-description">Ratna</p>
                    <p class="contact__card-description">+6281265580858</p>
                  </div>
                </div>
                <a href="https://wa.me/6281265580858" class="button contact__card-button" target="_blank">Chat Now</a>
                </div>

                <button class="button contact__card-button">Chat Now</button>
              </div>
              <div class="contact__card-box">
                <div class="contact__card-info">
                  <i class="bx bxs-video"></i>
                  <div>
                    <h3 class="contact__card-title">Video Call</h3>
                    <p class="contact__name-description">Dinda</p>
                    <p class="contact__card-description">+6283154680860</p>
                  </div>
                </div>
                <a href="https://wa.me/6283154680860" class="button contact__card-button" target="_blank">Video Call Now</a>
            </div>

                <button class="button contact__card-button">
                  Video Call Now
                </button>
              </div>
              <div class="contact__card-box">
                <div class="contact__card-info">
                  <i class="bx bxs-phone-call"></i>
                  <div>
                    <h3 class="contact__card-title">Message</h3>
                    <p class="contact__name-description">Lukman</p>
                    <p class="contact__card-description">+625878371521</p>
                  </div>
                </div>
                <a href="sms:+625878371521" class="button contact__card-button" target="_blank">Message Now</a>
             </div>
            </div>

                <button class="button contact__card-button">Message Now</button>
              </div>
            </div>
          </div>
        </div>
      </section>
@endsection