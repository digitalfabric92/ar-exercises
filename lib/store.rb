class Store < ActiveRecord::Base

  has_many :employees
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :name, length: { minimum: 3 } # Minimum 3 chars
  # BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
  # validates :mens_apparel or :womens_apparel
  validate: type

  private
  # def type
  #   if (:mens_apparel == false) AND (:womens_apparel == false)
  #     errors.add
  #   end
  # end


end
