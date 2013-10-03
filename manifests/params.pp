class console_data::params () {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name   = 'console-data'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }
}

