require 'spec_helper'

describe Yammer::Users do
  context 'get_users' do
    it do
      yammer_users = Yammer::Users.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Users.get_dummy_data(:get_users)
      end
      yammer_users
        .should_receive(:yammer_request)
        .with(:get, {:resource => 'users'})
        .and_return(response)

      users = yammer_users.get_users({})
      users.size.should == 3
      
      user = users[0]
      user['id'].should == 4022983
      user['full_name'].should == 'Ilya Yakubovich'
      user['mugshot_url'].should == 'https://assets0.yammer.com/user_uploaded/photos/p1/0080/1548/DSCF2811_2_small.JPG'
    end
  end

  context 'get_user' do
    it do
      yammer_users = Yammer::Users.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Users.get_dummy_data(:get_user)
      end
      yammer_users
        .should_receive(:yammer_request)
        .with(:get, {:resource => 'users', :id => '4022983'})
        .and_return(response)

      user = yammer_users.get_user(4022983, {})
      user['id'].should == 4022983
      user['full_name'].should == 'Ilya Yakubovich'
      user['mugshot_url'].should == 'https://assets0.yammer.com/user_uploaded/photos/p1/0080/1548/DSCF2811_2_small.JPG'
    end
  end
end

