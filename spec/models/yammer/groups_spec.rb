require 'spec_helper'

describe Yammer::Groups do
  context 'get_groups' do
    it do
      yammer_groups = Yammer::Groups.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Groups.get_dummy_data(:get_groups)
      end
      yammer_groups.stub(:yammer_request).and_return(response)

      groups = yammer_groups.get_groups({})
      groups.size.should == 1
      
      group = groups[0]
      group['mugshot_url'].should == 'https://assets2.yammer.com/images/group_profile_small.gif'
      group['full_name'].should == 'yammer-test-group'
      group['id'].should == 124742
    end
  end

  context 'get_group' do
    it do
      yammer_groups = Yammer::Groups.new
      response = Object.new
      def response.body
        Spec::Support::Models::Yammer::Groups.get_dummy_data(:get_group)
      end
      yammer_groups.stub(:yammer_request).and_return(response)

      group = yammer_groups.get_group(nil, {})
      group['id'].should == 124742
      group['full_name'].should == 'yammer-test-group'
    end
  end
end

