class awesome::config inherits awesome {
  file { $config:
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/$config_file",
  }
}
