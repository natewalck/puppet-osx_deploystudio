# Class: deploystudio
# This module sets up DeployStudio for both
# Masters and Replicas

class deploystudio(
  $ds_role='replica',
  $ds_master_address='deploystudiomaster.domain.com',
  $service_acct_password_hash='HashGoesHere',
) {
  if $::operatingsystem != 'Darwin' {
    fail('DeployStudio only runs on OS X')
  }

  class{'osx_deploystudio::install': } ->
  class{'osx_deploystudio::config': } ~>
  class{'osx_deploystudio::service': } ->
  Class['osx_deploystudio']
}
