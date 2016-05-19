class Item < ApplicationRecord
  belongs_to :section, inverse_of: :items
end
