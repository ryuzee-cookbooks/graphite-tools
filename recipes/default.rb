#
# Cookbook Name:: graphite-tools 
# Recipe:: default
#
# Copyright 2014, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

filename = "remove_unused_graphite_data.sh"
template "/usr/local/bin/#{filename}" do
  source "#{filename}.erb"
  owner "root"
  group "root"
  mode 0755
end

cron "remove_unused_graphite_data" do
  hour "#{node['graphite-tools']['cron']['hour']}"
  minute "#{node['graphite-tools']['cron']['minute']}"
  command "/usr/local/bin/#{filename}"
end

execute "#{node["graphite-tools"]["graphite_bin"]}/set_admin_passwd.py #{node["graphite-tools"]["admin_user"]} #{node["graphite-tools"]["admin_password"]}" do
  action :run
end
