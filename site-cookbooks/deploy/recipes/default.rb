#
# Cookbook Name:: deploy
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

execute "bundle install" do
		command "cd /var/www/emotion-api/ && /home/#{node['deploy']['user']}/.rbenv/shims/bundle install"
    user node['deploy']['user']
    group node['deploy']['group']
    environment ({'HOME' => "/home/#{node['deploy']['user']}", 'USER' => node['deploy']['user']})
end

execute "Start unicorn" do
		command "cd /var/www/emotion-api/ && /home/#{node['deploy']['user']}/.rbenv/shims/bundle exec unicorn -D -E development -c config/unicorn.rb"
    user node['deploy']['user']
    group node['deploy']['group']
    environment ({'HOME' => "/home/#{node['deploy']['user']}", 'USER' => node['deploy']['user']})
end
