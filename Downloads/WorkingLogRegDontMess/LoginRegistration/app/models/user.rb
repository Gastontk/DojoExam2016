class User < ActiveRecord::Base
	validates :first_name, :last_name, :email, :city, :state, :password, :password_confirmation, presence: true
	validates :password, length:{minimum: 3} 
	validates :state, length: {is: 2}
	validates :email, uniqueness: true

	
	has_secure_password


end
