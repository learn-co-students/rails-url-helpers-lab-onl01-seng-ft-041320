class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def toggle_active
    self.active ? false : true
  end
  after_initialize do |student|
    self.active = false
  end
end