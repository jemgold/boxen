class people::jongd {

  include notational_velocity
  include dropbox
  include spotify
  include onepassword
  include divvy


  $dotfiles = "/Users/${::boxenuser}/.dotfiles"

  repository { $dotfiles:
    ensure => present,
    source => "jongd/dotfiles"
  }

  $localrc = "/Users/${::luser}/.localrc"
  file { $localrc:
    ensure => present,
    mode => 0600
  }
}
