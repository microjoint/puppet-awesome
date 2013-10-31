class awesome::install inherits awesome {

  package { 'awesome':
    ensure  => $package_ensure,
    name    => $package_name,
    require => Package['xorg-xinit'],
  }

}
