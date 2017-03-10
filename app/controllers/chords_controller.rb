class ChordsController < ApplicationController
	def new
		if current_user == nil
			#sign_in current_user
			store_location_for(:user, new_chord_path)
			redirect_to new_user_session_path
		else
			@chord = Chord.new
		end
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
		@video_url = params[:chord][:video_url]
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

	def edit
		if current_user == nil
 			#sign_in current_user
			store_location_for(:user, edit_chord_path)
 			redirect_to new_user_session_path
 		else
 			@chord = Chord.find(params[:id])
 			@valid_chords = Chord.valid_chords #may not need this..
 			if (@chord.user_id != current_user.id)
 				return redirect_to root_path
 			end
 		end
 	end
 
 	def update
 		puts ("*** UPDATING CHORD ***")
 		@chord = Chord.find(params[:id])
    	if @chord.update(chord_params)
 			redirect_to @chord
    	else
    		render 'edit'
    	end
   	end
 
 	def destroy
 		@chord = Chord.find(params[:id])
 	    @chord.destroy
    	redirect_to my_chords_path
 	end

	# private methods
	def chord_params
    	#params.require(:chord).permit(:title, :artist, :user, :content)
    	params.require(:chord).permit(:title, :artist, :video_url, :user, :content)
  	end

end
