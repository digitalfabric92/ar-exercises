class Employee < ActiveRecord::Base
  # # Links one to store
  # belongs_to :store
  # # validates first name, last name, hourly rate. store
  # validates :first_name, :last_name, :hourly_rate, :store
  # # validates hourly rate is within range
  # # errors.add
end
