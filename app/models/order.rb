class Order < ActiveRecord::Base
  belongs_to :user
  has_many :ordered_toppings
  has_many :ordered_pizzas
  has_many :pizzas,   :through => :ordered_pizzas 
  has_many :toppings, :through => :ordered_toppings
end

