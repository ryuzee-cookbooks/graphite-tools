#
# Cookbook Name:: graphite-tools 
# Recipe:: remove_unregistered_sensu_client
#
# Copyright 2014, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

filename = "remove-unregistered-sensu-client-data.rb"
template "/usr/local/bin/#{filename}" do
  source "#{filename}.erb"
  owner "root"
  group "root"
  mode 0755
end

cron "remove-unregistered-sensu-client-data" do
  hour "#{node['graphite-tools']["cleanup"]['cron']['hour']}"
  minute "#{node['graphite-tools']["cleanup"]['cron']['minute']}"
  command "/usr/local/bin/#{filename}"
end

