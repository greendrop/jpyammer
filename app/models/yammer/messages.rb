class Yammer::Messages < Yammer::Base
  URL = {
    :my_feed => 'https://www.yammer.com/api/v1/messages/following.json',
    :private => 'https://www.yammer.com/api/v1/messages/private.json',
    :company_feed => 'https://www.yammer.com/api/v1/messages.json',
    :in_group => 'https://www.yammer.com/api/v1/messages/in_group/__ID__.json',
    :in_thread => 'https://www.yammer.com/api/v1/messages/in_thread/__ID__.json'
  }

  def self.get_my_feed(params)
    data = get(URL[:my_feed], params)
    data = join_references(data)
    messages = data['messages']
  end

  def self.get_private(params)
    data = get(URL[:private], params)
    data = join_references(data)
    messages = data['messages']
  end

  def self.get_company_feed(params)
    data = get(URL[:company_feed], params)
    data = join_references(data)
    messages = data['messages']
  end

  def self.get_in_group(id, params)
    data = get(URL[:in_group].gsub(/__ID__/, id.to_s), params)
    data = join_references(data)
    messages = data['messages']
  end

  def self.get_in_thread(id, params)
    data = get(URL[:in_thread].gsub(/__ID__/, id.to_s), params)
    data = join_references(data)
    messages = data['messages'].reverse
  end

  def self.join_references(data)
    users = {}
    data['references'].each do |reference|
      case reference['type']
      when 'user'
        unless users.key?(reference['id'].to_s)
          users[reference['id'].to_s] = {}
          users[reference['id'].to_s]['full_name'] = reference['full_name']
          users[reference['id'].to_s]['mugshot_url'] = reference['mugshot_url']
        end
      end
    end

    data['messages'].each do |message|
      message['sender_user'] = {}
      message['sender_user']['full_name'] = users[message['sender_id'].to_s]['full_name']
      message['sender_user']['mugshot_url'] = users[message['sender_id'].to_s]['mugshot_url']
    end

    data
  end
end

