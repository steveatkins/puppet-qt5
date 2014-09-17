# Installs Qt5 via Homebrew.
#
# Usage:
#
#     include qt5

class qt5 {
  include homebrew
  include xquartz

  homebrew::formula { 'qt5':
    before => Package['boxen/brews/qt5'],
  }

  package { 'boxen/brews/qt5':
    ensure  => '5.3.2-boxen',
    require => Class['xquartz'],
  }
}
