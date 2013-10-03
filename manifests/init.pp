class console_data (
  $keymap         = 'console-data/keymap/azerty/french/variant',
  $keymap_select  = 'With Euro (latin 9)',
  $keymap_full    = 'fr-latin9',
  $keymap_family  = 'azerty',
  $bootmap_md5sum = 'c626478f99891cf5e0489e171fae7811',
) {
  # declare all parameterized classes
  class { 'console_data::params': }
  class { 'console_data::install': }
  class { 'console_data::config': }

  # declare relationships
  Class['console_data::params'] ->
  Class['console_data::install'] ->
  Class['console_data::config']
}

