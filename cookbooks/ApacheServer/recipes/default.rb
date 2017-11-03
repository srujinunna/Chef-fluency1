#
# Cookbook:: ApacheServer
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package 'httpd' do
    action :install
end


service 'httpd' do
   action [:enable, :restart]
end



   
