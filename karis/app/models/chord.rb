class Chord < ApplicationRecord
	belongs_to :artist
	belongs_to :user

	attr_accessor :artist_full_name

	def self.valid_chords
		["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", 
		 "Am", "A#m", "Bm", "Cm", "C#m", "Dm", "D#m", "Em", "Fm", "F#m", "Gm", "G#m", 
		 "A6", "A#6", "B6", "C6", "C#6", "D6", "D#6", "E6", "F6", "F#6", "G6", "G#6", 
		 "A7", "A#7", "B7", "C7", "C#7", "D7", "D#7", "E7", "F7", "F#7", "G7", "G#7", 
		 "A9", "A#9", "B9", "C9", "C#9", "D9", "D#9", "E9", "F9", "F#9", "G9", "G#9", 
		 "Am6", "A#m6", "Bm6", "Cm6", "C#m6", "Dm6", "D#m6", "Em6", "Fm6", "F#m6", "Gm6", "G#m6", 
		 "Am7", "A#m7", "Bm7", "Cm7", "C#m7", "Dm7", "D#m7", "Em7", "Fm7", "F#m7", "Gm7", "G#m7", 
		 "Asus", "A#sus", "Bsus", "Csus", "C#sus", "Dsus", "D#sus", "Esus", "Fsus", "F#sus", "Gsus", "G#sus", 
		 "Asus4", "A#sus4", "Bsus4", "Csus4", "C#sus4", "Dsus4", "D#sus4", "Esus4", "Fsus4", "F#sus4", "Gsus4", "G#sus4", 
		 "Adim", "A#dim", "Bdim", "Cdim", "C#dim", "Ddim", "D#dim", "Edim", "Fdim", "F#dim", "Gdim", "G#dim", 
		 "Amaj7", "A#maj7", "Bmaj7", "Cmaj7", "C#maj7", "Dmaj7", "D#maj7", "Emaj7", "Fmaj7", "F#maj7", "Gmaj7", "G#maj7"]  # hardcoded for now.
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
