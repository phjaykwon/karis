class Chord < ApplicationRecord
  belongs_to :artist
  belongs_to :user

  attr_accessor :artist_full_name
end
