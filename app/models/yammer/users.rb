class Yammer::Users < Yammer::Base
  URL = {
    :id => 'https://www.yammer.com/api/v1/users/__ID__.json'
  }

  def self.get_id(id, params)
    get URL[:id].gsub(/__ID__/, id.to_s), params
  end
end

