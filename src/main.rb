#!/usr/bin/env ruby

require 'bierdopje'
require './episode.rb'

# Enumerate the video files in a directory
def find_showid tvdb_id
	show = Bierdopje::Show.find_by_tvdb_id tvdb_id
	show.id
end

# Execute the script
puts 'SubR - Bulk Subtitle Downloader for TV-series'
Bierdopje::Base.api_key = "BB442E7744E9B541"

@video_files = SubR::Episode.get_episodes('/Volumes/Multimedia/Video/TV-series/Flashpoint/season 4')
puts @video_files

#@show_id = SubR::find_showid 82438
show_id = 3210
puts @show_id


