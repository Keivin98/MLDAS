<header id="header"@if(Route::current()->getName() != 'home') class="header-fixed"@endif>
  <div class="container">

    <div id="logo" class="pull-left">
      <h1>
        <a href="{{ route('home') }}#intro">
          <!-- <span><i class="fa fa-map-marker" aria-hidden="true"></i></span>
          {{ env('APP_NAME', 'The Event') }} -->
          <img src="/img/logo.png" alt="MLDAS" >
        </a>
      </h1>
    </div>

    <nav id="nav-menu-container">
      <ul class="nav-menu">
        <li class="menu-active"><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#intro">Home</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#organizers">Organizers</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#speakers">Speakers</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#schedule">Schedule</a></li>
        <!-- <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#hotels">Hotels</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#gallery">Gallery</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#supporters">Sponsors</a></li> -->
        <!-- <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#contact">Contact</a></li> -->
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#call-for-participation">Call for Participation</a></li>
        <li class="menu-has-children"><a href="#">MLDAS Series</a>
        <ul>
          @php
          $mldasSeries = \App\MldasSeries::active()->ordered()->get();
          @endphp
          @foreach($mldasSeries as $series)
          <li>@if($series->url == 'https://mldas.qcri.org/#')<span style="display: block; padding: 10px; color: #060c22; font-size: 13px; text-transform: none; border-radius: 3px; cursor: default;">{{ $series->title }}</span>@else<a href="{{ $series->url }}" target="_blank">{{ $series->title }}</a>@endif</li>
          @endforeach
        </ul>
      </li>
      <!-- <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#venue">Venue</a></li> -->
        <!-- <li class="buy-tickets"><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#buy-tickets">Buy Tickets</a></li> -->
      </ul>
    </nav>
  </div>
</header>
