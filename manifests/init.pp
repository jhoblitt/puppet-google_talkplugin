# == Class: google_talkplugin
#
class google_talkplugin(
  $manage_repo = $::google_talkplugin::params::manage_repo,
) inherits google_talkplugin::params {

  if $manage_repo {
    require google_talkplugin::repo
    Class[google_talkplugin::repo] -> Package[$::google_talkplugin::params::package_name]
  }

  package { $::google_talkplugin::params::package_name:
    ensure => present,
  }
}
