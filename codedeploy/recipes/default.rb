#
# Cookbook Name:: codedeploy
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "install CodeDeploy agent" do
		user "root"
		cwd "/tmp"
		code <<-EOC
				aws s3 cp s3://aws-codedeploy-ap-northeast-1/latest/install /home/ec2-user
				chmod +x /home/ec2-user/install
				/home/ec2-user/install auto
		EOC
end

