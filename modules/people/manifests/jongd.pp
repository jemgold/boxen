class people::jongd {

  $dotfiles = "/Users/${::luser}/.dotfiles"

  repository { $dotfiles:
    ensure => present,
    source => "jongd/dotfiles-1"
  }

  $localrc = "/Users/${::luser}/.localrc"
  file { $localrc:
    ensure => present,
    mode => 0600
  }
}

include notational_velocity
include dropbox
include spotify
include onepassword
include divvy
