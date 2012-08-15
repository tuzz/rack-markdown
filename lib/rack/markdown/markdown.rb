class Rack::Markdown

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def call(env)
    [200, { 'Content-Type' => 'text/html' }, [html]]
  end

  def self.version
    '0.0.2'
  end

  private
  include HTML, CSS

  def rendered
    Renderer.render(file_content)
  end

  def file_content
    ::File.read(path)
  end

end
