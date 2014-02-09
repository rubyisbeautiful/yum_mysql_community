default['yum']['mysql_community']['repositoryid'] = 'mysql-community'
#default['yum']['mysql_community']['gpgkey'] = 'http://pgp.mit.edu/pks/lookup?op=get&search=0x8C718D3B5072E1F5'
default['yum']['mysql_community']['gpgkey'] = '/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'
default['yum']['mysql_community']['base_url'] = 'http://repo.mysql.com/yum/mysql-5.6-community/fc/$releasever/$basearch/'

# centos?  rhel? what are the possible values?
# platform centos
# platform_family rhel
#case node['platform']
#  when 'redhat'
#    case node['platform_version'].to_i
#    when 5
#      default['yum']['mysql_community']['description'] = 'MySQL Community Packages for Enterprise Linux 5 - $basearch'
#
#    when 6
#      default['yum']['mysql_community']['description'] = 'MySQL Community Packages for Enterprise Linux 6 - $basearch'
#      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm'
#    when 7
#      default['yum']['mysql_community']['description'] = 'MySQL Community Packages for Enterprise Linux 7 (Beta) - $basearch'
#      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm'
#    end
#  when 'fedora'
#    case node['platform_version'].to_i
#    when 19
#      default['yum']['mysql_community']['description'] = 'MySQL Community Packages for Fedora 19 - $basearch'
#      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/get/mysql-community-release-fc19-5.noarch.rpm'
#    when 20
#      default['yum']['mysql_community']['description'] = 'MySQL Community Packages for Fedora 20 - $basearch'
#      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/get/mysql-community-release-fc20-5.noarch.rpm'
#    end
#end

default['yum']['mysql_community']['failovermethod'] = 'priority'
default['yum']['mysql_community']['enabled'] = true
default['yum']['mysql_community']['gpgcheck'] = true

# here is what it actually installs
#[mysql-connectors-community]
#name=MySQL Connectors Community
#baseurl=http://repo.mysql.com/yum/mysql-connectors-community/fc/$releasever/$basearch/
#enabled=1
#gpgcheck=1
#gpgkey=file:/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
#
#[mysql-tools-community]
#name=MySQL Tools Community
#baseurl=http://repo.mysql.com/yum/mysql-tools-community/fc/$releasever/$basearch/
#enabled=1
#gpgcheck=1
#gpgkey=file:/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
#
#Enable to use MySQL 5.6
#[mysql56-community]
#name=MySQL 5.6 Community Server
#baseurl=http://repo.mysql.com/yum/mysql-5.6-community/fc/$releasever/$basearch/
#enabled=1
#gpgcheck=1
#gpgkey=file:/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
#
# Note: MySQL 5.7 is currently in development. For use at your own risk.
# Please read with sub pages: https://dev.mysql.com/doc/relnotes/mysql/5.7/en/
#[mysql57-community-dmr]
#name=MySQL 5.7 Community Server Development Milestone Release
#baseurl=http://repo.mysql.com/yum/mysql-5.7-community/fc/$releasever/$basearch/
#enabled=0
#gpgcheck=1
#gpgkey=file:/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql
#~