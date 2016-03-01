
docker_service 'default' do
  host ["tcp://#{node['ipaddress']}:2375", 'unix:///var/run/docker.sock']
  cluster_advertise "#{node['ipaddress']}:2375"
  cluster_store "consul://#{node['ipaddress']}:8500/docker_host"
  action [:create, :start]
end
