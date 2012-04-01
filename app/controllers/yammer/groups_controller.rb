class Yammer::GroupsController < ApplicationController
  before_filter :authenticate_user!

  def groups
    auth = Authentication.find_by_user_id(current_user.id)
    @groups = Yammer::Groups.get_groups({:access_token => auth.access_token})

    @groups = Kaminari.paginate_array(@groups).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end
end

