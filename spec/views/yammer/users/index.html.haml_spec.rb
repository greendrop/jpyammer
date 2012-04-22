require 'spec_helper'

describe "yammer/users/index" do
  describe 'login user' do
    login_user

    before(:each) do
      res = Object.new
      def res.body
        Spec::Support::Models::Yammer::Users.get_dummy_data(:get_users)
      end
      Yammer::Users.any_instance.stub(:yammer_request).and_return(res)
      @users = Yammer::Users.new.get_users({})
      @users = Kaminari.paginate_array(@users).page(1)
      assign(:users, @users)

      @search_form = SearchForm.new
      assign(:search_form, @search_form)
    end

    it 'renders' do
      render

      assert_select 'div.subtitle b', :text => 'Users'

      assert_select 'div#users_list' do
        assert_select 'div.user', :count => 3
        assert_select 'div.user' do
          assert_select 'div.mugshot',
            :html => image_tag(@users[0]['mugshot_url'], :align => 'left')
          assert_select 'div.full_name',
            :html => link_to(@users[0]['full_name'], show_yammer_users_path(@users[0]['id']))
        end
      end
    end
  end
end

