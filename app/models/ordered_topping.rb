class OrderedTopping < ActiveRecord::Base
belongs_to :order 
belongs_to :topping
end