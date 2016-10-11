class Order < ApplicationRecord
	has_many :order_items

	validates :adress, presence: true

	def serial_generation
		"OD#{id.to_s.rjust(10, "0")}"
	end

  def amount
    order_items.reduce(0) { |sum, item| sum + item.total_price }
  end

end
