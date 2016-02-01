class Topping < ActiveRecord::Base
	has_many :ordered_toppings
    has_many :orders, through: :ordered_toppings
end
