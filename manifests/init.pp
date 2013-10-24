class owncloud (
) {

  # declare all parameterized classes
  class { 'owncloud::params': }
  class { 'owncloud::install': }
  class { 'owncloud::config': }

  # declare relationships
  Class['owncloud::params'] ->
  Class['owncloud::install'] ->
  Class['owncloud::config']
}

