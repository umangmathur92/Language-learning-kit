class Question < ActiveRecord::Base
	
	has_one :option
	belongs_to :test
	accepts_nested_attributes_for :option
	has_many :settests
	has_many :tests, through: :settests
	belongs_to :language
end
  