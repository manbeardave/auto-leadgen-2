// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.  //= require turbolinks//= require jquery_ujs//= require twitter/bootstrap

//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery-1.10.2.min
//= require bootstrap.js.coffee
//= require bootstrap.js
//= require contact.js.coffee
//= require responsiveCarousel.js
//= require welcome.js.coffee


//= require_tree .

jQuery(document).ready(function ($) {
  $('.button-popover').popover();
  // $('.crsl-items').responsivecarousel();
  $('.crsl-wrap').bxSlider({
    minSlides: 6,
    maxSlides: 20,
    slideWidth: 200,
    slideMargin: 50,
    ticker: true,
    speed: 30000});
  $('#contact-form').bootstrapValidator({
    message: "This value is not valid",
    feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
  },
    fields: {
      first_name: {
        validators: {
          notEmpty: {
            message: 'First name is required'
          }
        }
      },
      last_name: {
        validators: {
          notEmpty: {
            message: 'Last name is required'
          }
        }
      },
      email: {
        validators: {
          notEmpty: {
            message: 'Email address is required'
          }
        }
     }
  }

  });
  $('#the-contact-form').bootstrapValidator({
    message: "This value is not valid",
    feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
      first_name: {
        validators: {
          notEmpty: {
            message: 'First name is required'
          }
        }
      },
      last_name: {
        validators: {
          notEmpty: {
            message: 'Last name is required'
          }
        }
      },
      email: {
        validators: {
          notEmpty: {
            message: 'Email is required'
          }
        }
      },
      company: {
        validators: {
          notEmpty: {
            message: 'Company name is required'
          }
        }
      },
      phone: {
        validators: {
          notEmpty: {
            message: "Phone number is required"
          }
        }
      }
    }})
});
