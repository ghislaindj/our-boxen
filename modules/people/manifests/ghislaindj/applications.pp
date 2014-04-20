class people::ghislaindj::applications {
  include sublime_text_3
  include iterm2::stable

  include chrome
  include chrome::canary
  include spotify
  include alfred
  include dropbox
  include onepassword
  include spectacle

  include mongodb
  include mysql
  include zsh
  include ohmyzsh
  include imagemagick

  include virtualbox
  include tunnelblick::beta

  include nodejs::v0_10
  nodejs::module { 'bower':
    node_version => 'v0.10'
  }

  include evernote
  include vlc
}
