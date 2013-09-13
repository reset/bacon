#
# Cookbook Name:: bacon
# Recipe:: default
#
# Copyright 2013, Seth Vargo
#
# All rights reserved - Do Not Redistribute
#

user 'foo' do
  system true
end

group 'logstash' do
  system true
end

service 'foo' do
  provider Chef::Provider::Service::Upstart
  supports(status: true, restart: true, reload: true)
  action [:enable, :start]
end
