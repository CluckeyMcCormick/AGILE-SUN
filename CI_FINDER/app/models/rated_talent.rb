class RatedTalent < ActiveRecord::Base
	belongs_to :user, :foreign_key => "user_id"
	belongs_to :talent, :foreign_key => "talent_id"

	enum rating_value: ["1", "2", "3", "4", "5"]

	validates :user_id, :uniqueness => { :scope => :talent_id }

	def to_label
    	"#{user_id} #{talent_id} (#{rating_value})"
  	end

	def to_label_extended
		return Talent.find(talent_id).name + " (#{rating_value}) "
  	end
end
