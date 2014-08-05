class Test < ActiveRecord::Base
	has_many :questions , through: :settests
	has_many :settests
	belongs_to :user
	has_many :accepts
end
