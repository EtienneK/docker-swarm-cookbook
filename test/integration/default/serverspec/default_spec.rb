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

# swarm

describe docker_image('swarm') do
  it { should exist }
end

describe docker_container('swarm-manager') do
  it { should be_running }
end

describe docker_container('swarm-node') do
  it { should be_running }
end

[4000].each do |p|
  describe port(p) do
    it { should be_listening }
  end
end
