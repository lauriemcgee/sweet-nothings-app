class SweetNothing < ApplicationRecord
    belongs_to :supplier
 # def supplier
 #   Supplier.find_by(id: self.supplier_id)
 # end
end
