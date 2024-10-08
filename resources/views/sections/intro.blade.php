<section id="intro">
  <div class="intro-container wow fadeIn">
    <h1 class="mb-4 pb-0">{!! $settings['title'] ?? '' !!}</h1>
    <p class="mb-4 pb-0">{{ $settings['subtitle'] ?? '' }}</p>
    @if($settings['youtube_link'])
      <!-- <a href= class="venobox play-btn mb-4" data-vbtype="video"
        data-autoplay="true"></a> -->
        <a class="" data-autoplay="true" data-vbtype="video" data-ratio="1x1" data-maxwidth="400px" href="{{ $settings['youtube_link'] }}" target="_" >Recap of MLDAS 23</a>
    @endif
    <a href="#about" class="about-btn scrollto">About The Symposium</a>
  </div>
</section>
