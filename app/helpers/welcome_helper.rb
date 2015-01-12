module WelcomeHelper

  def contact_button(bonus_classes=nil)
    "<button class=\"btn btn-warning btn-lg center-block contact-button #{bonus_classes}\" data-toggle=\"modal\" data-target=\"#the-contact-form\">Learn More</button>".html_safe
  end
end
