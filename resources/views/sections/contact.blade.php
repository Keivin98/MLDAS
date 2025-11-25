<section id="contact" class="section-bg wow fadeInUp">
  <div class="container">
    <div class="section-header">
      <h2>Contact Us</h2>
    </div>

    <div class="row contact-info">
      <div class="col-md-4">
        <div class="contact-address">
          <i class="ion-ios-location-outline"></i>
          <h3>Address</h3>
          <address>{{ $settings[ 'contact_address' ] }}</address>
        </div>
      </div>

      <div class="col-md-4">
        <div class="contact-phone">
          <i class="ion-ios-telephone-outline"></i>
          <h3>Phone Number</h3>
          <p><a
               href="tel:{{ str_replace( ' ', '', $settings[ 'contact_phone' ] ?? '' ) }}">{{ $settings[ 'contact_phone' ] ?? '' }}</a>
          </p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="contact-email">
          <i class="ion-ios-email-outline"></i>
          <h3>Email</h3>
          <p><a href="mailto:{{ $settings[ 'contact_email' ] ?? '' }}">{{ $settings[ 'contact_email' ] ?? '' }}</a></p>
        </div>
      </div>
    </div>
  </div>
</section>