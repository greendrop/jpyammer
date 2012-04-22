class Yammer::UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @search_form = SearchForm.new(params[:search_form])

    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token
      }
      yammer_params[:letter] = @search_form.q if @search_form.q
      @users = Yammer::Users.new.get_users(yammer_params)
    else
      @users = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @users = Kaminari.paginate_array(@users).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def show
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token
      }
      @user = Yammer::Users.new.get_user(params[:id], yammer_params)
    else
      @user = {}
      flash[:error] = "Don't authenticate Yammer"
    end

    respond_to do |format|
      format.html
    end
  end
end

