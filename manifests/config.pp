# Configuration class for deploystudio module
class osx_deploystudio::config {

  if $ds_role == 'master' {
    file { '/Library/Preferences/com.deploystudio.server.plist' :
      content => template('osx_deploystudio/com.deploystudio.server.master.plist.erb')
    }
  }
  else {
    file { '/Library/Preferences/com.deploystudio.server.plist' :
      content => template('osx_deploystudio/com.deploystudio.server.replica.plist.erb')
    }
  }
}
