class Store < ActiveRecord::Base

  has_many :employees
  validates :annual_revenue, presence: true
  validates :name, length: { minimum: 3 } # Minimum 3 chars
  # validates :mens_apparel or :womens_apparel

end
