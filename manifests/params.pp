# == Class: google_talkplugin::params
#
# This class is considered private.
#
class google_talkplugin::params {

  case $::osfamily {
    'RedHat': {
      $manage_repo  = true
      $package_name = 'google-talkplugin'
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}
