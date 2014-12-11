Gem::Specification.new do |s|
  s.name        = 'puppet-bundler'
  s.version     = '0.0.1'
  s.date        = '2014-12-11'
  s.summary     = "puppet-bundler /path/to/metadata.json"
  s.description = "Utility to install module dependencies from metadata.json for development"
  s.authors     = ["Spencer Krum", "HP Development Corporation LP"]
  s.email       = 'nibz@spencerkrum.com'
  s.files       = ["bin/puppet-bundler", "lib/puppet_bundler.rb"]
  s.executables << 'puppet-bundler'
  s.homepage    =
    'http://github.com/nibalizer/puppet-bundler'
  s.license       = 'Apache 2'
end
