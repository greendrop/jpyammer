module Spec
  module Support
    module Models
      module Yammer
        module Users
          def get_dummy_data(target)
            case target
            when :get_users
              response = <<-EOB
[
  {
    "significant_other": "",
    "type": "user",
    "schools": [],
    "stats": {
      "followers": 1,
      "following": 0,
      "updates": 0
    },
    "external_urls": [],
    "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/ilya",
    "mugshot_url": "https://assets0.yammer.com/user_uploaded/photos/p1/0080/1548/DSCF2811_2_small.JPG",
    "location": "",
    "state": "active",
    "verified_admin": "false",
    "guid": null,
    "timezone": "Pacific Time (US & Canada)",
    "url": "https://www.yammer.com/api/v1/users/4022983",
    "network_domains": [],
    "kids_names": "",
    "previous_companies": [],
    "full_name": "Ilya Yakubovich",
    "birth_date": "",
    "expertise": "",
    "summary": "",
    "network_id": 104604,
    "name": "ilya",
    "network_name": "Yammer Developers Test Community",
    "interests": [],
    "contact": {
      "email_addresses": [
        {
          "type": "other",
          "address": "ilya+yammerdeveloperstestcommunity@users.yammer.com"
        }
      ],
      "phone_numbers": [],
      "im": {
        "provider": "",
        "username": ""
      }
    },
    "hire_date": null,
    "id": 4022983,
    "can_broadcast": "false",
    "admin": "false",
    "job_title": "MMMMMMMMMMMMMMMMMMMM"
  },
  {
    "significant_other": "",
    "type": "user",
    "schools": [],
    "stats": {
      "followers": 1,
      "following": 2,
      "updates": 4
    },
    "external_urls": [],
    "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mknopp",
    "mugshot_url": "https://assets1.yammer.com/user_uploaded/photos/p1/0141/2640/n1644278019_46479_62_small.jpg",
    "location": null,
    "state": "active",
    "verified_admin": "false",
    "guid": null,
    "timezone": "Pacific Time (US & Canada)",
    "url": "https://www.yammer.com/api/v1/users/1452329",
    "network_domains": [],
    "kids_names": "",
    "previous_companies": [],
    "full_name": "Matt Knopp",
    "birth_date": "",
    "expertise": "",
    "summary": "",
    "network_id": 104604,
    "name": "mknopp",
    "network_name": "Yammer Developers Test Community",
    "interests": [],
    "contact": {
      "email_addresses": [
        {
          "type": "other",
          "address": "mknopp+yammerdeveloperstestcommunity@users.yammer.com"
        }
      ],
      "phone_numbers": [],
      "im": {
        "provider": "",
        "username": ""
      }
    },
    "hire_date": null,
    "id": 1452329,
    "can_broadcast": "true",
    "admin": "true",
    "job_title": null
  },
  {
    "significant_other": "",
    "type": "user",
    "schools": [],
    "stats": {
      "followers": 1,
      "following": 1,
      "updates": 4
    },
    "external_urls": [],
    "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
    "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
    "location": "",
    "state": "active",
    "verified_admin": "false",
    "guid": null,
    "timezone": "Pacific Time (US & Canada)",
    "url": "https://www.yammer.com/api/v1/users/4022984",
    "network_domains": [],
    "kids_names": "",
    "previous_companies": [],
    "full_name": "mikeal",
    "birth_date": "",
    "expertise": "",
    "summary": "",
    "network_id": 104604,
    "name": "mikealrogers-guest",
    "network_name": "Yammer Developers Test Community",
    "interests": [],
    "contact": {
      "email_addresses": [
        {
          "type": "other",
          "address": "mikealrogers-guest+yammerdeveloperstestcommunity@users.yammer.com"
        }
      ],
      "phone_numbers": [],
      "im": {
        "provider": "",
        "username": ""
      }
    },
    "hire_date": null,
    "id": 4022984,
    "can_broadcast": "true",
    "admin": "true",
    "job_title": "Test Title"
  }
]
              EOB
            when :get_user
              response = <<-EOB
{
  "schools": [],
  "kids_names": "",
  "type": "user",
  "previous_companies": [],
  "verified_admin": "false",
  "external_urls": [],
  "network_name": "Yammer Developers Test Community",
  "timezone": "Pacific Time (US & Canada)",
  "expertise": "",
  "network_id": 104604,
  "stats": {
    "updates": 0,
    "following": 0,
    "followers": 1
  },
  "url": "https://www.yammer.com/api/v1/users/4022983",
  "interests": [],
  "location": "",
  "job_title": "MMMMMMMMMMMMMMMMMMMM",
  "mugshot_url": "https://assets0.yammer.com/user_uploaded/photos/p1/0080/1548/DSCF2811_2_small.JPG",
  "birth_date": "",
  "significant_other": "",
  "full_name": "Ilya Yakubovich",
  "guid": null,
  "network_domains": [],
  "summary": "",
  "state": "active",
  "hire_date": null,
  "name": "ilya",
  "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/ilya",
  "can_broadcast": "false",
  "id": 4022983,
  "contact": {
    "email_addresses": [
      {
        "type": "other",
        "address": "ilya+yammerdeveloperstestcommunity@users.yammer.com"
      }
    ],
    "im": {
      "provider": "",
      "username": ""
    },
    "phone_numbers": []
  },
  "admin": "false"
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

