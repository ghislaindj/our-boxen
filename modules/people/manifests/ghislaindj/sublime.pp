class people::ghislaindj::sublime {
  include sublime_text_3
  include sublime_text_3::package_control

  file { '/Users/Ghislain/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings':
    ensure  => file,
    content => template("/opt/boxen/repo/modules/people/templates/shared/Preferences.sublime-settings"),
  }

  sublime_text_3::package { 'Theme - SpaceGray':
  source => 'kkga/spacegray'
  }

  sublime_text_3::package { 'SublimePuppet':
    source => 'russCloak/SublimePuppet'
  }

  sublime_text_3::package { 'Syntax highlithning for SASS':
    source => 'P233/Syntax-highlighting-for-Sass'
  }

  sublime_text_3::package { 'BetterCoffeescript':
    source => 'aponxi/sublime-better-coffeescript'
  }

  sublime_text_3::package { "BracketHighlighter":
    source => 'facelessuser/BracketHighlighter',
  }
}
