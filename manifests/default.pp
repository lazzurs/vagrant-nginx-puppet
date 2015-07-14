class { 'nginx': }

nginx::resource::vhost { 'example':
  ensure               => present,
  listen_port          => 8000,
  www_root             => '/srv/www/example/',
}

include git

vcsrepo { '/srv/www/example/':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/puppetlabs/exercise-webpage.git',
}


