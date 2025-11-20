<section id="about">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 ml-10">
        <h2>About The Symposium</h2>
        <p>{!! $settings['about_description'] ?? '' !!}</p>
      </div>
      <div class="col-lg-4">
        <h3>Sponsors</h3>
        <p>Chairs: </p>
        <p>{!! $settings['first_chair'] ?? '' !!} - {!! $settings['first_chair_org'] ?? '' !!}<br>{!! $settings['second_chair'] ?? '' !!} - {!! $settings['second_chair_org'] ?? '' !!}<br>{!! $settings['third_chair'] ?? '' !!} - {!! $settings['third_chair_org'] ?? '' !!}</p>
      </div>
      <div class="col-lg-3">
        <h3>Event Details</h3>
        <p><strong>Where:</strong> {!! $settings['about_where'] ?? '' !!}</p>
        <p><strong>When:</strong> {!! $settings['about_when'] ?? '' !!}</p>
      </div>
    </div>
  </div>
</section>
