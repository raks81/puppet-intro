user { 'rajnikanth':
  ensure           => 'present',
  gid              => '501',
  home             => '/home/rajnikanth',
  password         => '!!',
  password_max_age => '99999',
  password_min_age => '0',
  comment	   => 'comment',
  shell            => '/bin/sh',
  uid              => '501',
}
