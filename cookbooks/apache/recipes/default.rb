#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved


case node['platform']
      when /cen.*/i, "redhat", "fedora"
        pack = "httpd"
      when "debien", "ubuntu"
         pack = "apache2"
end

package pack do
    action :install
    not_if "rpm -qa | grep #{pack}"
end

cookbook_file "/var/www/html/index.html" do
    content "index.html"
end

service pack do
  action :start
end



