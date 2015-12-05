class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	    :recoverable, :rememberable, :trackable, :validatable

	has_many :rated_talents

	accepts_nested_attributes_for :rated_talents

	def to_label
    	"#{name}"
  	end
end
