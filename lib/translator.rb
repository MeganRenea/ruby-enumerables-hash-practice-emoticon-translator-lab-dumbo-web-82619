require "yaml"
require "pry"

def load_library(library)
  library = YAML.load_file(library)
  #binding.pry
  library = library.reduce({}) do |memo, (key,value)|
    japanese = value[1]
    english = value[0]
    if memo["get_meaning"]
    memo["get_meaning"][japanese] = key
    else 
      memo["get_meaning"]
    end
    if memo["get_emoticon"]
    memo["get_emoticon"][english] = japanese
    else memo["get_emoticon"]
    end
    memo
    #binding.pry
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