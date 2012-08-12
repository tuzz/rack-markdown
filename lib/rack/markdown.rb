require 'rack'
require 'pygments.rb'
require 'redcarpet'

class Rack::Markdown; end

%w(renderer html css markdown).each do |file|
  require File.join(File.dirname(__FILE__), 'markdown', file)
end
