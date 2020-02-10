class Sale < ApplicationRecord
  belongs_to :shop, optional: true
end
