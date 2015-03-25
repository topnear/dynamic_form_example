class Activity < ActiveRecord::Base
	has_many :descriptions
	accepts_nested_attributes_for :descriptions
end
