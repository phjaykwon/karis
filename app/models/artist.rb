class Artist < ApplicationRecord
	has_many :chords

	def full_name
  		"#{name}"
	end
end
