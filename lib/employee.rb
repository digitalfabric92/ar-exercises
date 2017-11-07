class Employee < ActiveRecord::Base
  # Links one to store
  belongs_to :store
  # # validates first name, last name, hourly rate. store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store, presence: true
  validates :hourly_rate, presence: true, numericality: { only_integer: true, greater_than: 39, less_than: 201 }
  # Employees have a hourly_rate that is a number (integer) between 40 and 200

end
