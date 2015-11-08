#
# Cookbook Name:: ManojCookbook
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#package 'httpd' do
#	action :install
#end

service 'httpd' do
	action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do
	source 'index.html'
end

