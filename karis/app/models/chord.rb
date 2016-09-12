class Chord < ApplicationRecord
	belongs_to :artist
	belongs_to :user

	attr_accessor :artist_full_name

	def self.valid_chords
		["A", "B", "C", "D", "G", "E", "Em", "B/D#", "C#m", "F#m", "Asus7"]  # hardcoded for now.
	end 

	def self.search(search)
	  if search
	  	puts ("SEARCH")
	  	self.where("title like ?", "%#{search}%")
	  else
	    self.all
	  end
	end
end
