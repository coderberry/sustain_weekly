module PostsHelper
  def md_to_html(text)
    Kramdown::Document.new(text.strip).to_html.html_safe
  end
end
