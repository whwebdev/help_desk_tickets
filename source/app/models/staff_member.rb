class StaffMember < ActiveRecord::Base
  has_secure_password
  has_many :tickets
  has_many :customers, through: :tickets
end
