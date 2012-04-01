class Yammer::Messages < Yammer::Base
  URL = {
    :my_feed => 'https://www.yammer.com/api/v1/messages/following.json',
    :private => 'https://www.yammer.com/api/v1/messages/private.json',
    :in_group => 'https://www.yammer.com/api/v1/messages/in_group/__ID__.json',
    :in_thread => 'https://www.yammer.com/api/v1/messages/in_thread/__ID__.json'
  }

  def self.get_my_feed(params)
    get URL[:my_feed], params
  end

  def self.get_private(params)
    get URL[:private], params
  end

  def self.get_in_group(id, params)
    get URL[:in_group].gsub(/__ID__/, id.to_s), params
  end

  def self.get_in_thread(id, params)
    get URL[:in_thread].gsub(/__ID__/, id.to_s), params
  end
end

