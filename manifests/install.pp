# osx_deploystudio::install class. Installs all necessary files for deploystudio
class osx_deploystudio::install {
  package {'DeployStudioServer_v1.5.17.dmg':
    ensure => present,
    source => 'http://www.deploystudio.com/get.php?fp=DeployStudioServer_v1.5.17.dmg',
  }
}
