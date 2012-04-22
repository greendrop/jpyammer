require 'spec_helper'

describe "yammer/users/show" do
  describe 'login user' do
    login_user

    before(:each) do
      res = Object.new
      def res.body
        Spec::Support::Models::Yammer::Users.get_dummy_data(:get_user)
      end
      Yammer::Users.any_instance.stub(:yammer_request).and_return(res)
      @user = Yammer::Users.new.get_user({})
      assign(:user, @user)
    end

    it 'renders' do
      render

      assert_select 'div.user' do
        assert_select 'div.mugshot',
          :html => image_tag(@user['mugshot_url'], :align => 'left')
        assert_select 'div.full_name',
          :text => @user['full_name']
      end

      assert_select 'div.email_addresses', :text => /.*Email:.*/
      assert_select 'div.email_addresses', :text => /.*#{Regexp.escape(@user['contact']['email_addresses'][0]['address'])}.*/
    end
  end
end

