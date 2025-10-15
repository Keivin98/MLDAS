<section id="supporters" class="section-with-bg wow fadeInUp">

  <div class="container">
    <div class="section-header">
      <h2>Sponsors</h2>
    </div>

    <div class="row no-gutters supporters-wrap clearfix">
      @if($sponsors->count() > 0)
        @foreach($sponsors as $sponsor)
          <div class="col-lg-6 col-md-4 col-xs-6">
            <div class="supporter-logo">
              @if($sponsor->logo)
                <img src="{{ $sponsor->logo->getUrl() }}" class="img-fluid" alt="{{ $sponsor->name }}">
              @else
                <div class="sponsor-name" style="padding: 20px; text-align: center; background: #f8f9fa; border: 1px solid #dee2e6; border-radius: 4px;">
                  <h5>{{ $sponsor->name }}</h5>
                </div>
              @endif
            </div>
          </div>
        @endforeach
      @else
        <div class="col-12">
          <div class="text-center" style="padding: 60px 20px; color: #666;">
            <h4>Sponsors will be listed here</h4>
            <p>Check back soon for our amazing sponsors!</p>
          </div>
        </div>
      @endif
    </div>

  </div>

</section>
