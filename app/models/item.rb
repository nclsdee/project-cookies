class Item < ApplicationRecord

  validates :title, :description, :price, presence: true
end
