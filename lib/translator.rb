# require modules here
require "yaml"
link_yml= './lib/emoticons.yml'

<<<<<<< HEAD


def load_library(path)
  # code goes here
   emoticons = YAML.load_file(path)
   emoticons_l={}
   emoticons_l[:get_meaning]={}
   emoticons_l[:get_emoticon]={}
   emoticons_l[:get_meaning] = emoticons.map{ |key_meaning, value_emo| [value_emo[1],key_meaning] }.to_h
   emoticons_l[:get_emoticon] = emoticons.map{ |key_meaning, value_emo| [value_emo[0],value_emo[1]] }.to_h  
   emoticons_l
end

def load_library2(path)
  emoticons = YAML.load_file(path)
=======
def load_library(path)
  # code goes here
   emoticons = YAML.load_file(path)
>>>>>>> f4c3656ca67cf8d6b10d5f9edbff7f85453143a3
end
  

<<<<<<< HEAD


def get_japanese_emoticon(path, t_w_emoticon)
  # code goes here
  emoticons=load_library(path)
  j_emoticon= "Sorry, that emoticon was not found"
  emoticons[:get_emoticon].each_key { |t_w_emo|  j_emoticon = emoticons[:get_emoticon][t_w_emo] if t_w_emoticon==t_w_emo}
  j_emoticon
end

def get_english_meaning(path, j_emoticon)
  # code goes here
  emoticons=load_library(path)
  emoticon_meaning = "Sorry, that emoticon was not found"
  emoticons[:get_meaning].each_key { |j_emo|  emoticon_meaning = emoticons[:get_meaning][j_emo] if j_emoticon==j_emo}
  emoticon_meaning
end

=======
def get_japanese_emoticon(path, t_w_emoticon)
  # code goes here
  emoticons=load_library(path)
  j_emoticon=""
  emoticons.each_value { |array_emo|  j_emoticon=array_emo[1] if t_w_emoticon==array_emo[0]}
  puts j_emoticon
end

def get_english_meaning(j_emoticon)
  # code goes here
  emoticons=load_library
  j_emoticon=""
end

puts load_library(link_yml)
puts get_japanese_emoticon(link_yml,)
>>>>>>> f4c3656ca67cf8d6b10d5f9edbff7f85453143a3
