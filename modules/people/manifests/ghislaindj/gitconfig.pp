class people::ghislaindj::gitconfig {
  git::config::global {
    'alias.st':   value => 'status';
    'alias.ci':   value => 'commit';
    'alias.co':   value => 'checkout';
    'alias.df':   value => 'diff';
    'alias.dc':   value => 'diff --cached';
    'alias.lp':   value => 'log -p';
    'color.ui':   value => 'true';
    'user.name':  value => 'Ghislain de Juvigny';
    'user.email':   value => 'gdjuvigny@gmail.com';
  }
  # Make bin directory in user home
  file { "/Users/${::luser}/bin":
    ensure => directory,
    group  => 'staff',
    owner  => $luser
  }

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
