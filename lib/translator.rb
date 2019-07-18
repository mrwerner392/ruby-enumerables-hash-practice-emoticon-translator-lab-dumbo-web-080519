# require modules here

def load_library(filepath)
  require 'yaml'
  data = YAML.load_file(filepath)
  new_data = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  data.each do |key, value|
    new_data["get_meaning"][value[1]] = key
    new_data["get_meaning"][value[0]] = new_data["get_meaning"][value[1]]
  end
  new_data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
