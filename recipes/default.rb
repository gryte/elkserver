#
# Cookbook:: elkserver
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# install java
include_recipe 'java'

# install elasticsearch
include_recipe 'elasticsearch'
