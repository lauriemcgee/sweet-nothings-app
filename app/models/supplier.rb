class Supplier < ApplicationRecord
  has_many :sweet_nothings
#  def products
#    Product.where(supplier_id: self.id)
#  end
end
