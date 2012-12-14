# Class: deploystudio
# This module sets up DeployStudio for both
# Masters and Replicas

class deploystudio($ds_role='replica',
                   $ds_master_address='deploystudiomaster.domain.com',
                   $service_acct_password_hash='HashGoesHere',
) { 

  if $::operatingsystem != 'Darwin' {
    fail('DeployStudio only runs on OS X')
  }

  package {'DeployStudioServer_v1.0rc135.dmg': 
    ensure => present,
    source => 'http://puppetmaster01.paradise/pkgs/deploystudio/DeployStudioServer_v1.0rc135.dmg',
  }
}
