class people::ghislaindj {
  #include projects::tools

  include people::ghislaindj::applications
  include people::ghislaindj::iterm_shortcuts
  include people::ghislaindj::gitconfig
  include people::ghislaindj::osx_defaults
  include people::ghislaindj::sublime

  include redis
  include tunnelblick::beta

  file { "/Users/${::luser}/bin/brew-services.rb":
    content => template('/opt/boxen/repo/modules/people/templates/shared/brew-services.rb'),
    group   => 'staff',
    owner   => $luser
  }

  file { "/Users/${::luser}/bin/service":
    content => template('/opt/boxen/repo/modules/people/templates/shared/service'),
    group   => 'staff',
    owner   => $luser
  }
}
