class Reservation < ApplicationRecord
  belongs_to :customer, :class_name => "User"
  belongs_to :host, :class_name => "User"
  has_many :messages
  validates :date_from, :date_to, presence: true
end
