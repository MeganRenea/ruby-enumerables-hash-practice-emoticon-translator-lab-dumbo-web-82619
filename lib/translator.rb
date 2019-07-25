require "yaml"
require "pry"

def load_library(library)
  library = YAML.load_file(library)
  library = library.reduce({}) do |memo, (key,value)|
    memo["get_meaning"] = {library.keys}
    memo["get_emoticon"] = {library.values}
    memo
  end
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end