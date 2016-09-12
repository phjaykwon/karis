class MainController < ApplicationController
  def index
  	if params[:search].nil?
  		return
  	end
  	redirect_to chords_path(search: params[:search])
  end
end
