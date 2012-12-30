# Class: deploystudio
# This module sets up DeployStudio for both
# Masters and Replicas

class deploystudio(
  $ds_role='replica',
  $ds_master_address='deploystudiomaster.domain.com',
  $service_account_name='DeployStudio',
  $service_account_hash='ShadowHashGoesHere',
  $ds_service_account_hash='DeployStudioHashGoesHere',
  $ds_repo_url='afp://servername/sharename'
  $ds_admin_group='admin'
  $ds_assistant_group='admin'
  $ds_runtime_group='admin'
) {
  if $::operatingsystem != 'Darwin' {
    fail('DeployStudio only runs on OS X')
  }

  class{'osx_deploystudio::install': } ->
  class{'osx_deploystudio::user': } ->
  class{'osx_deploystudio::config': } ~>
  class{'osx_deploystudio::service': } ->
  Class['osx_deploystudio']
}
