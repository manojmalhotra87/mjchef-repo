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

template '/var/www/html/index.html' do
	source 'index.html.erb'
	mode "0644"
end

file '/var/www/html/index.html' do
	action :delete
end

# install git
package 'git' do
	action :install
end

# uninstall git
#package 'git' do
#	action :remove
#end

package 'java-1.7.0-openjdk' do
	action :install
end

execute 'jenkins-yum adding' do
	command <<-EOF
	 sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo;
	 sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
	EOF
end

package 'jenkins' do
	action :install
end

service 'jenkins' do
	action [:enable, :start]
end 
