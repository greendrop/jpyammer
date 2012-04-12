require 'spec_helper'

describe "home/index" do
  describe 'login user' do
    login_user

    it 'renders' do
      render

      assert_select 'div.subtitle b', :text => 'Home'

      assert_select 'ul' do
        assert_select 'li a', :text => 'My Feed'
        assert_select 'li a', :text => 'Private'
        assert_select 'li a', :text => 'Company Feed'
        assert_select 'li a', :text => 'Groups'
        assert_select 'li a', :text => 'Authenticate Yammer'
        assert_select 'li a', :text => 'Sign out'
      end
    end
  end

  describe 'no login' do
    it 'renders' do
      render

      assert_select 'div.subtitle b', :text => 'Home'

      assert_select 'ul' do
        assert_select 'li a', :text => 'Sign in'
        assert_select 'li a', :text => 'Sign up'
      end
    end
  end
end
