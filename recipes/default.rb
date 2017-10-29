#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2017, Mandar Abhyankar, All Rights Reserved.

# install apache2 package
package 'apache2' do
  case node['platform']
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
  action :install
end

# start apache2 service
service 'apache2' do
  action :start
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  notifies :restart, 'service[apache2]', :immediately
end

# attributes
node.default['apache2']['username'] = 'Mandar'
