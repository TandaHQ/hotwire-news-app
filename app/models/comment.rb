class Comment
  attr_accessor :id, :text, :url

  def initialize(id, text, url)
    @id = id
    @text = text
    @url = url
  end
end
