class Ticket < ActiveRecord::Base
  belongs_to :client, class_name "User"
  belongs_to :staff_member, class_name "User"
  has_many :messages

end
