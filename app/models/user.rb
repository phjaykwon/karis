class User < ApplicationRecord
	has_many :chords #each user has chords
    has_many :favorites

	#enum role: [:admin, :member, :lurker] us, people signed in, people not signed in

    rolify
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
        
	def full_name
  		"#{first_name} #{last_name}"
	end
end
