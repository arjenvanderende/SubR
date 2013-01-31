require 'test/unit'
require 'subr/episode'

class EpisodeTest < Test::Unit::TestCase
	def test_parse_finds_episode_title
		episode = SubR::Episode.parse 'S00E00 - Episode name.mkv'
		assert_equal 'Episode name', episode.title
	end

	def test_parse_finds_season
		episode = SubR::Episode.parse 'S01E00 - Episode name.mkv'
		assert_equal 1, episode.season
	end

	def test_parse_finds_episode_number
		episode = SubR::Episode.parse 'S00E01 - Episode name.mkv'
		assert_equal 1, episode.episode
	end
end
