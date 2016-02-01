class Pizza < ActiveRecord::Base
	has_many :ordered_pizzas
	has_many :orders, through: :ordered_pizzas
end
