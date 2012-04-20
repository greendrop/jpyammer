class Yammer::MessagesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @message_form = MessageForm.new
    if params[:group_id].present?
      @message_form.group_id = params[:group_id]
      @message_form.to = 'Group'
    elsif params[:replied_to_id].present?
      @message_form.replied_to_id = params[:replied_to_id]
      @message_form.to = 'Reply'
    elsif params[:direct_to_id].present?
      @message_form.direct_to_id = params[:direct_to_id]
      @message_form.to = 'Direct'
    else
      @message_form.to = 'Company'
    end

    respond_to do |format|
      format.html
    end
  end

  def create
    @message_form = MessageForm.new(params[:message_form])
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      if @message_form.valid?
        yammer_params = {
          :access_token => auth.access_token,
          :body => @message_form.body
        }
        if @message_form.group_id.present?
          yammer_params[:group_id] = @message_form.group_id
        elsif @message_form.replied_to_id.present?
          yammer_params[:replied_to_id] = @message_form.replied_to_id
        elsif @message_form.direct_to_id.present?
          yammer_params[:direct_to_id] = @message_form.direct_to_id
        end
        Yammer::Messages.new.post_messages(yammer_params)
        success = true
      end
    end

    respond_to do |format|
      if success
        format.html { redirect_to root_url, notice: 'Message send.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def my_feed
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      res = Yammer::Messages.new.get_my_feed(yammer_params)
      @messages = res['messages']

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
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      res = Yammer::Messages.new.get_private(yammer_params)
      @messages = res['messages']
    else
      @messages = []
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def company_feed
    auth = Authentication.find_by_user_id(current_user.id)
    if auth && auth.access_token
      yammer_params = {
        :access_token => auth.access_token,
        :threaded => 'extended'
      }
      res = Yammer::Messages.new.get_company_feed(yammer_params)
      @messages = res['messages']
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
    @messages = []
    @group = {}
    if auth && auth.access_token
      if params[:id]
        yammer_params = {
          :access_token => auth.access_token,
          :threaded => 'extended'
        }
        res = Yammer::Messages.new.get_in_group(params[:id], yammer_params)
        @messages = res['messages']
        res['references'].each do |reference|
          case reference['type']
          when 'group'
            @group = reference
          end
        end
      end
    else
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end

  def in_thread
    auth = Authentication.find_by_user_id(current_user.id)
    @messages = []
    if auth && auth.access_token
      if params[:id]
        yammer_params = {
          :access_token => auth.access_token
        }
        res = Yammer::Messages.new.get_in_thread(params[:id], yammer_params)
        @messages = res['messages'].reverse
      end
    else
      flash[:error] = "Don't authenticate Yammer"
    end

    @messages = Kaminari.paginate_array(@messages).page(params[Kaminari.configure { |config| config.param_name }])

    respond_to do |format|
      format.html
    end
  end
end

