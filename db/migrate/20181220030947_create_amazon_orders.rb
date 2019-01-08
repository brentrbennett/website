class CreateAmazonOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :amazon_orders do |t|
      t.datetime :date
      t.string :amount
      t.string :double
      t.string :number
      t.string :property
      t.string :desc

      t.timestamps
    end
  end
end
