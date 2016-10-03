class ChordsController < ApplicationController
	def new
		@chord = Chord.new
	end

	def create
		#puts params
		artist_name = params[:chord][:artist_full_name] # we want to autocomplete this

		@artist = Artist.where(name: artist_name).first()

		if @artist.nil?
			@artist = Artist.create(name: artist_name)
		end

		@user = current_user

		@title = params[:chord][:title]
		@video_url =params[:chord][:video_url]
		@content = params[:chord][:content]

		#@chord = Chord.new(title: @title, content: @content, artist: @artist, user: @user)
		@chord = Chord.new(title: @title, content: @content, video_url: @video_url)
		if @chord.save
			@user.chords << @chord
			@artist.chords << @chord
    		redirect_to @chord
    	else
    		render 'new'
    	end
    end

	def index
		@chords = Chord.search(params[:search])
		@search = params[:search]
	end

	def show
		@chord = Chord.find(params[:id])
		@valid_chords = Chord.valid_chords
	end

	# private methods
	def chord_params
    	#params.require(:chord).permit(:title, :artist, :user, :content)
    	params.require(:chord).permit(:title, :artist, :video_url, :user, :content)

  	end

end
