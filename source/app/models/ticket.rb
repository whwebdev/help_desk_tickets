class Ticket < ActiveRecord::Base
  belongs_to :customer
  belongs_to :staff
  has_many :messages
end
