class Author

  attr_accessor :name
  @count = 0
  @instances = []

  def initialize(name)
    @name = name
    @books = {}
    @count += 1
    @instances << self
  end

  def self.all
    @instances.inspect
  end

  def books
    @books
  end

  def write_book(title, word_count)
    book = Book.new(:title, :word_count)
    @books << book
    book.author = self
  end

  def total_words
    words_array = @books.collect {|k| k[word_count]}
    words_array.sum
  end

  def most_words
    words_array = @books.collect {|x| x[1]}
    largest_word_count = words_array.sort.last

  end


end
