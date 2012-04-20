require 'spec_helper'

describe Yammer::MessagesController do
  def valid_attributes
    {
      :body => 'body'
    }
  end

  describe 'login user' do
    login_user

    describe 'GET new' do
      it 'assigns a new message_form as @message_form' do
        get :new
        assigns(:message_form).should == MessageForm.new(:to => 'Company')
      end
    end

    describe 'POST create' do
      describe 'with valid params' do
        it 'redirects to the created message_form' do
          Yammer::Messages.any_instance.stub(:post_messages).and_return({})
          post :create, :message_form => valid_attributes
          response.should redirect_to(root_url)
        end
      end

      describe 'with invalid params' do
        it "re-renders the 'new' template" do
          MessageForm.any_instance.stub(:valid?).and_return(false)
          post :create, :message_form => {}
          response.should render_template('new')
        end
      end
    end

    describe "GET 'my_feed'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_my_feed)
        end
        Yammer::Messages.any_instance.stub(:yammer_request).and_return(res)

        get 'my_feed'
        response.should be_success
        assigns(:messages).size.should == 5
        message = assigns(:messages)[0]
        message['body']['plain'].should == 'It helps if I use the down arrow and select @mikealrogers-guest'
        message['created_at'].should == '2011/02/18 00:04:51 +0000'
        message['liked_by']['count'].should == 0
        message['id'].should == 79392580
        message['sender_user']['full_name'].should == 'mikeal'
        message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
      end
    end

    describe "GET 'private'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_private)
        end
        Yammer::Messages.any_instance.stub(:yammer_request).and_return(res)

        get 'private'
        response.should be_success
        assigns(:messages).size.should == 1
        message = assigns(:messages)[0]
        message['body']['plain'].should == 'Directly messaging you.'
        message['created_at'].should == '2011/03/03 20:48:06 +0000'
        message['liked_by']['count'].should == 0
        message['id'].should == 81089798
        message['sender_user']['full_name'].should == 'mikeal'
        message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
      end
    end

    describe "GET 'company_feed'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_company_feed)
        end
        Yammer::Messages.any_instance.stub(:yammer_request).and_return(res)

        get 'company_feed'
        response.should be_success
        assigns(:messages).size.should == 5
        message = assigns(:messages)[0]
        message['body']['plain'].should == 'message with photo attachment.'
        message['created_at'].should == '2011/03/28 20:39:12 +0000'
        message['liked_by']['count'].should == 0
        message['id'].should == 84402777
        message['sender_user']['full_name'].should == 'mikeal'
        message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
      end
    end

    describe "GET 'in_group'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_group)
        end
        Yammer::Messages.any_instance.stub(:yammer_request).and_return(res)

        get 'in_group', :id => 1
        response.should be_success
        assigns(:messages).size.should == 1
        message = assigns(:messages)[0]
        message['body']['plain'].should == 'has created the yammer-test-group group: Example group for yamdev docs.'
        message['created_at'].should == '2011/02/18 22:34:19 +0000'
        message['liked_by']['count'].should == 0
        message['id'].should == 79537463
        message['sender_user']['full_name'].should == 'mikeal'
        message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
        group = assigns(:group)
        group['full_name'].should == 'yammer-test-group'
        group['mugshot_url'].should == 'https://assets2.yammer.com/images/group_profile_small.gif'
      end

      it "returns http success, no id" do
        get 'in_group'
        response.should be_success
        assigns(:messages).size.should == 0
      end
    end

    describe "GET 'in_thread'" do
      it "returns http success" do
        res = Object.new
        def res.body
          Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_thread)
        end
        Yammer::Messages.any_instance.stub(:yammer_request).and_return(res)

        get 'in_thread', :id => 1
        response.should be_success
        assigns(:messages).size.should == 2
        message = assigns(:messages)[0]
        message['body']['plain'].should == 'I can @mikeal reply myself.'
        message['created_at'].should == '2011/02/18 00:02:57 +0000'
        message['liked_by']['count'].should == 0
        message['id'].should == 79392326
        message['sender_user']['full_name'].should == 'mikeal'
        message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
      end

      it "returns http success, no id" do
        get 'in_thread'
        response.should be_success
        assigns(:messages).size.should == 0
      end
    end
  end

  describe 'login user no auth' do
    login_user_no_auth

    describe "GET 'my_feed'" do
      it "returns http success" do
        get 'my_feed'
        response.should be_success
        assigns(:messages).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end

    describe "GET 'private'" do
      it "returns http success" do
        get 'private'
        response.should be_success
        assigns(:messages).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end

    describe "GET 'company_feed'" do
      it "returns http success" do
        get 'company_feed'
        response.should be_success
        assigns(:messages).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end

    describe "GET 'in_group'" do
      it "returns http success" do
        get 'in_group'
        response.should be_success
        assigns(:messages).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end

    describe "GET 'in_thread'" do
      it "returns http success" do
        get 'in_thread'
        response.should be_success
        assigns(:messages).size.should == 0
        flash[:error].should == "Don't authenticate Yammer"
      end
    end
  end

  describe 'no login' do
    describe "GET 'my_feed'" do
      it "return http not success" do
        get 'my_feed'
        response.should_not be_success
      end
    end

    describe "GET 'private'" do
      it "return http not success" do
        get 'private'
        response.should_not be_success
      end
    end

    describe "GET 'company_feed'" do
      it "return http not success" do
        get 'company_feed'
        response.should_not be_success
      end
    end

    describe "GET 'in_group'" do
      it "return http not success" do
        get 'in_group'
        response.should_not be_success
      end
    end

    describe "GET 'in_thread'" do
      it "return http not success" do
        get 'in_thread'
        response.should_not be_success
      end
    end
  end
end

