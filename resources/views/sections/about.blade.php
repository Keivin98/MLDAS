<section id="about">
  <div class="container">
    <div class="row">
      <div class="col-lg-5">
        <h2>About The Symposium</h2>
        <p>{!! $settings['about_description'] ?? '' !!}</p>
      </div>
      <div class="col-lg-3">
        <h3>Organizers</h3>
        <p>Chairs: </p>
        <p>{!! $settings['first_chair'] ?? '' !!} ({!! $settings['first_chair_org'] ?? '' !!})<br>{!! $settings['second_chair'] ?? '' !!} ({!! $settings['second_chair_org'] ?? '' !!})</p>
      </div>
      <div class="col-lg-2">
        <h3>Where</h3>
        <p>{!! $settings['about_where'] ?? '' !!}</p>
      </div>
      <div class="col-lg-2">
        <h3>When</h3>
        <p>{!! $settings['about_when'] ?? '' !!}</p>
      </div>
    </div>
  </div>
</section>
