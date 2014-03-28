class Customer < ActiveRecord::Base
  has_secure_password
  has_many :tickets
  has_many :staff_members, through: :tickets
end

