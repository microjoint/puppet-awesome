class awesome (
  $config            = $awesome::params::config,
  $config_file       = $awesome::params::config_file,
  $package_ensure    = $awesome::params::package_ensure,
  $package_name      = $awesome::params::package_name,
) inherits awesome::params {

  validate_absolute_path($config)
  validate_string($config_file)
  validate_string($package_ensure)
  validate_array($package_name)

  include '::awesome::install'
  include '::awesome::config'

  Class['::awesome::install'] -> Class['::awesome::config']
}
