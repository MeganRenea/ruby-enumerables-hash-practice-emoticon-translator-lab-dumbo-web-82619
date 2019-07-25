require "yaml"
require "pry"

def load_library(library)
  library = YAML.load_file(library)
  new = {:get_meaning => {}, :get_emoticon => {}}
  #binding.pry
  library.each do |(meaning,emoticon)|
    japanese = emoticon[1]
    english = emoticon[0]
    new[:get_meaning][japanese] = meaning
    new[:get_emoticon][english] = japanese
    #binding.pry
  end
  new
 # binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end