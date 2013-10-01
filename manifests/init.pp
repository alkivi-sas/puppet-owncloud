class template () {
  # declare all parameterized classes
  class { 'template::params': }
  class { 'template::install': }
  class { 'template::config': }
  class { 'template::service': }

  # declare relationships
  Class['template::params'] ->
  Class['template::install'] ->
  Class['template::config'] ->
  Class['template::service']
}

