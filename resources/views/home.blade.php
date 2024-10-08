@extends('layouts.main')

@section('content')
@include('sections.intro')

<main id="main">
  @include('sections.about')

  @include('sections.speakers')

  @include('sections.schedule')

  @include('sections.venues')
  
  @include('sections.sponsors')
  
  @include('sections.contact')

  <!-- @include('sections.hotels') -->

  <!-- @include('sections.gallery') -->

  

  <!-- @include('sections.faq') -->

  <!-- @include('sections.subscribe') -->

  <!-- @include('sections.buy_ticket') -->

  
</main>
@endsection