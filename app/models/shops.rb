class Shops < ApplicationRecord
- has_many :sales
- has_many :messages
- has_many :customers
- has_many :messages
end
