require 'spec_helper'

describe Yammer::Messages do
  context 'get_my_feed' do
    it do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_my_feed)
      )

      messages = Yammer::Messages.get_my_feed({})
      messages.size.should == 7
      
      message = messages[0]
      message['body']['plain'].should == 'It helps if I use the down arrow and select @mikealrogers-guest'
      message['created_at'].should == '2011/02/18 00:04:51 +0000'
      message['liked_by']['count'].should == 0
      message['id'].should == 79392580
      message['sender_user']['full_name'].should == 'mikeal'
      message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
    end
  end

  context 'get_private' do
    it do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_private)
      )

      messages = Yammer::Messages.get_private({})
      messages.size.should == 1
      
      message = messages[0]
      message['body']['plain'].should == 'Directly messaging you.'
      message['created_at'].should == '2011/03/03 20:48:06 +0000'
      message['liked_by']['count'].should == 0
      message['id'].should == 81089798
      message['sender_user']['full_name'].should == 'mikeal'
      message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
    end
  end

  context 'get_company_feed' do
    it do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_company_feed)
      )

      messages = Yammer::Messages.get_company_feed({})
      messages.size.should == 18
      
      message = messages[0]
      message['body']['plain'].should == 'message with photo attachment.'
      message['created_at'].should == '2011/03/28 20:39:12 +0000'
      message['liked_by']['count'].should == 0
      message['id'].should == 84402777
      message['sender_user']['full_name'].should == 'mikeal'
      message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
    end
  end

  context 'get_in_group' do
    it do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_group)
      )

      messages = Yammer::Messages.get_in_group(nil, {})
      messages.size.should == 1
      
      message = messages[0]
      message['body']['plain'].should == 'has created the yammer-test-group group: Example group for yamdev docs.'
      message['created_at'].should == '2011/02/18 22:34:19 +0000'
      message['liked_by']['count'].should == 0
      message['id'].should == 79537463
      message['sender_user']['full_name'].should == 'mikeal'
      message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
    end
  end

  context 'get_in_thread' do
    it do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_thread)
      )

      messages = Yammer::Messages.get_in_thread(nil, {})
      messages.size.should == 2
      
      message = messages[0]
      message['body']['plain'].should == 'I can @mikeal reply myself.'
      message['created_at'].should == '2011/02/18 00:02:57 +0000'
      message['liked_by']['count'].should == 0
      message['id'].should == 79392326
      message['sender_user']['full_name'].should == 'mikeal'
      message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'
    end
  end
end

