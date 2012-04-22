require 'spec_helper'

describe Yammer::UsersController do
  describe 'login user' do
    login_user

    describe "GET 'index'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Users.get_dummy_data(:get_users)
        end
        Yammer::Users.any_instance.stub(:yammer_request).and_return(res)

        get 'index'
        response.should be_success
        assigns(:users).size.should == 3
        user = assigns(:users)[0]
        user['id'].should == 4022983
        user['full_name'].should == 'Ilya Yakubovich'
        user['mugshot_url'].should == 'https://assets0.yammer.com/user_uploaded/photos/p1/0080/1548/DSCF2811_2_small.JPG'
      end
    end

    describe "GET 'show'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Users.get_dummy_data(:get_user)
        end
        Yammer::Users.any_instance.stub(:yammer_request).and_return(res)

        get 'show'
        response.should be_success
        user = assigns(:user)
        user['id'].should == 4022983
        user['full_name'].should == 'Ilya Yakubovich'
        user['mugshot_url'].should == 'https://assets0.yammer.com/user_uploaded/photos/p1/0080/1548/DSCF2811_2_small.JPG'
      end
    end
  end

  describe 'login user no auth' do
    login_user_no_auth

    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
        assigns(:users).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end

    describe "GET 'show'" do
      it "returns http success" do
        get 'show'
        response.should be_success
        assigns(:user).size.should_not be_nil
        flash[:error].should == "Don't authenticate Yammer"
      end
    end
  end

  describe 'no login' do
    describe "GET 'index'" do
      it "return http not success" do
        get 'index'
        response.should_not be_success
      end
    end

    describe "GET 'show'" do
      it "return http not success" do
        get 'show'
        response.should_not be_success
      end
    end
  end
end

