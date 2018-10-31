class Reservation < ApplicationRecord
  validates :date_from, :date_to, :presence true
  belongs_to :customer, :class_name => "User"
  belongs_to :host, :class_name => "User"
end
