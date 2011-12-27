class ApplicationController < ActionController::Base
  
  protect_from_forgery
  include SessionsHelper
  
  def title
    base_title = "Sam W. Walton"
    if @title.nil?
      base_title
    else
      # "#{base_title} | #{@title}"
    end
  end
  
end
