require 'spec_helper'

describe service('chef-client') do
  it { should be_enabled }
  it { should be_running }
end
