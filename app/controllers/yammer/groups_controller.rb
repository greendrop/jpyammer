class Yammer::GroupsController < ApplicationController
  before_filter :authenticate_user!

  def groups
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token
      }
      @groups = Yammer::Groups.new.get_groups(yammer_params)
    else
      @groups = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @groups = Kaminari.paginate_array(@groups).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end
end

