# Owncloud Module

This module will install and configure owncloud

## Usage

### Minimal server configuration

```puppet
class { 'owncloud': }
```
This will do the typical install.
It will create a database using alkivi mysql module.
You still need to launch the web page one to create initial databases

You need to manually create the associated apache host. Here is an helper using puppetlabs-apache2

```puppet
apache::vhost { 'owncloud':
  priority         => pick($nodeConfiguration['owncloud_info']['priority'], '003'),
  servername       => pick($nodeConfiguration['owncloud_info']['servername'], 'cloud.home'),
  port             => pick($nodeConfiguration['owncloud_info']['port'], '444'),
  ssl              => pick($nodeConfiguration['owncloud_info']['ssl'], true),
  ssl_cert         => pick($nodeConfiguration['owncloud_info']['ssl_cert'], '/home/alkivi/www/ssl/alkivi.crt'),
  ssl_key          => pick($nodeConfiguration['owncloud_info']['ssl_key'], '/home/alkivi/www/ssl/alkivi.key'),
  docroot          => pick($nodeConfiguration['owncloud_info']['docroot'], '/var/www/owncloud'),
  logroot          => pick($nodeConfiguration['owncloud_info']['logroot'], '/home/alkivi/www/log'),
  docroot_owner    => pick($nodeConfiguration['owncloud_info']['docroot_owner'], 'www-data'),
  docroot_group    => pick($nodeConfiguration['owncloud_info']['docroot_group'], 'www-data'),
  access_log       => pick($nodeConfiguration['owncloud_info']['access_log'], false),
  override         => pick($nodeConfiguration['owncloud_info']['override'], ['All']),
  options          => pick($nodeConfiguration['owncloud_info']['options'], ['Indexes FollowSymLinks MultiViews ExecCGI']),
  error_log_syslog => pick($nodeConfiguration['owncloud_info']['error_log_syslog'], 'syslog:local1'),
  custom_fragment  => '
  CustomLog /home/alkivi/www/log/owncloud_access.log combined',
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
