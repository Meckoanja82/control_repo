node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a fucking readme file!!!!!!!\n',
    owner => 'root',
  }
}
