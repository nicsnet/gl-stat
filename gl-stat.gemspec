# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','gl-stat','version.rb'])

Gem::Specification.new do |s|
  s.name = 'gl-stat'
  s.version = GlStat::VERSION
  s.author = 'Nicola Sheldrick'
  s.email = 'sheldr@gmail.com'
  s.homepage = 'https://github.com/nicsnet'
  s.license = 'MIT'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Get average ping times for GitLab home and about page'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','gl-stat.rdoc']
  s.rdoc_options << '--title' << 'gl-stat' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'gl-stat'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'aruba', '~> 0.14.3'
  s.add_development_dependency 'rdoc', '~> 6.0'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'rspec-mocks', '~> 3.7'
  s.add_runtime_dependency 'gli', '2.17.1'
  s.add_runtime_dependency 'faraday', '~> 0.13.1'
end
