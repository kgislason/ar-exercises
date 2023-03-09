class Store < ActiveRecord::Base
  has_many :employees
  validates_presence_of :name
  validates_length_of :name, :minimum => 3, allow_blank: false
  validates_numericality_of :annual_revenue, :greater_than_or_equal_to => 0

  validate :must_carry_at_leader_one_mens_or_womens_apparel

  def must_carry_at_leader_one_mens_or_womens_apparel
    if ! mens_apparel && ! womens_apparel
      errors.add(:womens_apparel, "must carry at least one of men's apparel or wommen's apparel. Both cannot be false")
      errors.add(:mens_apparel, "must carry at least one of men's apparel or wommen's apparel. Both cannot be false")      
    end
  end
end
