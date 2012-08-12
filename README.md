## Rack Markdown

Serves a markdown file.

## Usage

```ruby
# config.ru
require 'rack/markdown'

run Rack::Markdown.new('path/to/file.markdown')
```

Then run:

```
rackup
```

And visit [localhost:9292](http://localhost:9292).

## Ruby 1.9+

If you're using a newer version of Ruby, you'll need to run a [thin](http://code.macournoyer.com/thin/) server instead. There is an [issue](https://github.com/tmm1/pygments.rb/issues/25) with [Pygments](https://github.com/tmm1/pygments.rb).

## Screenshot

Yep- it looks almost identical to Github's markdown parser.

![Rack Markdown
Screenshot](https://dl.dropbox.com/u/5490406/github/rack-markdown-screenshot.png)
