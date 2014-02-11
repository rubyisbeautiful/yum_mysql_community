version = node['platform_version'].to_i

default['yum']['mysql56-community']['repositoryid'] = 'mysql56-community'
default['yum']['mysql56-community']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'
#default['yum']['mysql56-community']['gpgkey'] = 'http://pgp.mit.edu/pks/lookup?op=get&search=0x8C718D3B5072E1F5'
default['yum']['mysql56-community']['description'] = "MySQL Community packages for #{node['platform']} #{version} - $basearch"
default['yum']['mysql56-community']['failovermethod'] = 'priority'
default['yum']['mysql56-community']['enabled'] = true
default['yum']['mysql56-community']['gpgcheck'] = true

case node['platform']
when 'redhat'
  #default['yum']['mysql56-community']['baseurl'] = "http://dev.mysql.com/get/mysql-community-release-el#{version}-5.noarch.rpm"
  default['yum']['mysql56-community']['baseurl'] = "http://repo.mysql.com/yum/mysql-5.6-community/el/#{version}/$basearch/"
when 'fedora'
  #default['yum']['mysql56-community']['baseurl'] = "http://dev.mysql.com/get/mysql-community-release-frel#{version}-5.noarch.rpm"
  default['yum']['mysql56-community']['baseurl'] = "http://repo.mysql.com/yum/mysql-5.6-community/frel/#{version}/$basearch/"
end
