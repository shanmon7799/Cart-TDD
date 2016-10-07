class Order < ApplicationRecord
	has_many :order_items

	validates :address, presence: true

	def serial_generation
		"OD#{id.to_s.rjust(10, "0")}"
	end
end
