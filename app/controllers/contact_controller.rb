  class ContactController < ApplicationController

  def index
    @modal = false
    @industry = nil
    @redir = "http://#{Rails.configuration.base_url}/confirm"
    @lead_src = "banana"
    #@lead_src = "Verve Outreach"
    if params
      if params[:industry]
        if params[:industry] == "agency"
          @industry = "Local Agency"
          @lead_src = "Webinar"
          @redir = "http://#{Rails.configuration.base_url}/agency/confirm"
        elsif params[:industry] == "advertiser"
          @industry = "Local Advertiser"
          @redir = "http://#{Rails.configuration.base_url}/advertiser/confirm"
          @lead_src = "Webinar"
        elsif params[:industry] == "automotive"
          @industry = nil
          @industry_c = "Automotive"
          @in_c = "Automotive shorthand"
          @In_c = "Automotive Shorthand capital I"
          @Industry_c = "dave rules full word capital I"
          @redir = "http://#{Rails.configuration.base_url}/automotive/confirm"
          @lead_src = "Mobile Promo"
        end
      elsif params[:lead_src]
        if params[:lead_src] == "verve-outreach"
          @lead_src = "Verve Outreach"
        elsif params[:lead_src] == "mobile-promo"
          params[:lead_src] = "Mobile Promo"
        end
      end
    end
    if (@industry == nil)
          @industries = ct_options
    end
    @redir_url = @redir
    @use_dropdown = (@industry == nil)
    @lead_sources = lead_source_options
    render layout: 'appcontact'
  end

  def automotive_confirm
     render layout: 'appcontact'
  end

  def confirm
    @welcome_str = nil
    if params
      if params[:webinar]
        @welcome_str = "Thank you for signing up for our upcoming webinar on geo-fence mobile ads. You are now one step closer to being on the leading edge of digital mobile marketing. You should receive an email shortly that contains information on how to access our webinar. We look forward to connecting with you!"
      end
    end

    if @welcome_str == nil
      @welcome_str = "Thanks for contacting us! We will get in touch with you shortly."
    end
    render layout: 'appcontact'
  end

  private
  def ct_options
    options = ["--None--",
               "Agency",
               "Advertiser"
              ]
    return options
  end

  def lead_source_options
    options = ["--None--",
               "Verve Outreach",
               "Web",
               "Webinar",
               "Trade Show",
               "Referral",
               "Other",
               "data.com - reach"]
    return options
  end

  def camel_case(string)
    prev_char_not_letter = true
    new_str = ''
    (string.length).times do |i|
      if prev_char_not_letter
        new_str += string[i].upcase
      else
        new_str += string[i].downcase
      end
      if /\W/.match(string[i])
        prev_char_not_letter = true
      else
        prev_char_not_letter = false
      end
    end

    return new_str
  end

  def dash_to_space(string)
    new_str = string.gsub(/-/, ' ')
    return new_str
  end

end
