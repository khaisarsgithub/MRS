class Quotation < ApplicationRecord
  has_many :quotation_items, dependent: :destroy
  accepts_nested_attributes_for :quotation_items, allow_destroy: true

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :pincode, presence: true

  # before_validation :update_quotation
  # before_create :update_quotation
  before_save :update_quotation

  def update_quotation
    if self.quotation_date == nil
      self.quotation_date = Time.zone.now.to_date
    end
    items = self.quotation_items
    area = 0
    units = 0
    price = 0
    items.each do |item|
      item_area = item.width * item.height * item.quantity
      item_price = item.price_per_unit * item_area
      area += item_area
      units += item.quantity
      price += item_price
      item.price = item_price
    end
    self.total_area = area
    self.total_units = units
    self.total_amt = price
    if self.advance
      self.balance = self.total_amt - self.advance
    end
    gst = self.total_amt * 0.09
    self.c_gst = gst
    self.s_gst = gst
    self.grand_total = self.total_amt + gst*2
  end
end
