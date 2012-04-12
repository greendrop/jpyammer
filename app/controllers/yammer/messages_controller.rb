class Yammer::MessagesController < ApplicationController
  before_filter :authenticate_user!

  def my_feed
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      @messages = Yammer::Messages.get_my_feed(yammer_params)
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def private
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      @messages = Yammer::Messages.get_private(yammer_params)
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def company_feed
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      @messages = Yammer::Messages.get_company_feed(yammer_params)
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_group
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      if params[:id]
        yammer_params = {
          :access_token => auth.access_token,
          :threaded => 'extended'
        }
        @messages = Yammer::Messages.get_in_group(params[:id], yammer_params)
      else
        @messages = []
      end
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_thread
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      if params[:id]
        yammer_params = {
          :access_token => auth.access_token
        }
        @messages = Yammer::Messages.get_in_thread(params[:id], yammer_params)
      else
        @messages = []
      end
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end
end

