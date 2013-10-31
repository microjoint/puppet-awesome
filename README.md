#awesome

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with awesome](#setup)
    * [What awesome affects](#what-awesome-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with awesome](#beginning-with-awesome)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)

##Overview

The awesome module installs, configures the awesome window manager.

##Module Description

The awesome module handles running awesome mainly on Arch Linux. Were possible I have added other distributions where known.

##Setup

###What awesome affects

* awesome package.
* awesome default configuration file.

###Beginning with awesome

include '::awesome' is enough to get you up and running. 

```puppet
class { '::awesome':
}
```

##Usage

All interaction with the awesome module can do be done through the main awesome class.
This means you can simply toggle the options in the awesome class to get at the
full functionality.

###I just want awesome, what's the minimum I need?

```puppet
include '::awesome'
```

###I'd like to install a different package name.

```puppet
class { '::awesome':
  package_name    => 'awesome-beta',
}
```

###I'd like to ensure the latest package is always installed.

```puppet
class { '::awesome':
  package_name    => 'awesome-beta',
  package_ensure  => latest,
}
```

##Reference

###Classes

* awesome: Main class, includes all the rest.
* awesome::install: Handles the packages.
* awesome::config: Handles the configuration file.

###Parameters

The following parameters are available in the awesome module

####`config_dir`

This set the location to put the default configuration files

####`config`

This sets the file to write awesome configuration into.

####`config_file`

This determines which file puppet should use for the awesome configuration.

####`package_ensure`

This can be set to 'present' or 'latest' or a specific version to choose the
awesome package to be installed.

####`package_name`

This determines the name of the package to install.

##Limitations

This module has been built on and tested against Puppet 3.3 and higher.

The module has been tested on:

* Arch Linux

Testing on other platforms has been light and cannot be guaranteed. 
