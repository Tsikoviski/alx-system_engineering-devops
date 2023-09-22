# kills a process named killmenow
node default{
  exec {'killme':
    command => '/usr/bin/pkill killmenow'
  }
}
