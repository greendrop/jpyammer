module Spec
  module Support
    module Controllers
      module Devise
        def login_user
          before(:each) do
            user = FactoryGirl.create(:user)
            auth = FactoryGirl.create(
              :authentication,
              :user_id => user.id,
              :provider => 'yammer',
              :uid => 'uid',
              :access_token => 'token'
            )
            sign_in user
          end
        end

        def login_user_no_auth
          before(:each) do
            user = FactoryGirl.create(:user)
            sign_in user
          end
        end
      end
    end
  end
end

