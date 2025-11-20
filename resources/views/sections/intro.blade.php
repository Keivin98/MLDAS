<section id="intro">
  <div class="intro-container wow fadeIn">
    <h1 class="mb-4 pb-0">{!! $settings['title'] ?? '' !!}</h1>
    <p class="mb-4 pb-0">{{ $settings['subtitle'] ?? '' }}</p>
    <p class="mb-4 pb-0">{{ $settings['about_where'] ?? '' }}</p>
    @if($settings['youtube_link'])
      <!-- <a href= class="venobox play-btn mb-4" data-vbtype="video"
        data-autoplay="true"></a> 
        <a class="" data-autoplay="true" data-vbtype="video" data-ratio="1x1" data-maxwidth="400px" href="{{ $settings['youtube_link'] }}" target="_" >Recap of MLDAS 23</a>
    --> @endif
    <div class="about-content mt-5" style="background: rgba(255, 255, 255, 0.45); padding: 30px; border-radius: 8px; text-align: left; margin-left: 10rem; margin-right: 10rem;">
      <div class="row">
        <div class="col-lg-12">
        <h2 class="mb-4 pb-0"><span>About The Symposium</span></h2>
          <p style="color: rgba(255, 255, 255, 0.9); line-height: 1.5; margin-bottom: 0; font-size: 1.1rem;font-weight: 500">{!! $settings['about_description'] ?? '' !!}</p>
        </div>
        <div class="col-lg-3">
        <!-- <h2 class="mb-4 pb-0"><span>Organizers </span></h2>
          <p style="color: rgba(255, 255, 255, 0.9); margin-bottom: 8px; font-size: 1.1rem;">Chairs:</p>
          <p style="color: rgba(255, 255, 255, 0.9); line-height: 1.6; margin-bottom: 0;  font-weight: 500; font-size: 1rem;">{!! $settings['first_chair'] ?? '' !!} - {!! $settings['first_chair_org'] ?? '' !!}<br>{!! $settings['second_chair'] ?? '' !!} - {!! $settings['second_chair_org'] ?? '' !!}<br>{!! $settings['third_chair'] ?? '' !!} - {!! $settings['third_chair_org'] ?? '' !!}</p>
          <p style="color: rgba(255, 255, 255, 0.9); margin-top: 15px; margin-bottom: 8px; font-size: 1.1rem;">Registration and Local Arrangements Chair:</p>
          <p style="color: rgba(255, 255, 255, 0.9); line-height: 1.6; margin-bottom: 0; font-weight: 500; font-size: 1rem;">{!! $settings['registration_chair'] ?? '' !!} - {!! $settings['registration_chair_org'] ?? '' !!}</p>
        </div>
        <div class="col-lg-3">
        <h2 class="mb-4 pb-0"><span>Event Details </span></h2>
          <p style="color: rgba(255, 255, 255, 0.9); line-height: 1.5; margin-bottom: 8px; font-size: 1.1rem;font-weight: 500;"><strong style="color: #fff;">Where:</strong> {!! $settings['about_where'] ?? '' !!}</p>
          <p style="color: rgba(255, 255, 255, 0.9); line-height: 1.5; margin-bottom: 0; font-size: 1.1rem;font-weight: 500;"><strong style="color: #fff;">When:</strong> {!! $settings['about_when'] ?? '' !!}</p>
        </div> -->
      </div>
    </div>
  </div>
</section>
