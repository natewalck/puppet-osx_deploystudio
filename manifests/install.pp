# osx_deploystudio::install class. Installs all necessary files for deploystudio
class osx_deploystudio::install {
  package {'DeployStudioServer_v1.0rc135.dmg':
    ensure => present,
    source => 'http://puppetmaster01.paradise/pkgs/deploystudio/DeployStudioServer_v1.0rc135.dmg',
  }
}
