#
# Cookbook Name:: graphite-tools 
# Recipe:: password
#
# Copyright 2014, Ryutaro YOSHIBA 
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

execute "#{node["graphite-tools"]["path"]["graphite_bin"]}/set_admin_passwd.py #{node["graphite-tools"]["login"]["admin_user"]} #{node["graphite-tools"]["login"]["admin_password"]}" do
  action :run
end
