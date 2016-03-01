
include_recipe 'docker-swarm::swarm-shared'

docker_container 'swarm-node' do
  repo 'swarm'
  command "join --addr=#{node['ipaddress']}:2375 consul://#{node['ipaddress']}:8500/docker_swarm"
  restart_policy 'always'
end
