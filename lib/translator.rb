require "yaml"
require "pry"

def load_library(library)
  library = YAML.load_file(library)
  library = library.reduce({}) do |memo, (key,value)|
    japanese = value[1]
    english = value[0]
    memo["get_meaning"] = {key => japanese}
    memo["get_emoticon"] = {value => english}
    memo
    #binding.pry
  end
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end