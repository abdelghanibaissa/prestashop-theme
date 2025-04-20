$(document).ready(function() {
    // Initialize hero slider
    $('#car-hero-slider').owlCarousel({
      items: 1,
      loop: true,
      nav: true,
      dots: true,
      autoplay: true,
      autoplayTimeout: 5000,
      animateOut: 'fadeOut'
    });
  
    // Initialize testimonial carousel
    $('#testimonial-carousel').owlCarousel({
      items: 1,
      loop: true,
      margin: 30,
      nav: true,
      dots: false,
      autoplay: true
    });
  
    // Make model dependent select
    $('select[name="make"]').change(function() {
      var makeId = $(this).val();
      if(makeId) {
        $('select[name="model"]').prop('disabled', false);
        // AJAX call to get models would go here
        // This is just a placeholder
        $.get('/api/models?make=' + makeId, function(data) {
          var modelSelect = $('select[name="model"]');
          modelSelect.empty().append('<option value="">Select Model</option>');
          $.each(data.models, function(key, model) {
            modelSelect.append('<option value="' + model.id + '">' + model.name + '</option>');
          });
        });
      } else {
        $('select[name="model"]').prop('disabled', true).val('');
      }
    });
  
    // Search form submission
    $('#vehicle-search-form').submit(function(e) {
      e.preventDefault();
      var formData = $(this).serialize();
      // Redirect to search results page with parameters
      window.location.href = '/search?' + formData;
    });
  });