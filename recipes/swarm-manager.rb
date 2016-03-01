
include_recipe 'docker-swarm::swarm-shared'

docker_container 'swarm-manager' do
  repo 'swarm'
  port '4000:4000'
  command "manage -H tcp://0.0.0.0:4000 --addr=#{node['ipaddress']}:4000 --replication consul://#{node['ipaddress']}:8500/docker_swarm"
  restart_policy 'always'
end
