#
# Cookbook Name:: bacon
# Recipe:: default
#
# Copyright 2013, Seth Vargo
#
# All rights reserved - Do Not Redistribute
#

file '/tmp/.bacon-testfile' do
  content 'An opening line'
  owner   'root'
  group   'root'
  mode    '0644'
end
