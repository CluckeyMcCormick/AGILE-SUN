class Talent < ActiveRecord::Base
	enum talent_type: [:Research, :Sports]

	has_many :rated_talents

	def to_label
    	"#{name} (#{talent_type})"
  	end
end
