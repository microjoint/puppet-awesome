class awesome::config inherits awesome {
  file { $config_dir:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  file { $config:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => File[$config_dir],
    source  => "puppet:///modules/$config_file",
  }
  file { $config_theme:
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    require => File[$config_dir],
    source => "puppet:///modules/$config_theme_file",
  }
}
