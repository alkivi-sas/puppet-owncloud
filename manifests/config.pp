class owncloud::config () {
  
  File { 
    ensure => present,
    owner  => 'www-data',
    group  => 'www-data',
    mode   => '0640',
  }

  #file { $owncloud::config_file:
  #  content => template('owncloud/config.php.erb')
  #}
}
