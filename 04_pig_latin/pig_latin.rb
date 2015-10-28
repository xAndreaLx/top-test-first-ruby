def translate(string)
  voy = ['a', 'e', 'i', 'o', 'u', 'y']
  array = string.split
  result = ""

  array.each do |word|
    if (voy.include?(word[0]))
      result +=  word + "ay "
    else
      i = 0
      buf = ""
      while !(voy.include?(word[i]))
        buf += word[i]
        i += 1
      end
      if (word[i] == "u")
        result += word[(i+1)..(word.length)] + buf + word[i] + "ay "
      else
        result += word[i..(word.length)] + buf + "ay "
      end
    end
  end
  return result.strip
end


=begin
  array.each do |word|
    if (voy.include?(word[0]))
      result +=  word + "ay "
    elsif (word[0] == "q" && word[1] == "u")
      result += word[2..(word.length)] + word[0] + word[1] + "ay "
    else
      i = 0
      buf = ""
      while !(voy.include?(word[i]))
        buf += word[i]
        i += 1
      end
      result += word[i..(word.length)] + buf + "ay "
    end
  end
=end
