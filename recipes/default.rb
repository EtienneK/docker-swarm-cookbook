#
# Cookbook Name:: docker-swarm
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'docker-swarm::consul-server'
include_recipe 'docker-swarm::docker'
include_recipe 'docker-swarm::swarm-manager'
