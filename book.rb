class Book

  attr_accessor :name, :author
  @count = 0
  @instances = []

  def initialize(name, author)
    @name = name
    @author = author
    @count += 1
    @instances << self
  end

  def call
    @author.books
  end

  def author
    self.author
  end

  def title
    self.title
  end

  def word_count
    @author.word_count
  end

end
