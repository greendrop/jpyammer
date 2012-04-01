class Yammer::MessagesController < ApplicationController
  before_filter :authenticate_user!

  def my_feed
    auth = Authentication.find_by_user_id(current_user.id)
    @messages = Yammer::Messages.get_my_feed({:access_token => auth.access_token, :threaded => 'extended'})['messages']
    @users = {}
    @messages.each do |message|
      unless@users.key?(message['sender_id'].to_s)
        user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
        @users[message['sender_id'].to_s] = {}
        @users[message['sender_id'].to_s]['full_name'] = user['full_name'] 
      end
      message['sender_user'] = @users[message['sender_id'].to_s]
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def private
    auth = Authentication.find_by_user_id(current_user.id)
    @messages = Yammer::Messages.get_private({:access_token => auth.access_token, :threaded => 'extended'})['messages']
    @users = {}
    @messages.each do |message|
      unless@users.key?(message['sender_id'].to_s)
        user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
        @users[message['sender_id'].to_s] = {}
        @users[message['sender_id'].to_s]['full_name'] = user['full_name'] 
      end
      message['sender_user'] = @users[message['sender_id'].to_s]
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_group
    auth = Authentication.find_by_user_id(current_user.id)
    yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
    @messages = Yammer::Messages.get_in_group(params[:id], yammer_params)['messages']
    @users = {}
    @messages.each do |message|
      unless@users.key?(message['sender_id'].to_s)
        user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
        @users[message['sender_id'].to_s] = {}
        @users[message['sender_id'].to_s]['full_name'] = user['full_name'] 
      end
      message['sender_user'] = @users[message['sender_id'].to_s]
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_thread
    auth = Authentication.find_by_user_id(current_user.id)
    yammer_params = {
        :access_token => auth.access_token
      }
    @messages = Yammer::Messages.get_in_thread(params[:id], yammer_params)['messages']
    @users = {}
    @messages.each do |message|
      unless@users.key?(message['sender_id'].to_s)
        user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
        @users[message['sender_id'].to_s] = {}
        @users[message['sender_id'].to_s]['full_name'] = user['full_name'] 
      end
      message['sender_user'] = @users[message['sender_id'].to_s]
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end
end

