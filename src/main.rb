#!/usr/bin/env ruby

# Enumerate the video files in a directory
def get_video_files path
	Dir.foreach(path).map{|f| f =~ /\.mkv$/ ? f : nil}.compact
end

# Execute the script
puts 'SubR - Bulk Subtitle Downloader for TV-series'
@video_files = get_video_files('/Volumes/Multimedia/Video/TV-series/Flashpoint/season 4')
puts @video_files
