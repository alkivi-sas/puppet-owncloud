# SSH Module

This module will install and configure a ssh server.

## Usage

### Minimal server configuration

```puppet
class { 'ssh': }
```
This will do the typical install, configure and service management.
Default port is 2202
root login is forbidden by default, so is password authentification


### More server configuration

```puppet
class { 'ssh':
  $allowed_extra           = [ '127.0.0.1' ],
  $port                    = 22,
  $permit_root             = 'yes,
  $password_authentication = 'yes,
  $motd                    = true,
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
