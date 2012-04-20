require 'spec_helper'

describe "yammer/messages/in_group" do
  describe 'login user' do
    login_user

    before(:each) do
      res = Object.new
      def res.body
        Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_group)
      end
      Yammer::Messages.any_instance.stub(:yammer_request).and_return(res)

      @messages = Yammer::Messages.new.get_in_group(nil, {})['messages']
      @messages = Kaminari.paginate_array(@messages).page(1)
      assign(:messages, @messages)

      @group = {}
      @group['full_name'] = 'yammer-test-group'
      @group['mugshot_url'] = 'https://assets2.yammer.com/images/group_profile_small.gif'
      assign(:group, @group)
    end

    it 'renders' do
      render

      assert_select 'div.subtitle b', :text => 'In group'

      assert_select 'div.group' do
        assert_select 'div.mugshot',
          :html => image_tag(@group['mugshot_url'], :align => 'left')
        assert_select 'div.full_name b',
          :text => @group['full_name']
      end

      assert_select 'div#messages_list' do
        assert_select 'div.message', :count => 1

        assert_select 'div.message' do
          assert_select 'div.sender_user' do
            assert_select 'div.mugshot',
              :html => image_tag(@messages[0]['sender_user']['mugshot_url'], :align => 'left')
            assert_select 'div.full_name',
              :text => @messages[0]['sender_user']['full_name']
          end

          assert_select 'div.body',
            :html => raw(ERB::Util.html_escape(truncate(@messages[0]['body']['plain'])).gsub(/\r\n|\r|\n/, '<br />'))
          
          assert_select 'div.created_at',
            :text => "created at:\n#{Time.parse(@messages[0]['created_at']).strftime('%Y/%m/%d %H:%M:%S')}"

          assert_select 'div.liked_by' do
            assert_select 'div.count',
              :text => "like:\n#{@messages[0]['liked_by']['count']}"
          end

          assert_select 'div.in_thread',
            :html => link_to('Show', :controller => '/yammer/messages', :action => 'in_thread', :id => @messages[0]['id'])
        end
      end
    end
  end
end

