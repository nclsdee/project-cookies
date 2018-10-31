class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :own_reservations, :class_name => "Reservation", :foreign_key => "customer_id"
  has_many :received_reservations, :class_name => "Reservation", :foreign_key => "host_id"
end
