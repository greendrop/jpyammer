class Yammer::Groups < Yammer::Base
  URL = {
    :groups => 'https://www.yammer.com/api/v1/groups.json'
  }

  def self.get_groups(params)
    get URL[:groups], params
  end
end
