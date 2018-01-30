# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

include_recipe 'chef-client::config'
include_recipe 'chef-client::default'
include_recipe 'chef-client::delete_validation'

docker_service 'default' do
  action [:create, :start]
end

docker_image 'jenkins' do
  repo 'vfarcic/jenkins'
  action :pull
end

docker_container 'jenkins_server' do
  repo 'vfarcic/jenkins'
  port '8080:8080'
end
