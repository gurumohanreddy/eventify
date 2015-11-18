class Event < ActiveRecord::Base
  has_many :rsvps
  belongs_to :user
   validates :user,presence:true
def self.pretty_new
  ev = self.new
  ev_time = Time.now.beginning_of_hour()+ 1.hour
  ev.start_time = ev_time
  ev.end_time = ev_time + 1.hour

  return ev

end

def single_day?
  start_time.to_date == end_time.to_date
end

end
