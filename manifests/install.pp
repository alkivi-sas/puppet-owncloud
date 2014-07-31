class owncloud::install () {

  mysql::database{ 'owncloud':
    user    => 'owncloud',
    require => Class['mysql'],
  }

  apt::key { 'owncloud':
    key        => 'BA684223',
    key_source => 'http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/Release.key',
  }

  apt::source { 'owncloud':
    location    => 'http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/',
    repos       => '',
    release     => '/',
    include_src => false,
    require     => Apt::Key['owncloud'],
  }
 
  package { $owncloud::params::package_name:
    ensure       => installed,
    require      => Apt::Source['owncloud'],
  }
}
