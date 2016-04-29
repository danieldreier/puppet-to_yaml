# == Class puppet_to_yaml::service
#
# This class is meant to be called from puppet_to_yaml.
# It ensure the service is running.
#
class puppet_to_yaml::service {

  service { $::puppet_to_yaml::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
