class ChangeDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :quotations, :quotation_date, :Date
  end
end
