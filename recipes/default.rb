#
# Cookbook Name:: graphite-tools 
# Recipe:: default
#
# Copyright 2014, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

template "/usr/local/bin/remove_old_data.sh" do
  source "remove_old_data.sh.erb"
  owner "root"
  group "root"
  mode 0755
end

cron "remove_old_data" do
  hour "6"
  minute "0"
  command "/usr/local/bin/remove_old_data.sh"
end
