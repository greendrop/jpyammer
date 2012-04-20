require 'spec_helper'

describe "yammer/groups/groups" do
  describe 'login user' do
    login_user

    before(:each) do
      res = Object.new
      def res.body
        Spec::Support::Models::Yammer::Groups.get_dummy_data(:get_groups)
      end
      Yammer::Groups.any_instance.stub(:yammer_request).and_return(res)
      @groups = Yammer::Groups.new.get_groups({})
      @groups = Kaminari.paginate_array(@groups).page(1)

      assign(
        :groups,
        @groups
      )
    end

    it 'renders' do
      render

      assert_select 'div.subtitle b', :text => 'Groups'

      assert_select 'div#groups_list' do
        assert_select 'div.group', :count => 1
        assert_select 'div.group' do
          assert_select 'div.mugshot',
            :html => image_tag(@groups[0]['mugshot_url'], :align => 'left')
          assert_select 'div.full_name',
            :html => link_to(@groups[0]['full_name'], :controller => '/yammer/messages', :action => 'in_group', :id => @groups[0]['id'])
        end
      end
    end
  end
end

