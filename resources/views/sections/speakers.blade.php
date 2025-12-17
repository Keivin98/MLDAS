<section id="speakers"
         class="wow fadeInUp">
  <div class="container">
    <div class="section-header text-center">
      <h2>Speakers</h2>
      <p>Confirmed Speakers for MLDAS 2026</p>
    </div>

    @if($speakers->count() > 0)
      <div class="owl-carousel speakers-carousel">
        @foreach($speakers as $speaker)
          <div class="speaker-item">
            <div class="speaker">
              <img src="{{ $speaker->photo->getUrl() }}"
                   alt="{{ $speaker->name }}"
                   class="img-fluid speaker-img">
              <div class="details">
                <h3><a href="{{ route( 'speaker', $speaker->id ) }}">{{ $speaker->name }}</a></h3>
                <p>{{$speaker->description}}</p>
              </div>
            </div>
          </div>
        @endforeach
      </div>
    @else
      <div class="row">
        <div class="col-12">
          <div class="text-center"
               style="padding: 60px 20px; color: #666;">
            <h4>List of speakers will be populated here</h4>
            <p>Check back soon for our amazing lineup of speakers!</p>
          </div>
        </div>
      </div>
    @endif
    <div>
      <p>Speakers from Prior Editions</p>
      <ul
          style="list-style: none; padding: 0; display: inline-flex; flex-wrap: wrap; justify-content: center; gap: 15px;">
        @php
          $mldasSeries = \App\MldasSeries::active()->ordered()->get();
        @endphp
        @foreach($mldasSeries as $series)
          @if($series->url != 'https://mldas.qcri.org/#')
            <li style="display: inline;"><a href="{{ $series->url }}#speaker0"
                 style="text-decoration: underline;"
           target="_blank">{{ trim( str_replace( 'MLDAS', '', $series->title ) ) }} </a></li>@endif
        @endforeach
      </ul>
    </div>
  </div>
</section>

<style>
  .speaker {
    text-align: center;
  }

  .speaker-img {
    display: inline-block;
    max-height: 350px;
    height: auto;
  }

  .speakers-carousel .speaker-item {
    padding: 0 10px;
  }

  .speakers-carousel {
    position: relative;
  }

  /* Owl v2 default navElement is 'div', so target classes instead of tag */
  .speakers-carousel .owl-nav {
    position: absolute;
    inset: 0;
    pointer-events: none;
    /* don't block swipe/clicks on slides */
  }

  .speakers-carousel .owl-nav .owl-prev,
  .speakers-carousel .owl-nav .owl-next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    pointer-events: auto;
    /* clickable */
    background: transparent !important;
    color: #0e1b4d !important;
    border: 0 !important;
    outline: none !important;
    padding: 0 !important;
    line-height: 1;
    opacity: 0.25;
    transition: opacity 0.2s ease, transform 0.2s ease;
  }

  .speakers-carousel .owl-nav .owl-prev {
    left: -75px;
  }

  .speakers-carousel .owl-nav .owl-next {
    right: -75px;
  }

  .speakers-carousel .owl-nav i {
    font-size: 48px;
  }

  .speakers-carousel:hover .owl-nav .owl-prev,
  .speakers-carousel:hover .owl-nav .owl-next {
    opacity: 0.45;
  }

  .speakers-carousel .owl-nav .owl-prev:hover,
  .speakers-carousel .owl-nav .owl-next:hover {
    opacity: 0.85;
    transform: translateY(-50%) scale(1.03);
  }

  /* Pagination (dots) -> small bars, like your screenshot */
  .speakers-carousel .owl-dots {
    margin-top: 18px;
    text-align: center;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    gap: 6px;
    margin-bottom: 18px;
  }

  .speakers-carousel .owl-dot {
    outline: none !important;
    display: inline-flex;
    align-items: center;
    margin-bottom: 18px;
  }

  .speakers-carousel .owl-dot span {
    display: inline-block;
    width: 28px;
    height: 6px;
    margin: 0 6px;
    border-radius: 999px;
    background: rgba(6, 12, 34, 0.18);
    transition: background 0.2s ease, width 0.2s ease;
  }

  .speakers-carousel .owl-dot.active span {
    background: #0e1b4d;
    width: 34px;
  }

  /* Keep arrows closer on smaller screens */
  @media (max-width: 991px) {
    .speakers-carousel .owl-nav .owl-prev {
      left: -28px;
    }

    .speakers-carousel .owl-nav .owl-next {
      right: -28px;
    }

    .speakers-carousel .owl-nav i {
      font-size: 36px;
    }
  }

  @media (max-width: 576px) {
    .speakers-carousel .owl-nav .owl-prev {
      left: -18px;
    }

    .speakers-carousel .owl-nav .owl-next {
      right: -18px;
    }

    .speakers-carousel .owl-nav i {
      font-size: 28px;
    }
  }
</style>