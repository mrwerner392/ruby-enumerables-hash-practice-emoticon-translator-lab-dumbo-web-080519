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
    new_data["get_emoticon"][value[0]] = value[1]
  end
  new_data
end

def get_japanese_emoticon(filepath, emoticon)
  emoticons = load_library(filepath)
  emoticons.each do |key, value|
    if emoticon = value[0]
      return value[1]
    end
  end
  return "Sorry, #{emoticon} is not a known emoticon"
end

def get_english_meaning
  # code goes here
end
