class QuotationItem < ApplicationRecord
  belongs_to :quotation
  # before_save :update_quotation_items
  before_save :update_units

  validates :width, presence: true
  validates :height, presence: true
  validates :quantity, presence: true
  validates :quotation, presence: true

  def update_quotation_items
    self.price = self.item.price * self.quantity
  end

  def update_units
    self.units = self.width * self.height
  end
end
