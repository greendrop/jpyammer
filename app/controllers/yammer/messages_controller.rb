class Yammer::MessagesController < ApplicationController
  before_filter :authenticate_user!

  def my_feed
    auth = Authentication.find_by_user_id(current_user.id)
    if auth
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      @messages = Yammer::Messages.get_my_feed(yammer_params)['messages']
      @users = {}
      @messages.each do |message|
        unless@users.key?(message['sender_id'].to_s)
          user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
          @users[message['sender_id'].to_s] = {}
          @users[message['sender_id'].to_s]['full_name'] = user['full_name']
          @users[message['sender_id'].to_s]['mugshot_url'] = user['mugshot_url']
        end
        message['sender_user'] = @users[message['sender_id'].to_s]
      end
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def private
    auth = Authentication.find_by_user_id(current_user.id)
    if auth
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      @messages = Yammer::Messages.get_private(yammer_params)['messages']
      @users = {}
      @messages.each do |message|
        unless@users.key?(message['sender_id'].to_s)
          user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
          @users[message['sender_id'].to_s] = {}
          @users[message['sender_id'].to_s]['full_name'] = user['full_name'] 
          @users[message['sender_id'].to_s]['mugshot_url'] = user['mugshot_url']
        end
        message['sender_user'] = @users[message['sender_id'].to_s]
      end
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_group
    auth = Authentication.find_by_user_id(current_user.id)
    if auth
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
          @users[message['sender_id'].to_s]['mugshot_url'] = user['mugshot_url']
        end
        message['sender_user'] = @users[message['sender_id'].to_s]
      end
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_thread
    auth = Authentication.find_by_user_id(current_user.id)
    if auth
      yammer_params = {
        :access_token => auth.access_token
      }
      @messages = Yammer::Messages.get_in_thread(params[:id], yammer_params)['messages'].reverse
      @users = {}
      @messages.each do |message|
        unless@users.key?(message['sender_id'].to_s)
          user = Yammer::Users.get_id(message['sender_id'].to_s, {:access_token => auth.access_token})
          @users[message['sender_id'].to_s] = {}
          @users[message['sender_id'].to_s]['full_name'] = user['full_name'] 
          @users[message['sender_id'].to_s]['mugshot_url'] = user['mugshot_url']
        end
        message['sender_user'] = @users[message['sender_id'].to_s]
      end
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end
end

