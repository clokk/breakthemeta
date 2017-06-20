class Partner < ApplicationRecord
	has_many :bulletins
	after_initialize :set_defaults

	validates_presence_of :name, :description
	#assuming we have a "game tag for partners"
	#scope :destiny, -> {where(game = "destiny")}
	#scope :arms, -> {where(game = "arms")}

	def set_defaults
		self.metaname ||= "none"
	end
end
