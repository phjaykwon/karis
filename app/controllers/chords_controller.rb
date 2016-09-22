class ChordsController < ApplicationController
	def new
		@chord = Chord.new
	end

	def create
		puts params
		artist_first_name, artist_last_name = get_split_artist_name(params[:chord][:artist_full_name]) # we want to autocomplete this

		@artist = Artist.where(first_name: artist_first_name, last_name: artist_last_name).first()

		if @artist.nil?
			@artist = Artist.create(first_name: artist_first_name, last_name: artist_last_name)
		end

		@user = User.take #eric jan

		@title = params[:chord][:title]
		@video =params[:chord][:video]
		@content = params[:chord][:content]

		@chord = Chord.new(title: @title, content: @content, video: @video, artist: @artist, user: @user)
		if @chord.save
    		redirect_to @chord
    	else
    		render 'new'
    	end
    end

	def index
		@chords = Chord.search(params[:search])
	end

	def show
		@chord = Chord.find(params[:id])
		@valid_chords = Chord.valid_chords
	end

	# private methods
	def chord_params
    	params.require(:chord).permit(:title, :artist, :video, :user, :content)
  	end

  	def get_split_artist_name(full_name)
  		names = full_name.strip.split(" ")
  		if names.length == 1
  			return [names, ""]
  		elsif names.length >= 2
  			return [names[0], names[1]]
  		else
  			return nil
  		end
  	end
end