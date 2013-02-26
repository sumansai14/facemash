class Message < ActiveRecord::Base
  attr_accessible :content, :reciever, :sender
end
