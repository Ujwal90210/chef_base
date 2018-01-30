#
# Cookbook Name:: linux_base
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef-client::service' do
  context 'Amazon Linux' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'amazon', version: '2017.09').converge(described_recipe)
  end
  it 'should use the init service' do
    expect(chef_run).to include_recipe('chef-client::init_service')
    end
  end
end
