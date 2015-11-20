class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  MAX_X = 50
  MAX_Y = 50
  RANKS = %w(unranked bronze silver gold platinum diamond master challenger)
  COLORS = %w(yellow blue pink)

end
