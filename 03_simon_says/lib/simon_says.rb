def echo(string)
  string    # => or "#{word}"
end

def shout(string)
  string.upcase
end

def repeat(word, nb=2)
  ("#{word} " * nb).strip # => #strip will cut off whitespaces front and back of a string
end

def start_of_word(string, index)
  string[0..(index-1)]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  array = string.split
  lw = ['the','and','is','a','an','over','in','on','of','or']
  res = ""

  array.each do |word|
    if lw.include?(word)
      word.downcase!
    else
      word.capitalize!
    end
  end

    array[0].capitalize!

    array.each do |word|
      res += "#{word} "
    end

    res.strip
end
