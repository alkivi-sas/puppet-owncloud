class owncloud::params () {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name   = 'owncloud'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }
}

