module Spec
  module Support
    module Models
      module Yammer
        module Groups
          def get_dummy_data(target)
            case target
            when :get_groups
              response = <<-EOB
[
  {
    "type": "group",
    "privacy": "public",
    "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/groups/yammer-test-group",
    "stats": {
      "updates": 0,
      "members": 1
    },
    "mugshot_url": "https://assets2.yammer.com/images/group_profile_small.gif",
    "url": "https://www.yammer.com/api/v1/groups/124742",
    "description": "Example group for yamdev docs.",
    "full_name": "yammer-test-group",
    "name": "yammer-test-group",
    "id": 124742,
    "created_at": "2011/02/18 22:34:19 +0000"
  }
]
              EOB
            when :get_group
              response = <<-EOB
{
  "type": "group",
  "privacy": "public",
  "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/groups/yammer-test-group",
  "stats": {
    "updates": 0,
    "members": 1
  },
  "mugshot_url": "https://assets2.yammer.com/images/group_profile_small.gif",
  "url": "https://www.yammer.com/api/v1/groups/124742",
  "description": "Example group for yamdev docs.",
  "full_name": "yammer-test-group",
  "name": "yammer-test-group",
  "id": 124742,
  "created_at": "2011/02/18 22:34:19 +0000"
}
              EOB
            end

            response
          end

          module_function :get_dummy_data
        end
      end
    end
  end
end

