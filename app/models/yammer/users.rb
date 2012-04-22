class Yammer::Users < Yammer::Base
  def get_user(id, params = {})
    params.merge!(:resource => 'users')
    params.merge!(:id => id.to_s)
    response = JSON.parse(yammer_request(:get, params).body)
  end
end

