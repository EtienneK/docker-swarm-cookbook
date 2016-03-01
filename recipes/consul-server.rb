
node.default['consul']['config']['server'] = true

include_recipe 'docker-swarm::consul-shared'
