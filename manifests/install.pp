class template::install () {
  package { $template::params::package_name:
    ensure => installed,
  }
}
