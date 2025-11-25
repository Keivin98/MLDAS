@extends( 'layouts.main' )

@section( 'content' )
  @include( 'sections.intro' )

  <main id="main">
    @include( 'sections.organizers' )

    @include( 'sections.speakers' )

    @include( 'sections.schedule' )


    @include( 'sections.sponsors' )

    @include( 'sections.call-for-participation' )

    @include( 'sections.venues' )

    @include( 'sections.contact' )

  </main>
@endsection
