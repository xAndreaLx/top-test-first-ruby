class Book
  attr_reader :title

  def title=(string)

    lw = ["a", "an", "the", "at", "by", "for", "in", "of", "on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
    title = string.split.map { |x| lw.include?(x) ? x: x.capitalize }
    title[0] = title[0].capitalize
    @title = title.join(" ")
  end

=begin
  def title
    @title
  end
=end

end
