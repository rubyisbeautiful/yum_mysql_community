#
# Author:: Bryan Taylor (<bcptaylor@gmail.com>)
# Recipe:: yum_mysql_community::remove
#
# see LICENSE


cookbook_file '/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql' do
  action :delete
end


%w{
  mysql56-community
  }.each do |repo|
  yum_repository repo do
    action :delete
  end
end
