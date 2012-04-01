class Yammer::Base
  def self.get(url, params)
    response = RestClient.get url, :params => params
    JSON.parse response
  end
end

