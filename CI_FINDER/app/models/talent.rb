class Talent < ActiveRecord::Base
	has_and_belongs_to_many :users
	enum talent_type: [:Research, :Sports]
	def to_label
    	"#{name} (#{talent_type})"
  	end
end
