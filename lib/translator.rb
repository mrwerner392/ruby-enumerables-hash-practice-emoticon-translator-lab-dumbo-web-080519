# require modules here

def load_library(filepath)
  require 'yaml'
  data = YAML.load_file(filepath)
  new_data = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  data.keys.each do |key|
    new_data["get_meaning"][key][1] = key
    new_data["get_meaning"][key][0] = new_data["get_meaning"][key][1]
  end
  new_data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
