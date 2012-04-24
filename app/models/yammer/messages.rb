class Yammer::Messages < Yammer::Base
  def get_messages(params = {})
    params.merge!(:resource => 'messages')
    response = JSON.parse(yammer_request(:get, params).body)
    response = join_references(response)
  end

  def get_my_feed(params = {})
    params.merge!(:action => 'following')
    response = get_messages(params)
  end

  def get_private(params = {})
    params.merge!(:action => 'private')
    response = get_messages(params)
  end

  def get_company_feed(params = {})
    response = get_messages(params)
  end

  def get_in_group(id, params = {})
    params.merge!(:action => 'in_group')
    params.merge!(:id => id.to_s)
    response = get_messages(params)
  end

  def get_in_thread(id, params = {})
    params.merge!(:action => 'in_thread')
    params.merge!(:id => id.to_s)
    response = get_messages(params)
  end

  def post_message(params = {})
    params.merge!(:resource => 'messages')
    response = JSON.parse(yammer_request(:post, params).body)
  end

  def post_like(params = {})
    params.merge!(:resource => 'messages')
    params.merge!(:action => 'liked_by')
    params.merge!(:id => 'current')
    response = yammer_request(:post, params).body
  end

  private
    def join_references(response)
      users = {}
      response['references'].each do |reference|
        case reference['type']
        when 'user'
          unless users.key?(reference['id'].to_s)
            users[reference['id'].to_s] = {}
            users[reference['id'].to_s]['full_name'] = reference['full_name']
            users[reference['id'].to_s]['mugshot_url'] = reference['mugshot_url']
          end
        end
      end

      response['messages'].each do |message|
        message['sender_user'] = {}
        message['sender_user']['full_name'] = users[message['sender_id'].to_s]['full_name']
        message['sender_user']['mugshot_url'] = users[message['sender_id'].to_s]['mugshot_url']
      end

      response
    end
end

