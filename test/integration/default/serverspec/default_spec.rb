require 'spec_helper'

# consul

describe service('consul') do
  it { should be_enabled }
  it { should be_running }
end

[8300, 8400, 8500, 8600].each do |p|
  describe port(p) do
    it { should be_listening }
  end
end

# docker

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end
