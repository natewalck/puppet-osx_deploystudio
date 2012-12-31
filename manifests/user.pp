# Creates the service account user

group { 'deploystudio':
  ensure => 'present',
}


user {'deploystudio':
  ensure   => 'present',
  groups   => $service_account_name,
  password => $osx_service_account_hash,
}
