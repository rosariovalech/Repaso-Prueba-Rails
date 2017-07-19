class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true

  before_save :check_premium

  scope :premium, (-> { where(premium:true) })
  scope :last_n, (->(n) { order(:id).limit(n) })

  after_destroy :check_last

  def check_premium
  	self.premium ||= false
  end

  def check_last
  	category.destroy unless category.products.any?
  end

  def last?
  	if self.category.products.count == 1 ? true : false	
  	end	
  end
end
