module Rack::Markdown::CSS
  def internal
    <<-CSS
      #outer {
        width: 912px;
        background: #eee;
        padding: 3px;
        border-radius: 3px;
        margin: 0 auto;
      }

      #inner {
        width: 850px;
        background: white;
        padding: 30px;
        border: 1px solid #cacaca;
      }

      #title {
        background-image: -webkit-linear-gradient(top, #FAFAFA, #EAEAEA);
        border: 1px solid #cacaca;
        border-bottom: none;
        color: #555;
        font-size: 16px;
        font-weight: bold;
        height: 20px;
        line-height: 20px;
        margin: 0;
        padding: 10px;
        text-shadow: white 0px 1px 0px;
      }

      #filename {
        padding-left: 16px;
      }

      #version {
        float: right;
        padding-right: 16px;
      }
    CSS
  end

  def external
    hrefs = %w(3331384/github.css 3331486/syntax.css).map { |g| "https://raw.github.com/gist/#{g}" }
    links = hrefs.map { |h| "<link rel='stylesheet' type='text/css' href='#{h}' />" }
    links.join
  end

end
