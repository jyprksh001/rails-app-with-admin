class CreateOrderedPizzas < ActiveRecord::Migration
  def change
    create_table :ordered_pizzas do |t|
    t.belongs_to :order,index: true
    t.belongs_to :pizza,index: true
    end
  end
end
