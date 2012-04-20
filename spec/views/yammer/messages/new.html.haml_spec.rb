require 'spec_helper'

describe "yammer/messages/new" do
  describe 'login user' do
    login_user

    describe 'New Message' do
      before(:each) do
        @message_form = MessageForm.new(:to => 'Company')
        assign(:message_form, @message_form)
      end

      it 'renders' do
        render

        assert_select 'div.subtitle b', :text => 'New Message'
        assert_select 'div.to b', :text => "To:\n#{@message_form.to}"

        assert_select 'form', :action => '/yammer/messages', :method => 'post' do
          assert_select 'textarea#message_form_body', :name => 'message_form[body]'
          assert_select 'input#message_form_group_id', :name => 'message_form[group_id]'
          assert_select 'input#message_form_replied_to_id', :name => 'message_form[replied_to_id]'
          assert_select 'input#message_form_direct_to_id', :name => 'message_form[direct_to_id]'
          assert_select 'input#message_form_to', :name => 'message_form[to]'
        end
      end
    end

    describe 'Reply' do
      before(:each) do
        @message_form = MessageForm.new(:replied_to_id => 1)
        assign(:message_form, @message_form)
      end

      it 'renders' do
        render

        assert_select 'div.subtitle b', :text => 'Reply'
        assert_select 'div.to b', :text => @message_form.to

        assert_select 'form', :action => '/yammer/messages', :method => 'post' do
          assert_select 'textarea#message_form_body', :name => 'message_form[body]'
          assert_select 'input#message_form_group_id', :name => 'message_form[group_id]'
          assert_select 'input#message_form_replied_to_id', :name => 'message_form[replied_to_id]'
          assert_select 'input#message_form_direct_to_id', :name => 'message_form[direct_to_id]'
          assert_select 'input#message_form_to', :name => 'message_form[to]'
        end
      end
    end
  end
end

