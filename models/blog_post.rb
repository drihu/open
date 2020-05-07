class BlogPost < LazyRecord
  attr_reader :title, :author, :text, :date
  def initialize(title, author, text)
    @title = title
    @author = author
    @text = text
    @date = Time.now
  end
end
