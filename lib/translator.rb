require "yaml"
require "pry"

def load_library(library)
  library = YAML.load_file(library)
  new = {:get_meaning => nil, :get_emoticon => nil}
  #binding.pry
  library.each do |(key,value)|
    japanese = value[1]
    english = value[0]
    memo[:get_meaning][japanese] = key
    memo[:get_emoticon][english] = japanese
    memo
    binding.pry
  end
  library
  #binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end