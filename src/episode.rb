module SubR
	class Episode
		attr_reader :season, :episode, :title

		def initialize season, episode, title
			@season = season
			@episode = episode
			@title = title
		end

		def to_s
			"Season: #{@season}, Episode: #{@episode}, Title: #{@title}"
		end

		class << self
			def parse filename
				Episode.new 1, 1, 'Test'
			end

			def get_episodes path
				Dir.foreach(path).map{|f| f =~ /\.mkv$/ ? Episode.parse(f) : nil}.compact
			end
		end
	end
end
