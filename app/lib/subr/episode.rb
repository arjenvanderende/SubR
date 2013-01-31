require 'bierdopje'
require 'bierdopje/Subtitle'

module SubR
	class Episode
		attr_reader :season, :episode, :title

		def initialize season, episode, title
			@season = season.to_i
			@episode = episode.to_i
			@title = title
		end

		def find_subtitles show_id
			Bierdopje::Subtitle.find show_id, @season, @episode, 'en'
		end

		def to_s
			"Season: #{@season}, Episode: #{@episode}, Title: #{@title}"
		end

		class << self
			def get_episodes path
				Dir.foreach(path).map{|f| f =~ /\.mkv$/ ? Episode.parse(f) : nil}.compact
			end

			def parse filename
				args = filename.scan(/^S(\d+)E(\d+) - (.+)\.\w+$/)
				Episode.new *args[0]
			end
		end
	end
end
