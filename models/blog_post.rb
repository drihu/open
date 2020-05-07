class BlogPost < LazyRecord
  attr_reader :title, :author, :img_url, :text, :date
  def initialize(title, author, img_url, text)
    @title = title
    @author = author
    @img_url = img_url
    @text = text
    @date = Time.now
  end
end
