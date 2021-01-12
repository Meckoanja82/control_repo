class profile::web {
  include nginx
  package {'nano':
    ensure => present,
  }
}
