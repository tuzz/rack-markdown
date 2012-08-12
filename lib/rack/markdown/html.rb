module Rack::Markdown::HTML

  def html
    "<html><head>#{external}<style>#{internal}</style></head><body>#{body}</body></html>"
  end

  def body
    <<-HTML
      <div id='outer'>
        <div id='title'>
          <span id='filename'>#{path}</span>
          <span id='version'><a href='https://github.com/cpatuzzo/rack-markdown'>rack-markdown (v#{self.class.version})</a></span>
        </div>
        <div id='inner'>#{rendered}</div>
      </div>
    HTML
  end

end
