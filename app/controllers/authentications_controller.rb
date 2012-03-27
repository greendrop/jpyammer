class AuthenticationsController < ApplicationController
  before_filter :authenticate_user!

  def callback
    omniauth = request.env['omniauth.auth']
    @authentication = Authentication.find_by_user_id(current_user.id)
    if @authentication == nil
      @authentication = Authentication.new
    end
    @authentication.user_id = current_user.id
    @authentication.provider =  omniauth['provider']
    @authentication.uid = omniauth['uid']
    @authentication.access_token = omniauth['credentials']['token']
    @authentication.save!
    redirect_to root_url
  end

  def failure
    redirect_to root_url
  end
end

