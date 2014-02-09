#
# Cookbook Name:: yum_mysql_community
# Recipe:: default
#
# Copyright (C) 2014 Bryan Taylor
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

# TODO: list of repos inside

%w{
  mysql-community
  }.each do |repo|
  yum_repository repo do
    description node['yum'][repo]['description']
    baseurl node['yum'][repo]['baseurl']
    mirrorlist node['yum'][repo]['mirrorlist']
    gpgcheck node['yum'][repo]['gpgcheck']
    gpgkey node['yum'][repo]['gpgkey']
    enabled node['yum'][repo]['enabled']
    cost node['yum'][repo]['cost']
    exclude node['yum'][repo]['exclude']
    enablegroups node['yum'][repo]['enablegroups']
    failovermethod node['yum'][repo]['failovermethod']
    http_caching node['yum'][repo]['http_caching']
    include_config node['yum'][repo]['include_config']
    includepkgs node['yum'][repo]['includepkgs']
    keepalive node['yum'][repo]['keepalive']
    max_retries node['yum'][repo]['max_retries']
    metadata_expire node['yum'][repo]['metadata_expire']
    mirror_expire node['yum'][repo]['mirror_expire']
    priority node['yum'][repo]['priority']
    proxy node['yum'][repo]['proxy']
    proxy_username node['yum'][repo]['proxy_username']
    proxy_password node['yum'][repo]['proxy_password']
    repositoryid node['yum'][repo]['repositoryid']
    sslcacert node['yum'][repo]['sslcacert']
    sslclientcert node['yum'][repo]['sslclientcert']
    sslclientkey node['yum'][repo]['sslclientkey']
    sslverify node['yum'][repo]['sslverify']
    timeout node['yum'][repo]['timeout']
    action :create
  end
end
