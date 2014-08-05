class Settest < ActiveRecord::Base
	belongs_to :question
	belongs_to :test
	belongs_to :user

	accepts_nested_attributes_for :accept

end
