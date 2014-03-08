#
# Cookbook Name:: graphite-tools 
# Recipe:: remove-unused-data
#
# Copyright 2014, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

filename = "remove-unused-graphite-data.sh"
template "/usr/local/bin/#{filename}" do
  source "#{filename}.erb"
  owner "root"
  group "root"
  mode 0755
end

cron "remove-unused-graphite-data" do
  hour "#{node['graphite-tools']["cleanup"]['cron']['hour']}"
  minute "#{node['graphite-tools']["cleanup"]['cron']['minute']}"
  command "/usr/local/bin/#{filename}"
end
