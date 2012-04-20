class Yammer::Groups < Yammer::Base
  def get_groups(params = {})
    params.merge!(:resource => 'groups')
    response = JSON.parse(yammer_request(:get, params).body)
  end
end

