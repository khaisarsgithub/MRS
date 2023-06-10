class CreateQuotations < ActiveRecord::Migration[7.0]
  def change
    create_table :quotations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :price_per_unit
      # t.string :country
      t.string :pincode
      t.datetime :quotation_date
      t.float :total_area
      t.float :total_units
      t.boolean :is_bill
      t.float :total_amt
      t.float :advance
      t.float :balance
      t.float :s_gst
      t.float :c_gst
      t.float :grand_total

      t.timestamps
    end
  end
end

