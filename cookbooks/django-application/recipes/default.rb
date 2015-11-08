#
# Cookbook Name:: webserver-application
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# create a 2.6 virtualenv owned by ubuntu user
# python_virtualenv "/home/ubuntu/flask_ve" do
#     owner "root"
#     group "sysadmins"
#     action :create
# end

python_pip "virtualenv" do
    action :install
end

include_recipe 'django-application::custom_installations'
