
managers = search(:node, 'role:swarm-manager')

node.default['consul']['config']['retry_join'] = managers.map { |m| m['ipaddress'] }.select { |ip| ip != node['ipaddress'] }
node.default['consul']['config']['bootstrap_expect'] = managers.size
node.default['consul']['config']['bind_addr'] = node['ipaddress']

include_recipe 'consul::default'
