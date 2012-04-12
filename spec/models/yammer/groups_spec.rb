require 'spec_helper'

describe Yammer::Groups do
  context 'get_groups' do
    it do
      Yammer::Base.stub(
        :get
      ).and_return(
        JSON.parse Spec::Support::Models::Yammer::Groups.get_dummy_data(:get_groups)
      )

      groups = Yammer::Groups.get_groups({})
      groups.size.should == 1
      
      group = groups[0]
      group['mugshot_url'].should == 'https://assets2.yammer.com/images/group_profile_small.gif'
      group['full_name'].should == 'yammer-test-group'
      group['id'].should == 124742
    end
  end
end

