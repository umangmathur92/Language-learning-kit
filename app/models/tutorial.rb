class Tutorial < ActiveRecord::Base
  belongs_to :language
  has_many :exercises
end
