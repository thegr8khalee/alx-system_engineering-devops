# creating file

file { '/temp/school' :
    path => '/temp/school',
    mode => '0744'
    owner => 'www-data'
    group => 'www-data'
    contains => 'I love Puppet',
    }
