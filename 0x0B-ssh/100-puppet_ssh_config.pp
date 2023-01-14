#!/usr/bin/env bash
#client config with puppet
include stdlib


file_line { 'turn of passwd auth':
  ensure  =>  present,
  path    => '/etc/ssh/ssh_config',
  line    =>  'PasswordAuthentication no',
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentifyFile ~/.ssh/school'
  replace => true
}
