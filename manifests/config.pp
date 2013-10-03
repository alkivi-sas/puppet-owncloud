class console_data::config () {

  exec { 'update-console-data':
    command  => 'cat /root/preseed/console_data.preseed | debconf-set-selections && dpkg-reconfigure --frontend=noninteractive console-data && touch /root/preseed/console_data.updated',
    creates  => '/root/preseed/console_data.updated',
    provider => 'shell',
    path     => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  }


}
