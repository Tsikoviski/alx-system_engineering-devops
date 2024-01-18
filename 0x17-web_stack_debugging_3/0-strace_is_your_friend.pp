#change misspeling to fix code
exec { 'change the error':
  command => '/usr/bin/sudo /bin/sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php'
  }
