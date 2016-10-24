class MyChordsController < ApplicationController
  def index
    if current_user == nil
			#sign_in current_user
			store_location_for(:user, new_chord_path)
			redirect_to new_user_session_path
		else
      @chords = Chord.where(user_id: current_user.id)
    end
  end
end
