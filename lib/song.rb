require 'pry'

class Song
	attr_reader :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []
	@@songs = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist	
		@@artists << artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@songs << self
	end

	def self.count	
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		final_hash = {}
		@@genres.uniq.each do |genre|
			final_hash[genre] = @@genres.count(genre)
		end
		final_hash
	end

	def self.artist_count
		final_hash = {}
		@@artists.uniq.each do |artist|
			final_hash[artist] = @@artists.count(artist)
		end
		final_hash
	end
end
