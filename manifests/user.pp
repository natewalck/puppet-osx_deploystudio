# Creates the service account user

class osx_deploystudio::user {
  group { 'deploystudio':
    ensure => 'present',
  }

  user { $service_account_name:
    ensure   => 'present',
    groups   => 'deploystudio',
    password => $osx_service_account_hash,
    require  => Group['deploystudio'],
  }
}
