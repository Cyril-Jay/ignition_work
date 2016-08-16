def plus_two(number)
  number + 2
end

def subtract_or_multiply_by_two(number)
  if number == 0 || number > 0
    number * 2
  else
    number - 2
  end
end

def repeat_last_word(sentence)
  sentence_split = sentence.split(' ')
  repeat_word = sentence_split[-1]
  sentence_split << repeat_word
  sentence = sentence_split.join(' ')
end

def return_value_of_type(word)
  if word == :string
    "animal"
  elsif word == :fixnum
    0
  else
    "input does not match any Ruby class"
  end
end

def add_five_and_ten(add)
  add += [5, 10]
end
