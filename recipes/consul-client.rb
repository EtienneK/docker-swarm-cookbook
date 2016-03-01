
node.default['consul']['config']['server'] = false

include_recipe 'docker-swarm::consul-shared'
