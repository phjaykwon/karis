class Chord < ApplicationRecord
	belongs_to :artist
	belongs_to :user

	attr_accessor :artist_full_name

	def self.valid_chords
		["A", "B", "C", "D", "G", "Em"] 
	end 

	def self.search(search)
	  if search
	  	self.where("title like ?", "%#{search}%")
	  else
	    self.all
	  end
	end
end
