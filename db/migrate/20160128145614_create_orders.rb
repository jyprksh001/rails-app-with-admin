class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.belongs_to :user, index:true
    	t.integer :total_amount
    	t.timestamps null: false
    end
  end
end
