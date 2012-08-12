class Rack::Markdown::Renderer
  class PygmentsHTML < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, :lexer => language)
    end
  end

  def self.render(text)
    renderer = PygmentsHTML.new(:hard_wrap => true, :filter_html => true)
    options  = {
      :autolink           => true,
      :no_intra_emphasis  => true,
      :fenced_code_blocks => true,
      :lax_html_blocks    => true,
      :stikethrough       => true,
      :superscript        => true
    }
    Redcarpet::Markdown.new(renderer, options).render(text)
  end
end
