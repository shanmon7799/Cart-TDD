require 'rails_helper'

Rspec.describe CartItem, type: :model do
	it "每條item都會自己算錢" do
		cart = Cart.new
		p1 = Product.create(price: 100)

		3.times do
			cart.add_item(p1.id)
		end

		expect(cart.items.first.total_price).to be 300
	end
end