class Employee < ActiveRecord::Base
  # Links one to store
  belongs_to :store
  # # validates first name, last name, hourly rate. store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store, presence: true
  # validates :hourly

end
