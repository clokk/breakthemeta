class Bulletin < ApplicationRecord
	#include ImageUploader[:image]

  belongs_to :partner

  #validates :description, presence: true

end
