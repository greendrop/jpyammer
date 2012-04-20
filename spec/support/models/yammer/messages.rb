module Spec
  module Support
    module Models
      module Yammer
        module Messages
          def get_dummy_data(target)
            case target
            when :get_my_feed
              response = <<-EOB
{
  "messages": [
    {
      "client_type": "Web",
      "direct_message": false,
      "created_at": "2011/02/18 00:04:51 +0000",
      "thread_id": 79392326,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392580",
      "network_id": 104604,
      "message_type": "update",
      "id": 79392580,
      "url": "https://www.yammer.com/api/v1/messages/79392580",
      "sender_id": 4022984,
      "replied_to_id": 79392326,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "It helps if I use the down arrow and select [[user:4022984]]",
        "plain": "It helps if I use the down arrow and select @mikealrogers-guest"
      }
    },
    {
      "client_type": "Web",
      "direct_message": false,
      "created_at": "2011/02/18 00:02:57 +0000",
      "thread_id": 79392326,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392326",
      "network_id": 104604,
      "message_type": "update",
      "id": 79392326,
      "url": "https://www.yammer.com/api/v1/messages/79392326",
      "sender_id": 4022984,
      "replied_to_id": null,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "I can @mikeal reply myself.",
        "plain": "I can @mikeal reply myself."
      }
    },
    {
      "client_type": "Web",
      "direct_message": false,
      "thread_id": 78654647,
      "created_at": "2011/02/12 02:41:14 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78654647",
      "network_id": 104604,
      "message_type": "update",
      "id": 78654647,
      "url": "https://www.yammer.com/api/v1/messages/78654647",
      "sender_id": 1452329,
      "replied_to_id": null,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "Here's a message with a Topic Application.",
        "plain": "Here's a message with a Topic Application."
      }
    },
    {
      "client_type": "Web",
      "direct_message": false,
      "thread_id": 78654634,
      "created_at": "2011/02/12 02:40:44 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78654634",
      "network_id": 104604,
      "message_type": "update",
      "id": 78654634,
      "url": "https://www.yammer.com/api/v1/messages/78654634",
      "client_url": "https://www.yammer.com/",
      "sender_id": 1452329,
      "replied_to_id": null,
      "privacy": "public",
      "attachments": [
        {
          "type": "image",
          "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/images/849667",
          "image": {
            "url": "https://www.yammer.com/api/v1/images/849667.png",
            "size": 41646,
            "thumbnail_url": "https://www.yammer.com/api/v1/images/849667/medium.png"
          },
          "content_type": "image/png",
          "name": "angry_unicorn.png",
          "id": 849667
        }
      ],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "Unicorns are Awesome, here's a photo of a Unicorn.",
        "plain": "Unicorns are Awesome, here's a photo of a Unicorn."
      }
    },
    {
      "client_type": "Web",
      "direct_message": false,
      "created_at": "2011/02/12 02:40:10 +0000",
      "thread_id": 78648632,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78654623",
      "network_id": 104604,
      "message_type": "update",
      "id": 78654623,
      "url": "https://www.yammer.com/api/v1/messages/78654623",
      "sender_id": 1452329,
      "replied_to_id": 78648632,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "Yes, that was very interesting.",
        "plain": "Yes, that was very interesting."
      }
    },
    {
      "client_type": "Web",
      "direct_message": false,
      "created_at": "2011/02/12 00:43:55 +0000",
      "thread_id": 78648632,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78648632",
      "network_id": 104604,
      "message_type": "update",
      "id": 78648632,
      "url": "https://www.yammer.com/api/v1/messages/78648632",
      "sender_id": 4022984,
      "replied_to_id": null,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "Something interesting.",
        "plain": "Something interesting."
      }
    },
    {
      "client_type": "Web",
      "direct_message": false,
      "thread_id": 43460838,
      "created_at": "2010/05/04 22:40:15 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/43460838",
      "network_id": 104604,
      "message_type": "system",
      "id": 43460838,
      "url": "https://www.yammer.com/api/v1/messages/43460838",
      "sender_id": 1452329,
      "replied_to_id": null,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": true,
      "body": {
        "parsed": "has created the Yammer Developers Test Community community.",
        "plain": "has created the Yammer Developers Test Community community."
      }
    }
  ],
  "threaded_extended": {},
  "meta": {
    "last_seen_message_id": 79392326,
    "current_user_id": 4022984,
    "show_billing_banner": false,
    "requested_poll_interval": 60,
    "feed_name": "My Feed",
    "unseen_message_count_following": 1,
    "ymodules": [],
    "feed_desc": "The messages you're following",
    "unseen_message_count_received": 1,
    "realtime": {
      "uri": "https://93.rt.yammer.com/cometd/",
      "authentication_token": "ukmnGDi2MXsT+7oh9qzBT1hRX3hVGUIAT0JcBYNt5Pd4nKtWKi1OLVKyMjEwMrK0MNFRykstKc8vylayMjQwMTMACqRWFGQWVQL5xgYGJgZmFhYWtQCdtA7X",
      "channel_id": "phrVh"
    }
  },
  "references": [
    {
      "type": "user",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
      "stats": {
        "following": 0,
        "followers": 1,
        "updates": 3
      },
      "job_title": "Test Title",
      "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
      "url": "https://www.yammer.com/api/v1/users/4022984",
      "state": "active",
      "full_name": "mikeal",
      "name": "mikealrogers-guest",
      "id": 4022984
    },
    {
      "type": "user",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mknopp",
      "stats": {
        "following": 2,
        "followers": 0,
        "updates": 4
      },
      "job_title": null,
      "mugshot_url": "https://assets1.yammer.com/user_uploaded/photos/p1/0141/2640/n1644278019_46479_62_small.jpg",
      "url": "https://www.yammer.com/api/v1/users/1452329",
      "state": "active",
      "full_name": "Matt Knopp",
      "name": "mknopp",
      "id": 1452329
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=78654647",
      "stats": {
        "latest_reply_id": 78654647,
        "updates": 1,
        "latest_reply_at": "2011/02/12 02:41:14 +0000",
        "first_reply_id": null,
        "first_reply_at": null
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/78654647",
      "thread_starter_id": 78654647,
      "privacy": "public",
      "has_attachments": false,
      "id": 78654647,
      "topics": [
        {
          "type": "topic",
          "id": 712836
        }
      ]
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=78648632",
      "stats": {
        "latest_reply_id": 78654623,
        "updates": 2,
        "latest_reply_at": "2011/02/12 02:40:10 +0000",
        "first_reply_id": 78654623,
        "first_reply_at": "2011/02/12 02:40:10 +0000"
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/78648632",
      "thread_starter_id": 78648632,
      "privacy": "public",
      "has_attachments": false,
      "id": 78648632,
      "topics": []
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=79392326",
      "stats": {
        "latest_reply_id": 79392580,
        "updates": 2,
        "latest_reply_at": "2011/02/18 00:04:51 +0000",
        "first_reply_id": 79392580,
        "first_reply_at": "2011/02/18 00:04:51 +0000"
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/79392326",
      "thread_starter_id": 79392326,
      "privacy": "public",
      "has_attachments": false,
      "id": 79392326,
      "topics": []
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=43460838",
      "stats": {
        "latest_reply_id": 43460838,
        "updates": 1,
        "latest_reply_at": "2010/05/04 22:40:15 +0000",
        "first_reply_id": null,
        "first_reply_at": null
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/43460838",
      "thread_starter_id": 43460838,
      "privacy": "public",
      "has_attachments": false,
      "id": 43460838,
      "topics": []
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=78654634",
      "stats": {
        "latest_reply_id": 78654634,
        "updates": 1,
        "latest_reply_at": "2011/02/12 02:40:44 +0000",
        "first_reply_id": null,
        "first_reply_at": null
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/78654634",
      "thread_starter_id": 78654634,
      "privacy": "public",
      "has_attachments": false,
      "id": 78654634,
      "topics": []
    },
    {
      "type": "message",
      "created_at": "2011/02/12 00:43:55 +0000",
      "thread_id": 78648632,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78648632",
      "network_id": 104604,
      "message_type": "update",
      "url": "https://www.yammer.com/api/v1/messages/78648632",
      "id": 78648632,
      "sender_id": 4022984,
      "replied_to_id": null,
      "sender_type": "user",
      "system_message": false,
      "body": {
        "plain": "Something interesting."
      }
    },
    {
      "type": "message",
      "created_at": "2011/02/18 00:02:57 +0000",
      "thread_id": 79392326,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392326",
      "network_id": 104604,
      "message_type": "update",
      "url": "https://www.yammer.com/api/v1/messages/79392326",
      "id": 79392326,
      "sender_id": 4022984,
      "replied_to_id": null,
      "sender_type": "user",
      "system_message": false,
      "body": {
        "plain": "I can @mikeal reply myself."
      }
    },
    {
      "type": "topic",
      "permalink": "interesting",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/712836",
      "url": "https://www.yammer.com/api/v1/topics/712836",
      "name": "Interesting",
      "normalized_name": "interesting",
      "id": 712836
    }
  ]
}
              EOB
            when :get_private
              response = <<-EOB
{
  "messages": [
    {
      "privacy": "private",
      "created_at": "2011/03/03 20:48:06 +0000",
      "system_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81089798",
      "network_id": 104604,
      "direct_message": true,
      "thread_id": 81089798,
      "attachments": [],
      "id": 81089798,
      "message_type": "update",
      "url": "https://www.yammer.com/api/v1/messages/81089798",
      "conversation_id": 706557,
      "sender_id": 4022984,
      "replied_to_id": null,
      "direct_to_id": 1452329,
      "liked_by": {
        "count": 0,
        "names": []
      },
      "sender_type": "user",
      "body": {
        "parsed": "Directly messaging you.",
        "plain": "Directly messaging you."
      },
      "client_url": "https://www.yammer.com/",
      "client_type": "Web"
    }
  ],
  "threaded_extended": {},
  "meta": {
    "followed_user_ids": [
      1452329
    ],
    "unseen_message_count_by_thread": {},
    "unseen_thread_count": 0,
    "show_billing_banner": false,
    "requested_poll_interval": 60,
    "feed_name": "Direct Messages",
    "ymodules": [],
    "feed_desc": "Your direct message conversations",
    "current_user_id": 4022984,
    "realtime": {
      "channel_id": "phrdL",
      "uri": "https://29.rt.yammer.com/cometd/",
      "authentication_token": "xNPzoGdI4IkT3PIvnAUN01yPxtnMK+c/bvnYKq6m7SZ4nKtWKi1OLVKyMjEwMrK0MNFRykstKc8vylayMjQwMTMACqRWFGQWVQL5xgaGFmbGFkaWtQCd3Q7a"
    }
  },
  "references": [
    {
      "type": "user",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
      "stats": {
        "followers": 1,
        "following": 1,
        "updates": 4
      },
      "state": "active",
      "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
      "url": "https://www.yammer.com/api/v1/users/4022984",
      "full_name": "mikeal",
      "name": "mikealrogers-guest",
      "id": 4022984,
      "job_title": "Test Title"
    },
    {
      "type": "user",
      "stats": {
        "following": 2,
        "followers": 1,
        "updates": 4
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mknopp",
      "mugshot_url": "https://assets1.yammer.com/user_uploaded/photos/p1/0141/2640/n1644278019_46479_62_small.jpg",
      "state": "active",
      "url": "https://www.yammer.com/api/v1/users/1452329",
      "full_name": "Matt Knopp",
      "name": "mknopp",
      "id": 1452329,
      "job_title": null
    },
    {
      "privacy": "private",
      "type": "thread",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=81089798",
      "thread_starter_id": 81089798,
      "stats": {
        "latest_reply_id": 81089798,
        "first_reply_id": null,
        "updates": 1,
        "first_reply_at": null,
        "latest_reply_at": "2011/03/03 20:48:06 +0000"
      },
      "direct_message": true,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/81089798",
      "has_attachments": false,
      "id": 81089798,
      "topics": []
    },
    {
      "type": "conversation",
      "privacy": "private",
      "participating_names": [
        {
          "full_name": "Matt Knopp",
          "permalink": "mknopp"
        },
        {
          "full_name": "mikeal",
          "permalink": "mikealrogers-guest"
        }
      ],
      "url": "https://www.yammer.com/api/v1/conversations/706557",
      "id": 706557,
      "participating_users_count": 2
    }
  ]
}
              EOB
            when :get_company_feed
              response = <<-EOB
{
  "messages": [
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/03/28 20:39:12 +0000",
      "system_message": false,
      "body": {
        "parsed": "message with photo attachment.",
        "plain": "message with photo attachment."
      },
      "sender_type": "user",
      "network_id": 104604,
      "thread_id": 84402777,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/84402777",
      "direct_message": false,
      "id": 84402777,
      "url": "https://www.yammer.com/api/v1/messages/84402777",
      "client_type": "Web",
      "message_type": "update",
      "sender_id": 4022984,
      "replied_to_id": null,
      "attachments": [
        {
          "type": "image",
          "content_type": "",
          "uuid": null,
          "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/uploads/857663/Firefly.jpg",
          "y_id": 857663,
          "image": {
            "thumbnail_url": "https://www.yammer.com/api/v1/file/857663/Firefly.jpg?view=thumbnail",
            "url": "https://www.yammer.com/api/v1/file/857663/Firefly.jpg",
            "size": 0
          },
          "name": "Firefly.jpg",
          "id": 974915
        }
      ],
      "liked_by": {
        "count": 0,
        "names": []
      },
      "privacy": "public"
    },
    {
      "client_url": "http://www.yammer.com",
      "created_at": "2011/03/25 00:49:29 +0000",
      "system_message": false,
      "body": {
        "parsed": "new test message 1",
        "plain": "new test message 1"
      },
      "network_id": 104604,
      "thread_id": 83957686,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/83957686",
      "id": 83957686,
      "url": "https://www.yammer.com/api/v1/messages/83957686",
      "client_type": "testingtest",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "http://www.yammer.com",
      "created_at": "2011/03/25 00:49:05 +0000",
      "system_message": false,
      "network_id": 104604,
      "sender_type": "user",
      "body": {
        "parsed": "new test message",
        "plain": "new test message"
      },
      "thread_id": 83957634,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/83957634",
      "direct_message": false,
      "id": 83957634,
      "url": "https://www.yammer.com/api/v1/messages/83957634",
      "client_type": "testingtest",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "attachments": [],
      "liked_by": {
        "count": 0,
        "names": []
      },
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/03/14 19:37:22 +0000",
      "system_message": false,
      "body": {
        "parsed": "another message with [[tag:722728]]",
        "plain": "another message with #anothertopicname"
      },
      "thread_id": 82400203,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/82400203",
      "client_type": "Web",
      "id": 82400203,
      "url": "https://www.yammer.com/api/v1/messages/82400203",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/03/14 19:29:05 +0000",
      "system_message": false,
      "body": {
        "parsed": "message with [[tag:722715]]",
        "plain": "message with #newtopic"
      },
      "thread_id": 82399430,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/82399430",
      "client_type": "Web",
      "id": 82399430,
      "url": "https://www.yammer.com/api/v1/messages/82399430",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/03/10 01:30:14 +0000",
      "system_message": false,
      "body": {
        "parsed": "asdf",
        "plain": "asdf"
      },
      "thread_id": 81093061,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81844397",
      "client_type": "Web",
      "id": 81844397,
      "url": "https://www.yammer.com/api/v1/messages/81844397",
      "sender_id": 4022984,
      "replied_to_id": 81093061,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/03/10 01:29:09 +0000",
      "system_message": false,
      "body": {
        "parsed": "one more",
        "plain": "one more"
      },
      "thread_id": 81093061,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81844313",
      "client_type": "Web",
      "id": 81844313,
      "url": "https://www.yammer.com/api/v1/messages/81844313",
      "sender_id": 4022984,
      "replied_to_id": 81093061,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/03/10 01:18:25 +0000",
      "system_message": false,
      "sender_type": "user",
      "network_id": 104604,
      "body": {
        "parsed": "another comment",
        "plain": "another comment"
      },
      "thread_id": 81093061,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81843438",
      "direct_message": false,
      "id": 81843438,
      "client_type": "Web",
      "url": "https://www.yammer.com/api/v1/messages/81843438",
      "sender_id": 4022984,
      "replied_to_id": 81093061,
      "message_type": "update",
      "attachments": [],
      "liked_by": {
        "count": 1,
        "names": [
          {
            "permalink": "mikealrogers-guest",
            "full_name": "mikeal"
          }
        ]
      },
      "privacy": "public"
    },
    {
      "client_url": "http://www.yammer.com",
      "created_at": "2011/03/03 21:12:57 +0000",
      "system_message": false,
      "body": {
        "parsed": "Another new message.",
        "plain": "Another new message."
      },
      "thread_id": 81093061,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81093061",
      "client_type": "testingtest",
      "id": 81093061,
      "url": "https://www.yammer.com/api/v1/messages/81093061",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 1,
        "names": [
          {
            "permalink": "mikealrogers-guest",
            "full_name": "mikeal"
          }
        ]
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "http://www.yammer.com",
      "created_at": "2011/03/03 21:12:16 +0000",
      "system_message": false,
      "network_id": 104604,
      "sender_type": "user",
      "body": {
        "parsed": "A new message.",
        "plain": "A new message."
      },
      "thread_id": 81092991,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81092991",
      "direct_message": false,
      "id": 81092991,
      "url": "https://www.yammer.com/api/v1/messages/81092991",
      "client_type": "testingtest",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "attachments": [],
      "liked_by": {
        "count": 0,
        "names": []
      },
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/18 22:34:19 +0000",
      "system_message": true,
      "network_id": 104604,
      "sender_type": "user",
      "body": {
        "parsed": "has created the [[group:124742]] group: Example group for yamdev docs.",
        "plain": "has created the yammer-test-group group: Example group for yamdev docs."
      },
      "thread_id": 79537463,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79537463",
      "direct_message": false,
      "id": 79537463,
      "url": "https://www.yammer.com/api/v1/messages/79537463",
      "client_type": "Web",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "system",
      "attachments": [],
      "liked_by": {
        "count": 1,
        "names": [
          {
            "permalink": "mikealrogers-guest",
            "full_name": "mikeal"
          }
        ]
      },
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/18 00:04:51 +0000",
      "system_message": false,
      "network_id": 104604,
      "sender_type": "user",
      "body": {
        "parsed": "It helps if I use the down arrow and select [[user:4022984]]",
        "plain": "It helps if I use the down arrow and select @mikealrogers-guest"
      },
      "thread_id": 79392326,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392580",
      "direct_message": false,
      "id": 79392580,
      "url": "https://www.yammer.com/api/v1/messages/79392580",
      "client_type": "Web",
      "sender_id": 4022984,
      "replied_to_id": 79392326,
      "message_type": "update",
      "attachments": [],
      "liked_by": {
        "count": 0,
        "names": []
      },
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/18 00:02:57 +0000",
      "system_message": false,
      "body": {
        "parsed": "I can @mikeal reply myself.",
        "plain": "I can @mikeal reply myself."
      },
      "thread_id": 79392326,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392326",
      "client_type": "Web",
      "id": 79392326,
      "url": "https://www.yammer.com/api/v1/messages/79392326",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/12 02:41:14 +0000",
      "system_message": false,
      "body": {
        "parsed": "Here's a message with a Topic Application.",
        "plain": "Here's a message with a Topic Application."
      },
      "thread_id": 78654647,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78654647",
      "client_type": "Web",
      "id": 78654647,
      "url": "https://www.yammer.com/api/v1/messages/78654647",
      "sender_id": 1452329,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/12 02:40:44 +0000",
      "system_message": false,
      "body": {
        "parsed": "Unicorns are Awesome, here's a photo of a Unicorn.",
        "plain": "Unicorns are Awesome, here's a photo of a Unicorn."
      },
      "thread_id": 78654634,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78654634",
      "client_type": "Web",
      "id": 78654634,
      "url": "https://www.yammer.com/api/v1/messages/78654634",
      "sender_id": 1452329,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [
        {
          "type": "image",
          "content_type": "image/png",
          "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/images/849667",
          "image": {
            "thumbnail_url": "https://www.yammer.com/api/v1/images/849667/medium.png",
            "url": "https://www.yammer.com/api/v1/images/849667.png",
            "size": 41646
          },
          "name": "angry_unicorn.png",
          "id": 849667
        }
      ],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/12 02:40:10 +0000",
      "system_message": false,
      "body": {
        "parsed": "Yes, that was very interesting.",
        "plain": "Yes, that was very interesting."
      },
      "thread_id": 78648632,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78654623",
      "client_type": "Web",
      "id": 78654623,
      "url": "https://www.yammer.com/api/v1/messages/78654623",
      "sender_id": 1452329,
      "replied_to_id": 78648632,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2011/02/12 00:43:55 +0000",
      "system_message": false,
      "body": {
        "parsed": "Something interesting.",
        "plain": "Something interesting."
      },
      "thread_id": 78648632,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78648632",
      "client_type": "Web",
      "id": 78648632,
      "url": "https://www.yammer.com/api/v1/messages/78648632",
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    },
    {
      "client_url": "https://www.yammer.com/",
      "created_at": "2010/05/04 22:40:15 +0000",
      "system_message": true,
      "body": {
        "parsed": "has created the Yammer Developers Test Community community.",
        "plain": "has created the Yammer Developers Test Community community."
      },
      "thread_id": 43460838,
      "network_id": 104604,
      "sender_type": "user",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/43460838",
      "client_type": "Web",
      "id": 43460838,
      "url": "https://www.yammer.com/api/v1/messages/43460838",
      "sender_id": 1452329,
      "replied_to_id": null,
      "message_type": "system",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "attachments": [],
      "privacy": "public"
    }
  ],
  "meta": {
    "liked_message_ids": [
      81843438,
      79537463,
      81093061
    ],
    "realtime": {
      "authentication_token": "hQRLKUyfm8R3omnWetTf0kyfW2Sz8CdHBB6nKhn4zVZ4nKtWKi1OLVKyMjEwMrK0MNFRykstKc8vylayMjQwMTMACqRWFGQWVQL5xgZARcZGJma1AJ2NDso=",
      "channel_id": "SNFqp",
      "uri": "https://63.rt.yammer.com/cometd/"
    },
    "favorite_message_ids": [
      78654647
    ],
    "show_billing_banner": false,
    "requested_poll_interval": 60,
    "ymodules": [
      {
        "viewer_id": 4022984,
        "inline_html": null,
        "id": 857663
      }
    ],
    "feed_name": "Company Feed",
    "followed_user_ids": [
      1452329
    ],
    "feed_desc": "Yammer Developers Test Community's public messages",
    "current_user_id": 4022984,
    "bookmarked_message_ids": [
      78654647
    ]
  },
  "threaded_extended": {},
  "references": [
    {
      "type": "topic",
      "normalized_name": "anothertopicname",
      "permalink": "anothertopicname",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/766771",
      "url": "https://www.yammer.com/api/v1/topics/766771",
      "name": "Anothertopicname",
      "id": 766771
    },
    {
      "normalized_name": "newtest",
      "type": "topic",
      "permalink": "newtest",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/789476",
      "url": "https://www.yammer.com/api/v1/topics/789476",
      "name": "Newtest",
      "id": 789476
    },
    {
      "type": "topic",
      "normalized_name": "newtopic",
      "permalink": "newtopic",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/766750",
      "url": "https://www.yammer.com/api/v1/topics/766750",
      "name": "Newtopic",
      "id": 766750
    },
    {
      "type": "topic",
      "normalized_name": "createtest",
      "permalink": "createtest",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/766780",
      "url": "https://www.yammer.com/api/v1/topics/766780",
      "name": "Createtest",
      "id": 766780
    },
    {
      "type": "topic",
      "normalized_name": "interesting",
      "permalink": "interesting",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/712836",
      "url": "https://www.yammer.com/api/v1/topics/712836",
      "name": "Interesting",
      "id": 712836
    },
    {
      "type": "user",
      "stats": {
        "followers": 1,
        "updates": 14,
        "following": 2
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
      "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
      "url": "https://www.yammer.com/api/v1/users/4022984",
      "full_name": "mikeal",
      "name": "mikealrogers-guest",
      "state": "active",
      "job_title": "Test Title",
      "id": 4022984
    },
    {
      "type": "user",
      "stats": {
        "followers": 1,
        "updates": 4,
        "following": 2
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mknopp",
      "mugshot_url": "https://assets1.yammer.com/user_uploaded/photos/p1/0141/2640/n1644278019_46479_62_small.jpg",
      "url": "https://www.yammer.com/api/v1/users/1452329",
      "full_name": "Matt Knopp",
      "name": "mknopp",
      "state": "active",
      "job_title": null,
      "id": 1452329
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/02/12 02:41:14 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 78654647,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=78654647",
      "thread_starter_id": 78654647,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/78654647",
      "id": 78654647,
      "topics": [
        {
          "type": "topic",
          "id": 712836
        }
      ],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/02/18 22:34:19 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 79537463,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=79537463",
      "thread_starter_id": 79537463,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/79537463",
      "id": 79537463,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/10 01:30:14 +0000",
        "first_reply_at": "2011/03/10 01:18:25 +0000",
        "first_reply_id": 81843438,
        "latest_reply_id": 81844397,
        "updates": 4
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=81093061",
      "thread_starter_id": 81093061,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/81093061",
      "id": 81093061,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/14 19:37:22 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 82400203,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=82400203",
      "thread_starter_id": 82400203,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/82400203",
      "id": 82400203,
      "topics": [
        {
          "type": "topic",
          "id": 766780
        },
        {
          "type": "topic",
          "id": 766771
        }
      ],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/03 21:12:16 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 81092991,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=81092991",
      "thread_starter_id": 81092991,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/81092991",
      "id": 81092991,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/02/12 02:40:10 +0000",
        "first_reply_at": "2011/02/12 02:40:10 +0000",
        "first_reply_id": 78654623,
        "latest_reply_id": 78654623,
        "updates": 2
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=78648632",
      "thread_starter_id": 78648632,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/78648632",
      "id": 78648632,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/02/18 00:04:51 +0000",
        "first_reply_at": "2011/02/18 00:04:51 +0000",
        "first_reply_id": 79392580,
        "latest_reply_id": 79392580,
        "updates": 2
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=79392326",
      "thread_starter_id": 79392326,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/79392326",
      "id": 79392326,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/25 00:49:05 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 83957634,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=83957634",
      "thread_starter_id": 83957634,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/83957634",
      "id": 83957634,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/28 20:39:12 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 84402777,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=84402777",
      "thread_starter_id": 84402777,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/84402777",
      "id": 84402777,
      "topics": [],
      "privacy": "public",
      "has_attachments": true
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2010/05/04 22:40:15 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 43460838,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=43460838",
      "thread_starter_id": 43460838,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/43460838",
      "id": 43460838,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/02/12 02:40:44 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 78654634,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=78654634",
      "thread_starter_id": 78654634,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/78654634",
      "id": 78654634,
      "topics": [],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/14 19:29:05 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 82399430,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=82399430",
      "thread_starter_id": 82399430,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/82399430",
      "id": 82399430,
      "topics": [
        {
          "type": "topic",
          "id": 766750
        }
      ],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "thread",
      "stats": {
        "latest_reply_at": "2011/03/25 00:49:29 +0000",
        "first_reply_at": null,
        "first_reply_id": null,
        "latest_reply_id": 83957686,
        "updates": 1
      },
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=83957686",
      "thread_starter_id": 83957686,
      "direct_message": false,
      "url": "https://www.yammer.com/api/v1/messages/in_thread/83957686",
      "id": 83957686,
      "topics": [
        {
          "type": "topic",
          "id": 789476
        }
      ],
      "privacy": "public",
      "has_attachments": false
    },
    {
      "type": "group",
      "created_at": "2011/02/18 22:34:19 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/groups/yammer-test-group",
      "description": "Example group for yamdev docs.",
      "url": "https://www.yammer.com/api/v1/groups/124742",
      "mugshot_url": "https://assets2.yammer.com/images/group_profile_small.gif",
      "full_name": "yammer-test-group",
      "name": "yammer-test-group",
      "id": 124742,
      "privacy": "public"
    },
    {
      "type": "message",
      "created_at": "2011/03/03 21:12:57 +0000",
      "system_message": false,
      "body": {
        "plain": "Another new message."
      },
      "network_id": 104604,
      "sender_type": "user",
      "thread_id": 81093061,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81093061",
      "url": "https://www.yammer.com/api/v1/messages/81093061",
      "id": 81093061,
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update"
    },
    {
      "type": "message",
      "created_at": "2011/02/12 00:43:55 +0000",
      "system_message": false,
      "body": {
        "plain": "Something interesting."
      },
      "network_id": 104604,
      "sender_type": "user",
      "thread_id": 78648632,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/78648632",
      "url": "https://www.yammer.com/api/v1/messages/78648632",
      "id": 78648632,
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update"
    },
    {
      "type": "message",
      "created_at": "2011/02/18 00:02:57 +0000",
      "system_message": false,
      "body": {
        "plain": "I can @mikeal reply myself."
      },
      "network_id": 104604,
      "sender_type": "user",
      "thread_id": 79392326,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392326",
      "url": "https://www.yammer.com/api/v1/messages/79392326",
      "id": 79392326,
      "sender_id": 4022984,
      "replied_to_id": null,
      "message_type": "update"
    },
    {
      "type": "tag",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/766771",
      "url": "https://www.yammer.com/api/v1/tags/722728",
      "name": "anothertopicname",
      "id": 722728
    },
    {
      "type": "tag",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/topics/766750",
      "url": "https://www.yammer.com/api/v1/tags/722715",
      "name": "newtopic",
      "id": 722715
    }
  ]
}
              EOB
            when :get_in_group
              response = <<-EOB
{
  "messages": [
    {
      "direct_message": false,
      "client_type": "Web",
      "thread_id": 79537463,
      "created_at": "2011/02/18 22:34:19 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79537463",
      "network_id": 104604,
      "message_type": "system",
      "url": "https://www.yammer.com/api/v1/messages/79537463",
      "id": 79537463,
      "client_url": "https://www.yammer.com/",
      "sender_id": 4022984,
      "replied_to_id": null,
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": true,
      "body": {
        "parsed": "has created the [[group:124742]] group: Example group for yamdev docs.",
        "plain": "has created the yammer-test-group group: Example group for yamdev docs."
      }
    }
  ],
  "threaded_extended": {},
  "meta": {
    "current_user_id": 4022984,
    "show_billing_banner": false,
    "requested_poll_interval": 60,
    "feed_name": "yammer-test-group",
    "ymodules": [],
    "feed_desc": "Messages in group yammer-test-group",
    "realtime": {
      "uri": "https://27.rt.yammer.com/cometd/",
      "authentication_token": "JtelT2gTJnfHPtQOwGoTbHaA9Jw7ujVNeBfUCJWtJFB4nKtWKi1OLVKyMjEwMrK0MNFRykstKc8vylayMjQwMTMACqRWFGQWVQL5xgYGJhbmFkYGtQCdxw7S",
      "channel_id": "qLJnw"
    }
  },
  "references": [
    {
      "type": "user",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
      "stats": {
        "following": 1,
        "followers": 1,
        "updates": 4
      },
      "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
      "job_title": "Test Title",
      "url": "https://www.yammer.com/api/v1/users/4022984",
      "state": "active",
      "full_name": "mikeal",
      "name": "mikealrogers-guest",
      "id": 4022984
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=79537463",
      "stats": {
        "latest_reply_id": 79537463,
        "updates": 1,
        "latest_reply_at": "2011/02/18 22:34:19 +0000",
        "first_reply_id": null,
        "first_reply_at": null
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/79537463",
      "thread_starter_id": 79537463,
      "privacy": "public",
      "has_attachments": false,
      "id": 79537463,
      "topics": []
    },
    {
      "created_at": "2011/02/18 22:34:19 +0000",
      "type": "group",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/groups/yammer-test-group",
      "mugshot_url": "https://assets2.yammer.com/images/group_profile_small.gif",
      "url": "https://www.yammer.com/api/v1/groups/124742",
      "description": "Example group for yamdev docs.",
      "full_name": "yammer-test-group",
      "privacy": "public",
      "name": "yammer-test-group",
      "id": 124742
    }
  ]
}
              EOB
            when :get_in_thread
              response = <<-EOB
{
  "messages": [
    {
      "direct_message": false,
      "created_at": "2011/02/18 00:04:51 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392580",
      "network_id": 104604,
      "message_type": "update",
      "client_type": "Web",
      "id": 79392580,
      "url": "https://www.yammer.com/api/v1/messages/79392580",
      "thread_id": 79392326,
      "sender_id": 4022984,
      "replied_to_id": 79392326,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "It helps if I use the down arrow and select [[user:4022984]]",
        "plain": "It helps if I use the down arrow and select @mikealrogers-guest"
      }
    },
    {
      "direct_message": false,
      "created_at": "2011/02/18 00:02:57 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392326",
      "client_type": "Web",
      "network_id": 104604,
      "message_type": "update",
      "id": 79392326,
      "url": "https://www.yammer.com/api/v1/messages/79392326",
      "thread_id": 79392326,
      "sender_id": 4022984,
      "replied_to_id": null,
      "client_url": "https://www.yammer.com/",
      "privacy": "public",
      "attachments": [],
      "sender_type": "user",
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "body": {
        "parsed": "I can @mikeal reply myself.",
        "plain": "I can @mikeal reply myself."
      }
    }
  ],
  "threaded_extended": {},
  "meta": {
    "current_user_id": 4022984,
    "show_billing_banner": false,
    "requested_poll_interval": 60,
    "feed_name": "Thread",
    "ymodules": [],
    "feed_desc": "Messages in this thread",
    "realtime": {
      "uri": "https://97.rt.yammer.com/cometd/",
      "authentication_token": "OJz+ueF5sk5uoFvBviY4jsBu9DLwntsNwScWfHdOXEd4nKtWKi1OLVKyMjEwMrK0MNFRykstKc8vylayMjQwMTMACqRWFGQWVQL5xgYGJgaWRsYGtQCdjA7H",
      "channel_id": "qGJMf"
    }
  },
  "references": [
    {
      "type": "user",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
      "stats": {
        "following": 0,
        "followers": 1,
        "updates": 3
      },
      "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
      "job_title": "Test Title",
      "url": "https://www.yammer.com/api/v1/users/4022984",
      "state": "active",
      "full_name": "mikeal",
      "name": "mikealrogers-guest",
      "id": 4022984
    },
    {
      "type": "thread",
      "direct_message": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=79392326",
      "stats": {
        "latest_reply_id": 79392580,
        "updates": 2,
        "latest_reply_at": "2011/02/18 00:04:51 +0000",
        "first_reply_id": 79392580,
        "first_reply_at": "2011/02/18 00:04:51 +0000"
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/79392326",
      "thread_starter_id": 79392326,
      "privacy": "public",
      "has_attachments": false,
      "id": 79392326,
      "topics": []
    },
    {
      "type": "message",
      "created_at": "2011/02/18 00:02:57 +0000",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/79392326",
      "network_id": 104604,
      "message_type": "update",
      "url": "https://www.yammer.com/api/v1/messages/79392326",
      "id": 79392326,
      "thread_id": 79392326,
      "sender_id": 4022984,
      "replied_to_id": null,
      "sender_type": "user",
      "system_message": false,
      "body": {
        "plain": "I can @mikeal reply myself."
      }
    }
  ]
}
              EOB
            when :post_messages
              response = <<-EOB
{
  "messages": [
    {
      "liked_by": {
        "count": 0,
        "names": []
      },
      "system_message": false,
      "message_type": "update",
      "created_at": "2011/03/03 21:12:57 +0000",
      "direct_message": false,
      "client_type": "testingtest",
      "body": {
        "plain": "Another new message.",
        "parsed": "Another new message."
      },
      "url": "https://www.yammer.com/api/v1/messages/81093061",
      "network_id": 104604,
      "privacy": "public",
      "thread_id": 81093061,
      "sender_type": "user",
      "id": 81093061,
      "attachments": [],
      "replied_to_id": null,
      "sender_id": 4022984,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/messages/81093061",
      "client_url": "http://www.yammer.com"
    }
  ],
  "meta": {
    "show_billing_banner": false,
    "requested_poll_interval": 60,
    "ymodules": [],
    "feed_name": "Unknown Feed",
    "current_user_id": 4022984,
    "feed_desc": "This feed is not known."
  },
  "references": [
    {
      "job_title": "Test Title",
      "type": "user",
      "stats": {
        "updates": 5,
        "following": 2,
        "followers": 1
      },
      "url": "https://www.yammer.com/api/v1/users/4022984",
      "mugshot_url": "https://assets3.yammer.com/images/no_photo_small.gif",
      "full_name": "mikeal",
      "state": "active",
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity/users/mikealrogers-guest",
      "name": "mikealrogers-guest",
      "id": 4022984
    },
    {
      "type": "thread",
      "topics": [],
      "thread_starter_id": 81093061,
      "direct_message": false,
      "stats": {
        "first_reply_id": null,
        "latest_reply_at": "2011/03/03 21:12:57 +0000",
        "updates": 0,
        "first_reply_at": null,
        "latest_reply_id": 81093061
      },
      "url": "https://www.yammer.com/api/v1/messages/in_thread/81093061",
      "privacy": "public",
      "has_attachments": false,
      "web_url": "https://www.yammer.com/yammerdeveloperstestcommunity#/Threads/show?threadId=81093061",
      "id": 81093061
    }
  ],
  "threaded_extended": {}
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

