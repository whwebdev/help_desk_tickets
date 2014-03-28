class Message < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :user
end
