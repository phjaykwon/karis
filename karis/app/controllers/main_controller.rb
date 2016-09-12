class MainController < ApplicationController
  def index
  	@chords = Chord.search(params[:search])
  	puts @chords
  end
end
