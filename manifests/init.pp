# Class: puppet_to_yaml
# ===========================
#
# Full description of class puppet_to_yaml here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class puppet_to_yaml (
  $package_name = $::puppet_to_yaml::params::package_name,
  $service_name = $::puppet_to_yaml::params::service_name,
) inherits ::puppet_to_yaml::params {

  # validate parameters here

  class { '::puppet_to_yaml::install': } ->
  class { '::puppet_to_yaml::config': } ~>
  class { '::puppet_to_yaml::service': } ->
  Class['::puppet_to_yaml']
}
