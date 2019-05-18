require "pry"
require "./lib/artist.rb"
require "./lib/song.rb"

moni = Song.new("Monitor")
hed_cut = Song.new("Head Cut")
hed_cut.artist = "Siouxsie and the Banshees"

binding.pry
puts "I ran"
