name             'yum_mysql_community'
maintainer       'Bryan Taylor'
maintainer_email 'bcptaylor@gmail.com'
license          'MIT'
description      'Installs/Configures yum_mysql_community'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'yum', '~> 3.0'

%w( redhat fedora centos ).each{ |p| supports p }

