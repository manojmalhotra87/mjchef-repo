log_level                :info
log_location             STDOUT
node_name                'admin'
client_key               '/home/manoj/chefwork/mine/.chef/admin.pem'
validation_client_name   'chef-validator'
validation_key           '/home/manoj/chefwork/mine/.chef/chef-validator.pem'
chef_server_url          'https://chefserver:443'
syntax_check_cache_path  '/home/manoj/chefwork/mine/.chef/syntax_check_cache'
cookbook_path [ '/home/manoj/chefwork/mine/cookbooks' ]
