class ApplicationController < ActionController::Base
  protect_from_forgery

  include Jpmobile::ViewSelector

  trans_sid
end
