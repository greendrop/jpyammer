class Yammer::Groups < Yammer::Base
  def get_groups(params = {})
    params.merge!(:resource => 'groups')
    response = JSON.parse(yammer_request(:get, params).body)
  end

  def get_group(id, params = {})
    params.merge!(:resource => 'groups')
    params.merge!(:id => id.to_s)
    response = JSON.parse(yammer_request(:get, params).body)
  end
end

