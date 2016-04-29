# == Class puppet_to_yaml::install
#
# This class is called from puppet_to_yaml for install.
#
class puppet_to_yaml::install {

  package { $::puppet_to_yaml::package_name:
    ensure => present,
  }
}
