<footer class="container-fluid dir-rtl">
    <div class="container">
        <div class="row res-mobile text-dir">

            <div class="col-lg-4 col-md-6 mb-6 col-sm-6 mb-lg-0"><img src="{{ asset('/storage/' . $my_setting->footer_logo) }}" style="mix-blend-mode: multiply;
                    " alt="" width="180" class="mb-3">
                {{-- <p class="font-italic text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p> --}}
                <ul class="list-inline mt-4" style="direction: ltr">
                    @if (\App\Settings::all()->first()->whatsapp)
                        <li class="list-inline-item"><a href="https://wa.me/{{ $my_setting->whatsapp }}" target="_blank"
                                title="whatsapp"><i class="fab fa-whatsapp fa-2x"></i></a></li>
                    @endif
                    @if (\App\Settings::all()->first()->facebook)
                        <li class="list-inline-item"><a href="{{ $my_setting->facebook }}" target="_blank"
                                title="facebook"><i class="fab fa-facebook fa-2x"></i></a></li>
                    @endif
                    @if (\App\Settings::all()->first()->email)
                        <li class="list-inline-item"><a href="mailto:{{ $my_setting->email }}" target="_blank"
                                title="Gmail"><i class="far fa-envelope fa-2x"></i></a></li>
                    @endif
                    @if (\App\Settings::all()->first()->twitter)
                        <li class="list-inline-item"><a href="{{ $my_setting->twitter }}" target="_blank"
                                title="twitter"><i class="fab fa-twitter fa-2x"></i></a></li>
                    @endif
                    @if (\App\Settings::all()->first()->youtube)
                        <li class="list-inline-item"><a href="{{ $my_setting->youtube }}" target="_blank"
                                title="youtube"><i class="fab fa-youtube fa-2x"></i></a></li>
                    @endif
                    @if (\App\Settings::all()->first()->instagram)
                        <li class="list-inline-item"><a href="{{ $my_setting->instagram }}" target="_blank"
                                title="instagram"><i class="fab fa-instagram fa-2x"></i></a></li>
                    @endif
                    @if (\App\Settings::all()->first()->telegram)
                        <li class="list-inline-item"><a href="#" target="_blank" title="telegram"><i
                                    class="fab fa-telegram fa-2x"></i></a></li>
                    @endif

                </ul>
            </div>
            {{-- <div class="col-md-4">
                <h5>@lang('site.contact_us')</h5>

                @if (\App\Settings::all()->first()->whatsapp)

                    <p>@lang('site.whatsapp'): <a href="
                    https://wa.me/{{ \App\Settings::all()->first()->phone }}
">

                            {{ \App\Settings::all()->first()->phone }}
                        </a>
                    </p>



                @endif

                @if (\App\Settings::all()->first()->whatsapp)
                <i class="fab fa-facebook"></i>
                    <p>@lang('site.instagram'): <a href="
                    {{ \App\Settings::all()->first()->instagram }}
                            ">

                            {{ \App\Settings::all()->first()->instagram }}
                        </a>
                    </p>



                @endif

                <p>@lang('site.address'): <a href=""> kuwait </a>

            </div> --}}

            <div class="col-lg-4 col-md-6 mb-6 col-sm-6 mb-lg-0">
                <h5 class="font-weight-bold">@lang('site.contact_us')
                </h5>
                <p> <a href="{{ route('policy',1) }}"> @lang('site.terms_and_condition') </a>
                <p> <a href="{{ route('policy',2) }}"> @lang('site.about') </a>
                <p> <a href="{{ route('policy',4) }}"> @lang('site.delivery') </a>
                <p> <a href="{{ route('wishlist.view') }}"> @lang('site.mywishlist') </a>
                <p> <a href="{{ route('checkout') }}"> @lang('site.payment') </a>
                <p> <a href="{{ route('contact.us') }}"> @lang('site.contact_us') </a>


            </div>
            <div class="col-md-4">
                <h5 class="font-weight-bold">@lang('site.location')
                </h5>
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1781287.9077480363!2d48.65696112404058!3d29.30938918651801!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3fc5363fbeea51a1%3A0x74726bcd92d8edd2!2z2KfZhNmD2YjZitiq4oCO!5e0!3m2!1sar!2seg!4v1585667151145!5m2!1sar!2seg"
                    width="100%" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                    tabindex="0"></iframe>
            </div>

        </div>
    </div>

</footer>
<div class="container-fluid pad-0 bg-dark  text-center">
    <div class="container  ">
        <br>
        <p class="c-w mr-0">Copyright 2021 © SARA MERDAS
            Design by <a href="">bluezone</a>
        </p>
        <br>
    </div>
</div>


<script src="{{ asset('front/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('front/js/popper.min.js') }}"></script>
<script src="{{ asset('front/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('front/js/all.min.js') }}"></script>
<script src="{{ asset('front/js/wow.min.js') }}"></script>
{{-- <script src="{{ asset('front/js/owl.carousel.min.js') }}"></script> --}}

<script>
    new WOW().init();
</script>
<script src="{{ asset('front/js/main-js.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/js/slick.min.js') }}"></script>
<script src="{{ asset('front/js/counterup.min.js') }}"></script>
<link href="//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js" integrity="sha512-jNDtFf7qgU0eH/+Z42FG4fw3w7DM/9zbgNPe3wfJlCylVDTT3IgKW5r92Vy9IHa6U50vyMz5gRByIu4YIXFtaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script>
    $(document).ready(function() {
        $("img.lazy").lazyload();
        // jQuery counterUp
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });

        $('.MyServices').slick({
            autoplay: true,
            dots: true,
            autoplaySpeed: 2000,
            centerMode: false,
            slidesToShow: 4,
            slidesToScroll: 1,
            responsive: [{
                    breakpoint: 1260,
                    settings: {
                        arrows: false,
                        slidesToShow: 5
                    }
                },
                {
                    breakpoint: 992,
                    settings: {
                        arrows: false,
                        slidesToShow: 3
                    }
                },
                {
                    breakpoint: 576,
                    settings: {
                        arrows: false,
                        slidesToShow: 2
                    }
                }
            ]
        });


    });
