# Download puppet-lint 2.1.0
exec { 'apt-get update':
  command => '/usr/bin/apt-get update'
}

package { 'rubygems1.9.1':
  ensure  => 'installed',
  require => Exec['apt-get update']
}

package { 'puppet-lint':
  ensure   => '2.1.0'
  require  => Package['rubygems1.9.1'],
  provider => 'gem'
}
