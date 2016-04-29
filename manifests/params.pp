# == Class puppet_to_yaml::params
#
# This class is meant to be called from puppet_to_yaml.
# It sets variables according to platform.
#
class puppet_to_yaml::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'puppet_to_yaml'
      $service_name = 'puppet_to_yaml'
    }
    'RedHat', 'Amazon': {
      $package_name = 'puppet_to_yaml'
      $service_name = 'puppet_to_yaml'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