</script>
<script>
    var swiper = new Swiper(".mySwiper", {
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            // when window width is >= 480px
            770: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            // when window width is >= 640px
            1000: {
                slidesPerView: 3,
                spaceBetween: 30
            }
        },
        freeMode: true,
        // autoplay: {
        //     delay: 1500,
        // },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
    var swiper = new Swiper(".mySwiper1", {
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            // when window width is >= 480px
            770: {
                slidesPerView: 3,
                spaceBetween: 30
            },
            // when window width is >= 640px
            1000: {
                slidesPerView: 4,
                spaceBetween: 30
            }
        },
        freeMode: true,
        // autoplay: {
        //     delay: 1500,
        // },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });

    $('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

</script>


{{-- slider ismail start --}}

{{-- <script src="{{asset('front/assets/js/jquery.min.js')}}"></script> --}}
{{-- <script src="{{asset('front/assets/js/bootstrap.min.js')}}"></script> --}}
<script src="{{asset('front/assets/js/owl.carousel.min.js')}}"></script>
{{-- <script src="{{asset('front/assets/js/mixitup.min.js')}}"></script> --}}
<script src="{{asset('front/assets/js/meanmenu.min.js')}}"></script>
<script src="{{asset('front/assets/js/main.js')}}"></script>
<script>
    $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    responsiveClass:true,
    responsive:{
        0:{
            items:2,
            nav:true
        },
        600:{
            items:3,
            nav:false
        },
        1080:{
            items:4,
            nav:true,
            loop:true
        }
    }
});

</script>
{{-- slider ismail end --}}

@yield('script')
</body>

</html>
