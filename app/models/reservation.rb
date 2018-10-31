class Reservation < ApplicationRecord
  belongs_to :customer, :class_name => "User"
  belongs_to :host, :class_name => "User"
end
