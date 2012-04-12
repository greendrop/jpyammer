require 'spec_helper'

describe "yammer/messages/in_group" do
  describe 'login user' do
    login_user

    before(:each) do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Messages.get_dummy_data(:get_in_group)
      )
      @messages = Yammer::Messages.get_in_group(nil, {})
      @messages = Kaminari.paginate_array(@messages).page(1)

      assign(
        :messages,
        @messages
      )
    end

    it 'renders' do
      render

      assert_select 'div.subtitle b', :text => 'In group'

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
            :html => link_to('show', :controller => '/yammer/messages', :action => 'in_thread', :id => @messages[0]['id'])
        end
      end
    end
  end
end

