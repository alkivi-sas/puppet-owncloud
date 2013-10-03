# Console-data Module

This module will install and configure console-data.

## Usage

### Minimal server configuration

```puppet
class { 'console_data': }
```
This will do the typical install, configure keyboard layout to use french by default.


### More server configuration

```puppet
class { 'console_data':
  keymap         => 'console-data/keymap/azerty/french/variant',
  keymap_select  => 'With Euro (latin 9)',
  keymap_full    => 'fr-latin9',
  keymap_family  => 'azerty',
  bootmap_md5sum => 'c626478f99891cf5e0489e171fae7811',
}
```

## Limitations

* This module has been tested on Debian Wheezy, Squeeze.

## License

All the code is freely distributable under the terms of the LGPLv3 license.

## Contact

Need help ? contact@alkivi.fr

## Support

Please log tickets and issues at our [Github](https://github.com/alkivi-sas/)
