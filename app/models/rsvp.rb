class Rsvp < ActiveRecord::Base
  belongs_to :event
  validates:email, presence:true
end
