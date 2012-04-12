class Yammer::Messages < Yammer::Base
  URL = {
    :my_feed => 'https://www.yammer.com/api/v1/messages/following.json',
    :private => 'https://www.yammer.com/api/v1/messages/private.json',
    :company_feed => 'https://www.yammer.com/api/v1/messages.json',
    :in_group => 'https://www.yammer.com/api/v1/messages/in_group/__ID__.json',
    :in_thread => 'https://www.yammer.com/api/v1/messages/in_thread/__ID__.json'
  }

  def self.get_my_feed(params)
    response = get(URL[:my_feed], params)
    response = join_references(response)
    messages = response['messages']
  end

  def self.get_private(params)
    response = get(URL[:private], params)
    response = join_references(response)
    messages = response['messages']
  end

  def self.get_company_feed(params)
    response = get(URL[:company_feed], params)
    response = join_references(response)
    messages = response['messages']
  end

  def self.get_in_group(id, params)
    response = get(URL[:in_group].gsub(/__ID__/, id.to_s), params)
    response = join_references(response)
    messages = response['messages']
  end

  def self.get_in_thread(id, params)
    response = get(URL[:in_thread].gsub(/__ID__/, id.to_s), params)
    response = join_references(response)
    messages = response['messages'].reverse
  end

  private
    def self.join_references(response)
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

