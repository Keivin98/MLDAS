jQuery(document).ready(function ($) {

  // Back to top button
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('.back-to-top').fadeIn('slow');
    } else {
      $('.back-to-top').fadeOut('slow');
    }
  });
  $('.back-to-top').click(function () {
    $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
    return false;
  });

  // Header fixed on scroll
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('#header').addClass('header-scrolled');
    } else {
      $('#header').removeClass('header-scrolled');
    }
  });

  if ($(window).scrollTop() > 100) {
    $('#header').addClass('header-scrolled');
  }

  // Real view height for mobile devices
  if (window.matchMedia("(max-width: 767px)").matches) {
    $('#intro').css({height: $(window).height()});
  }

  // Initiate the wowjs animation library
  new WOW().init();

  // Initialize Venobox
  $('.venobox').venobox({
    bgcolor: '',
    overlayColor: 'rgba(6, 12, 34, 0.85)',
    closeBackground: '',
    closeColor: '#fff'
  });

  // Initiate superfish on nav menu
  $('.nav-menu').superfish({
    animation: {
      opacity: 'show'
    },
    speed: 400
  });

  // Mobile Navigation
  if ($('#nav-menu-container').length) {
    var $mobile_nav = $('#nav-menu-container').clone().prop({
      id: 'mobile-nav'
    });
    $mobile_nav.find('> ul').attr({
      'class': '',
      'id': ''
    });
    $('body').append($mobile_nav);
    $('body').prepend('<button type="button" id="mobile-nav-toggle"><i class="fa fa-bars"></i></button>');
    $('body').append('<div id="mobile-body-overly"></div>');
    $('#mobile-nav').find('.menu-has-children').prepend('<i class="fa fa-chevron-down"></i>');

    $(document).on('click', '.menu-has-children i', function (e) {
      $(this).next().toggleClass('menu-item-active');
      $(this).nextAll('ul').eq(0).slideToggle();
      $(this).toggleClass("fa-chevron-up fa-chevron-down");
    });

    $(document).on('click', '#mobile-nav-toggle', function (e) {
      $('body').toggleClass('mobile-nav-active');
      $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
      $('#mobile-body-overly').toggle();
    });

    $(document).click(function (e) {
      var container = $("#mobile-nav, #mobile-nav-toggle");
      if (!container.is(e.target) && container.has(e.target).length === 0) {
        if ($('body').hasClass('mobile-nav-active')) {
          $('body').removeClass('mobile-nav-active');
          $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
          $('#mobile-body-overly').fadeOut();
        }
      }
    });
  } else if ($("#mobile-nav, #mobile-nav-toggle").length) {
    $("#mobile-nav, #mobile-nav-toggle").hide();
  }

  // Smooth scroll for the menu and links with .scrollto classes
  $('.nav-menu a, #mobile-nav a, .scrollto').on('click', function () {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      if (target.length) {
        var top_space = 0;

        if ($('#header').length) {
          top_space = $('#header').outerHeight();

          if (!$('#header').hasClass('header-fixed')) {
            top_space = top_space - 20;
          }
        }

        $('html, body').animate({
          scrollTop: target.offset().top - top_space
        }, 1500, 'easeInOutExpo');

        if ($(this).parents('.nav-menu').length) {
          $('.nav-menu .menu-active').removeClass('menu-active');
          $(this).closest('li').addClass('menu-active');
        }

        if ($('body').hasClass('mobile-nav-active')) {
          $('body').removeClass('mobile-nav-active');
          $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
          $('#mobile-body-overly').fadeOut();
        }
        return false;
      }
    }
  });

  // Gallery carousel (uses the Owl Carousel library)
  $(".gallery-carousel").owlCarousel({
    autoplay: true,
    dots: true,
    loop: true,
    center: true,
    responsive: {
      0: {items: 1}, 768: {items: 3}, 992: {items: 4}, 1200: {items: 5}
    }
  });

  // Speakers carousel (uses the Owl Carousel library)
  $(".speakers-carousel").owlCarousel({
    autoplay: true,
    dots: true,
    nav: true,
    navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
    loop: true,
    margin: 20,
    responsive: {
      0: {items: 1},
      768: {items: 2},
      992: {items: 3}
    }
  });

  // Buy tickets select the ticket type on click
  $('#buy-ticket-modal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var ticketType = button.data('ticket-type');
    var modal = $(this);
    modal.find('#ticket-type').val(ticketType);
  })

  // custom code

  // Schedule subtitle (abstract) - clamp to 2 lines with reliable More/Less toggle.
  function initScheduleSubtitleToggles() {
    var wrappers = document.querySelectorAll('#schedule .js-schedule-subtitle');
    wrappers.forEach(function (wrapper) {
      var text = wrapper.querySelector('.js-schedule-subtitle-text');
      var btn = wrapper.querySelector('.js-schedule-subtitle-toggle');
      if (!text || !btn) return;

      var content = (text.textContent || '').trim();
      if (!content) {
        btn.style.display = 'none';
        return;
      }

      // Default state: ALWAYS collapsed to 2 lines.
      // We'll re-apply expanded state only if user explicitly toggled it.
      var userExpanded = btn.getAttribute('aria-expanded') === 'true';
      text.classList.remove('is-expanded');
      if (!userExpanded) {
        btn.setAttribute('aria-expanded', 'false');
      }
      btn.textContent = userExpanded ? 'Less' : 'More';

      // Start hidden; we'll show it only if we confirm overflow.
      btn.style.display = 'none';

      // If layout isn't measurable yet (WOW/hidden/early paint), keep it hidden for now.
      // We'll re-run on load/scroll/resize/tab events and show it if it truly overflows.
      var collapsedH = text.getBoundingClientRect().height || 0;
      if (collapsedH <= 1) {
        btn.style.display = 'none';
        return;
      }

      // Determine overflow by comparing collapsed vs expanded heights.
      var wasExpanded = userExpanded;
      text.classList.remove('is-expanded');
      var cH = text.getBoundingClientRect().height || 0;
      text.classList.add('is-expanded');
      var eH = text.getBoundingClientRect().height || 0;
      if (!wasExpanded) text.classList.remove('is-expanded');

      var isOverflowing = eH > cH + 1;
      btn.style.display = isOverflowing ? 'inline-block' : 'none';

      // If it doesn't overflow, force collapsed UI consistency + hide the button.
      if (!isOverflowing) {
        text.classList.remove('is-expanded');
        btn.setAttribute('aria-expanded', 'false');
        btn.textContent = 'More';
        btn.style.display = 'none';
        return;
      }

      // If user had expanded, keep it expanded and ensure label is "Less".
      if (userExpanded) {
        text.classList.add('is-expanded');
        btn.textContent = 'Less';
      } else {
        text.classList.remove('is-expanded');
        btn.textContent = 'More';
      }

      if (!btn.__bound) {
        btn.addEventListener('click', function () {
          var expanded = text.classList.toggle('is-expanded');
          btn.setAttribute('aria-expanded', expanded ? 'true' : 'false');
          btn.textContent = expanded ? 'Less' : 'More';
        });
        btn.__bound = true;
      }
    });
  }

  function scheduleSubtitleRecheckSoon() {
    initScheduleSubtitleToggles();
    // A couple of quick passes to catch late font/layout settling (the "shows after resize" issue).
    requestAnimationFrame(initScheduleSubtitleToggles);
    setTimeout(initScheduleSubtitleToggles, 250);
    setTimeout(initScheduleSubtitleToggles, 1000);
  }

  // Initial
  scheduleSubtitleRecheckSoon();

  // After everything loads (images/fonts/layout)
  $(window).on('load', scheduleSubtitleRecheckSoon);

  // When switching tabs in schedule (day 1/day 2), content becomes visible and needs re-measurement.
  $(document).on('shown.bs.tab', '#schedule a[data-toggle="tab"]', function () {
    setTimeout(scheduleSubtitleRecheckSoon, 0);
  });

  // Resize/zoom
  $(window).on('resize', scheduleSubtitleRecheckSoon);

  // When scrolling reveals WOW elements, re-check once after first scroll.
  var didScrollRecheck = false;
  $(window).on('scroll', function () {
    if (didScrollRecheck) return;
    didScrollRecheck = true;
    scheduleSubtitleRecheckSoon();
  });

});
