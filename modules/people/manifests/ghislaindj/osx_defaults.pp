class people::ghislaindj::osx_defaults {
	  # OSX config
  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::dock::autohide

  include osx::no_network_dsstores
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::finder::show_hidden_files
  include osx::finder::enable_quicklook_text_selection
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom

  osx::recovery_message { 'If this Mac is found, please send mail to xebeche@gmail.com': }

  class { 'osx::global::key_repeat_delay':
    delay => 0
  }

  boxen::osx_defaults { 'Sets the Speed With Which Mouse Movement Moves the Cursor':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.scaling',
    type   => 'float',
    value  => 10,
  }
  
  boxen::osx_defaults { 'Sets the Speed With Which Trackpad Movement Moves the Cursor':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.trackpad.scaling',
      type   => 'float',
      value  => 3.0,
    }

  boxen::osx_defaults { 'key repeat rate':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'KeyRepeat',
    type   => 'float',
    value  => 2.0;
  }

  boxen::osx_defaults { 'Set the delay when auto-hiding the dock - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'autohide-time',
    type   => 'float',
    value  => 0,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Set the Position of the Dock Relative to the Desktop':
    user   => $::boxen_user,
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => 'left',
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Set the Audio Bitpool for Bluetooth Audio Devices':
    user   => $::boxen_user,
    key    => '"Apple Bitpool Min (editable)"',
    domain => 'com.apple.BluetoothAudioAgent',
    value  => 50;
  }

  boxen::osx_defaults { 'Disable Dashboard':
    user   => $::boxen_user,
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => true,
    notify => Exec['killall Dock'];
  }

#  # Make bin directory in user home
#  file { "/Users/${::luser}/bin":
#    ensure => directory,
#    group  => 'staff',
#    owner  => $luser
#  }

}
