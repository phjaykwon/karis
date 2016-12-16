class FavoritesController < ApplicationController
	def create
		# pass in params
		# TODO: error checking if already favorited...kinda taken care of
		# TODO: have to be signed in
		if current_user == nil
			store_location_for(:user, chords_show_path)
			redirect_to new_user_session_path
		else


			@c_id = params[:favorite][:chord_id]
			@existing_favorite = Favorite.where(chord_id: @c_id, user_id: current_user.id)
			if @existing_favorite.nil? || @existing_favorite.first().nil?
				@favorite = Favorite.create({user_id: current_user.id, chord_id: @c_id})
				if @favorite.save
					current_user.favorites << @favorite
	    	end
			else
			end
		end
	end

	def index
		if current_user == nil
			store_location_for(:user, favorites_path)
		 	redirect_to new_user_session_path
		else
			@id = current_user.id
			@favorites = current_user.favorites
			@chord_ids = @favorites.sort_by(&:created_at).map(&:chord_id)
			@chords = []
			for c_id in @chord_ids
				# TODO: error checking to see if this is valid chord
				@cur_Chord = Chord.find(c_id)
				if @cur_Chord == nil
					Favorite.destroy(Favorite.where(chord_id: c_id, user_id: @id).first())
				else
					@chords << @cur_Chord
				end
			end
			# TODO: in html
		end
	end

	def destroy
		if current_user == nil
			store_location_for(:user, chords_show_path)
		 	redirect_to new_user_session_path
		else
			@c_id = params[:favorite][:chord_id]
			@existing_favorite = Favorite.where(chord_id: @c_id, user_id: current_user.id)
			if !@existing_favorite.nil? && !@existing_favorite.first().nil?
				Favorite.destroy(@existing_favorite)
			end
		end
	end

end
