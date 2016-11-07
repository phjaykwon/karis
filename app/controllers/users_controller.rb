class UsersController < ApplicationController

	# def show 	# modify to fit user
	# 	if current_user == nil
	# 		store_location_for(:user, show_user_path)
	# 	 	redirect_to new_user_session_path
	# 	else
	# 		@favorites = current_user.favorites
	# 		@chords = @favorites.map(&:chord_id)
	# 		puts "FAVORITE CHORD IDS"
	# 		puts @chords
	# 	end
	# end

	# private methods
	private
	    def user_params
			params.require(:user).permit(:email, :password, :sign_in_count)
    	end
end
