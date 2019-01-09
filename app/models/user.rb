class User < ApplicationRecord
  has_many :orders
  has_many :order_items, through: :orders
  has_many :items, through: :order_items


  def total_order_count
    orders.count
  end

  def total_item_count
    items.count
  end
end
