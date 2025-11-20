<section id="speakers" class="wow fadeInUp">
  <div class="container">
    <div class="section-header text-center">
      <h2>Speakers</h2>
      <p>Confirmed Speakers for MLDAS 2026</p>
    </div>

    <div class="row">
      @if($speakers->count() > 0)
        @foreach($speakers as $speaker)
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="{{ $speaker->photo->getUrl() }}" alt="{{ $speaker->name }}" class="img-fluid speaker-img">
              <div class="details">
                <h3><a href="{{ route('speaker', $speaker->id) }}">{{ $speaker->name }}</a></h3>
                <p>{{$speaker->description}}</p>
              </div>
            </div>
          </div>
        @endforeach
      @else
        <div class="col-12">
          <div class="text-center" style="padding: 60px 20px; color: #666;">
            <h4>List of speakers will be populated here</h4>
            <p>Check back soon for our amazing lineup of speakers!</p>
          </div>
        </div>
      @endif
    </div>
    <div>
    <p>Speakers from Prior Editions</p>
      <ul style="list-style: none; padding: 0; display: inline-flex; flex-wrap: wrap; justify-content: center; gap: 15px;">
          @php
          $mldasSeries = \App\MldasSeries::active()->ordered()->get();
          @endphp
          @foreach($mldasSeries as $series)
          @if($series->url != 'https://mldas.qcri.org/#') <li style="display: inline;"><a href="{{ $series->url }}#speaker0" style="text-decoration: underline;" target="_blank">{{ trim(str_replace('MLDAS', '', $series->title)) }} </a></li>@endif
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
</style>