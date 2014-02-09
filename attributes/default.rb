default['yum']['mysql_community']['repositoryid'] = 'mysql-community'
default['yum']['mysql_community']['gpgkey'] = 'http://pgp.mit.edu/pks/lookup?op=get&search=0x8C718D3B5072E1F5'

# centos?  rhel? what are the possible values?
case node['platform']
  when 'redhat'
    case node['platform_version'].to_i
    when 5
      default['yum']['mysql_community']['description'] = 'Extra Packages for Enterprise Linux 5 - $basearch'
      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/downloads/file.php?id=450543'
    when 6
      default['yum']['mysql_community']['description'] = 'Extra Packages for Enterprise Linux 6 - $basearch'
      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/downloads/file.php?id=450542'
    when 7
      default['yum']['mysql_community']['description'] = 'Extra Packages for Enterprise Linux 7 (Beta) - $basearch'
      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/downloads/file.php?id=450705'
    end
  when 'fedora'
    case node['platform_version'].to_i
    when 19
      default['yum']['mysql_community']['description'] = 'Extra Packages for Fedora 19 - $basearch'
      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/downloads/file.php?id=450544'
    when 20
      default['yum']['mysql_community']['description'] = 'Extra Packages for Fedora 20 - $basearch'
      default['yum']['mysql_community']['mirrorlist'] = 'http://dev.mysql.com/downloads/file.php?id=450567'
    end
end

default['yum']['mysql_community']['failovermethod'] = 'priority'
default['yum']['mysql_community']['enabled'] = true
default['yum']['mysql_community']['gpgcheck'] = true
