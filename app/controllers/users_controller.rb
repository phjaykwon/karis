class UsersController < ApplicationController
	def new
		@user = User.new
	end
	#SHOULD BE ABLE TO GET SONGS SOMEHOW...
	# edit
	# create
	# destroy
	# favorites referenced from user class


	def index
		#@users = User.search(params[:search])
		#if current_user == null
		#	redirect_to new_user_session_path
	end

	def show 	# modify to fit user
		@user = User.find(params[:id])

	end

	# create

	# private methods
	private
	    def user_params
			params.require(:user).permit(:email, :password, :sign_in_count)
    	end
	#def chord_params
    #	params.require(:chord).permit(:title, :artist, :video, :user, :content)
  	#end
end
