# Using strace, find out why Apache is returning a 500 error `wp-settings.php`"

exec { 'fix-wp':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
