require 'json'
require 'pp'

file_text = File.read("./movies.json")
movies = JSON.parse(file_text)
filtered_movies = movies["movies"].map { |movie| { :title => movie["title"], :rating => movie["ratings"]["critics_score"] } }
sorted_movies = filtered_movies.sort_by { |movie| movie[:rating] }
puts sorted_movies.first
