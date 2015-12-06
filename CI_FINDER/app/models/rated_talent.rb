class RatedTalent < ActiveRecord::Base
	belongs_to :user, :foreign_key => "user_id"
	belongs_to :talent, :foreign_key => "talent_id"

	enum rating_value: ["1", "2", "3", "4", "5"]

	validates :talent_id, :uniqueness => { :scope => :user_id }

	def to_label
    	"#{user_id} #{talent_id} (#{rating_value})"
  	end

	def to_label_talent
		return Talent.find(talent_id).name + " (#{rating_value}) "
  	end

  	def to_label_user
		return User.find(user_id).name + " (#{rating_value}) "
  	end
end
