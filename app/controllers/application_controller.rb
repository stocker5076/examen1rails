class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :set_layout

  def set_layout
  	if controller_name == "pages" and action_name == "superman"
  		return 'supermanlayout'
  	elsif controller_name == "pages" and action_name == "batman"
  		return 'application'
  	else
  		return  'landing'
  	end
  end
end
