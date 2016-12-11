class MyAccountController < ApplicationController
  	def index
  		@user = current_user
  		if current_user == nil
			#sign_in current_user
			store_location_for(:user, '/my_account')
			redirect_to new_user_session_path
		else
    	end
  	end
end
