require 'spec_helper'

describe 'google_talkplugin', :type => :class do

  describe 'for osfamily RedHat' do
    it { should contain_class('google_talkplugin') }
  end

end
