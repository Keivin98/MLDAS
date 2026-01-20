<section id="schedule" class="section-with-bg">
  <div class="container wow fadeInUp">
    <div class="section-header">
      <h2>Event Schedule</h2>
    </div>

    @if($schedules->count() > 0)
      <ul class="nav nav-tabs" role="tablist">
        @foreach($schedules as $key => $day)
          <li class="nav-item">
            <a class="nav-link{{ $key === 1 ? ' active' : '' }}" href="#day-{{ $key }}" role="tab" data-toggle="tab">Day {{ $key }}</a>
          </li>
        @endforeach
      </ul>

      <div class="tab-content row justify-content-center">
        @foreach($schedules as $key => $day)
          <div role="tabpanel" class="col-lg-9 tab-pane fade{{ $key === 1 ? ' show active' : '' }}" id="day-{{ $key }}">
            @php($prevSessionNumber = null)
            @foreach($day as $schedule)
              @php($sessionNumber = $schedule->session_number ?? null)
              @php($sessionName = trim((string)($schedule->session_name ?? '')))
              @php($sessionChair = trim((string)($schedule->session_chair ?? '')))

              @if($sessionNumber !== null && $sessionNumber !== $prevSessionNumber)
                <div class="row schedule-item schedule-session">
                  <div class="col-md-12">
                    <h5 class="schedule-session__title">
                      Session {{ $sessionNumber }}@if($sessionName !== ''): {{ $sessionName }}@endif
                    </h5>
                    @if($sessionChair !== '')
                      <div class="schedule-session__chair">Chair: {{ $sessionChair }}</div>
                    @endif
                  </div>
                </div>
              @endif
              @php($prevSessionNumber = $sessionNumber)

              <div class="row schedule-item">
                <div class="col-md-2"><time>{{ \Carbon\Carbon::parse($schedule->start_time)->format("h:i A") }}</time></div>
                <div class="col-md-10">
                  @if($schedule->speaker)
                    <div class="speaker">
                      <img src="{{ $schedule->speaker->photo->getUrl() }}" alt="{{ $schedule->speaker->name }}">
                    </div>
                  @endif
                  <h4>{{ $schedule->title }}</h4>
                  <h4> @if($schedule->speaker)<span>{{ $schedule->speaker->name }}</span>@endif</h4>
                  @php($subtitle = trim((string)($schedule->subtitle ?? '')))
                  @if($subtitle !== '')
                    <div class="schedule-subtitle js-schedule-subtitle">
                      <div class="schedule-subtitle__text js-schedule-subtitle-text">{!! $subtitle !!}</div>
                      <button type="button"
                              class="schedule-subtitle__toggle btn btn-link p-0 js-schedule-subtitle-toggle"
                              aria-expanded="false">
                        More
                      </button>
                    </div>
                  @endif
                </div>
              </div>
            @endforeach
          </div>
        @endforeach
      </div>
    @else
      <div class="text-center" style="padding: 60px 20px; color: #666;">
        <h4>Event schedule will be populated here</h4>
        <p>Check back soon for our detailed event schedule!</p>
      </div>
    @endif
  </div>
</section>
