class WelcomeController < ApplicationController
  def index
    @modal = true
    @industry = nil
    if params
      if params[:industry]
        if params[:industry] == "agency"
          @industry = "Local Agency"
        elsif params[:industry] == "advertiser"
          @industry = "Local Advertiser"
        end
      end
    end
    if (@industry == nil)
      @industries   = industry_options
    end
    @use_dropdown = (@industry == nil)
    @lead_sources = lead_source_options
    @lead_src = "Webinar"
    @redir_url = "http://#{Rails.configuration.base_url}"
    @debug_form = false
    if Rails.env.development?
        @debug_form = true
    end
  end

  private
  def industry_options
    options = ["--None--",
               "Local Agency",
               "Local Advertiser",
               "Local Merchant Platform",
               "Publisher",
               "Other"]
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
end
