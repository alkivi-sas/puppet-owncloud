class template::params () {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $service_name   = 'template'
      $package_name   = 'template'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }
}

