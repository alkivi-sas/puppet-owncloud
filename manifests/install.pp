class console_data::install () {

  if(! defined(File['/root/preseed/']))
  {
    file { '/root/preseed':
      ensure => directory,
      mode   => '0750',
    }
  }

  file { '/root/preseed/console_data.preseed':
    content => template('console_data/preseed.erb'),
    mode    => '0600',
    backup  => false,
    require => File['/root/preseed'],
  }

 
  package { $console_data::params::package_name:
    ensure       => installed,
    responsefile => '/root/preseed/console_data.preseed',
    require      => File['/root/preseed/console_data.preseed'],
  }
}
