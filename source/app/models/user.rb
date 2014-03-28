class User < ActiveRecord::Base
  has_secure_password
  has_many :tickets
  has_many :messages

  def full_name
    first_name + ' ' + last_name
  end
end

