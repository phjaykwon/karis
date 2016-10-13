class Chord < ApplicationRecord
	belongs_to :artist
	belongs_to :user

	attr_accessor :artist_full_name

	def self.valid_chords
		["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#",
		 "Am", "A#m", "Bm", "Cm", "C#m", "Dm", "D#m", "Em", "Fm", "F#m", "Gm", "G#m",
		 "A2", "A#2", "B2", "C2", "C#2", "D2", "D#2", "E2", "F2", "F#2", "G2", "G#2",
		 "A6", "A#6", "B6", "C6", "C#6", "D6", "D#6", "E6", "F6", "F#6", "G6", "G#6",
		 "AM6", "A#M6", "BM6", "CM6", "C#M6", "DM6", "D#M6", "EM6", "FM6", "F#M6", "GM6", "G#M6",
		 "A7", "A#7", "B7", "C7", "C#7", "D7", "D#7", "E7", "F7", "F#7", "G7", "G#7",
		 "AM7", "A#M7", "BM7", "CM7", "C#M7", "DM7", "D#M7", "EM7", "FM7", "F#M7", "GM7", "G#M7",
		 "A9", "A#9", "B9", "C9", "C#9", "D9", "D#9", "E9", "F9", "F#9", "G9", "G#9",
		 "Aadd9", "A#add9", "Badd9", "Cadd9", "C#add9", "Dadd9", "D#add9", "Eadd9", "Fadd9", "F#add9", "Gadd9", "G#add9",
		 "Amadd9", "A#madd9", "Bmadd9", "Cmadd9", "C#madd9", "Dmadd9", "D#madd9", "Emadd9", "Fmadd9", "F#madd9", "Gmadd9", "G#madd9",
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
	  		self.where("title ILIKE ?", "%#{search}%")
	  else
	    self.all
	  end
	end
end
