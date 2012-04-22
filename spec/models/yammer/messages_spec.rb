require 'spec_helper'

describe Yammer::Messages do
  context 'get_my_feed' do
    it do
      yammer_messages = Yammer::Messages.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_my_feed)
      end
      yammer_messages.stub(:yammer_request).and_return(response)

      res = yammer_messages.get_my_feed({})
      messages = res['messages']
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
      yammer_messages = Yammer::Messages.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_private)
      end
      yammer_messages.stub(:yammer_request).and_return(response)

      res = yammer_messages.get_private({})
      messages = res['messages']
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
      yammer_messages = Yammer::Messages.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_company_feed)
      end
      yammer_messages.stub(:yammer_request).and_return(response)

      res = yammer_messages.get_company_feed({})
      messages = res['messages']
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
      yammer_messages = Yammer::Messages.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_group)
      end
      yammer_messages.stub(:yammer_request).and_return(response)

      res = yammer_messages.get_in_group(nil, {})
      messages = res['messages']
      messages.size.should == 1
      
      message = messages[0]
      message['body']['plain'].should == 'has created the yammer-test-group group: Example group for yamdev docs.'
      message['created_at'].should == '2011/02/18 22:34:19 +0000'
      message['liked_by']['count'].should == 0
      message['id'].should == 79537463
      message['sender_user']['full_name'].should == 'mikeal'
      message['sender_user']['mugshot_url'].should == 'https://assets3.yammer.com/images/no_photo_small.gif'

      group = {}
      res['references'].each do |reference|
        case reference['type']
        when 'group'
          group = reference
        end
      end
      group['full_name'].should == 'yammer-test-group'
      group['mugshot_url'].should == 'https://assets2.yammer.com/images/group_profile_small.gif'
    end
  end

  context 'get_in_thread' do
    it do
      yammer_messages = Yammer::Messages.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_thread)
      end
      yammer_messages.stub(:yammer_request).and_return(response)

      res = yammer_messages.get_in_thread(nil, {})
      messages = res['messages'].reverse
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

  context 'post_message' do
    it do
      yammer_messages = Yammer::Messages.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:post_message)
      end
      yammer_messages.stub(:yammer_request).and_return(response)

      res = yammer_messages.post_message({})
      messages = res['messages']
      messages.size.should == 1
    end
  end
end

