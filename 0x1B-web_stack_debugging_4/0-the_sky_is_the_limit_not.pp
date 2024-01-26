# icreases the amount of traffic an Nginx server can handle

# increase the ulimit of the default ile

exec { '/usr/bin/env sed -i s/15/1000/ /etc/default/nginx':}
-> exec { '/usr/bin/env service nginx restart': }
