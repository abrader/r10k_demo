class { 'r10k':
  version       => '1.3.4',
  sources       => {
    'puppet'    => {
      'remote'  => 'git@github.com:abrader/r10k_demo.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  # Enable the parameter below for older versions of r10k.
  #purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => true,
  modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
}

