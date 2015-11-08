#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute



package_name = "httpd"


if node["platform"] == "ubuntu"
	package_name = "apache2"
end

package package_name do
	action :install
end

service package_name do
	action [:enable, :start]
end

file '/var/www/html' do
	source 'index.html'
	mode "0644"
end
