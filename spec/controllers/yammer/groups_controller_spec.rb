require 'spec_helper'

describe Yammer::GroupsController do

  describe "GET 'groups'" do
    it "returns http success" do
      get 'groups'
      response.should be_success
    end
  end

end
