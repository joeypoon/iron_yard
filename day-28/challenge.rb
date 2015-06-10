class Product < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader
  belongs_to :category

  validates :name, :photo, presence: true
  validates :price_in_cents, presence: true, numericality: { only_integer: true }
  validates :inventory, presence: true, numericality: { only_integer: true }
  validates :category_id, presence: true, numericality: { only_integer: true }

  def price(option)
    option / 100.0
  end

  def price=(option)
    option * 100.0
  end

end
