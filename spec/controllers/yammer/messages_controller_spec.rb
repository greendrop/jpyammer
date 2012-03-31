require 'spec_helper'

describe Yammer::MessagesController do

  describe "GET 'my_feed'" do
    it "returns http success" do
      get 'my_feed'
      response.should be_success
    end
  end

end
