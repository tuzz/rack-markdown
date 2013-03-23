require File.expand_path('../lib/rack-markdown', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'rack-markdown'
  s.version     = ::Rack::Markdown.version
  s.summary     = 'Rack Markdown'
  s.description = 'Serves a markdown file'
  s.author      = 'Chris Patuzzo'
  s.email       = 'chris@patuzzo.co.uk'
  s.files       = ['README.md'] + Dir['lib/**/*.*']
  s.homepage    = 'https://github.com/tuzz/rack-markdown'

  s.add_dependency 'rack'
  s.add_dependency 'pygments.rb'
  s.add_dependency 'redcarpet'
end
