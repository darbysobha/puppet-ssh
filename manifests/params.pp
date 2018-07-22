$permit_root_login = false
$port = 22

class ssh::params {
  case $facts['os']['family'] {
    'Debian' : {
       $package_name = 'openssh-server'
       $service_name = 'ssh'
     }
     'RedHat' : {
       $package_name = 'openssh-server'
       $service_name = 'sshd'
     }
     default : {
       fail("${facts['operatingsystem']} is not supported!!")
     }
   }
} 
