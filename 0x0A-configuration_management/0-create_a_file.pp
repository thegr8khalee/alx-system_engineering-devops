file { '/temp/school':
    ensure => present,
    mode => '0744'
    owner => 'www-data'
    group => 'www-data'
    contains => "I love Puppet",
}
