#!/usr/bin/env ruby

require 'bierdopje'
require 'bierdopje/show'

# Enumerate the video files in a directory
def get_video_files path
	Dir.foreach(path).map{|f| f =~ /\.mkv$/ ? f : nil}.compact
end

def find_showid tvdb_id
	show = Bierdopje::Show.find_by_tvdb_id tvdb_id
	show.id
end

# Execute the script
puts 'SubR - Bulk Subtitle Downloader for TV-series'

@api_key = ARGV[0]
puts "API key: #{@api_key}"
Bierdopje::Base.api_key = @api_key

@video_files = get_video_files('/Volumes/Multimedia/Video/TV-series/Flashpoint/season 4')
puts @video_files

#@show_id = find_showid 82438
show_id = 3210
puts @show_id

