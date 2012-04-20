require 'spec_helper'

describe Yammer::GroupsController do
  describe 'login user' do
    login_user

    describe "GET 'groups'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Groups.get_dummy_data(:get_groups)
        end
        Yammer::Groups.any_instance.stub(:yammer_request).and_return(res)

        get 'groups'
        response.should be_success
        assigns(:groups).size.should == 1
        group = assigns(:groups)[0]
        group['mugshot_url'].should == 'https://assets2.yammer.com/images/group_profile_small.gif'
        group['full_name'].should == 'yammer-test-group'
        group['id'].should == 124742
      end
    end
  end

  describe 'login user no auth' do
    login_user_no_auth

    describe "GET 'groups'" do
      it "returns http success" do
        get 'groups'
        response.should be_success
        assigns(:groups).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end
  end

  describe 'no login' do
    describe "GET 'groups'" do
      it "return http not success" do
        get 'groups'
        response.should_not be_success
      end
    end
  end
end

